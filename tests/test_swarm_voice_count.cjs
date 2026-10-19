const fs = require('fs');
const path = require('path');
const vm = require('vm');
const assert = require('assert');
const project = process.argv[3] || path.join(__dirname, '../20260926 Ausbau_Fliegenschwarm/Fliegen_Bahnen_Panner');
const managerFile = process.argv[2] || path.join(project, 'code/swarm_voice_count.js');
const textCache = new Map();

function rig({cold = false, trajectories = false} = {}) {
    let now = 0, target = 0, tasks = [];
    const actual = Array.from({length: 51}, () => ({active: false, moving: false}));
    const flights = [];
    function Task(fn, context) {
        this.cancel = () => { tasks = tasks.filter(t => t.task !== this); };
        this.schedule = delay => {
            this.cancel();
            tasks.push({task: this, at: now + delay, run: () => fn.call(context)});
        };
        this.freepeer = this.cancel;
    }
    const VirtualDate = class extends Date {
        constructor(...args) { super(...(args.length ? args : [now])); }
        static now() { return now; }
    };
    function MaxFile(name) {
        const filename = path.resolve(project, 'code', name);
        this.isopen = fs.existsSync(filename);
        this.foldername = path.dirname(filename);
        this.position = 0;
        if (!textCache.has(filename) && this.isopen) textCache.set(filename, fs.readFileSync(filename, 'utf8'));
        const text = textCache.get(filename) || '';
        this.eof = text.length;
        this.readchars = count => {
            const result = Array.from(text.slice(this.position, this.position + count));
            this.position += count;
            return result;
        };
        this.close = () => {};
    }
    if (trajectories) {
        const source = fs.readFileSync(path.join(project, 'code/bio_trajektorien.js'), 'utf8');
        for (let voice = 1; voice <= 50; voice++) {
            const flight = {Task, File: MaxFile, Date: VirtualDate, Math, Number, String,
                isFinite, jsarguments: ['bio_trajektorien.js'], outlet: () => {},
                error: message => { throw Error(message); }};
            vm.createContext(flight);
            vm.runInContext(source, flight);
            flight.loadbang();
            flights[voice] = flight;
        }
    }
    const context = {
        Math, Number, String, Array, Object, isFinite, Date: VirtualDate, Task,
        arrayfromargs: args => Array.from(args),
        outlet(port, ...args) {
            if (port !== 0) return;
            if (Array.isArray(args[0])) args = args[0];
            const [name, ...values] = args;
            if (name === 'target') { target = values[0]; return; }
            const mapping = {tempo: 'speed', first: 'firstflight', last: 'lastflight'};
            for (let voice = 1; voice <= 50; voice++) {
                if (target !== 0 && target !== voice) continue;
                if (name === 'active') actual[voice].active = !!values[0];
                if (name === 'start') actual[voice].moving = true;
                if (name === 'stop') actual[voice].moving = false;
                const flight = flights[voice], method = mapping[name] || name;
                if (flight && typeof flight[method] === 'function') flight[method](...values);
            }
        }
    };
    vm.createContext(context);
    vm.runInContext(fs.readFileSync(managerFile, 'utf8'), context);
    function advance(ms = 1500) {
        const end = now + ms;
        let guard = 0;
        while (tasks.length) {
            tasks.sort((a, b) => a.at - b.at);
            if (tasks[0].at > end) break;
            const task = tasks.shift();
            now = task.at;
            task.run();
            if (++guard > 100000) throw Error('Scheduler did not settle');
        }
        now = end;
    }
    const count = value => context.setCount(value);
    function msg(name, ...args) {
        context.inlet = 1;
        context.messagename = name;
        context.anything(...args);
    }
    function check(active, moving) {
        for (let voice = 1; voice <= 50; voice++) {
            assert.equal(actual[voice].active, voice <= active, `voice ${voice}: active`);
            const running = trajectories ? flights[voice].running : actual[voice].moving;
            assert.equal(running, voice <= moving, `voice ${voice}: moving`);
        }
    }
    function checkFlightProgress(voice) {
        const before = flights[voice].elapsed;
        advance(100);
        assert(flights[voice].elapsed > before, `voice ${voice}: trajectory clock must advance`);
    }
    if (!cold) {
        count(10); advance(); msg('moving', 10); advance(); check(10, 10);
    }
    return {count, msg, advance, check, checkFlightProgress};
}

const cases = [
    ['activation interrupted by moving 10 -> 50', {}, r => {
        r.count(50); r.advance(35); r.msg('moving', 50); r.advance(); r.check(50, 50);
    }],
    ['count edits interrupt pending starts', {}, r => {
        r.count(50); r.advance(); r.msg('moving', 50); r.advance(25);
        r.count(49); r.advance(15); r.count(50); r.advance(); r.check(50, 49);
    }],
    ['rapid movement edits', {}, r => {
        r.count(50); r.advance(10);
        for (let n = 11; n <= 50; n++) { r.msg('moving', n); r.advance(2); }
        r.advance(); r.check(50, 50);
    }],
    ['stop during activation', {}, r => {
        r.count(50); r.advance(25); r.msg('stop'); r.advance(); r.check(50, 0);
    }],
    ['shrink during activation', {}, r => {
        r.count(50); r.advance(25); r.count(5); r.advance(); r.check(5, 5);
    }],
    ['formation interleaves target and payload', {}, r => {
        r.count(50); r.advance(105); r.msg('grid', 100); r.advance(); r.check(50, 10);
    }],
    ['rapid count and movement changes settle to final state', {}, r => {
        for (let i = 0; i < 100; i++) {
            r.count(10 + (i * 17) % 41); r.advance(i % 8);
            r.msg('moving', (i * 11) % 51); r.advance(i % 5);
        }
        r.count(50); r.msg('moving', 50); r.advance(); r.check(50, 50);
    }],
    ['movement edit before initialization preserves requested count', {cold: true}, r => {
        r.count(50); r.advance(100); r.msg('moving', 50); r.advance(); r.check(50, 50);
    }],
    ['cold start: first movement down/up is sufficient', {cold: true}, r => {
        r.count(50); r.advance(270); r.msg('moving', 50); r.advance(60);
        r.msg('moving', 10); r.advance(20); r.msg('moving', 50);
        r.advance(); r.check(50, 50);
    }],
    ['tempo randomization preserves unfinished activation', {}, r => {
        r.count(50); r.advance(25); r.msg('randomizetempo'); r.advance(); r.check(50, 10);
    }],
    ['gain randomization preserves unfinished starts', {}, r => {
        r.count(50); r.advance(); r.msg('moving', 50); r.advance(25);
        r.msg('randomizegain'); r.advance(); r.check(50, 50);
    }],
    ['ordinary control cannot steal deferred target', {}, r => {
        r.count(50); r.advance(105); r.msg('smooth', 30); r.advance(); r.check(50, 10);
    }],
    ['count reduction cancels pending activation of removed voices', {cold: true}, r => {
        r.count(50); r.advance(270); r.count(5); r.msg('moving', 5);
        r.advance(); r.check(5, 5);
    }],
    ['movement request survives cold initialization and a stop/start', {cold: true}, r => {
        r.count(50); r.advance(10); r.msg('moving', 50); r.msg('stop'); r.msg('start');
        r.advance(); r.check(50, 50);
    }],
    ['actual trajectory scripts: first cold down/up starts all 50 clocks', {cold: true, trajectories: true}, r => {
        r.count(50); r.advance(270); r.msg('moving', 50); r.advance(60);
        r.msg('moving', 10); r.advance(20); r.msg('randomizetempo'); r.msg('moving', 50);
        r.advance(); r.check(50, 50); r.checkFlightProgress(50);
        r.msg('moving', 0); r.advance(); r.check(50, 0);
        r.msg('moving', 50); r.advance(); r.check(50, 50); r.checkFlightProgress(50);
    }]
];
let failures = 0;
for (const [name, options, run] of cases) {
    try { run(rig(options)); console.log('PASS', name); }
    catch (error) { failures++; console.log('FAIL', name, error.message); }
}
process.exitCode = failures ? 1 : 0;

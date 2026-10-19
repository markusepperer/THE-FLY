const fs=require('fs'),vm=require('vm'),assert=require('assert');
const path=require('path');
const file=process.argv[2] || path.join(__dirname,'../20260926 Ausbau_Fliegenschwarm/Fliegen_Bahnen_Panner/code/swarm_voice_count.js');
function rig(){let now=0,target=0,tasks=[];const actual=Array.from({length:51},()=>({active:false,moving:false}));
function Task(fn,ctx){this.cancel=()=>{tasks=tasks.filter(t=>t.task!==this)};this.schedule=ms=>{this.cancel();tasks.push({task:this,at:now+ms,fn:()=>fn.call(ctx)})};this.freepeer=this.cancel}
const c={Math,Number,String,Array,Object,isFinite,Date,Task,arrayfromargs:a=>Array.from(a),outlet:(port,...args)=>{if(port!==0)return;if(Array.isArray(args[0]))args=args[0];let [name,...values]=args;if(name==='target'){target=values[0];return;}for(let n=1;n<=50;n++){if(target!==0&&target!==n)continue;if(name==='active')actual[n].active=!!values[0];if(name==='start')actual[n].moving=true;if(name==='stop')actual[n].moving=false;}}};vm.createContext(c);vm.runInContext(fs.readFileSync(file,'utf8'),c);
function advance(ms=10000){const end=now+ms;let guard=0;while(tasks.length){tasks.sort((a,b)=>a.at-b.at);if(tasks[0].at>end)break;const t=tasks.shift();now=t.at;t.fn();if(++guard>100000)throw Error('scheduler loop')}now=end;}
function count(n){c.setCount(n)}function msg(name,...a){c.inlet=1;c.messagename=name;c.anything(...a)}
function check(active,moving){for(let n=1;n<=50;n++){assert.equal(actual[n].active,n<=active,'voice '+n+' active');assert.equal(actual[n].moving,n<=moving,'voice '+n+' moving')}}
count(10);advance();msg('moving',10);advance();check(10,10);return {c,count,msg,advance,check}}
const cases={
'activation interrupted by moving 10 -> 50':r=>{r.count(50);r.advance(35);r.msg('moving',50);r.advance();r.check(50,50)},
'count edits interrupt pending starts':r=>{r.count(50);r.advance();r.msg('moving',50);r.advance(25);r.count(49);r.advance(15);r.count(50);r.advance();r.check(50,49)},
'rapid movement edits':r=>{r.count(50);r.advance(10);for(let n=11;n<=50;n++){r.msg('moving',n);r.advance(2)}r.advance();r.check(50,50)},
'stop during activation':r=>{r.count(50);r.advance(25);r.msg('stop');r.advance();r.check(50,0)},
'shrink during activation':r=>{r.count(50);r.advance(25);r.count(5);r.advance();r.check(5,5)},
'formation interleaves target and payload':r=>{r.count(50);r.advance(105);r.msg('grid',100);r.advance();r.check(50,10)}
,
'rapid count and movement changes settle to final state':r=>{for(let i=0;i<100;i++){r.count(10+(i*17)%41);r.advance(i%8);r.msg('moving',(i*11)%51);r.advance(i%5)}r.count(50);r.msg('moving',50);r.advance();r.check(50,50)}
};let failed=0;for(const [name,run] of Object.entries(cases)){try{run(rig());console.log('PASS',name)}catch(e){failed++;console.log('FAIL',name,e.message)}}process.exitCode=failed?1:0;

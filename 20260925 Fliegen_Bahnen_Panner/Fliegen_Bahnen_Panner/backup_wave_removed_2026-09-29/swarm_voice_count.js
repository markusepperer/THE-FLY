autowatch = 1;
inlets = 2;
outlets = 3;

var current = 0;
var selectedTarget = 0;
var maximum = 50;
var initialized = false;
var tempoMinimum = 0.7;
var tempoMaximum = 1.5;
var gainMinimum = 0.1;
var gainMaximum = 1.0;
var currentMode = 0;
var flightRangeLength = 50;
var movingCount = 0;
var swarmRunning = false;
var swarmDensity = 0;
var swarmGrid = 0;
var swarmCount = 1;
var selectedSwarm = 0;
var swarmDensities = [0, 0, 0, 0, 0];
var swarmGrids = [0, 0, 0, 0, 0];
var orbitTempos = [0,0,0,0,0];
var ringModes = [0,0,0,0,0];
var ringSpreads = [0,0,0,0,0];
var pulseInners=[0,0,0,0,0],pulseOuters=[100,100,100,100,100],pulseTempos=[0,0,0,0,0],pulsePhases=[0,0,0,0,0],pulseTempoSpreads=[0,0,0,0,0];
var snakeStates=[0,0,0,0,0],snakeSpacings=[20,20,20,20,20],alignments=[0,0,0,0,0];
var escapeStrengths=[50,50,50,50,50],escapeReturns=[2,2,2,2,2];
var waveModes=[0,0,0,0,0],waveTypes=[0,0,0,0,0],waveRuns=[0,0,0,0,0],waveAmplitudes=[25,25,25,25,25],waveLengths=[50,50,50,50,50],waveSpeeds=[.2,.2,.2,.2,.2],waveWidths=[20,20,20,20,20];
// Portal is a global swarm state. Keep it here so voices activated later
// inherit exactly the portal that is already visible in the monitor.
var portalMode=0,portalX=0.5,portalY=0.5,portalDirection=0,portalWidth=45,portalSpeed=0.25,portalDeviation=25;
var deliveryQueue = [];
var deliveryTask = new Task(deliverNext, this);
var pendingInitialCount = current;
var initializationTask = new Task(finishInitialization, this);
var pendingEntry = null;
var deliveryPhase = 0;
var voiceActive = [];
for (var voiceStateIndex = 0; voiceStateIndex <= maximum; voiceStateIndex++) voiceActive[voiceStateIndex] = false;

function clampCount(v) {
    v = Math.floor(Number(v));
    return isFinite(v) ? Math.max(0, Math.min(maximum, v)) : null;
}

function sendTarget(n) {
    outlet(0, "target", n);
}

function sendCommand(name, args) {
    outlet(0, [name].concat(args));
}

function disableVoice(n) {
    sendTarget(n);
    outlet(0, "stop");
    outlet(0, "active", 0);
}

function enableVoice(n) {
    sendTarget(n);
    outlet(0, "active", 1);
    // A voice joins the audible swarm with useful musical defaults.
    // Motion remains controlled separately by Moving/Start.
    outlet(0, "gain", 1);
    outlet(0, "loop", 1);
    // Emit the current position and establish a quiet, stationary motion state.
    outlet(0, "stop");
}

function shuffledIntegers(first, last) {
    var values = [];
    for (var value = first; value <= last; value++) values.push(value);
    for (var i = values.length - 1; i > 0; i--) {
        var j = Math.floor(Math.random() * (i + 1));
        var swap = values[i];
        values[i] = values[j];
        values[j] = swap;
    }
    return values;
}

function beginDelivery(entries) {
    deliveryTask.cancel();
    deliveryQueue = entries;
    pendingEntry = null;
    deliveryPhase = 0;
    // Also defer the first target. Emitting it re-entrantly from the incoming
    // Start/Moving message caused voice 1 to miss its payload.
    deliveryTask.schedule(5);
}

function deliverNext() {
    if (deliveryPhase === 0) {
        if (!deliveryQueue.length) {
            sendTarget(selectedTarget);
            return;
        }
        pendingEntry = deliveryQueue.shift();
        // Give poly~ one scheduler turn to install the new target before
        // the payload is sent. Sending both from one JS call proved unsafe.
        sendTarget(pendingEntry.voice);
        deliveryPhase = 1;
        deliveryTask.schedule(5);
        return;
    }

    for (var commandIndex = 0; commandIndex < pendingEntry.commands.length; commandIndex++) {
        var command = pendingEntry.commands[commandIndex];
        sendCommand(command.name, command.args);
        // Track only commands that have actually reached the selected poly voice.
        // A cancelled queue therefore cannot make our bookkeeping lie.
        if (command.name === "active" && command.args.length) {
            voiceActive[pendingEntry.voice] = Number(command.args[0]) !== 0;
        }
    }
    pendingEntry = null;
    deliveryPhase = 0;
    deliveryTask.schedule(5);
}

function reportMoving() { outlet(1, "set", movingCount); }

function applyMovement() {
 var e=[]; for(var v=1;v<=current;v++) e.push({voice:v,commands:[{name:v<=movingCount?"start":"stop",args:[]}]}); beginDelivery(e);
}

function applyWaveMovementGate(){var wc=[],enabled=swarmRunning&&movingCount>0;for(var g=1;g<=4;g++)wc.push({name:"waverungroup",args:[g,enabled?waveRuns[g]:0,new Date().getTime()]});formationUpdateEntries(wc);}


function formationStateCommands() {
    var commands = [{name:"swarms", args:[swarmCount]}];
    for (var g=1; g<=4; g++) {
        commands.push({name:"densitygroup", args:[g, swarmDensities[g]]});
        commands.push({name:"gridgroup", args:[g, swarmGrids[g]]});
        commands.push({name:"orbitgroup", args:[g, orbitTempos[g]]});
        commands.push({name:"ringmodegroup", args:[g, ringModes[g]]});
        commands.push({name:"orbitspreadgroup", args:[g, ringSpreads[g]]});
        commands.push({name:"pulseinnergroup", args:[g,pulseInners[g]]});commands.push({name:"pulseoutergroup", args:[g,pulseOuters[g]]});commands.push({name:"pulsetempogroup", args:[g,pulseTempos[g]]});commands.push({name:"pulsephasegroup", args:[g,pulsePhases[g]]});commands.push({name:"pulsetempospreadgroup", args:[g,pulseTempoSpreads[g]]});commands.push({name:"snakegroup",args:[g,snakeStates[g]]});commands.push({name:"snakespacinggroup",args:[g,snakeSpacings[g]]});commands.push({name:"alignmentgroup",args:[g,alignments[g]]});commands.push({name:"escapestrengthgroup",args:[g,escapeStrengths[g]]});commands.push({name:"escapereturngroup",args:[g,escapeReturns[g]]});commands.push({name:"wavemodegroup",args:[g,waveModes[g]]});commands.push({name:"wavetypegroup",args:[g,waveTypes[g]]});commands.push({name:"waverungroup",args:[g,(swarmRunning&&movingCount>0)?waveRuns[g]:0,new Date().getTime()]});commands.push({name:"waveamplitudegroup",args:[g,waveAmplitudes[g]]});commands.push({name:"wavelengthgroup",args:[g,waveLengths[g]]});commands.push({name:"wavespeedgroup",args:[g,waveSpeeds[g]]});commands.push({name:"wavewidthgroup",args:[g,waveWidths[g]]});
    }
    return commands;
}

function formationUpdateEntries(commands) {
    // Formation state is global and safe to broadcast. Sending it through the
    // per-voice delivery queue made 50 voices change one after another and a
    // new formation command could cancel pending Start/Stop work.
    sendTarget(0);
    for (var i = 0; i < commands.length; i++) {
        sendCommand(commands[i].name, commands[i].args);
    }
    sendTarget(selectedTarget);
}

function finishInitialization() {
    if (initialized) return;
    current = pendingInitialCount;
    // Wait until poly~ has created every voice. Target and payload are then
    // delivered in separate scheduler turns by the common queue.
    var initializationEntries = [];
    for (var voice = 1; voice <= maximum; voice++) {
        if (voice <= current) {
            initializationEntries.push({voice:voice, commands:[
                {name:"loop", args:[1]},
                {name:"density", args:[swarmDensity]},
                {name:"grid", args:[swarmGrid]},
                {name:"gridvoices", args:[current]},
                {name:"swarms", args:[swarmCount]},
                {name:"densitygroup", args:[1,swarmDensities[1]]}, {name:"densitygroup", args:[2,swarmDensities[2]]}, {name:"densitygroup", args:[3,swarmDensities[3]]}, {name:"densitygroup", args:[4,swarmDensities[4]]},
                {name:"gridgroup", args:[1,swarmGrids[1]]}, {name:"gridgroup", args:[2,swarmGrids[2]]}, {name:"gridgroup", args:[3,swarmGrids[3]]}, {name:"gridgroup", args:[4,swarmGrids[4]]},
                {name:"orbitgroup", args:[1,orbitTempos[1]]}, {name:"orbitgroup", args:[2,orbitTempos[2]]}, {name:"orbitgroup", args:[3,orbitTempos[3]]}, {name:"orbitgroup", args:[4,orbitTempos[4]]},
                {name:"ringmodegroup", args:[1,ringModes[1]]}, {name:"ringmodegroup", args:[2,ringModes[2]]}, {name:"ringmodegroup", args:[3,ringModes[3]]}, {name:"ringmodegroup", args:[4,ringModes[4]]},
                {name:"orbitspreadgroup", args:[1,ringSpreads[1]]}, {name:"orbitspreadgroup", args:[2,ringSpreads[2]]}, {name:"orbitspreadgroup", args:[3,ringSpreads[3]]}, {name:"orbitspreadgroup", args:[4,ringSpreads[4]]},
                {name:"pulseinnergroup",args:[1,pulseInners[1]]},{name:"pulseinnergroup",args:[2,pulseInners[2]]},{name:"pulseinnergroup",args:[3,pulseInners[3]]},{name:"pulseinnergroup",args:[4,pulseInners[4]]},
                {name:"pulseoutergroup",args:[1,pulseOuters[1]]},{name:"pulseoutergroup",args:[2,pulseOuters[2]]},{name:"pulseoutergroup",args:[3,pulseOuters[3]]},{name:"pulseoutergroup",args:[4,pulseOuters[4]]},
                {name:"pulsetempogroup",args:[1,pulseTempos[1]]},{name:"pulsetempogroup",args:[2,pulseTempos[2]]},{name:"pulsetempogroup",args:[3,pulseTempos[3]]},{name:"pulsetempogroup",args:[4,pulseTempos[4]]},
                {name:"pulsephasegroup",args:[1,pulsePhases[1]]},{name:"pulsephasegroup",args:[2,pulsePhases[2]]},{name:"pulsephasegroup",args:[3,pulsePhases[3]]},{name:"pulsephasegroup",args:[4,pulsePhases[4]]},
                {name:"pulsetempospreadgroup",args:[1,pulseTempoSpreads[1]]},{name:"pulsetempospreadgroup",args:[2,pulseTempoSpreads[2]]},{name:"pulsetempospreadgroup",args:[3,pulseTempoSpreads[3]]},{name:"pulsetempospreadgroup",args:[4,pulseTempoSpreads[4]]},
                {name:"snakegroup",args:[1,snakeStates[1]]},{name:"snakegroup",args:[2,snakeStates[2]]},{name:"snakegroup",args:[3,snakeStates[3]]},{name:"snakegroup",args:[4,snakeStates[4]]},
                {name:"snakespacinggroup",args:[1,snakeSpacings[1]]},{name:"snakespacinggroup",args:[2,snakeSpacings[2]]},{name:"snakespacinggroup",args:[3,snakeSpacings[3]]},{name:"snakespacinggroup",args:[4,snakeSpacings[4]]},
                {name:"alignmentgroup",args:[1,alignments[1]]},{name:"alignmentgroup",args:[2,alignments[2]]},{name:"alignmentgroup",args:[3,alignments[3]]},{name:"alignmentgroup",args:[4,alignments[4]]},
                {name:"escapestrengthgroup",args:[1,escapeStrengths[1]]},{name:"escapestrengthgroup",args:[2,escapeStrengths[2]]},{name:"escapestrengthgroup",args:[3,escapeStrengths[3]]},{name:"escapestrengthgroup",args:[4,escapeStrengths[4]]},
                {name:"escapereturngroup",args:[1,escapeReturns[1]]},{name:"escapereturngroup",args:[2,escapeReturns[2]]},{name:"escapereturngroup",args:[3,escapeReturns[3]]},{name:"escapereturngroup",args:[4,escapeReturns[4]]},
                {name:"wavemodegroup",args:[1,waveModes[1]]},{name:"wavemodegroup",args:[2,waveModes[2]]},{name:"wavemodegroup",args:[3,waveModes[3]]},{name:"wavemodegroup",args:[4,waveModes[4]]},{name:"wavetypegroup",args:[1,waveTypes[1]]},{name:"wavetypegroup",args:[2,waveTypes[2]]},{name:"wavetypegroup",args:[3,waveTypes[3]]},{name:"wavetypegroup",args:[4,waveTypes[4]]},{name:"waverungroup",args:[1,(swarmRunning&&movingCount>0)?waveRuns[1]:0,new Date().getTime()]},{name:"waverungroup",args:[2,(swarmRunning&&movingCount>0)?waveRuns[2]:0,new Date().getTime()]},{name:"waverungroup",args:[3,(swarmRunning&&movingCount>0)?waveRuns[3]:0,new Date().getTime()]},{name:"waverungroup",args:[4,(swarmRunning&&movingCount>0)?waveRuns[4]:0,new Date().getTime()]},{name:"waveamplitudegroup",args:[1,waveAmplitudes[1]]},{name:"waveamplitudegroup",args:[2,waveAmplitudes[2]]},{name:"waveamplitudegroup",args:[3,waveAmplitudes[3]]},{name:"waveamplitudegroup",args:[4,waveAmplitudes[4]]},{name:"wavelengthgroup",args:[1,waveLengths[1]]},{name:"wavelengthgroup",args:[2,waveLengths[2]]},{name:"wavelengthgroup",args:[3,waveLengths[3]]},{name:"wavelengthgroup",args:[4,waveLengths[4]]},{name:"wavespeedgroup",args:[1,waveSpeeds[1]]},{name:"wavespeedgroup",args:[2,waveSpeeds[2]]},{name:"wavespeedgroup",args:[3,waveSpeeds[3]]},{name:"wavespeedgroup",args:[4,waveSpeeds[4]]},{name:"wavewidthgroup",args:[1,waveWidths[1]]},{name:"wavewidthgroup",args:[2,waveWidths[2]]},{name:"wavewidthgroup",args:[3,waveWidths[3]]},{name:"wavewidthgroup",args:[4,waveWidths[4]]},
                {name:"gain",args:[0]},{name:"portalmode",args:[portalMode]},{name:"portalx",args:[portalX]},{name:"portaly",args:[portalY]},{name:"portaldirection",args:[portalDirection]},{name:"portalwidth",args:[portalWidth]},{name:"portalspeed",args:[portalSpeed]},{name:"portaldeviation",args:[portalDeviation]},{name:"portalorigin",args:[1]},{name:"active",args:[1]},{name:"gain",args:[1]},
                {name:"stop", args:[]}
            ]});
        } else {
            initializationEntries.push({voice:voice, commands:[
                {name:"stop", args:[]},
                {name:"active", args:[0]}
            ]});
        }
    }
    movingCount = 0;
    reportMoving();
    initialized = true;
    beginDelivery(initializationEntries);
}

function setCount(v) {
    v = clampCount(v);
    if (v === null) return;

    if (!initialized) {
        pendingInitialCount = v;
        initializationTask.cancel();
        initializationTask.schedule(250);
        return;
    }

    // Reconcile against commands that were actually delivered. Number boxes can
    // emit many intermediate counts while being dragged; beginDelivery cancels
    // the older queue, so deriving changes only from the previous requested
    // count used to leave audible voices behind.
    current = v;
    movingCount = Math.min(movingCount, current);
    if (movingCount === 0) swarmRunning = false;
    reportMoving();

    var activationEntries = [];
    for (var voice = 1; voice <= maximum; voice++) {
        var shouldBeActive = voice <= current;
        if (shouldBeActive && !voiceActive[voice]) {
            activationEntries.push({voice:voice, commands:[
                {name:"loop", args:[1]},
                {name:"density", args:[swarmDensity]},
                {name:"grid", args:[swarmGrid]},
                {name:"gridvoices", args:[current]},
                {name:"swarms", args:[swarmCount]},
                {name:"densitygroup", args:[1,swarmDensities[1]]}, {name:"densitygroup", args:[2,swarmDensities[2]]}, {name:"densitygroup", args:[3,swarmDensities[3]]}, {name:"densitygroup", args:[4,swarmDensities[4]]},
                {name:"gridgroup", args:[1,swarmGrids[1]]}, {name:"gridgroup", args:[2,swarmGrids[2]]}, {name:"gridgroup", args:[3,swarmGrids[3]]}, {name:"gridgroup", args:[4,swarmGrids[4]]},
                {name:"orbitgroup", args:[1,orbitTempos[1]]}, {name:"orbitgroup", args:[2,orbitTempos[2]]}, {name:"orbitgroup", args:[3,orbitTempos[3]]}, {name:"orbitgroup", args:[4,orbitTempos[4]]},
                {name:"ringmodegroup", args:[1,ringModes[1]]}, {name:"ringmodegroup", args:[2,ringModes[2]]}, {name:"ringmodegroup", args:[3,ringModes[3]]}, {name:"ringmodegroup", args:[4,ringModes[4]]},
                {name:"orbitspreadgroup", args:[1,ringSpreads[1]]}, {name:"orbitspreadgroup", args:[2,ringSpreads[2]]}, {name:"orbitspreadgroup", args:[3,ringSpreads[3]]}, {name:"orbitspreadgroup", args:[4,ringSpreads[4]]},
                {name:"pulseinnergroup",args:[1,pulseInners[1]]},{name:"pulseinnergroup",args:[2,pulseInners[2]]},{name:"pulseinnergroup",args:[3,pulseInners[3]]},{name:"pulseinnergroup",args:[4,pulseInners[4]]},
                {name:"pulseoutergroup",args:[1,pulseOuters[1]]},{name:"pulseoutergroup",args:[2,pulseOuters[2]]},{name:"pulseoutergroup",args:[3,pulseOuters[3]]},{name:"pulseoutergroup",args:[4,pulseOuters[4]]},
                {name:"pulsetempogroup",args:[1,pulseTempos[1]]},{name:"pulsetempogroup",args:[2,pulseTempos[2]]},{name:"pulsetempogroup",args:[3,pulseTempos[3]]},{name:"pulsetempogroup",args:[4,pulseTempos[4]]},
                {name:"pulsephasegroup",args:[1,pulsePhases[1]]},{name:"pulsephasegroup",args:[2,pulsePhases[2]]},{name:"pulsephasegroup",args:[3,pulsePhases[3]]},{name:"pulsephasegroup",args:[4,pulsePhases[4]]},
                {name:"pulsetempospreadgroup",args:[1,pulseTempoSpreads[1]]},{name:"pulsetempospreadgroup",args:[2,pulseTempoSpreads[2]]},{name:"pulsetempospreadgroup",args:[3,pulseTempoSpreads[3]]},{name:"pulsetempospreadgroup",args:[4,pulseTempoSpreads[4]]},
                {name:"snakegroup",args:[1,snakeStates[1]]},{name:"snakegroup",args:[2,snakeStates[2]]},{name:"snakegroup",args:[3,snakeStates[3]]},{name:"snakegroup",args:[4,snakeStates[4]]},
                {name:"snakespacinggroup",args:[1,snakeSpacings[1]]},{name:"snakespacinggroup",args:[2,snakeSpacings[2]]},{name:"snakespacinggroup",args:[3,snakeSpacings[3]]},{name:"snakespacinggroup",args:[4,snakeSpacings[4]]},
                {name:"alignmentgroup",args:[1,alignments[1]]},{name:"alignmentgroup",args:[2,alignments[2]]},{name:"alignmentgroup",args:[3,alignments[3]]},{name:"alignmentgroup",args:[4,alignments[4]]},
                {name:"escapestrengthgroup",args:[1,escapeStrengths[1]]},{name:"escapestrengthgroup",args:[2,escapeStrengths[2]]},{name:"escapestrengthgroup",args:[3,escapeStrengths[3]]},{name:"escapestrengthgroup",args:[4,escapeStrengths[4]]},
                {name:"escapereturngroup",args:[1,escapeReturns[1]]},{name:"escapereturngroup",args:[2,escapeReturns[2]]},{name:"escapereturngroup",args:[3,escapeReturns[3]]},{name:"escapereturngroup",args:[4,escapeReturns[4]]},
                {name:"wavemodegroup",args:[1,waveModes[1]]},{name:"wavemodegroup",args:[2,waveModes[2]]},{name:"wavemodegroup",args:[3,waveModes[3]]},{name:"wavemodegroup",args:[4,waveModes[4]]},{name:"wavetypegroup",args:[1,waveTypes[1]]},{name:"wavetypegroup",args:[2,waveTypes[2]]},{name:"wavetypegroup",args:[3,waveTypes[3]]},{name:"wavetypegroup",args:[4,waveTypes[4]]},{name:"waverungroup",args:[1,(swarmRunning&&movingCount>0)?waveRuns[1]:0,new Date().getTime()]},{name:"waverungroup",args:[2,(swarmRunning&&movingCount>0)?waveRuns[2]:0,new Date().getTime()]},{name:"waverungroup",args:[3,(swarmRunning&&movingCount>0)?waveRuns[3]:0,new Date().getTime()]},{name:"waverungroup",args:[4,(swarmRunning&&movingCount>0)?waveRuns[4]:0,new Date().getTime()]},{name:"waveamplitudegroup",args:[1,waveAmplitudes[1]]},{name:"waveamplitudegroup",args:[2,waveAmplitudes[2]]},{name:"waveamplitudegroup",args:[3,waveAmplitudes[3]]},{name:"waveamplitudegroup",args:[4,waveAmplitudes[4]]},{name:"wavelengthgroup",args:[1,waveLengths[1]]},{name:"wavelengthgroup",args:[2,waveLengths[2]]},{name:"wavelengthgroup",args:[3,waveLengths[3]]},{name:"wavelengthgroup",args:[4,waveLengths[4]]},{name:"wavespeedgroup",args:[1,waveSpeeds[1]]},{name:"wavespeedgroup",args:[2,waveSpeeds[2]]},{name:"wavespeedgroup",args:[3,waveSpeeds[3]]},{name:"wavespeedgroup",args:[4,waveSpeeds[4]]},{name:"wavewidthgroup",args:[1,waveWidths[1]]},{name:"wavewidthgroup",args:[2,waveWidths[2]]},{name:"wavewidthgroup",args:[3,waveWidths[3]]},{name:"wavewidthgroup",args:[4,waveWidths[4]]},
                {name:"gain",args:[0]},{name:"portalmode",args:[portalMode]},{name:"portalx",args:[portalX]},{name:"portaly",args:[portalY]},{name:"portaldirection",args:[portalDirection]},{name:"portalwidth",args:[portalWidth]},{name:"portalspeed",args:[portalSpeed]},{name:"portaldeviation",args:[portalDeviation]},{name:"portalorigin",args:[1]},{name:"active",args:[1]},{name:"gain",args:[1]},
                {name:(swarmRunning && voice <= movingCount) ? "start" : "stop", args:[]}
            ]});
        } else if (shouldBeActive) {
            // A changed swarm size gives every remaining voice a new, centered grid slot.
            activationEntries.push({voice:voice, commands:[
                {name:"gridvoices", args:[current]}, {name:"swarms", args:[swarmCount]}
            ]});
        } else if (voiceActive[voice]) {
            activationEntries.push({voice:voice, commands:[
                {name:"stop", args:[]},
                {name:"active", args:[0]}
            ]});
        }
    }

    if (activationEntries.length) beginDelivery(activationEntries);
    else sendTarget(selectedTarget);
}
function msg_int(v) {
    if (inlet === 0) setCount(v);
}

function anything() {
    var args = arrayfromargs(arguments);

    if (inlet === 0) {
        if (messagename === "count" && args.length) setCount(args[0]);
        return;
    }

    if (messagename === "target") {
        var n = Math.floor(Number(args[0]));
        if (isFinite(n)) selectedTarget = Math.max(0, Math.min(maximum, n));
        return;
    }

    if ((messagename === "portalmode" || messagename === "portalx" || messagename === "portaly" || messagename === "portaldirection" || messagename === "portalwidth" || messagename === "portalspeed" || messagename === "portaldeviation") && args.length) {
        var portalValue=Number(args[0]); if(!isFinite(portalValue)) return;
        if(messagename==="portalmode") portalMode=Math.floor(Math.max(-1,Math.min(1,portalValue)));
        else if(messagename==="portalx") portalX=Math.max(0,Math.min(1,portalValue));
        else if(messagename==="portaly") portalY=Math.max(0,Math.min(1,portalValue));
        else if(messagename==="portaldirection") portalDirection=((portalValue%360)+360)%360;
        else if(messagename==="portalwidth") portalWidth=Math.max(0,Math.min(360,portalValue));
        else if(messagename==="portalspeed") portalSpeed=Math.max(0,Math.min(20,portalValue));
        else portalDeviation=Math.max(0,Math.min(100,portalValue));
        // target 0 reaches all loaded poly voices, including currently muted
        // voices. They therefore retain the portal when activated later.
        formationUpdateEntries([{name:messagename,args:[messagename==="portalmode"?portalMode:messagename==="portalx"?portalX:messagename==="portaly"?portalY:messagename==="portaldirection"?portalDirection:messagename==="portalwidth"?portalWidth:messagename==="portalspeed"?portalSpeed:portalDeviation]}]);
        return;
    }

    if (messagename === "moving" && args.length) {
        var m=Math.floor(Number(args[0])); if(!isFinite(m)) return;
        movingCount=Math.max(0,Math.min(current,m)); reportMoving();
        // Moving is itself the motion control: values above zero run that many
        // voices, zero stops the whole active swarm.
        swarmRunning = movingCount > 0;
        applyMovement(); applyWaveMovementGate(); return;
    }
    if (messagename === "start" && selectedTarget === 0) {
        swarmRunning=movingCount>0; applyMovement(); applyWaveMovementGate(); return;
    }
    if (messagename === "stop" && selectedTarget === 0) {
        swarmRunning=false; var e=[];
        for(var sv=1;sv<=current;sv++) e.push({voice:sv,commands:[{name:"stop",args:[]}]});
        beginDelivery(e); applyWaveMovementGate(); return;
    }

    if (messagename === "swarms" && args.length) {
        var sc = Math.floor(Number(args[0]));
        if (!isFinite(sc)) return;
        swarmCount = Math.max(1, Math.min(4, sc));
        if (selectedSwarm > swarmCount) selectedSwarm = swarmCount;
        outlet(2, "swarms", swarmCount);
        formationUpdateEntries([{name:"swarms",args:[swarmCount]}]);
        return;
    }

    if (messagename === "swarmtarget" && args.length) {
        var st = Math.floor(Number(args[0]));
        if (!isFinite(st)) return;
        selectedSwarm = Math.max(0, Math.min(4, st));
        var shown = selectedSwarm === 0 ? 1 : selectedSwarm;
        outlet(2, "setdensity", swarmDensities[shown]);
        outlet(2, "setgrid", swarmGrids[shown]);
        outlet(2, "setorbit", orbitTempos[shown]);
        outlet(2, "setringmode", ringModes[shown]);
        outlet(2, "setorbitspread", ringSpreads[shown]);
        outlet(2,"setpulseinner",pulseInners[shown]);outlet(2,"setpulseouter",pulseOuters[shown]);outlet(2,"setpulsetempo",pulseTempos[shown]);outlet(2,"setpulsephase",pulsePhases[shown]);outlet(2,"setpulsetempospread",pulseTempoSpreads[shown]);outlet(2,"setsnake",snakeStates[shown]);outlet(2,"setsnakespacing",snakeSpacings[shown]);outlet(2,"setalignment",alignments[shown]);outlet(2,"setescapestrength",escapeStrengths[shown]);outlet(2,"setescapereturn",escapeReturns[shown]);outlet(2,"setwavemode",waveModes[shown]);outlet(2,"setwavetype",waveTypes[shown]);outlet(2,"setwavecontinuous",waveRuns[shown]===2?1:0);outlet(2,"setwaveamplitude",waveAmplitudes[shown]);outlet(2,"setwavelength",waveLengths[shown]);outlet(2,"setwavespeed",waveSpeeds[shown]);outlet(2,"setwavewidth",waveWidths[shown]);
        return;
    }

    if ((messagename === "density" || messagename === "grid") && args.length) {
        var val = Math.max(0, Math.min(100, Number(args[0])));
        if (!isFinite(val)) return;
        var commands=[];
        if (selectedSwarm === 0) {
            for (var sg=1; sg<=4; sg++) {
                if (messagename === "density") swarmDensities[sg]=val; else swarmGrids[sg]=val;
                commands.push({name:messagename === "density" ? "densitygroup" : "gridgroup", args:[sg,val]});
            }
        } else {
            if (messagename === "density") swarmDensities[selectedSwarm]=val; else swarmGrids[selectedSwarm]=val;
            commands.push({name:messagename === "density" ? "densitygroup" : "gridgroup", args:[selectedSwarm,val]});
        }
        formationUpdateEntries(commands);
        return;
    }

    if(messagename==="wave"){if(!(swarmRunning&&movingCount>0))return;var wt=new Date().getTime(),we=[];if(selectedSwarm===0){for(var wtg=1;wtg<=4;wtg++){waveRuns[wtg]=1;we.push({name:"waverungroup",args:[wtg,1,wt]});}}else{waveRuns[selectedSwarm]=1;we.push({name:"waverungroup",args:[selectedSwarm,1,wt]});}outlet(2,"setwavecontinuous",0);formationUpdateEntries(we);if(selectedSwarm===0){for(var wrg=1;wrg<=4;wrg++)waveRuns[wrg]=0;}else waveRuns[selectedSwarm]=0;return;}

    if(messagename==="wavecontinuous"&&args.length){var won=Number(args[0])!==0?2:0,wce=[];if(selectedSwarm===0){for(var wcg=1;wcg<=4;wcg++){waveRuns[wcg]=won;wce.push({name:"waverungroup",args:[wcg,won,new Date().getTime()]});}}else{waveRuns[selectedSwarm]=won;wce.push({name:"waverungroup",args:[selectedSwarm,won,new Date().getTime()]});}if(!(swarmRunning&&movingCount>0)){for(var wci=0;wci<wce.length;wci++)wce[wci].args[1]=0;}formationUpdateEntries(wce);return;}

    if((messagename==="wavemode"||messagename==="wavetype"||messagename==="waverun"||messagename==="waveamplitude"||messagename==="wavelength"||messagename==="wavespeed"||messagename==="wavewidth")&&args.length){var wv=Number(args[0]);if(!isFinite(wv))return;var wa,wn;if(messagename==="wavemode"){wv=Math.floor(Math.max(0,Math.min(2,wv)));wa=waveModes;wn="wavemodegroup";}else if(messagename==="wavetype"){wv=Math.floor(Math.max(0,Math.min(1,wv)));wa=waveTypes;wn="wavetypegroup";}else if(messagename==="waverun"){wv=Math.floor(Math.max(0,Math.min(2,wv)));wa=waveRuns;wn="waverungroup";}else if(messagename==="waveamplitude"){wv=Math.max(0,Math.min(100,wv));wa=waveAmplitudes;wn="waveamplitudegroup";}else if(messagename==="wavelength"){wv=Math.max(1,Math.min(100,wv));wa=waveLengths;wn="wavelengthgroup";}else if(messagename==="wavespeed"){wv=Math.max(0,Math.min(2,wv));wa=waveSpeeds;wn="wavespeedgroup";}else{wv=Math.max(1,Math.min(100,wv));wa=waveWidths;wn="wavewidthgroup";}var wc=[],wepoch=messagename==="waverun"&&wv===1?new Date().getTime():null;if(selectedSwarm===0){for(var wg=1;wg<=4;wg++){wa[wg]=wv;wc.push({name:wn,args:wepoch===null?[wg,wv]:[wg,wv,wepoch]});}}else{wa[selectedSwarm]=wv;wc.push({name:wn,args:wepoch===null?[selectedSwarm,wv]:[selectedSwarm,wv,wepoch]});}formationUpdateEntries(wc);return;}

    if((messagename==="escapestrength"||messagename==="escapereturn")&&args.length){var ev=Number(args[0]);if(!isFinite(ev))return;ev=messagename==="escapestrength"?Math.max(0,Math.min(100,ev)):Math.max(.2,Math.min(10,ev));var ea=messagename==="escapestrength"?escapeStrengths:escapeReturns,en=messagename==="escapestrength"?"escapestrengthgroup":"escapereturngroup",ec=[];if(selectedSwarm===0){for(var eg=1;eg<=4;eg++){ea[eg]=ev;ec.push({name:en,args:[eg,ev]});}}else{ea[selectedSwarm]=ev;ec.push({name:en,args:[selectedSwarm,ev]});}formationUpdateEntries(ec);return;}

    if(messagename==="escape"){var token=new Date().getTime(),xc=[];if(selectedSwarm===0){for(var xg=1;xg<=swarmCount;xg++)xc.push({name:"escapegroup",args:[xg,token]});}else xc.push({name:"escapegroup",args:[selectedSwarm,token]});formationUpdateEntries(xc);return;}

    if(messagename==="alignment"&&args.length){var av=Math.max(0,Math.min(100,Number(args[0])));if(!isFinite(av))return;var ac=[];if(selectedSwarm===0){for(var ag=1;ag<=4;ag++){alignments[ag]=av;ac.push({name:"alignmentgroup",args:[ag,av]});}}else{alignments[selectedSwarm]=av;ac.push({name:"alignmentgroup",args:[selectedSwarm,av]});}formationUpdateEntries(ac);return;}

    if ((messagename==="snake"||messagename==="snakespacing")&&args.length){var sv=Number(args[0]);if(!isFinite(sv))return;sv=messagename==="snake"?(sv!==0?1:0):Math.max(0,Math.min(100,sv));var sa=messagename==="snake"?snakeStates:snakeSpacings,sn=messagename==="snake"?"snakegroup":"snakespacinggroup",sc=[];if(selectedSwarm===0){for(var sgx=1;sgx<=4;sgx++){sa[sgx]=sv;sc.push({name:sn,args:[sgx,sv]});}}else{sa[selectedSwarm]=sv;sc.push({name:sn,args:[selectedSwarm,sv]});}formationUpdateEntries(sc);return;}

    if ((messagename==="pulseinner"||messagename==="pulseouter"||messagename==="pulsetempo"||messagename==="pulsephase"||messagename==="pulsetempospread")&&args.length){
        var pv=Number(args[0]);if(!isFinite(pv))return;pv=messagename==="pulsetempo"?Math.max(0,Math.min(10,pv)):Math.max(0,Math.min(100,pv));
        var pa=messagename==="pulseinner"?pulseInners:messagename==="pulseouter"?pulseOuters:messagename==="pulsetempo"?pulseTempos:messagename==="pulsephase"?pulsePhases:pulseTempoSpreads;
        var pn=messagename==="pulseinner"?"pulseinnergroup":messagename==="pulseouter"?"pulseoutergroup":messagename==="pulsetempo"?"pulsetempogroup":messagename==="pulsephase"?"pulsephasegroup":"pulsetempospreadgroup",pc=[];
        var syncStamp=(messagename==="pulsetempospread"&&pv===0)?(new Date().getTime()):null;
        if(selectedSwarm===0){for(var pg=1;pg<=4;pg++){pa[pg]=pv;pc.push({name:pn,args:syncStamp===null?[pg,pv]:[pg,pv,syncStamp]});}}else{pa[selectedSwarm]=pv;pc.push({name:pn,args:syncStamp===null?[selectedSwarm,pv]:[selectedSwarm,pv,syncStamp]});}formationUpdateEntries(pc);return;
    }

    if (messagename === "orbitspread" && args.length) {
        var os=Math.max(0,Math.min(100,Number(args[0]))); if(!isFinite(os)) return;
        var osc=[];
        if(selectedSwarm===0){for(var osg=1;osg<=4;osg++){ringSpreads[osg]=os;osc.push({name:"orbitspreadgroup",args:[osg,os]});}}
        else {ringSpreads[selectedSwarm]=os;osc.push({name:"orbitspreadgroup",args:[selectedSwarm,os]});}
        formationUpdateEntries(osc); return;
    }

    if ((messagename === "orbit" || messagename === "ringmode") && args.length) {
        var ov=Number(args[0]); if(!isFinite(ov)) return;
        ov=messagename === "orbit" ? Math.max(-10,Math.min(10,ov)) : Math.floor(Math.max(0,Math.min(2,ov)));
        var oc=[];
        if(selectedSwarm===0){for(var og=1;og<=4;og++){if(messagename==="orbit")orbitTempos[og]=ov;else ringModes[og]=ov;oc.push({name:messagename==="orbit"?"orbitgroup":"ringmodegroup",args:[og,ov]});}}
        else {if(messagename==="orbit")orbitTempos[selectedSwarm]=ov;else ringModes[selectedSwarm]=ov;oc.push({name:messagename==="orbit"?"orbitgroup":"ringmodegroup",args:[selectedSwarm,ov]});}
        formationUpdateEntries(oc); return;
    }

    if (messagename === "flightrangelength" && args.length) {
        var rangeLength = Math.floor(Number(args[0]));
        if (isFinite(rangeLength)) flightRangeLength = Math.max(2, Math.min(700, rangeLength));
        return;
    }

    if (messagename === "randomizeflights") {
        var poolLow = 1;
        var poolHigh = 700;
        var flightEntries = [];
        if (currentMode === 0) {
            var shuffledFlights = shuffledIntegers(poolLow, poolHigh);
            for (var singleVoice = 1; singleVoice <= current; singleVoice++) {
                var chosenFlight = shuffledFlights[singleVoice - 1];
                flightEntries.push({voice:singleVoice, commands:[
                    {name:"flight", args:[chosenFlight]},
                    {name:(swarmRunning && singleVoice <= movingCount) ? "start" : "stop", args:[]}
                ]});
            }
        } else if (currentMode === 1) {
            var available = poolHigh - poolLow + 1;
            if (available < 2) {
                sendTarget(selectedTarget);
                return;
            }
            var length = Math.max(2, Math.min(flightRangeLength, available));
            var latestStart = poolHigh - length + 1;
            var shuffledStarts = shuffledIntegers(poolLow, latestStart);
            for (var rangeVoice = 1; rangeVoice <= current; rangeVoice++) {
                var rangeFirst = shuffledStarts[(rangeVoice - 1) % shuffledStarts.length];
                var rangeLast = rangeFirst + length - 1;
                flightEntries.push({voice:rangeVoice, commands:[
                    {name:"first", args:[rangeFirst]},
                    {name:"last", args:[rangeLast]},
                    {name:(swarmRunning && rangeVoice <= movingCount) ? "start" : "stop", args:[]}
                ]});
            }
        }
        beginDelivery(flightEntries);
        return;
    }

    if (messagename === "mode" && args.length) {
        var newMode = Math.floor(Number(args[0]));
        if (isFinite(newMode)) currentMode = Math.max(0, Math.min(2, newMode));
    }

    if (messagename === "tempomin" && args.length) {
        var newMinimum = Number(args[0]);
        if (isFinite(newMinimum)) tempoMinimum = Math.max(0, newMinimum);
        return;
    }

    if (messagename === "tempomax" && args.length) {
        var newMaximum = Number(args[0]);
        if (isFinite(newMaximum)) tempoMaximum = Math.max(0, newMaximum);
        return;
    }

    if (messagename === "gainmin" && args.length) {
        var newGainMinimum=Number(args[0]);
        if(isFinite(newGainMinimum)) gainMinimum=Math.max(0.1,Math.min(1,newGainMinimum));
        return;
    }

    if (messagename === "gainmax" && args.length) {
        var newGainMaximum=Number(args[0]);
        if(isFinite(newGainMaximum)) gainMaximum=Math.max(0.1,Math.min(1,newGainMaximum));
        return;
    }

    if (messagename === "randomizegain") {
        var gainLow=Math.min(gainMinimum,gainMaximum),gainHigh=Math.max(gainMinimum,gainMaximum),gainValues=[];
        for(var gainVoice=1;gainVoice<=current;gainVoice++) gainValues.push(gainLow+((gainVoice-1+Math.random())/current)*(gainHigh-gainLow));
        for(var gainShuffle=gainValues.length-1;gainShuffle>0;gainShuffle--){var gainSwapIndex=Math.floor(Math.random()*(gainShuffle+1)),gainSwap=gainValues[gainShuffle];gainValues[gainShuffle]=gainValues[gainSwapIndex];gainValues[gainSwapIndex]=gainSwap;}
        var gainEntries=[];for(gainVoice=1;gainVoice<=current;gainVoice++)gainEntries.push({voice:gainVoice,commands:[{name:"gain",args:[gainValues[gainVoice-1]]}]});
        beginDelivery(gainEntries);return;
    }

    if (messagename === "randomizetempo") {
        var low = Math.min(tempoMinimum, tempoMaximum);
        var high = Math.max(tempoMinimum, tempoMaximum);
        var tempoValues = [];
        for (var tempoVoice = 1; tempoVoice <= current; tempoVoice++) {
            // Stratified random values guarantee audible differences while
            // preserving randomness inside the selected interval.
            tempoValues.push(low + ((tempoVoice - 1 + Math.random()) / current) * (high - low));
        }
        for (var shuffleIndex = tempoValues.length - 1; shuffleIndex > 0; shuffleIndex--) {
            var tempoSwapIndex = Math.floor(Math.random() * (shuffleIndex + 1));
            var tempoSwap = tempoValues[shuffleIndex];
            tempoValues[shuffleIndex] = tempoValues[tempoSwapIndex];
            tempoValues[tempoSwapIndex] = tempoSwap;
        }
        var tempoEntries = [];
        for (tempoVoice = 1; tempoVoice <= current; tempoVoice++) {
            tempoEntries.push({voice:tempoVoice, commands:[{name:"tempo", args:[tempoValues[tempoVoice-1]]}]});
        }
        beginDelivery(tempoEntries);
        return;
    }

    if (selectedTarget === 0) {
        // Broadcast only to voices that belong to the current swarm.
        for (var voice = 1; voice <= current; voice++) {
            sendTarget(voice);
            sendCommand(messagename, args);
        }
        sendTarget(0);
    } else {
        sendTarget(selectedTarget);
        sendCommand(messagename, args);
    }
}

function notifydeleted() {
    initializationTask.cancel();
    initializationTask.freepeer();
    deliveryTask.cancel();
    deliveryTask.freepeer();
}

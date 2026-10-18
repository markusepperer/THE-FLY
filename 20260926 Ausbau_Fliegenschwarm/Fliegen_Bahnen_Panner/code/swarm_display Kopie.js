autowatch = 1;
inlets = 1;
outlets = 0;

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var maximum = 50;
var activeVoices = 4;
var swarmCount = 1;
var positions = [];
var shiftX = 0.0;
var shiftY = 0.0;
var expandValue = 100.0;
var spreadValue = 100.0;
var rotateValue = 0.0;
var shakeValue = 0.0;
var shakeOffsets = [[0,0],[0,0],[0,0],[0,0]];
var drawPending = false;
var drawTask = new Task(drawNow, this);

function clamp(v, lo, hi) {
    return Math.max(lo, Math.min(hi, Number(v)));
}

function requestDraw() {
    if (drawPending) return;
    drawPending = true;
    drawTask.schedule(33);
}

function drawNow() {
    drawPending = false;
    mgraphics.redraw();
}

function list() {
    var a = arrayfromargs(arguments);
    if (a.length < 3) return;
    var id = Math.floor(Number(a[0]));
    var x = Number(a[1]);
    var y = Number(a[2]);
    if (!isFinite(id) || id < 1 || id > maximum || !isFinite(x) || !isFinite(y)) return;
    positions[id] = [x, y];
    requestDraw();
}

function swarms(v) { swarmCount = Math.floor(clamp(v, 1, 4)); requestDraw(); }

function voices(v) {
    activeVoices = Math.floor(clamp(v, 0, maximum));
    requestDraw();
}

function expand(v) { expandValue = clamp(v, 1, 200); requestDraw(); }
function spread(v) { spreadValue = clamp(v, 0, 140); requestDraw(); }
function rotate(v) { rotateValue = clamp(v, -180, 180); requestDraw(); }
function shiftx(v) { shiftX = clamp(v, -1, 1); requestDraw(); }
function shifty(v) { shiftY = clamp(v, -1, 1); requestDraw(); }
function shake(v) {
    shakeValue = clamp(v, 0, 1);
    for (var i = 0; i < 4; i++) {
        shakeOffsets[i] = [(Math.random() * 2 - 1) * shakeValue * 0.10,
                           (Math.random() * 2 - 1) * shakeValue * 0.10];
    }
    requestDraw();
}
function resetquad() {
    shiftX = 0; shiftY = 0; expandValue = 100; spreadValue = 100;
    rotateValue = 0; shakeValue = 0;
    shakeOffsets = [[0,0],[0,0],[0,0],[0,0]];
    requestDraw();
}

function nodeGeometry() {
    var d = spreadValue * 0.0035;
    var angle = rotateValue * Math.PI / 180.0;
    var c = Math.cos(angle), s = Math.sin(angle);
    var base = [[-d,-d],[d,-d],[-d,d],[d,d]];
    var result = [];
    for (var i = 0; i < 4; i++) {
        var dx = base[i][0], dy = base[i][1];
        result.push([0.5 + shiftX + c*dx - s*dy + shakeOffsets[i][0],
                     0.5 + shiftY + s*dx + c*dy + shakeOffsets[i][1]]);
    }
    return result;
}

function centeredText(text, x, y) {
    var size = mgraphics.text_measure(text);
    mgraphics.move_to(x - size[0] * 0.5, y);
    mgraphics.show_text(text);
}

function drawSpeaker(name, x, y, side, index) {
    // Local speaker points to the right; rotate each corner toward the centre.
    var angles = [Math.PI/4, 3*Math.PI/4, -Math.PI/4, -3*Math.PI/4];
    var body = Math.max(5, side * 0.015);
    var cone = Math.max(8, side * 0.026);

    mgraphics.save();
    mgraphics.translate(x, y);
    mgraphics.rotate(angles[index]);
    mgraphics.set_source_rgba(0.40, 0.42, 0.45, 1.0);
    mgraphics.rectangle(-body-cone*0.35, -body*0.60, body, body*1.20);
    mgraphics.fill();
    mgraphics.move_to(-cone*0.35, -body*0.60);
    mgraphics.line_to(cone*0.65, -cone*0.62);
    mgraphics.line_to(cone*0.65, cone*0.62);
    mgraphics.line_to(-cone*0.35, body*0.60);
    mgraphics.close_path();
    mgraphics.fill();
    mgraphics.restore();

    mgraphics.set_font_size(Math.max(9, side * 0.026));
    mgraphics.set_source_rgba(0.22, 0.24, 0.28, 1.0);
    var labelOffset = Math.max(14, side * 0.045);
    // Front labels above their speakers, rear labels below.
    centeredText(name, x, index < 2 ? y-labelOffset : y+labelOffset+side*0.012);
}

function paint() {
    var width = box.rect[2] - box.rect[0];
    var height = box.rect[3] - box.rect[1];
    var side = Math.min(width, height);
    var ox = (width - side) * 0.5;
    var oy = (height - side) * 0.5;

    mgraphics.set_source_rgba(0.93, 0.95, 0.97, 1.0);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();

    var geometry = nodeGeometry();
    // Max nodes treats nsize as the radius of the influence zone. The former
    // drawing used it as the diameter and therefore rendered half-size zones.
    var diameter = expandValue * 0.0063 * side * 2.0;
    var names = ["1 FL", "2 FR", "4 RL", "3 RR"];

    for (var i = 0; i < 4; i++) {
        var nx = ox + geometry[i][0] * side;
        var ny = oy + geometry[i][1] * side;
        mgraphics.set_source_rgba(0.30, 0.50, 0.70, 0.22);
        mgraphics.ellipse(nx - diameter*0.5, ny - diameter*0.5, diameter, diameter);
        mgraphics.fill();
    }

    mgraphics.select_font_face("Arial");
    for (i = 0; i < 4; i++) {
        nx = ox + geometry[i][0] * side;
        ny = oy + geometry[i][1] * side;
        drawSpeaker(names[i], nx, ny, side, i);
    }

    // Followers first, then the active subgroup leaders 1..4.
    var drawOrder = [];
    for (var follower = swarmCount + 1; follower <= activeVoices; follower++) drawOrder.push(follower);
    for (var leaderId = 1; leaderId <= Math.min(swarmCount, activeVoices); leaderId++) drawOrder.push(leaderId);
    for (var drawIndex = 0; drawIndex < drawOrder.length; drawIndex++) {
        var id = drawOrder[drawIndex];
        if (!positions[id]) continue;
        var px = ox + clamp(positions[id][0], 0, 1) * side;
        var py = oy + clamp(positions[id][1], 0, 1) * side;
        var radius = Math.max(3.5, side * 0.012);

        var leaderColors = [[1.0,0.68,0.05],[0.90,0.15,0.12],[0.00,0.62,0.72],[0.85,0.15,0.70],[0.20,0.70,0.25]];
        var colorIndex = id <= swarmCount ? id : 0;
        var pc = leaderColors[colorIndex];
        mgraphics.set_source_rgba(pc[0], pc[1], pc[2], 1.0);
        mgraphics.ellipse(px-radius, py-radius, radius*2, radius*2);
        mgraphics.fill();
        mgraphics.set_source_rgba(0.20, 0.20, 0.20, 0.9);
        mgraphics.set_line_width(0.75);
        mgraphics.ellipse(px-radius, py-radius, radius*2, radius*2);
        mgraphics.stroke();

        mgraphics.set_font_size(Math.max(7, side * 0.021));
        mgraphics.set_source_rgba(0.12, 0.12, 0.12, 0.92);
        centeredText(String(id), px, py + radius + Math.max(8, side * 0.022));
    }
}

function onresize() { requestDraw(); }
function loadbang() { resetquad(); }
function notifydeleted() { drawTask.cancel(); drawTask.freepeer(); }

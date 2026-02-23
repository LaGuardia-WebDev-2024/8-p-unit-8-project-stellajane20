// Unit 8 Project: Night Sky Moon
// Additional Feature: mouseClicked (click anywhere to change expression)
// Background image is set in style.css

var expression = 0; // 0=smile, 1=surprised, 2=sleepy, 3=confused
var moonX = 290;
var moonY = 150;

//🟢setup Function - will run once
setup = function() {
    size(400, 600);
    background(255,255,255,0); // transparent canvas
};

//🟢draw Function - will run on repeat
draw = function(){
background(255,255,255,0); // background stays transparent

drawTitle(25, 25, "Click the Night Sky!");
drawMoon(moonX, moonY, 200);
drawMoonFace(moonX, moonY, 70, expression);
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function() {
  expression = expression + 1;

  if (expression > 3) {
    expression = 0;
}
};

//🟡Custom Function 1 - Draw Moon (takes parameters)
var drawMoon = function(moonXPosition, moonYPosition, moonSize) {
  textAlign(CENTER, CENTER);
  textSize(moonSize);
  fill(255, 255, 255);
  text("🌕", moonXPosition, moonYPosition);
};

//🟡Custom Function 2 - Draw Moon Face (takes parameters)
var drawMoonFace = function(moonXPosition, moonYPosition, faceSize, faceState) {
textAlign(CENTER, CENTER);
textSize(faceSize);
fill(0,0,0);

if (faceState === 0) {
  text("˶ᵔ ᵕ ᵔ˶", moonXPosition, moonYPosition);
} else if (faceState === 1) {
   text("•̪ o •̪", moonXPosition, moonYPosition);
} else if (faceState === 2) {
   text(" ᴗ˳ᴗ", moonXPosition, moonYPosition);
} else if (faceState === 3) {
   text("๑﹏๑⁭⁭", moonXPosition, moonYPosition);
}
};

//🟡Custom Function 3 - Draw Title (takes parameters)
var drawTitle = function(titleX, titleY, titleMessage) {
textAlign(LEFT, TOP);
textSize(28);
fill(255, 255, 255);
text(titleMessage, titleX, titleY);
};
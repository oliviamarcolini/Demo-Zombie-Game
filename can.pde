void setup() {
    size(600, 400);
};

//deli
var deli = 1;

var showCan1 = 0;
var showCan2 = 0;
var showCan3 = 0;
var showCan4 = 0;
var showCan5 = 0;

var can1X = round(random(0, 600));
var can2X = round(random(0, 600));
var can3X = round(random(0, 600));
var can4X = round(random(0, 600));
var can5X = round(random(0, 600));

var can1Y = round(random(0, 370));
var can2Y = round(random(0, 370));
var can3Y = round(random(0, 370));
var can4Y = round(random(0, 370));
var can5Y = round(random(0, 370));


var canState = 0;
var foodStatus = 0;
var delihover = 0;
var delisound = 0;
var leaveDeli = 0;
var investigateSound = 0;

var deliImage = loadImage("https://www.creativeuncut.com/gallery-38/art/tlou2-grocery-store-checkout.jpg");


draw = function(){
background(255, 255, 255);

if(mousePressed){
showXYPositions();
}

//deli scene
  
if(mouseX == can1X && mouseY == can1Y){
showCan1 = 1;
};

if(mouseX == can2X && mouseY == can2Y){
showCan2 = 1;
};

if(mouseX == can3X && mouseY == can3Y){
showCan3 = 1;
};

if(mouseX == can4X && mouseY == can4Y){
showCan4 = 1;
};

if(mouseX == can5X && mouseY == can5Y){
showCan5 = 1;
}

if(showCan1 == 1){
drawCan1();
}

if(showCan2 == 1){
drawCan2();
}

if(showCan3 == 1){
drawCan3();
}

if(showCan4 == 1){
drawCan4();
};

if(showCan5 == 1){
drawCan5();
};

if(showCan1 == 1 && showCan2 == 1 && showCan3 == 1 && showCan4 == 1 && showCan5 == 1){
foodStatus = 1;
};

if(foodStatus == 1){
// deli = 0;
sceneImage = deliImage;
sceneText = "You gathered all you could find, but 2 of the cans were empty. \n You now have 3 cans of food ['c' to continue]";
if(keyPressed && key == 'c'){
delisound = 1;
}
};

}


var drawScene = function(){
    image(sceneImage, 0, 0);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 370);   
    
};

var drawCan1 = function(){
textSize(50);
text("🥫", can1X, can1Y);
};

var drawCan2 = function(){
textSize(50);
text("🥫", can2X, can2Y);
};

var drawCan3 = function(){
textSize(50);
text("🥫", can3X, can3Y);
};

var drawCan4 = function(){
textSize(50);
text("🥫", can4X, can4Y);
};

var drawCan5 = function(){
textSize(50);
text("🥫", can5X, can5Y);
};

var drawCan6 = function(){
textSize(50);
text("🥫", 114, 204);
};

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
};
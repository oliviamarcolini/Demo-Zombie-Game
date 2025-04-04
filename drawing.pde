

void setup() {
    size(600, 400);
};

var showCan1 = 0;
var showCan2 = 0;
var showCan3 = 0;
var showCan4 = 0;
var showCan5 = 0;

//1st can row
var cany1 = 150;
var can1x = 150;
var can2x = 250;
var can3x = 350;


//2nd can row
var cany2 = 280;
var can4x = 150;
var can5x = 250;
var can6x = 350;

var foodStatus = 0;

draw = function(){
 
background(255, 255, 255);

if(mousePressed){
showXYPositions();
}

  showCan2 = 1;
  showCan3 = 1;
  showCan4 = 1;
  showCan5 = 1;
  showCan6 = 1;
  
if(mousePressed && mouseX > 165 && mouseX < 230 && mouseY < 157 && mouseY > 64){
showCan1 = 0;
}else{
showCan1 = 1};

if(mousePressed && mouseX > 268 && mouseX < 325 && mouseY > 62 && mouseY < 156){
showCan2 = 0;
};

if(mousePressed && mouseX > 371 && mouseX < 427 && mouseY < 157 && mouseY > 64){
showCan3 = 0;
};

if(mousePressed && mouseX > 165 && mouseX < 230 && mouseY < 158 && mouseY > 113){
showCan4 = 0;
};

if(mousePressed && mouseX > 268 && mouseX < 325 && mouseY < 200 && mouseY > 151){
showCan5 = 0;
}

/*
//possible answers
if(canState == 1){
fill(0, 0, 0);
textSize(30)
text("Oh, no. Looks like this can is empty!", 80, 390);
};

if(canState == 2){
fill(0, 0, 0);
textSize(30)
text("Jackpot! You've never been happier at the sight of canned beans.", 60, 390);
};
*/

if(showCan1 == 1){
drawCan1(can1x, cany1);
}

if(showCan2 == 1){
drawCan2(can2x, cany1);
}

if(showCan3 == 1){
drawCan3(can3x, cany1);
}

if(showCan4 == 1){
drawCan4(can4x, cany2);
};

if(showCan5 == 1){
drawCan5(can5x, cany2);
};

if(showCan6 == 1){
drawCan6(can6x, cany2);
}

/*
if(showCan1 == 0 && showCan2 == 0 && showCan3 == 0 && showCan4 == 0 && showCan5 == 0){
foodStatus = 1;
};
};

if(foodStatus == 1){
// deli = 0;
sceneImage = deliImage;
sceneText = "You gathered all you could find, but 2 of the cans were empty. \n You now have 3 cans of food ['c' to continue]";
if(keyPressed && key == 'c'){
delisound = 1;
}
};
*/

};



var drawCan1 = function(can1x, cany1){
textSize(100);
text("🥫", can1x, cany1);
};

var drawCan2 = function(can2x, cany1){
textSize(100);
text("🥫", can2x, cany1);
};

var drawCan3 = function(can3x, cany1){
textSize(100);
text("🥫", can3x, cany1);
};

var drawCan4 = function(can4x, cany2){
textSize(100);
text("🥫", can4x, cany2);
};

var drawCan5 = function(can5x, cany2){
textSize(100);
text("🥫", can5x, cany2);
};

var drawCan6 = function(can6x, cany2){
textSize(100);
text("🥫", can6x, cany2);
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


var drawkeyA = function(){
  noStroke();
  fill(0, 0, 0, 100);
  rect(105, 180, 100, 100); 
  fill(0, 0, 0);
  textSize(90);
  text("A", 126, 260);
}

var drawkeyD = function(){
  noStroke();
  fill(0, 0, 0, 100);
  rect(380, 180, 100, 100);
  fill(0, 0, 0);
  textSize(90);
  text("D", 400, 260);
}

var drawkeyW = function(){
  noStroke();
  fill(0, 0, 0, 100);
  rect(245, 50, 100, 100);
  fill(0, 0, 0);
  textSize(90);
  text("W", 253, 135);
}

var QuestionBox = function(){
   fill(255, 0, 0);
   rect(55, 40, 480, 80);
   rect(55, 150, 480, 70); 
   rect(55, 250, 480, 70);
   fill(0, 0, 0);
   textSize(20);
   text("You sure are in a pickle. There are zombies all \n around you, here are your options:", 70, 75);
   text("Offer can as peace offering", 70, 190);
   text("Throw can as a distraction while you try to \n surreptitiously run past them.", 70, 280);
};

var QuestionBox2 = function(){
   fill(255, 0, 0);
   rect(55, 40, 480, 70);
   rect(55, 130, 480, 60); 
   rect(55, 200, 480, 60);
   rect(55, 270, 480, 60);
   
}

var drawScene = function(){
    image(sceneImage, 0, 0);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 370);   
    
};

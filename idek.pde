setup = function() {
    size(600, 400);
    circleX = width / 2;
    circleY = height / 2;
};

//Background Images

var Bedroom = loadImage("https://i.pinimg.com/736x/ad/74/36/ad74366b6f54153266ad23ff5883744d.jpg");

var alleyway = loadImage("https://img.freepik.com/premium-photo/group-zombies-attacking-lone-survivor-dark-alleyway_997534-55773.jpg");

var alleyway2 = loadImage("https://img.freepik.com/premium-photo/group-zombies-attacking-lone-survivor-dark-alleyway_997534-55773.jpg");

var alleyway3 = loadImage("https://img.freepik.com/premium-photo/group-zombies-attacking-lone-survivor-dark-alleyway_997534-55773.jpg");

var alleyway4 = loadImage("https://img.freepik.com/premium-photo/group-zombies-attacking-lone-survivor-dark-alleyway_997534-55773.jpg");

var alleyway5 = loadImage("https://img.freepik.com/premium-photo/group-zombies-attacking-lone-survivor-dark-alleyway_997534-55773.jpg");

var windowImage = loadImage("https://img.freepik.com/free-photo/spooky-zombie-hands-window_23-2149130240.jpg");

var dogImage = loadImage("https://cdn.glitch.global/5cb7a3f5-e6a9-4a61-87bf-75b3a192484c/Screenshot%202025-03-04%20at%201.14.46%20PM.png?v=1741112092287");

var biteImage = loadImage("https://i.dailymail.co.uk/1s/2023/02/27/08/68119959-11797365-image-a-115_1677486228920.jpg");

var abandonedBuilding = loadImage("https://i.pinimg.com/736x/35/ea/00/35ea00ec65797815cf7be9eb8ed5eafd.jpg");

//Variable Declarations
//var click = 0;
//var blacktextbox = color(0, 0, 0);
//var knifecolor = color(194, 105, 105);
//var dogcolor = color(129, 181, 148);
//var cancolor = color(141, 129, 181);

var sceneImage = Bedroom;
var sceneText = "You wake up in what appears to be a regular day until you hear \n a commotion outside. [Click to continue]";

var zombieobjects = 0;
var knifechoice = 0;
var canchoice = 0;
var dogchoice = 0;

var rungame = 0;
var rungame1 = 0;
var rungame2 = 0;
var rungame3 = 0;
var rungame4 = 0;
var rungamewin = 0;
var rungamedie = 0;
rungamestart = 0;
var keyA = 0;
var keyD = 0;
var keyW = 0;

var zombietarget = 0;
var targetColor = color(255, 0, 0);
var targetX = 75; 
var targetY = 190; 
var targetSpeed = 9; 
var targetDiameter = 40;
var targetHit = false; 
var misszombie = 0;
var hitzombie = 0;

var x = 0; // zombie position
var y = 0;
var speed = 9;

var canchoice1 = 0;
var canchoice2 = 0;

var knifechoice1 = 0;
var knifechoice2 = 0;

var dogchoice1 = 0;
var dogchoice2 = 0;
var dogchoice3 = 0;


draw = function(){
  fill(255, 255, 255);
  
  drawScene();
  
  //1st scene
  if(mousePressed && sceneImage == Bedroom){
  zombieobjects = 1;}
  
  //2nd scene
  if(zombieobjects == 1){
   textSize(100);
   fill(255,255,255);
   sceneImage = windowImage;
   textSize(20);
   sceneText = "You look out the window and see a ZOMBIE apocalypse! \n Quick, grab one of the following! [Press 'k', 'c', or 'd']";
   noStroke();
   fill(194, 105, 105);
   rect(15, 80, 180, 190); //knife
   fill(129, 181, 148);
   rect(220, 80, 150, 190); //can
   fill(141, 129, 181);
   rect(400, 80, 175, 190); //dog
   fill(255, 255, 255);
   textSize(150);
   text("🔪 🥫 🐕", 30, 230);
  };
    
  //if pick knife
  if(keyPressed && sceneImage == windowImage){
     if(key == 'k'){
       sceneImage = alleyway;   
       sceneText = "Wow, did you just seriously leave your dog? Looks like \n karma caught up with you.";
       knifechoice = 1;
       zombieobjects = 0; 
    }
  };
  
  if(knifechoice == 1){
  QuestionBox();
   fill(0, 0, 0);
   textSize(20);
   text("You sure are in a pickle. There are zombies all \n around you, here are your options:", 70, 75);
   text("Try to throw your knife at zombies.", 70, 190);
   text("Try to quietly sneak past them.", 70, 290);
  
  if(mousePressed && mouseY < 220){
  knifechoice1 = 1;
  }else(knifechoice1 == 0);
  
  if(mousePressed && mouseY > 220){
  knifechoice2 = 1;
  }else(knifechoice2 == 0);
  }
  
  if(knifechoice2 == 1){
  knifechoice = 0;
  rungamestart = 1;
  }
  
  if (keyA == 1){
  drawkeyA();
  };
  
  if (keyD == 1){
  drawkeyD();
  };
  
  if (keyW == 1){
  drawkeyW();
  }
  
  //dying conditions for running game
  //need to press A
  if(sceneImage == alleyway && rungamestart == 1 && keyPressed){
  if(key == 'd' || key == 'w' || key == 's' || key == 'q' || key == 'e'){
  rungamedie = 1;
  };
  };
  //need to press W
  if(rungame == 1 && sceneImage == alleyway2 && keyPressed){
  if(key == 's' || key == 'q' || key == 'e' || key == 'd'){
  rungamedie = 1;
  };
  };
  //need to press D
  if(rungame2 == 1 && sceneImage == alleyway3 && keyPressed){
  if(key == 's' || key == 'q' || key == 'e' ||  key == 'a'){
  rungamedie = 1;
  };
  };
  //need to press W
  if(rungame3 == 1 && sceneImage == alleyway4 && keyPressed){
  if(key == 's' || key == 'q' || key == 'e' || key == 'a'){
  rungamedie = 1;
  };
  };
  //need to press A
  if(rungame4 == 1 && sceneImage == alleyway5 && keyPressed){
  if(key == 's' || key == 'q' || key == 'e' || key == 'd'){
  rungamedie = 1;
  };
  };
  
  //start running game
  if(rungamestart == 1){
  knifechoice2 = 0;
  sceneImage = alleyway;
  sceneText = "Careful not to make a sound. Press the keys indicaded, don't \n miss, or else...";
  keyA = 1;
  if(keyPressed && sceneImage == alleyway){
  if(key == 'a'){
  rungame = 1;
  }
  }
  };
  
  if(rungame == 1){
  sceneImage = alleyway2;
  keyA = 0;
  keyW = 1;
  rungamestart = 0;
  rungame1 = 1;
   if(keyPressed && rungame == 1){
  if(key == 'w'){
  rungame2 = 1;
  }
  }
  };
 
  if(rungame2 == 1){
  sceneImage = alleyway3;
  rungame1 = 0;
  keyW = 0;
  keyD = 1;
  if(keyPressed && rungame2 == 1){
  if(key == 'd'){
  rungame3 = 1;
  }
  }
  };
  
  if(rungame3 == 1){
  sceneImage = alleyway4;
  rungame2 = 0;
  keyD = 0;
  keyA = 0;
  keyW = 1;
  if(keyPressed && rungame3 == 1){
  if(key == 'w'){
  rungame4 = 1;
  }
  }
  };
  
  if(rungame4 == 1){
  sceneImage = alleyway5;
  rungame3 = 0;
  keyW = 0;
  keyD = 0;
  keyA = 1;
  if(keyPressed && rungame4 == 1){
  if(key == 'a'){
  rungamewin = 1;
  keyA = 0;
  }
  }
  };
  
  
  //if win running game
  if(rungamewin == 1){
  sceneImage = abandonedBuilding;
  rungame4 = 0;
  keyA = 0;
  keyD = 0;
  keyW = 0;
  sceneText = "Phew! That was a close one, but you managed to escape the \n zombies. Where to now?"
  }
  
  
  //if lose running game
  if(rungamedie == 1){
  keyA = 0;
  keyD = 0;
  keyW = 0;
  sceneImage = biteImage;
  textSize(100);
  fill(255, 0, 0);
  text("YOU DIE", 60, 90);
  sceneText = "Well, that failed miserably. Your knife fell out of your pocket, \n redirecting all the zombies' attention towards you.";
  };
  
  
  // Knife choice 1
  if (knifechoice1 == 1) {
  knifechoice = 0;
  sceneText = "Ok, you have ONE job. HIT THE RED TARGET \n [Press 'n' to start the minigame]"
  if(keyPressed && key == 'n'){
  zombietarget = 1;
  }
  }
  if(zombietarget ==1){
  textSize(150);
  text("🧟‍♂️", targetX - 75, targetY);

  // Moving the red target
  fill(targetColor);
  noStroke();
  ellipse(targetX, targetY, targetDiameter, targetDiameter); 
  targetX += targetSpeed;
  if (targetX < 25 || targetX > 575) {
    targetSpeed = -targetSpeed; // Reverse direction
  }
}

// If the target is shown, check for click
if (zombietarget == 1) {
  if (mousePressed) {
    var d = dist(mouseX, mouseY, targetX, targetY);
    if (d < targetDiameter / 2) {
      hitzombie = 1;
    } else {
    misszombie = 1; 
  }
  }
}

//if miss zombie
if(misszombie == 1){
  zombietarget = 0;
  sceneImage = biteImage;
  sceneText = "Looks like you need to practice your aim. \n Better luck next time.";
}

//if hit zombie
if(hitzombie == 1){
  zombietarget = 0;
  sceneImage = abandonedBuilding;
  sceneText = "How did you acquire such impressive aiming skills? You \n successfully escape the zombies. Where to now?";
}

  //if pick can
  if(keyPressed && sceneImage == windowImage){
     if(key == 'c'){
       sceneImage = alleyway;   
       sceneText = "Wow, did you just seriously leave your dog? Looks like \n karma caught up with you.";
       canchoice = 1;
       zombieobjects = 0;
     }
  };
  
  
  if(canchoice == 1){
  QuestionBox();
   fill(0, 0, 0);
   textSize(20);
   text("You sure are in a pickle. There are zombies all \n around you, here are your options:", 70, 75);
   text("Offer can as peace offering", 70, 190);
   text("Throw can as a distraction while you try to \n surreptitiously run past them.", 70, 280);
  
  if(mousePressed && mouseY < 220){
  canchoice1 = 1;
  }else(canchoice1 == 0);
  
  if(mousePressed && mouseY > 220){
  canchoice2 = 1;
  }else(canchoice2 == 0);
  };
    
  if(canchoice1 == 1){
  canchoice = 0;
  sceneImage = biteImage;
  textSize(100);
  fill(255, 0, 0);
  text("YOU DIE", 60, 90);
  sceneText = "The zombies are tempted by your offer until they see that it’s a \n can of tomato sauce and brains are way more delicious!";
  }
  
  if(canchoice2 ==1){
  canchoice = 0;
  sceneImage = abandonedBuilding;
  sceneText = " Well that works but now you no longer have food. \n You survive.. for now. [To be continued]";
  }
  
  //if pick dog
  if(keyPressed && sceneImage == windowImage){
    if(key == 'd'){
     sceneImage = alleyway;
     sceneText = "Ok, you face your first challenge. But fear not, you have your \n trusted companion with you."
     dogchoice = 1;
     zombieobjects = 0;
    }
  }
  
  if(dogchoice == 1){
  QuestionBox2();
  fill(0, 0, 0);
   textSize(20);
   text("You sure are in a pickle. There are zombies all \n around you, here are your options:", 70, 72);
   text("Command your dog to attack!", 70, 165);
   text("Fight them with.. your fists? ", 70, 235);
   text("Run as fast as you can.", 70, 305);
  
  if(mousePressed && mouseY < 190){
   dogchoice1 = 1;
   }else(dogchoice1 == 0);
   
   if(mousePressed && 200 < mouseY && mouseY < 260){
   dogchoice2 = 1;
   }else(dogchoice2 == 0);
   
   if(mousePressed && mouseY > 270){
   dogchoice3 = 1;
   }else(dogchoice3 == 0);
   
   };
  
  if(dogchoice1 == 1){
   dogchoice = 0;
   sceneImage = biteImage;
   sceneText = "You’ve only ever taught your dog how to sit..";
   textSize(100);
   fill(255, 0, 0);
   text("YOU DIE", 60, 90);
   }

   if(dogchoice2 == 1){
   dogchoice = 0;
   sceneImage = biteImage;
   textSize(100);
   fill(255, 0, 0);
   text("YOU DIE", 60, 90);
   sceneText = "You think you’re a fighter? They are ZOMBIES!";
   }

  if(dogchoice3 == 1){
   dogchoice = 0;
   sceneImage = dogImage;
   sceneText = "Yay! You and your dog survive the apocalypse. \n [More to come]";
   }
    
     x = x + speed;
    
   };

var drawScene = function(){
    image(sceneImage, 0, 0);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 370);   
    
};

var QuestionBox = function(){
   fill(255, 255, 255, 180);
   rect(55, 40, 480, 80);
   rect(55, 150, 480, 70); 
   rect(55, 250, 480, 70);
};

var QuestionBox2 = function(){
   fill(255, 255, 255, 180);
   rect(55, 40, 480, 70);
   rect(55, 130, 480, 60); 
   rect(55, 200, 480, 60);
   rect(55, 270, 480, 60);
};

var drawkeyA = function(){
  noStroke();
  fill(255, 255, 255, 150);
  rect(105, 180, 100, 100); 
  fill(0, 0, 0);
  textSize(90);
  text("A", 126, 260);
};

var drawkeyD = function(){
  noStroke();
  fill(255, 255, 255, 150);
  rect(380, 180, 100, 100);
  fill(0, 0, 0);
  textSize(90);
  text("D", 400, 260);
};

var drawkeyW = function(){
  noStroke();
  fill(255, 255, 255, 150);
  rect(245, 50, 100, 100);
  fill(0, 0, 0);
  textSize(90);
  text("W", 253, 135);
};
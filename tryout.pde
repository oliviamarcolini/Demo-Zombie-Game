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

var deliImage = loadImage("https://www.creativeuncut.com/gallery-38/art/tlou2-grocery-store-checkout.jpg");

var houseImage = loadImage("https://cdn.glitch.global/6ca8cccd-834f-4847-b5e9-f2aedceabc3e/broken-home-last-of-..._imresizer.jpg?v=1741478226143");

var kitchenImage = loadImage("https://cdn.glitch.global/6ca8cccd-834f-4847-b5e9-f2aedceabc3e/4ce174ce891347e0693c..._imresizer.jpg?v=1741478227504");

var bedroomImage = loadImage("https://cdn.glitch.global/6ca8cccd-834f-4847-b5e9-f2aedceabc3e/image_KQDDIgPX_17181..._imresizer.jpg?v=1741477613629");

var livingroomImage = loadImage("https://cdn.glitch.global/6ca8cccd-834f-4847-b5e9-f2aedceabc3e/contain_1200x630_imresizer.jpg?v=1741477612005");

var bathroomImage = loadImage("https://cdn.glitch.global/6ca8cccd-834f-4847-b5e9-f2aedceabc3e/garrick-ho-highressc..._imresizer.jpg?v=1741477610485");

//Variable Declarations
var sceneImage = Bedroom;
var sceneText = "You wake up in what appears to be a regular day until you hear \n a commotion outside. [Click to continue]";

//keeping track of choices
var userDog = 0;
var userCan = 0;
var userKnife = 0;

//start game
var zombieobjects = 0;
var knifechoice = 0;
var canchoice = 0;
var dogchoice = 0;

//running game
var rungame = 0;
var rungame2 = 0;
var rungame3 = 0;
var rungame4 = 0;
var rungamewin = 0;
var rungamedie = 0;
rungamestart = 0;
var keyA = 0;
var keyD = 0;
var keyW = 0;

//knife game
var zombietarget = 0;
var targetColor = color(255, 0, 0);
var targetX = 75; 
var targetY = 190; 
var targetSpeed = 9; 
var targetDiameter = 40;
var targetHit = false; 
var misszombie = 0;
var hitzombie = 0;
var x = 0; 
var y = 0;
var speed = 9;

var canchoice1 = 0;
var canchoice2 = 0;

var knifechoice1 = 0;
var knifechoice2 = 0;

var dogchoice1 = 0;
var dogchoice2 = 0;
var dogchoice3 = 0;

next = 0;
next2 = 0;
next3 = 0;
next4 = 0;

//house
var abandonedHouse = 0;
var bedroomScene = 0;
var bathroomScene = 0;
var livingroomScene = 0;
var kitchenScene = 0;

//deli
var deli = 0;
var showCan1 = 0;
var showCan2 = 0;
var showCan3 = 0;
var showCan4 = 0;
var showCan5 = 0;
var canState = 0;
var foodStatus = 0;
var delihover = 0;
var delisound = 0;
var leaveDeli = 0;
var investigateSound = 0;

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
       userKnife = 1;
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
  if(key == 'd' || key == 'w' || key == 's' || key == 'q' || key == 'e'){
  rungamedie = 1;
  };
  }
  };
  
  if(rungame == 1){
  sceneImage = alleyway2;
  keyA = 0;
  keyW = 1;
  rungamestart = 0;
  if(keyPressed && rungame == 1){
  if(key == 'w'){
  rungame2 = 1;
  }
  if(key == 's' || key == 'q' || key == 'e' || key == 'd'){
  rungamedie = 1;
  };
  }
  };
 
  if(rungame2 == 1){
  sceneImage = alleyway3;
  rungame = 0;
  keyW = 0;
  keyD = 1;
  if(keyPressed && rungame2 == 1){
  if(key == 'd'){
  rungame3 = 1;
  }
  if(key == 's' || key == 'q' || key == 'e' ||  key == 'a'){
  rungamedie = 1;
  }
  };
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
  if(rungame3 == 1 && sceneImage == alleyway4 && keyPressed){
  if(key == 's' || key == 'q' || key == 'e' || key == 'a'){
  rungamedie = 1;
  };
  };
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
  }if(key == 's' || key == 'q' || key == 'e' || key == 'd'){
  rungamedie = 1;
  };
  }
  };
  
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
  
  //if win running game
  if(rungamewin == 1){
  sceneImage = abandonedBuilding;
  rungame4 = 0;
  keyA = 0;
  keyD = 0;
  keyW = 0;
  sceneText = "Phew! That was a close one, but you managed to escape the \n zombies."
  QuestionBox();
  fill(0, 0, 0);
   textSize(20);
   text("You need to gather more resources. \n Where do you go?", 70, 75);
   text("Local deli", 70, 190);
   text("Abandoned house", 70, 280);
  
  if(mousePressed && mouseY < 220){
  deli = 1;
  }else(deli == 0);
  
  if(mousePressed && mouseY > 220){
  abandonedHouse = 1;
  }else(abandonedHouse == 0);
  }
  
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
  sceneText = "How did you acquire such impressive aiming skills? You \n successfully escape the zombies. ['c' to continue]";
  
  if(keyPressed && key == 'c'){
  next = 1;
  }else(next == 0)
  };
  
  
  //if pick can
  if(keyPressed && sceneImage == windowImage){
     if(key == 'c'){
       userCan = 1;
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
  
  if(canchoice2 == 1){
  canchoice = 0;
  sceneImage = abandonedBuilding;
  sceneText = " Well that works but now you no longer have food. \n You survive.. for now. ['c' to continue]";
  if(keyPressed && key == 'c'){
  next = 1;
  }
  };
  
  //if pick dog
  if(keyPressed && sceneImage == windowImage){
    if(key == 'd'){
     userDog = 1;
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
   sceneText = "Yay! You and your dog escape the zombies. \n ['c' to continue]";
   if(keyPressed && key == 'c'){
   next = 1;
   }
   }
  
   if(next == 1){
  hitzombie = 0;
  dogchoice3 = 0;
  rungamewin = 0;
  canchoice2 = 0;
  sceneText = "You're outside, what should you do next?"
  QuestionBox();
  fill(0, 0, 0);
   textSize(20);
   text("You need to gather more resources. \n Where do you go?", 70, 75);
   text("Local deli", 70, 190);
   text("Abandoned house", 70, 280);
  
  if(mousePressed && mouseY < 220){
  deli = 1;
  next = 0;
  }else(deli == 0);
  
  if(mousePressed && mouseY > 220){
  abandonedHouse = 1;
  next = 0;
  }else(abandonedHouse == 0);
  };
  
  //deli scene
  if(deli == 1){
  sceneImage = deliImage;
  sceneText = "Oh no, it looks like someone already ransacked it before you got \n the chance to. [Hover your mouse on the screen to look for food]."
  rungamewin = 0;
  canchoice2 = 0;
  dogchoice3 = 0;
  hitzombie = 0;
  
if(mouseX > 110 && mouseX < 140 && mouseY > 25 && mouseY < 70){
showCan1 = 1;
};

if(mouseX > 410 && mouseX < 450 && mouseY > 270 && mouseY < 300){
showCan2 = 1;
};

if(mouseX > 577 && mouseX < 600 && mouseY < 57 && mouseY > 10){
showCan3 = 1;
};

if(mouseX > 313 && mouseX < 338 && mouseY < 158 && mouseY > 113){
showCan4 = 1;
};

if(mouseX > 260 && mouseX < 288 && mouseY < 200 && mouseY > 151){
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
};

if(foodStatus == 1){
// deli = 0;
sceneImage = deliImage;
sceneText = "You gathered all you could find, but 2 of the cans were empty. \n You now have 3 cans of food ['c' to continue]";
if(keyPressed && key == 'c'){
delisound = 1;
}
};

if(delisound == 1){
deli = 0;
foodStatus = 0;
if(userCan == 1 || userKnife == 1){
sceneText = "You hear noises coming from the door in the back of the deli."
}
if(userDog == 1){
sceneText = "Your dog is barking at the door in the back of the deli."
}
QuestionBox();
fill(0, 0, 0);
   textSize(20);
   text("What will you do? Maybe there's more food there.", 70, 75);
   text("Investigate the sound", 70, 190);
   text("Leave the deli", 70, 280);

if(mousePressed && mouseY < 220){
  investigateSound = 1;
  }else(investigateSound == 0);
  
if(mousePressed && mouseY > 220){
  leaveDeli = 1;
  }else(leaveDeli == 0);
  };
  
  //abandoned house
  if(abandonedHouse == 1){
  hitzombie = 0;
  canchoice2 = 0;
  rungamewin = 0;
  dogchoice3 = 0;
  sceneImage = houseImage;
  sceneText = "Explore the house, but be careful! Press 'k' for kitchen, \n 'a' for bathroom, 'l' for livingroom, or 'e' for bedroom.";
  if(keyPressed){
  if(key == 'k'){
  kitchenScene = 1;
  };
  if(key == 'a'){
  bathroomScene = 1;
  };
  if(key == 'l'){
  livingroomScene = 1;
  };
  if(key == 'e'){
  bedroomScene = 1;
  };
  };
  };
    
  //kitchen
  if(kitchenScene == 1){
  abandonedHouse = 0;
  sceneImage = kitchenImage;
  sceneText = "Something, something. Press 'm' to go back and explore the \n other rooms."
  if(keyPressed && key == 'm'){
  kitchenScene = 0;
  abandonedHouse = 1;
  }
  };
  
  //bathroom
  if(bathroomScene == 1){
  abandonedHouse = 0;
  sceneImage = bathroomImage;
  sceneText = "Something, something. Press 'm' to go back and explore the \n other rooms."
  if(keyPressed && key == 'm'){
  bathroomScene = 0;
  abandonedHouse = 1;
  }
  };
  
  //livingroom
  if(livingroomScene == 1){
  abandonedHouse = 0;
  sceneImage = livingroomImage;
  sceneText = "Something, something. Press 'm' to go back and explore the \n other rooms."
  if(keyPressed && key == 'm'){
  livingroomScene = 0;
  abandonedHouse = 1;
  }
  };
  
  //bedroom
  if(bedroomScene == 1){
  abandonedHouse = 0;
  sceneImage = bedroomImage;
  sceneText = "Something, something. Press 'm' to go back and explore the \n other rooms."
  if(keyPressed && key == 'm'){
  bedroomScene = 0;
  abandonedHouse = 1;
  }
  };

  
  
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

var drawCan1 = function(){
textSize(50);
text("🥫", 100, 70);
};

var drawCan2 = function(){
textSize(50);
text("🥫", 420, 300);
};

var drawCan3 = function(){
textSize(50);
text("🥫", 568, 52);
};

var drawCan4 = function(){
textSize(50);
text("🥫", 300, 155);
};

var drawCan5 = function(){
textSize(50);
text("🥫", 250, 195);
};

var drawCan6 = function(){
textSize(50);
text("🥫", 114, 204);
};
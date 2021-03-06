//i made the button play sound when i click but in retrospect im realizing that won't work on other computers since they don't have the mp3
//so i guess file.play needs to be commented out for this to work on other computers
//the mp3 is included in the full file just in case tho

import processing.sound.*;
SoundFile file;
String audioName = "spongebob.mp3";
String path;

float elX = 0;
float elY = 0;
float elDiameter = 20;
float elXSpeed = 4;
float elYSpeed = 4;

float rectX = 150;
float rectY = 125;
float rectW = 100;
float rectH = 100;

boolean clickable = false;
boolean clicked = false;

void setup (){
  size(400,400);
  path = sketchPath(audioName);
  file = new SoundFile(this,path);
}

void draw(){
  background(150,150,200);
  noStroke();
  fill(220);
  rect(rectX,rectY,rectW,rectH);
  elX += elXSpeed;
  elY = elY + elYSpeed;
  ellipse(elX,elY,elDiameter,elDiameter);
  
  if(elX>rectX && elY<rectX+rectW){
    elXSpeed = elXSpeed * -1;
    elYSpeed = elYSpeed * -1;
    clickable = true;
    }
  
  if(clickable==true){
    stroke(255,0,0);
    rect(rectX,rectY,rectW,rectH);
  }
  
  if(clicked==true){
    fill(random(255),random(255),random(255));
    rect(rectX,rectY,rectW,rectH);
  }
}

void mousePressed(){
 if(clickable==true){
  if(mouseX>rectX && mouseX<rectX+rectW && mouseY>rectY && mouseY<rectY+rectH){
    clicked=true;
    //file.play();
  }
 }
}
    

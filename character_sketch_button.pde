//head doesn't hover but click that too lol

float x = 250;
float y = 275;
float w = 100;
float h = 60;

float x1 = 200;
float y1 = 50;
float w1 = 200;
float h1 = 100;

void setup(){
//bg
size (600,525);
background(255, 225, 225);

//head
noStroke();
rect(x1,y1,w1,h1);

//eyes
stroke(225,225,225);
strokeWeight(5);
ellipse(250,100,50,50);
ellipse(350,100,50,50);

//mouth
strokeWeight(5);
line(275,135,325,135);


//neck
fill(255,145,145);
noStroke();
rect(275,150,50,25);

//arms
noFill();
stroke(255,145,145);
strokeWeight(40);
arc(175, 300, 150, 150, PI,TWO_PI);
arc(425, 300, 150, 150, PI,TWO_PI);


//torso
noStroke();
fill(225,225,225);
quad(150,175,450,175,375,400,225,400);

//screen
fill(255,255,255);
rect(x,y,w,h);

//button1
stroke(145,185,145);
strokeWeight(5);
fill(145,225,145);
ellipse(225,225,60,60);

//button2
stroke(145,145,185);
fill(145,145,255);
ellipse(300,225,40,40);

//legs
fill(255,145,145);
noStroke();
rect(225,400,50,75);
rect(325,400,50,75);
}

void draw(){
  
 if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
    fill(255,145,145);
    rect(x,y,w,h);
 }
 
  if(mouseX>x1 && mouseX <x1+w1 && mouseY>y1 && mouseY <y1+h1){
    fill(255);
    rect(x1,y1,w1,h1);
 }
  
 //fill(255);
 rect(x,y,w,h);
   if(mousePressed){
    if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
      fill(255);
      rect(x,y,w,h);
      fill(255,145,145);
      textSize(20);
      text("error!",275,310);
     }
    }
   
   fill(255);
   rect(x1,y1,w1,h1);
   //eyes
   stroke(225,225,225);
   strokeWeight(5);
   ellipse(250,100,50,50);
   ellipse(350,100,50,50);
   //mouth
   strokeWeight(5);
   line(275,135,325,135);
     if(mousePressed){
       if(mouseX>x1 && mouseX<x1+w1 && mouseY>y1 && mouseY<y1+h1){
         fill(255,145,145);
         rect(x1,y1,w1,h1);
         //eyes
         stroke(225,225,225);
         strokeWeight(5);
         ellipse(250,100,50,50);
         ellipse(350,100,50,50);
         //mouth
         strokeWeight(5);
         line(275,135,325,135);
        }
       }
}

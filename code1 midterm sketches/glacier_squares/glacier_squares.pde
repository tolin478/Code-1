float x = 240;
float y = 240;

void setup(){
  size(600,600);
  background(255);
}

void draw(){
  translate(width/2,height/2);
  fill(245);
  stroke(255, 126, 94);
  strokeWeight(2);
  rect(x-350,x-350,110*2,110*2);
  
  noStroke();
  rotate(PI/6.0);
  fill(225);
  rect(x-330,y-330,90*2,90*2);
  
  rotate(PI/6.0);
  fill(195);
  rect(x-320,y-320,80*2,80*2);
  
  rotate(PI/6.0);
  fill(175);
  rect(x-310,y-310,70*2,70*2);
  
  rotate(PI/6.0);
  fill(155);
  rect(x-300,y-300,60*2,60*2);
}
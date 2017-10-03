float [] xPos = new float [51];
float [] yPos = new float [51];
float [] xSpeed = new float [51];
float [] ySpeed = new float [51];
int i = 0;


void setup(){
 size (500,500);
 
 for(int i=0; i<50; i++) {
   xPos [i] = random (0,400);
   yPos [i] = random (0,400);
   xSpeed [i] = random (-5,5);
   ySpeed [i] = random (-5,5);
 }
}

void draw(){
  background(150,200,150);
  
  noStroke();
  fill(255);
  rect(175, 175, 150,150);
    
  for (int i = 0; i<50; i++){
    ellipse(xPos [i], yPos [i], 15,15);
    xPos [i]+= xSpeed [i];
    yPos [i]+= ySpeed [i]; 
 
  if (xPos [i] > width || xPos [i] < 0 || yPos [i] > height || yPos [i] < 0) {
    xSpeed [i] *= -1;
    ySpeed [i] *= -1;
  }

  if ((xPos [i] > 175) && (xPos [i] < 325) && (yPos [i] > 175) && (yPos [i] < 325)) {
    xSpeed [i] *= -1;
    ySpeed [i] *= -1;
  }
}
}
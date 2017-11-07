float [] xBleachPos = new float [124];
float [] yBleachPos = new float [124];

float [] xColorPos = new float [9];
float [] yColorPos = new float [9];


void setup(){
 size(600,600);
 
 for (int i=0; i<124; i++){
   xBleachPos[i] = random (25,575);
   yBleachPos[i] = random (25,575);
 }
 
 for (int i=0; i<9; i++){
   xColorPos[i] = random (25,575);
   yColorPos[i] = random(25,575);
 }
 
}

void draw(){
  background(200); 
  
  for (int i=0; i<124; i++){
    stroke(255, 126, 94);
    //noStroke();
    strokeWeight(2);
    fill(255);
    ellipse(xBleachPos[i],yBleachPos[i],50,50);
  }
  
  for(int i=0; i<9; i++){
    //stroke(255, 126, 94);
    noStroke();
    //strokeWeight(2);
    fill(75);
    ellipse(xColorPos[i],yColorPos[i],50,50);
  }

}
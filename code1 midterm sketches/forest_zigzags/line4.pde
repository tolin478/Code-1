class line4{
  float xPosition=0;
  float yPosition=325;
 
  float newXPosition=0;
  float newYPosition=0;
 
  float distance=17.65;
  float range=86;
  
  void display(){
 
  for(int i=0; i<35; i++){
    //Defining the new positions
    newXPosition = xPosition + distance;
    newYPosition = yPosition + range / 2 - (i % 2) * range;
  
    //Draw the xig-zag
    stroke(150);
    line(xPosition,yPosition,newXPosition,newYPosition);
    xPosition = newXPosition;
    yPosition = newYPosition;
 
  }
 }
  
  
}
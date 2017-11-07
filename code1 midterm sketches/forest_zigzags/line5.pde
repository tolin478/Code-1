class line5{
  float xPosition=0;
  float yPosition=415;
 
  float newXPosition=0;
  float newYPosition=300;
 
  float distance=18.2;
  float range=82;
  
  void display(){
 
  for(int i=0; i<34; i++){
    //Defining the new positions
    newXPosition = xPosition + distance;
    newYPosition = yPosition + range / 2 - (i % 2) * range;
  
    //Draw the xig-zag
    stroke(200);
    line(xPosition,yPosition,newXPosition,newYPosition);
    xPosition = newXPosition;
    yPosition = newYPosition;
 
  }
 }
  
  
}
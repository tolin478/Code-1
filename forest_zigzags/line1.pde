class line1{
  
  float xPosition=0;
  float yPosition=50;
 
  float newXPosition=0;
  float newYPosition=0;
 
  float distance=15.4;
  float range=97;
  
  void display(){
 
  for(int i=0; i<40; i++){
    //Defining the new positions
    newXPosition = xPosition + distance;
    newYPosition = yPosition + range / 2 - (i % 2) * range;
  
    //Draw the xig-zag
    strokeWeight(2);
    stroke(0);
    line(xPosition,yPosition,newXPosition,newYPosition);
    xPosition = newXPosition;
    yPosition = newYPosition;
 
  }
 }
}
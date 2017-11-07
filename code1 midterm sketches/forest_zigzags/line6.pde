class line6{
  float xPosition=0;
  float yPosition=500;
 
  float newXPosition=0;
  float newYPosition=300;
 
  float distance=18.75;
  float range=81;
  
  void display(){
 
  for(int i=0; i<33; i++){
    //Defining the new positions
    newXPosition = xPosition + distance;
    newYPosition = yPosition + range / 2 - (i % 2) * range;
  
    //Draw the xig-zag
    stroke(230);
    line(xPosition,yPosition,newXPosition,newYPosition);
    xPosition = newXPosition;
    yPosition = newYPosition;
 
  }
 }
  
  
}
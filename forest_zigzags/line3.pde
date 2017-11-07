class line3{
  float xPosition=0;
  float yPosition=230;
 
  float newXPosition=0;
  float newYPosition=0;
 
  float distance=16.7;
  float range=90;
  
  void display(){
 
  for(int i=0; i<37; i++){
    //Defining the new positions
    newXPosition = xPosition + distance;
    newYPosition = yPosition + range / 2 - (i % 2) * range;
  
    //Draw the xig-zag
    stroke(100);
    line(xPosition,yPosition,newXPosition,newYPosition);
    xPosition = newXPosition;
    yPosition = newYPosition;
 
  }
 }
  
  
}
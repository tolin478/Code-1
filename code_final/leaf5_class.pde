class Leaf5 {
  float leafWidth = 150;
  
  float yPos = 0;
  float penX, penY, anchorX, anchorY;

  float swingAmount = radians(10);
  float angle = radians(90);
  
  float easing = 0.05;

  Leaf5() {
    anchorX = random(50,550);
    anchorY = -75;
  }
  
  void display() {
    
    float currentAngle = angle + cos(frameCount * .04) * swingAmount;
    penX = cos(currentAngle)*yPos + anchorX;
    penY = sin(currentAngle)*yPos + anchorY;
    
    yPos += 2;

    pushMatrix();
    
    translate(penX,penY);
    rotate( cos(frameCount * .03) * .15 );
    image(img3,0,0,leafWidth, leafWidth);
      
    popMatrix();
    
    if(yPos>650){
      yPos = 0;
      anchorX = random(50,550);
 
   }
   
   if(mousePressed){
     if(mouseX<penX){
        anchorX += 50 * easing;
        
     }else if(mouseX>penX){
        anchorX -= 50 * easing;
    
     }
   }
  }
}
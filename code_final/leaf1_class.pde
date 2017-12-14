class Leaf {  
  float leafWidth = 100;
  
  float yPos = 0;
  float penX, penY, anchorX, anchorY;

  float swingAmount = radians(20);
  float angle = radians(90);
  
  float mouseWidth = 100;
  
  float easing = 0.05;

  Leaf() {
    anchorX = random(50,550);
    anchorY = -75;
  }
  
  void display() {
    //noFill();
    //stroke(0);
    //ellipse(mouseX, mouseY, mouseWidth,mouseWidth);
    
    
    float currentAngle = angle + sin(frameCount * .03) * swingAmount;
    penX = cos(currentAngle)*yPos + anchorX;
    penY = sin(currentAngle)*yPos + anchorY;
    
    yPos += 1;
    
    pushMatrix();
    
    translate(penX,penY);
    rotate( sin(frameCount * .03) * .15 );
    image(img,0,0,leafWidth, leafWidth);
      
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
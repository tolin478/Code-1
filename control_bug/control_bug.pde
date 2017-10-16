//make bug move with WASD, use any other key to stop ?? 
//i didn't code that second part to happen but it does that and i thought it was useful

Bug myBug = new Bug();


void setup(){
  size(600,600);
  strokeWeight(5);
  stroke(145,145,145);
}

void draw(){
  background(200,250,200);
  myBug.display();
  myBug.regen();
  myBug.control();
}
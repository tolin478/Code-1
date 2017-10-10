//i tried to make it "jump" but it kinda just floats up when you click lmao

Bug myBug = new Bug();

void setup(){
  size(600,600);
  strokeWeight(5);
  stroke(145,145,145);
}

void draw(){
  background(200,250,200);
  myBug.display();
  myBug.move();
  myBug.jump();
}
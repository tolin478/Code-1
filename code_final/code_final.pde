PImage img;
PImage img2;
PImage img3;

Leaf myLeaf = new Leaf();
Leaf2 myLeaf2 = new Leaf2();
Leaf3 myLeaf3 = new Leaf3();
Leaf4 myLeaf4 = new Leaf4();
Leaf5 myLeaf5 = new Leaf5();

color color1 = color(255, 223, 165);
color color2 = color(211, 221, 237);

float amount = 0;

void setup(){
  size(600,600);
  
  img = loadImage("leaf4.png");
  img2 = loadImage("leaf6.png");
  img3 = loadImage("flower3.png");
}

void draw(){
  color tempColor = lerpColor(color1, color2, amount);
  background (tempColor);
  amount = abs(sin(millis() * .0003));
  
  myLeaf.display();
  myLeaf2.display();
  myLeaf3.display();
  myLeaf4.display();
  myLeaf5.display();
  
}
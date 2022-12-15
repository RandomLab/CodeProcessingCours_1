
PImage bob;

void setup(){
  size(800,800,P2D);
  bob = loadImage("bob.png");
  bob.resize(int(bob.width*0.8),int(bob.height*0.8));
}

float ang=0;

void draw(){
  
  tint(random(255),random(255),random(255));
  imageMode(CENTER);
  float de=random(0.2,0.9);
  image(bob,random(width),random(height),bob.width*de,bob.height*de);
  
  noTint();
  push();
  translate(width/2,height/2);
  rotate(ang);
  image(bob,0,0);
  
  translate(200,0);
  rotate(ang);
  scale(0.6);
  image(bob,0,0);
  
  pop();
  ang+=0.01;
}

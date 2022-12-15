import peasy.PeasyCam;
PeasyCam cam;

void setup() {
  size(800, 800, P3D);
  cam = new PeasyCam(this, 400);
}

float ang=0;

void draw() {
  background(0);
  lights();

  push();
  noFill();
  stroke(255);
  rotateX(PI/2);
  circle(0, 0, 1000);
  pop();

  push();
  //cercle blanc
  noFill();
  stroke(255);
  circle(0, 0, 400);
  //sphere jaune
  stroke(0,100);
  rotateY(ang);
  fill(255, 255, 0);
  sphere(100);
  //sphere blue
  translate(500,0);
  rotateY(ang);
  fill(0,150,240);
  sphere(80);
  //sphere grise
  translate(200,0);
  rotateY(ang);
  fill(150);
  sphere(40);
  pop();
  ang+=0.01;
}

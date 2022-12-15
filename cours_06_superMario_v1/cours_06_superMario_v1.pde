float px=100;
float py=100;
float vx=20;
float vy=20;
float ax=2;
float ay=0.3;
float friction=0.9;
float gravite=3;

float sol=700;

void setup() {
  size(800, 800, P3D);
}

void draw() {
  //arg : 1-3 : position oeil
  //arg : 4-6 : position cible
  //arg : 7-9 : orientation unitaire
  camera(px, py, mouseX, px, py, 0, 0, 1, 0);

  background(200);
  fill(255, 0, 0);
  rect(px-10, py-20, 20, 20);

  pushMatrix();
  fill(0, 0, 300);
  translate(100, 200, -100);
  box(100, 600, 800);
  popMatrix();


  fill(40);
  //Sol
  rect(-1000, sol, 2000, 300);

  fill(0, 200, 0);
  circle(300, 500, 40);
  circle(300, 900, 40);
  circle(100, 200, 40);
  circle(900, 500, 100);

  vy*=friction;
  vx*=friction;
  vy+=gravite;
  py+=vy;
  px+=vx;

  if (right)vx+=ax;
  if (left)vx-=ax;
  if (up)vy-=ay;
  if (down)vy+=ay;

  //if(py>sol)vy -= gravite; // test
  while (py>sol) {
    py=py-1;
  }
}

boolean up=false;
boolean down=false;
boolean left=false;
boolean right=false;

void keyPressed() {
  println(key+"   "+keyCode);

  if (keyCode==39)right=true;
  if (keyCode==37)left=true;
  if (keyCode==38) {
    up=true;
    vy-=100;
  }
  if (keyCode==40)down=true;
}
void keyReleased() {
  if (keyCode==39)right=false;
  if (keyCode==37)left=false;
  if (keyCode==38)up=false;
  if (keyCode==40)down=false;
}

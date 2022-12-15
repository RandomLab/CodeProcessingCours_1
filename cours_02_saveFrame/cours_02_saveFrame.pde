void setup() {
  size(800, 800);
}


void draw() {

  if (mousePressed==true) {
    rectMode(CENTER);

    fill(random(255))                      ;
    rect(mouseX, mouseY, random(50), random(50));
  }
}

void keyPressed() {
  save("saveFrame/save"+frameCount+".png");
}

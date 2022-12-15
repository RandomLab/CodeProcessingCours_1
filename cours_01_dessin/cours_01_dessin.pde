void setup() {
  size(800, 800);
}

void draw() {
  fill(random(255));
  stroke(random(255), 0, 0);
  strokeWeight(4);

  rectMode(CENTER);
  rect(mouseX, mouseY, 30, 30);
  rect(width-mouseX, mouseY, 30, 30);

  rect(width-mouseX, height-mouseY, 30, 30);
  fill(255);
  rect(mouseX, height-mouseY, random(50), 30);

  noStroke();
  fill(255, 7);
  ellipse(width/2, height/2, 400, 400);
  
  stroke(0);
  strokeWeight(1);
  line(width/2,height/2,mouseX,mouseY);
}

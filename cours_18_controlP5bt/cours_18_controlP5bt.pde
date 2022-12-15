import controlP5.*;

ControlP5 cp5;
color col=color(random(255));

void setup() {
  size(800, 800, P2D);
  cp5 = new ControlP5(this);

  Button b = cp5.addButton("SUPERBUTTON_A");
  b.setPosition(width/2-100, height/2-50);
  b.setSize(200, 100);
}
void draw() {
  background(col);
}

void controlEvent(ControlEvent ev) {
  println(ev.getController().getName());
  if (ev.getController().getName().equals("SUPERBUTTON_A")) {
    col=color(random(255), random(255), random(255));
  }
}

import controlP5.*;
ControlP5 cp5;
PImage input;
ColorWheel cA;
void setup() {
  size(1024, 800);
  input = loadImage("9vSlQkP88A-04j_RjL5GFHSArCQ.jpg");
  cp5 = new ControlP5(this);
  //input.resize(width,height);
  input.filter(GRAY);
  cA = cp5.addColorWheel("cA" , 10 , 10 , 200 ).setRGB(color(128,0,255));
  
  Button b = cp5.addButton("SUPERBUTTON_A");
  b.setPosition(10, 220);
  b.setSize(200, 20);
  
  input = floydSteinberg(input);  
  input.save("out.png");
}

void draw() {
  image(input, 0, 0);
}

void controlEvent(ControlEvent ev) {
  println(ev.getController().getName());
  if (ev.getController().getName().equals("SUPERBUTTON_A")) {
    println("cool");
    input = loadImage("9vSlQkP88A-04j_RjL5GFHSArCQ.jpg");
     input.filter(GRAY);
    input = floydSteinberg(input);
    changeColor(0xFF000000,cA.getRGB());
  }
}

void changeColor(int colA,int colB){
  for (int i = 0; i < input.pixels.length; i++){
    //println(hex(input.pixels[i]));
    if(input.pixels[i] == colA){
      input.pixels[i] = colB;
    }else{
      //input.pixels[i] = 0xFFFFFF00;
    }
  }
  input.updatePixels();
}

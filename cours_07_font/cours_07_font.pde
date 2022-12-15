PFont typo;



void setup(){
  size(800,800);  
  typo = loadFont("C059-Bold-48.vlw");
}

void draw(){
  textFont(typo);
  fill(random(255),random(255),random(255));
  text("Hello!",random(width),random(height));
}

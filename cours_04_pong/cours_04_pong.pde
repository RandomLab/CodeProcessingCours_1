//function initialisation
PImage img;

void setup(){
  size(800,800,P2D);
  background(30);
	img = loadImage("heart.png");
}

//boucle "loop"
void draw(){
	noStroke();
  fill(0,30);
	rect(0,0,width,height);
	
  ball();
  player();
	ia();

	stroke(255);
	line(width/2,0,width/2,height);
}

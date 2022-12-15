PFont typo;
String message="Debug";
int taille=400;

void setup(){
  size(800,800);  
  typo = loadFont("C059-Bold-24.vlw");
}

void draw(){
  background(0);
  textFont(typo);
  fill(random(255),random(255),random(255));
  
  fill(255);
  textAlign(LEFT,TOP);
  text(message
    +"\n framecount : "+frameCount
    +"\n mouseX : "+mouseX
    +"\n mouseY : "+mouseY
    ,20,40);
    
  fill(255);
  textAlign(CENTER,CENTER);
  text(hour()+":"+minute()+":"+second(),width/2,height/2);
  
  noFill();
  strokeWeight(20);
  stroke(255,0,0);
  float sec=map(second(),0,60,0,TWO_PI);
  arc(width/2,height/2,taille,taille,-PI/2,-PI/2+sec); 
  
  stroke(0,255,0);
  float min=map(minute(),0,60,0,TWO_PI);
  arc(width/2,height/2,taille-80,taille-80,-PI/2,-PI/2+min);
  
  stroke(0,0,255);
  float hour=map(hour(),0,24,0,TWO_PI);
  arc(width/2,height/2,taille-160,taille-160,-PI/2,-PI/2+hour); 
  
}

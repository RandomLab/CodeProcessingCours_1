PFont typo;

String message="Debug";

void setup(){
  size(800,800);  
  typo = loadFont("C059-Bold-48.vlw");
}

void draw(){
  background(0);
  textFont(typo);
  fill(random(255),random(255),random(255));
  
  fill(255);
  text(message
    +"\n framecount : "+frameCount
    +"\n mouseX : "+mouseX
    +"\n mouseY : "+mouseY
    ,20,40);
    
  fill(0,255,0);
  text(hour()+":"+minute()+":"+second(),width/2,height/2);
  
  
  rect(40,400,second()*10,100);
}

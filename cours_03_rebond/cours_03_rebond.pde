//function initialisation
void setup(){
  size(800,800);
  background(30);
}

float posX=50;
float vitX=4.8;
float posY=90;
float vitY=1.2;

//boucle "loop"
void draw(){
  //background(20);
  
  rect(posX,posY,40,40);
  
  posX=posX+vitX;
  posY=posY+vitY;
  
  if(posX>width-40){
    fill(255,50,50);
    vitX=vitX*-1;
    vitY=vitY+random(-1,1);
  }
  if(posY>height-40){
    fill(255,50,250);
    vitY=vitY*-1;
  }
  if(posX<0){
    fill(5,250,50);
    vitX=vitX*-1;
  }
  if(posY<0){
    fill(random(255));
    vitY=vitY*-1;
  }
}

float posX=50;
float vitX=4.8;
float posY=90;
float vitY=1.2;

void ball(){
	
	if(posX>width/2){
		fill(255);
	}else{
		fill(255,0,0);
	}

	image(img,posX,posY);
  //rect(posX,posY,20,20);
  posX=posX+vitX;
  posY=posY+vitY;
  
  if(posX>width-40){
    fill(255,50,50);
    vitX=vitX*-1;
    vitY=vitY+random(-1,1);
  }
  if(posY>height-20){
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

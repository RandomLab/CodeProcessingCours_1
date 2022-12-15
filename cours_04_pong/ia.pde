float iaX=800-20-30;
float iaY;
float iaWidth=20;
float iaHeight=150;
float react=1;

void ia(){

	if(posY<iaY+iaHeight/2){
		iaY-=react; //iaY=iaY-react;
		
	}
	if(posY>iaY+iaHeight/2){
		iaY+=react; //iaY=iaY+react;
	}

	rect(iaX,iaY,iaWidth,iaHeight);

	if(posX>iaX-iaWidth && 
		posX<iaX+iaWidth &&
		posY>iaY && 
		posY<iaY+iaHeight){
			vitX=vitX*-1;
	}



}
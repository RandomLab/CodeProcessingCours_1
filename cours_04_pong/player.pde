float playerX=30;
float playerY=0;
float playerWidth=20;
float playerHeight=150;

void player(){
	fill(255);
	
	playerY=mouseY;
	if(playerY>height-playerHeight){
		playerY=height-playerHeight;
	}

	if(posX>playerX && posX<playerX+playerWidth &&
		posY>playerY && posY<playerY+playerHeight){
			vitX=vitX*-1;
	}


  stroke(0);
	rect(playerX,playerY,playerWidth,playerHeight);
}

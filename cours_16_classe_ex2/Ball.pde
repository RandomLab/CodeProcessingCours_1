class Ball{

	float x;
	float y;
	float vx;
	float vy;

	float life=255;

	Ball(float x,float y){
		this.x=x;
		this.y=y;

		vx=random(-0.5,0.5);
		vy=random(2);
	}

	void draw(){
		x+=vx;
		y+=vy;
		life-=0.3;

		noStroke();
		fill(255,life);
		ellipse(x,y,20,20);

	}


}
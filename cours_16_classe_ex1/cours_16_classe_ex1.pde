Ball [] tabBall = new Ball [500];

void setup(){
  size(800,800,P2D);
	for (int i = 0; i < tabBall.length; i++) {
		tabBall[i] = new Ball();
	}
}

void draw(){
	background(0);
	
	for (int i = 0; i < tabBall.length; i++) {
		tabBall[i].link(tabBall);
	}

	for (int i = 0; i < tabBall.length; i++) {
		tabBall[i].aff();
	}

}

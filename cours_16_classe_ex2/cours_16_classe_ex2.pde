
ArrayList<Ball> tabBall = new ArrayList<Ball>();

void setup(){
	size(800,800,P2D);

	for (int i = 0; i < 1000; ++i) {
		tabBall.add(new Ball(random(width),random(height)));
	}

}

void draw(){
	background(0);

	for (int i = 0; i < tabBall.size(); ++i) {
		tabBall.get(i).draw();
	}

	for (int i = 0; i < tabBall.size(); ++i) {
		if(tabBall.get(i).life<0){
			tabBall.remove(i);
		}
	}

	Ball b = new Ball(random(width),0);
	tabBall.add(b);
	println(tabBall.size());
}
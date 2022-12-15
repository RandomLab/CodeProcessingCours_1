class Ball{
	float px;
	float py;
	float vx = random(-1,1);
	float vy = random(-1,1);
	color col = color(random(255),random(255),random(255));
	int taille = int(random(5,10));

	//constructor
	Ball(){
		px = random(width);
		py = random(height);
	}

	void aff(){
		px+=vx;
		py+=vy;
		fill(col);
		noStroke();
		ellipse(px,py,taille,taille);

		if(px<0 || px>width){
			vx*=-1;
		}
		if(py<0 || py>height){
			vy*=-1;
		}
	}
	
	void link(Ball [] tab){
		for(int i=0;i<tab.length;i++){
			if(tab[i]!=this){
				float d = dist(px,py,tab[i].px,tab[i].py);
				if(d<100){
						stroke(255,map(d,0,100,255,0));
						line(px,py,tab[i].px,tab[i].py);
				}
			}
		}	
	}

}
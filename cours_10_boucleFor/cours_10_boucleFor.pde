void setup(){
  size(800,800);
  //fullScreen(P2D);
}

void draw(){
  background(0);
  // i = i + 10;   i+=10;
  // i = i + 1;    i+=1;   i++;
  noStroke();
  
  for(int i=0;i<width;i+=10){
    for(int j=0;j<height;j+=10){
      fill(random(255),random(255),random(255));
      rect(i,j,10,8);
    }
  }
}

void setup(){
  size(800,800);
}

float x=0;

void draw(){
  background(0);

  fill(255);
  noStroke();
  noiseSeed(30);
  for(int i=0;i<width;i++){
    
    float val = noise(float(i)*0.01+x);
    rect(i,0,1,val*200);
    //println(val);
  }
  
  x+=0.01;
}

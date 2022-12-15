void setup() {
  size(800, 800,P2D);
}
float x=0;
float y=0;
float z=0;
int inc=3;

void draw() {
  background(0);
  
  noStroke();
  //noiseSeed(30);
  noiseDetail(21);
  float passBas=0.31;
  float passHaut=0.74;
  
  for (int i=0; i<width; i+=inc) {
    for (int j=0; j<height; j+=inc) {
      float val = noise(float(i)*0.01+x, float(j)*0.01+y,z);
      
      if(val<passBas)val=0;
      if(val>passHaut)val=255;
      fill(
        map(val, passBas, passHaut, 0, 255)
        ,0
        ,255);
      rect(i, j, inc, inc);
      //println(val);
    }
  }

  x+=0.007;
  y+=0.005;
  z+=0.0214;
}

void keyPressed(){
  if(key=='s'){
    //save(hour()+"_"+minute()+"_"+second()+"_image.png");
    save("image.png");
  }
}

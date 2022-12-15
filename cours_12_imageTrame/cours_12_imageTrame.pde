PImage ima;

void setup(){
  size(800,800,P2D);
   ima = loadImage("montagne.jpeg");
   ima.resize(width,height);
}
float ang=0;

void draw(){
  background(0);
  //image(ima,0,0);
  
  for(int i=0;i<width;i+=10){
    for(int j=0;j<height;j+=10){
      
      color col = ima.get(i,j);
      float bri=map(brightness(col),0,255,0,0.1);
      push();
      fill(col);
      translate(i,j);
        
      if(bri>0.033){
        rotate(ang*bri);
        rect(0,0,3,139);
      }else{
        ellipse(0,0,20,20);
      }
      pop();
    }
  }
  
  ang+=0.01;
}

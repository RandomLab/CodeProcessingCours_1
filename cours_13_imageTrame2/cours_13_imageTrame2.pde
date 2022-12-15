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
      
      if(blue(col)>83){
        //fill(63,151,161);
        fill(col);
        rect(i,j,10,6);
      }
      if(red(col)>152){
        fill(114,46,46);
        rect(i,j,10,50);
      }
      if(green(col)>172){
        fill(32,158,32);
        rect(i,j,7,10);
      }
    }
  }
  
  ang+=0.01;
}

String [] lignes;
String texte;

int index=0;
int x=0;
int y=20;

void setup(){
  size(800,800,P2D);
  lignes = loadStrings("texte.txt");
  
  texte = join(lignes,"");
  println(texte);
}

void draw(){
  if(index<texte.length()){
    char c = texte.charAt(index);
    
    if(c==' '){
      fill(255,0,0);
    }else{
      fill(int(c));
    }
    rect(x,y,10,5);
    
    fill(0);
    text(c,x,y-2);
    
    index++;
    x+=12;
    if(x>width){
      y+=30;
      x=0;
    }
  } 
  
}

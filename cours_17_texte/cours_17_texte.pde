import peasy.PeasyCam;
PeasyCam cam;
String txt;
String txtAff="";
PFont font;
int index=0;
int timer=0;
int timerMax=10;

void setup(){
  size(800,800,P3D);
   cam = new PeasyCam(this, 400);
  //je charge le texte dans txt
  txt = join(loadStrings("texte.txt"),'\n');
  println(txt);
  font = loadFont("CoreSansA55Medium-20.vlw");
}

void draw(){
  background(0);
  fill(255,255,0);
  textFont(font);
  text(txtAff,50,50,width-100,height-100);
  
  //timer pour ajouter un caractère de "txt" à "txtAff"
  if(timer>timerMax){
    //j'ajoute a txtAff un caratère de de txt par rapport a son index
    txtAff += txt.charAt(index);
    index++;
    if(index>=txt.length()){
      //quand j'arrive à la fin de on index
      //je 'reboot' l'index=0 et txtAff="" (je le vide de ses caractères)
      index=0;
      txtAff="";
    }
    timer=0;
    timerMax=int(random(5));
  }
  
  timer++;
}

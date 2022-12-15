String [] chaines={"Hello","Téré","Bonjour","Ciao","Ola"};
PFont [] typo = new PFont[4];
int index=0;
int indexTypo=0;

void setup(){
  size(800,800,P2D);
  typo[0] = loadFont("CoreSansN85Heavy-40.vlw");
  typo[1] = loadFont("DejaVuSerif-Bold-40.vlw");
  typo[2] = loadFont("GTAmerica-CondensedRegularItalic-40.vlw");
  typo[3] = loadFont("IBMPlexSans-SemiBold-40.vlw");
}

void draw(){
  fill(random(255),random(255));
  
  indexTypo = round(random(typo.length-1));
  textFont(typo[indexTypo]);
  
  text(chaines[index],random(width),random(height));
  index++;
  if(index>=chaines.length)index=0;
}

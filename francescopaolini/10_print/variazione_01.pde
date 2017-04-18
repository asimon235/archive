//test 10 print su processing

//paramtri iniziali
int w = 10;     //valore intero "w" per larghezza
int h = 10;     //valore intero "h" per l'altezza
int index = 0;  //valore intero "index"

//configurazione 
void setup() {
  size(640, 384);          //dimensione rettangolo
  background(#000000);     //colore sfondo
  strokeWeight(3);         //spessore linea
  stroke(255);             //colore linea
  smooth();                //usa l'anti-alias, processing lo utilizzada normalemente
}

//ciclo di disegno, un frame 60fps
void draw() {
  int x1 = w*index;        //crea una variabile "x1" (frame=0) 
  int x2 = x1 + w;         //crea una variabile "x2" (frame=16)
  int y1 = h*23;           //crea una variabile "y1" (frame=368)
  int y2 = h*24;           //crea una variabile "y2" (frame=384)

  if (random(2) < 1) {     //generami un numero razionale tra 0 e 2
    line(x2, y1, x1, y2);  //se minore di 1 disegnami una linea
  } else {
    line(x1, y1, x2, y2);  //se maggiore di 1 disegnami uan linea
  }
  index++;                 //incrementa di 1 la variabile index
  if (index == width/w) {  
    PImage p = get(0, h, width, h*23);  //cattura un immagine
    background(#000000);                //cancella lo sfondo, coloro in giallo
    set(0, 0, p);                       //rilascia l'immagine "p" alle cordinate 0-0
    index = 0;                          //
  }
  if (mousePressed) {
    colorMode(HSB, 360, 100, 100);
    strokeWeight(1);
    stroke(mouseY, 100, mouseX);
  } else {
    strokeWeight(2);
    stroke(0);
  }
}

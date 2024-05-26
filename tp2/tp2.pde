// palavecino julian 

PImage img1;
PImage img2;
PImage img3;


PFont tipografia;
PFont tipografia2;

int contador;

String titulo;
String texto;
String texto2;
String introduccion;
String elenco;


float posX = -100; 
float velocidad = 1;
float opacidad = 0;
float posY2 = 500;

void setup(){
  
size (640, 480);
img1 = loadImage("imagen1.jpg");
img2 = loadImage("imagen2.jpg");
img3 = loadImage("imagen3.jpg");
tipografia = loadFont ("tipografia.vlw");
contador = 0;
titulo = "LUPIN";
texto = "NETFLIX";
texto2 = "9 DE ENERO 2021";
introduccion = "                        RESUMEN:\nLas historias de Assane Diop, \nun hábil ladrón y maestro del disfraz,\n que busca vengar la injusticia sufrida por su padre.\n El padre de Assane fue acusado injustamente\n de un crimen que no cometió\n y terminó muriendo en prisión.\n Inspirado por las historias de Arsène Lupin\n, Assane se convierte en un ladrón astuto\n y carismático que utiliza sus habilidades\n para desentrañar la conspiración y vengar a su padre.";
elenco = "ELENCO:\nOmar Sy: Assane Diop. \nMamadou Haïdara: Joven Assane Diop. \nLudivine Sagnier: Claire.\nLudmilla Makowski: Joven Claire. \nEtan Simon: Raoul.\nClotilde Hesme: Juliette Pellegrini.\nLéa Bonneau: Joven Juliette Pellegrini.\nNicole Garcia: Anne Pellegrini.\nHervé Pierre: Hubert Pellegrini. \nAntoine Gouy: Benjamin Ferel.\nAdrian Valli de Villebonne: Joven Benjamin Férel.\nSoufiane Guerrab: Teniente\nYoussef Guedira.\nVincent Londez: Capitán Romain Laugier. \nShirine Boutella: Teniente Sofia Belkacem.    \nGuionistas:\nGeorge Kay\nEliane Montane \nFrançois Uzan    \nProductores:\nIsabelle Degeorges\nMartin Jaubert \nNathan Franck \nSidonie Dumas \nChristophe Riandée    \nDirectores:\nMarcela Said \nLouis Leterrier    \nEmpresas que han participado:\nGaumont Production\nNetflix France   \nBanda Sonora:\nMathieu Lamboley    \nEquipo técnico:\nChristophe Nuyens \nMartial Schmeltz.";
noStroke ();
tipografia2 = loadFont ("tipografia2.vlw");
background (255); 
}

void draw(){
 contador ++;
 if (contador<=400){
   image(img1,0,0,width, height);
   fill (242,76,29, opacidad);
   textFont (tipografia);
   textSize (80);
   textAlign(CENTER);
   text (titulo,130, 100);
   fill (0);
   textAlign(LEFT);
   textSize (40);
   fill(255,0,0);
   text (texto, 10,440);
   textSize(15);
   fill (255);
   text(texto2,20, 460);
   opacidad += 1;
   posX =-500;
   
   }
 else if (contador> 400 && contador<=1000){
   image (img2, 0, 0, width, height); 
   textFont(tipografia2);
   textSize(20);
   text(introduccion,posX, 200,640,500);
 
  if (posX <= 90) {
    posX +=3;
    
    }
  } 
   
   
   

    
 else if (contador>1000){
   image (img3,0,0, width, height);
   fill(255);
   textSize (15);
   text (elenco, 20, posY2);
   posY2 --;
 
  
   }
 }
    


void mousePressed () {
if (contador>1600) {
   contador=0;
   opacidad = 0;
   posX = -100;
   posY2 = -50;

 } 
   
 }

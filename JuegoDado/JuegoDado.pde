private Dado dado;
private Tablero tablero;

PImage [] imagenes;
int imagen = 0;
int numeroDado;


public void setup(){
  size(600,400);
  tablero= new Tablero();
  tablero.Tablero(new PVector(50,50));
  dado= new Dado();
  imagenes= new PImage[6];
  
  int img= 0;
  do{
    imagenes[img] = loadImage("cara"+"img"+".png");
    img++;
  } while (img < imagenes.lenght);
}

public void draw(){
  background(0);
  tablero.display();
  image(imagenes[dado.getIndiceImagen()],width/2,height/2,200,200);
  imageMode(CENTER);
}

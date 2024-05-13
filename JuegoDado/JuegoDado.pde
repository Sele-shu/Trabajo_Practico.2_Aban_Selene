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
  imagenes= new PImage[6]

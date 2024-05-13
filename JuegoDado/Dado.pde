class Dado extends Figura{
  private int caras;
  private int valor;
  
  Dado(int x, int y, int numCaras){
    super(x,y);
    caras=numCaras;
    valor=1;//valor inicial
  }
  void lanzar(){
    valor=int(random(1,caras+1));//simulacro del lanzamiento
  }
  int obtenerValor(){
    return valor;
  }
}

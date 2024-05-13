class Figura{
  int[] posicion = new int[2];
  
  Figura(int x, int y){
    posicion[0]=x;
    posicion[1]=y;
  }
  void setup(){
   size(400,400);
  }
  void draw(){
    background(255);
    //dibujar el controno del dado
    rectMode(CENTER);
    fill(#FF4500);
    stroke(#FCF32E);
   
    rect(width/2,height/2,200,200,10);
    
    //dibujar los puntos dependiendo del valor del dado
    int valorDado=3;
    drawDots(valorDado);
  }
  void drawDots(int num){
    fill(0);
    noStroke();
    if(num%2!=0){
      ellipse(width/2,height/2,30,30);//centro
    }
    if(num>1){
      ellipse(width/2-40,height/2-40,30,30);//arriba izquierda
      ellipse(width/2+40,height/2+40,30,30);//abajo derecha
    }
    if(num>3){
      ellipse(width/2-40,height/2+40,30,30);//abajo izquierda
      ellipse(width/2+40,height/2-40,30,30);//arriba derecha
    }
    if(num==6){
      ellipse(width/2-40,height/2,30,30);//izquierda central
      ellipse(width/2+40,height/2,30,30);//derecha central
    }
  }
}

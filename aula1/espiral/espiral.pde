
void setup() //Vai ser executado apenas uma vez
{
  size(800,800);
}

void desenhaPontoNoCirculo (float x, float y){
  vertex(x,y);
}

float calcula_raio (float theta, int nVoltas){
   float baseRaio = 0.2*width/2;
   if(TWO_PI* nVoltas){
     return baseRaio * nVoltas;
   }
   return baseRaio;
}
void draw(){ //Vai ser chamado inumeras vezes
  //Quantas vezes por segundo draw() vai ser chamada. framerate pode ser chamada
  //frameCount vai iterar de 1 até 30 nesse caso
  //background(200);
  translate(width/2, height/2);
  //int n = round(map(mouseX, 0, width, 3, 20)); //mapeia a posição de mouseX de 0 até width de 3 até o 20
  //int n = 3 + frameCount%17;
  //int n = round(map(cos(frameCount * 0.1), -1, 1, 3, 10));
  //float raio = 0.8*width/16;
  //float theta = TWO_PI/n; //divide em angulos iguais
 // circle(0,0,2*raio);
  
 
  int nPontosPorVolta = 64;
  int nVoltas = 8;
  float anguloBase = TWO_PI/nPontosPorVolta;
  noFill();
  beginShape();
  for(int i=0; i<nVoltas; i++){
    for(int j=0; j<nPontosPorVolta; j++){
      float theta = TWO_PI*i + j*anguloBase;
      float raio = calcula_raio(theta, nVoltas);
      vertex(raio*cos(theta), raio*sin(theta));
    }
  }
  endShape();
  
}

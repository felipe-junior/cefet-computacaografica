
void setup() //Vai ser executado apenas uma vez
{
  size(800,800);
}

void draw(){ //Vai ser chamado inumeras vezes
  frameRate(60);//Quantas vezes por segundo draw() vai ser chamada. framerate pode ser chamada
  //frameCount vai iterar de 1 até 30 nesse caso
  background(200);
  translate(width/2, height/2);
  //int n = round(map(mouseX, 0, width, 3, 20)); //mapeia a posição de mouseX de 0 até width de 3 até o 20
  //int n = 3 + frameCount%17;
  int n = round(map(cos(frameCount * 0.1), -1, 1, 3, 10));
  float raio = 0.8*width/2;
  float theta = TWO_PI/n; //divide em angulos iguais
 // circle(0,0,2*raio);
  beginShape();
  for(int i=0; i<n; i++){//Em cada parte do ângulo desenha um ponto (vértice). 1*theta, 2*theta...
    //COS -> EIXO X  -   SIN -> EIXO Y
    vertex(raio*cos(i*theta), raio*sin(i*theta));
  }
  endShape(CLOSE); //CLOSE LIGA O ULTIMO PONTO AO PRIMEIRO PONTO
}

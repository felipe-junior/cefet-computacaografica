void setup(){
  size(800,800);
}

void desenhaSol(){
   fill(235, 213, 52);
   circle(0,0,120);
}

void desenhaTerra(){
   rotate(frameCount/(10*TWO_PI));
   translate(width/4+50,0);
   fill(52, 95, 235);
   circle(0,0,80);
}

void desenhaLua(){
  rotate(frameCount/(6*TWO_PI));
  fill(128, 132, 145);
  circle(80,0,50);
}

void draw(){
  background(200);
  //desenha plano cartesiano
  translate(width/2, width/2);
  line(-width/2,0, width/2,0);
  line(0,-height/2, 0, height/2);
 
  desenhaSol(); 
  desenhaTerra();
  desenhaLua();
}

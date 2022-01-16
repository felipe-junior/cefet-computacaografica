void setup(){
  size(800,800);
}

void desenhaSatelite(){
  circle(0,0,10);
  rotate(frameCount/(10*TWO_PI));
  circle(40,0,10);
}

void draw(){
  //background(200);
  //desenha plano cartesiano
  translate(width/2, width/2);
  line(-width/2,0, width/2,0);
  line(0,-height/2, 0, height/2);
   
  pushMatrix();  
  translate(width/4, -height/4);
  desenhaSatelite();
  popMatrix();
  
  pushMatrix();  
  translate(width/4, +height/4);
  desenhaSatelite();
  popMatrix();
  
  pushMatrix();  
  translate(-width/4, -height/4);
  desenhaSatelite();
  popMatrix();
  
  pushMatrix();  
  translate(-width/4, +height/4);
  desenhaSatelite();
  popMatrix();
  
}

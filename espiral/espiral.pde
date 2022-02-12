

  public void setup(){
 
      size(800,800);
      //desenha plano cartesiano
      beginShape();
      translate(width/2, height/2);
      line(-width/2,0, width/2,0);
      line(0,-height/2, 0, height/2);
      endShape();
  }
  double i=0;float raio=0;
  public void draw(){
    
      strokeWeight(3);
      float x;
      float y;
      x=(float)(raio*Math.cos(i)+width/2);
      y=(float)(raio*Math.sin(i)+height/2);     
      point(x,y);
      i=i+0.05;
      raio=raio+0.08; //~~10 graus

  }

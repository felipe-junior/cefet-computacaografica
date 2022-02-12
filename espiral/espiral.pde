
  double i=0;float r=0;int flag=0;
  int num=1;
  public void setup(){
      frameRate(100);
      strokeWeight(7);
      size(1920,1080);
      //desenha plano cartesiano
      beginhape();
      translate(width/2, width/2);
      line(-width/2,0, width/2,0);
      line(0,-height/2, 0, height/2);
  }
  public void draw(){
      
      
    
      float x;
      float y;
      x=(float)(r*Math.cos(i)+100);
      y=(float)(r*Math.sin(i)+100);
      println(i);
      point(x,y);
      i=i+(Math.PI)/(180);
      r=r+(40f/360f);

  }

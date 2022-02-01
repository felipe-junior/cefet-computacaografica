
void setup()
{
  size(800,1000);
}

void draw()
{
  background(128);
  float p1x = 100;
  float p1y = 600;
  
  float p2x = 100;
  float p2y = 100;
  
  float p3x = 600;
  float p3y = 100;
  
  float p4x = 600;
  float p4y = 600;
   
  beginShape();
  vertex(p1x, p1y);
  for(float t = 0; t <= 1; t += 0.0001)
  {
    float ax = p1x + t*(p2x-p1x); //ponto que está na reta p2 - p1
    float ay = p1y + t*(p2y-p1y); 
    
    float bx = p2x + t*(p3x-p2x); //ponto que está na reta p3 - p2
    float by = p2y + t*(p3y-p2y);
    
    float cx = p3x + t*(p4x - p3x); //ponto que está na reta p4 - p3
    float cy = p3y + t*(p4y - p3y);
    
    float dx = ax + t*(bx-ax);
    float dy = ay + t*(by-ay);
    
    float ex = bx + t*(cx-bx);
    float ey = by + t*(cy-by);
    
    float fx = dx + t*(ex-dx);
    float fy = dy + t*(ey-dy);
    

    vertex(fx,fy);
  }
  vertex(p4x, p4y);
  endShape(CLOSE);
}
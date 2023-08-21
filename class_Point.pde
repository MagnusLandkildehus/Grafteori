class Point{
  int x;
  int y;
  char id;
  
  
  Point(){
    x = mouseX;
    y = mouseY;
    id = (char)('A'+Points.size());
  }
  
  void drawPoint(){
    pushMatrix();
    fill(0);
    stroke(0);
    textSize(14);
    circle(x,y,20);
    text(id,x-20,y-20);
    popMatrix();
  }
}

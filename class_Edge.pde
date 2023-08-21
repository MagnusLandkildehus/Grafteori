class Edge {
  char p1;
  char p2;
  float r1, r2, r3, r4;
  float linelength;

  Edge(char p1, char p2) {
    linelength = sqrt((Points.get(int(p1)-65).x-Points.get(int(p2)-65).x)^2+(Points.get(int(p1)-65).y-Points.get(int(p2)-65).y)^2);
    this.p1 = p1;
    this.p2 = p2;
    this.r1 = random(Points.get(int(p1)-65).x+linelength)*2;
    this.r2 = random(Points.get(int(p1)-65).y+linelength)*2;
    this.r3 = random(Points.get(int(p2)-65).x+linelength)*2;
    this.r4 = random(Points.get(int(p1)-65).y+linelength)*2;
  }

  void drawEdge() {
    
    if ((Points.get(int(p1)-65).x == Points.get(int(p2)-65).x) && (Points.get(int(p1)-65).y == Points.get(int(p2)-65).y)) {
      pushMatrix();
      stroke(0);
      noFill();
      strokeWeight(2);
      curve(r1*2, r2*2, Points.get(int(p1)-65).x, Points.get(int(p1)-65).y, Points.get(int(p2)-65).x, Points.get(int(p2)-65).y, r3*2, r4*2);
      popMatrix();
    } else {
      pushMatrix();
      stroke(0);
      noFill();
      strokeWeight(2);
      curve(r1, r2, Points.get(int(p1)-65).x, Points.get(int(p1)-65).y, Points.get(int(p2)-65).x, Points.get(int(p2)-65).y, r3, r4);
      popMatrix();
    }
  }
}

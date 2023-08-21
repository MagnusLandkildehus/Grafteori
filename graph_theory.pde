ArrayList<Point> Points = new ArrayList<Point>();
ArrayList<Button> Buttons = new ArrayList<Button>();
ArrayList<Edge> Edges = new ArrayList<Edge>();
char temppoint = '0';

void setup() {
  fullScreen();
  Buttons.add(new Button(10, 10, 80, "Hej"));
  Buttons.add(new Button(10, 90, 80, ""));
  Buttons.add(new Button(10, 170, 80, ""));
}

void mousePressed() {

  if (mouseX > 100 && Buttons.get(0).active == true) {
    Points.add(new Point());
  }
  for (int i=0; i < Buttons.size(); i++) {
    if (mouseX >= Buttons.get(i).x && mouseX <= Buttons.get(i).x + Buttons.get(i).w && mouseY >= Buttons.get(i).y && mouseY <= Buttons.get(i).y + Buttons.get(i).w) {
      Buttons.get(i).setActive();
    }
  }
  for (int i=0; i < Points.size(); i++) {
    if (mouseX >= Points.get(i).x-20 && mouseX <= Points.get(i).x+20 && mouseY >= Points.get(i).y-20 && mouseY <= Points.get(i).y + 20 && Buttons.get(1).active == true) {
      if (temppoint == '0') {
        temppoint = Points.get(i).id;
      } else {
        Edges.add(new Edge(temppoint, Points.get(i).id));
        temppoint = '0';
      }
    }
  }
  if (Buttons.get(2).active == true) {
    for (int i=0; i < Edges.size(); i++) {
      
    }
  }
}

void draw() {
  background(255);
  for (int i=0; i < Buttons.size(); i++) {
    Buttons.get(i).drawButton();
  }
  for (int i=0; i < Points.size(); i++) {
    Points.get(i).drawPoint();
  }
  for (int i=0; i < Edges.size(); i++) {
    Edges.get(i).drawEdge();
  }
}

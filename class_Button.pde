class Button{
  int x;
  int y;
  int w;
  String text;
  boolean active;
  
  Button(int x, int y, int w, String text){
    this.x = x;
    this.y = y;
    this.w = w;
    this.text = text;
    active = false;
  }
  
  void drawButton(){
    pushMatrix();
    if (active==false){
    fill(0);
    stroke(0);
    }
    if (active==true){
    fill(128);
    stroke(128);
    }
    square(x,y,w);
    //text(text,x,y);
    popMatrix();
  }
  
  void setActive(){
    for (int i = 0; i < Buttons.size(); i++) {
      Buttons.get(i).active = false;
    }
    this.active = true;
  }
  
}

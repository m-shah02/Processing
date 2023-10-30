class Button {
  float x;
  float y;
  float w;
  float h;
  String label;
  
  public Button(float xp, float yp, float wd, float ht) {
    x = xp;
    y = yp;
    w = wd;
    h = ht;
  }
  
  public boolean isInside(float mx, float my) {
    if (mx >= x && mx <= x + w && my >= y && my <= y + h) {
      return true;
    } else {
      return false;
    }
  }
  
  public void setText(String t) {
    label = t;
  }
  
  public void display() {
    fill(255, 0, 0);
    rect(x, y, w, h);
    fill(0);
    textSize(16);
    text(label, x+(w/4), y+(h/3));
  }
}

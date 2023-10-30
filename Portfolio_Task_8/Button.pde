class Button {
  float x;
  float y;

  float w;
  float h;

  public Style style;

  Button(float xp, float yp, float wd, float ht, Style s) {
    this.x = xp;
    this.y = yp;
    this.w = wd;
    this.h = ht;

    this.style = s;
  }

  public void display() {
    rectMode(CENTER);

    fill(this.style.getBackground());
    rect(x, y, w, h);

    text(this.style.getName(), x, y);
  }

  public boolean isInside() {
    boolean xBound = mouseX < x+w/2 && mouseX > x-w/2;  
    boolean yBound = mouseY < y+h/2 && mouseY > y-h/2;

    return xBound && yBound;
  }

  public String getText() {
    return this.style.getName();
  }
}

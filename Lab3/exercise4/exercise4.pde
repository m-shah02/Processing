// Answer to Exercise 4

void setup() {
  size(400, 400);
}

void draw() {
  float grey = 255/(height/10); // each grey difference
  float f = 255;
  float y = 0;
  while ( y < height) {
    fill(f);
    f = f - grey;
    print((height - y) + ", ");
    rect(0,y,width,10);
    y = y + 10;
  }
}

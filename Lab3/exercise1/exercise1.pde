// Answer to Exercise 1

void setup() {
  size(400, 400);
}

void draw() {
  int x = 0;
  while (x < width) {
    rect(x,0,10,height);
    x = x + 10;
  }
}

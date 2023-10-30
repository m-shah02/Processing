// Answer to Exercise 2

void setup() {
  size(400, 400);
}

void draw() {
  
  for (int x = 0; x < width; x = x + 10) {
    rect(x,0,10,height);
  }
}

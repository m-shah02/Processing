// Answer to Exercise 6

int s;

void setup() {
  size(400, 400);
  background(0);
  rectMode(CENTER);
  s = width/10;
}

void draw() {
  background(0);
  float total = (width/s * height/s); // 
  float fillValue = 0;
  // Start with i as 0
  float y = s/2;
  // While i is less than the width of the window
  while (y < height) {
    float x = s/2;
    while (x < width) {
      fill(fillValue);
      rect(x, y, s, s);
      // Increase i by 10
      x = x + s;
      fillValue = fillValue + (255/total);
    }
    y = y + s;
  }
}

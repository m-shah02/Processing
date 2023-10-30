void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  float diff = width/10; // difference in each size
  float s = width; // size of each rect
  float f = 255; // starting fill
  while (s > 0) {
    fill(f); // set the fill colour
    rect(width/2, height/2, s, s); // draw rect
    s = s - diff;  // reduce the size of next rect
    f = f - (diff/2); // change the fill
  }
}

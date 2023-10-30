// Answer to Exercise 5
void setup() {
  size(400, 400);
  background(0);
}
void draw() {
  background(0);
  // Start with i as 0
  int i = 0;
  // While i is less than the width of the window
  while (i < width) {
    //noStroke();
    float distance = abs(mouseY - i);
    //float distance = abs(height - i);
    fill(distance);
    rect(0, i, width, 10);
    // Increase i by 10
    i += 10;
  }
}

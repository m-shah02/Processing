float moveX;
float x;
float y;

void setup() {
  size(200, 200);
  moveX = 1;
  x=100;
  y=100;
}

void draw() {
  background(255);
  ellipse(moveX, y, 20, 20);
}

void keyPressed() {
  if (key == 'z') {
    moveX = x - moveX;
  } else if (key == 'x') {
    moveX = moveX + x;
  } else if (key == 's') {
    moveX = 0;
  }
}

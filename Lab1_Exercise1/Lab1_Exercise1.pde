int circleX;
int circleY;
int circleHeight;
int circleWidth;

void setup() {
  size(200,200);
  circleX = 200;
  circleY = 100;
  circleHeight = 0;
  circleWidth = 0;
  
}
void draw() {
  background(255);
  stroke(0);
  fill(175);
  ellipse(circleX,circleY,circleWidth,circleHeight);
  circleX = circleX - 1;
  circleHeight = circleHeight + 1;
  circleWidth = circleWidth + 1;
}

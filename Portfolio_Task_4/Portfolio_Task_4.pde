float ballX; // X coordinate of the ball
float ballY; // Y coordinate of the ball
float ballWidth; // diameter of the ball
float speedX; // speed of movement in X direction
float speedY; // speed of movement in Y direction

float holeX; // X coordinate of the black hole
float holeY; // Y coordinate of the black hole
float holeWidth; // Diameter of the black hole

void setup() {
  size(600, 600);
  // reset ball parameters, position and size
  ballX = 10;
  ballY = height/2;
  ballWidth = 60;
  // initialize the speed to random values
  initializeSpeed();
  initializeHole();
}

void draw() {
  background(127);
  // draw the ball
  drawColourCircle(ballX, ballY, ballWidth, color(255, 0, 0));
  // Draw the black hole in random position
  drawColourCircle(holeX, holeY, holeWidth, color(0));
  // move the ball
  moveBall();
  if (checkCollide(ballX, ballY, ballWidth, holeX, holeY, holeWidth)) {
    initializeHole();
    initializeSpeed();
  }
  // bounce the ball ( if necessary)
  bounceBall();
}

void initializeSpeed() {
  speedX = random(5, 10); // Random X speed set between 5-10
  speedY = random(5, 10); // Random Y speed set between 5-10
}

void drawColourCircle(float ballX, float ballY, float ballWidth, color fill ) {
  fill(fill); // Fills in the colour of the circle
  circle(ballX, ballY, ballWidth); // Set the parameters of the circle
}

void moveBall() {
  ballX = ballX + speedX; // The ball X position moves based on the X speed of ball
  ballY = ballY + speedY; // The ball Y position moves based on the Y speed of ball
}

void bounceBall() {
  if ((ballX > width) || (ballX < 0)) {
    speedX = -speedX; // Reverses the speed when it goes beyond X boundaries
  }
  if ((ballY > height) || (ballY < 0)) {
    speedY = -speedY; // Reverses the speed when it goes beyond Y boundaries
  }
}

void keyPressed() {
  if (key == 'x') {
    speedX = random(5, 10);
    // Speed of X changes when 'x' is pressed
  }

  if (key == 'y') {
    speedY = random(5, 10);
    // Speed of y changes when 'y' is pressed
  }
}

void initializeHole() {
  holeX = random(0, width); // X position is random
  holeY = random(0, height); // Y position is random
  holeWidth = random(100, 300); // Size is a number between 100-300
}

float distance(float x1, float y1, float x2, float y2) {
  float distance = sqrt( ((x1-x2)*(x1-x2)) +((y1-y2)*(y1-y2)) ); // Distance between 2 circles using pythagoras
  return distance;
}

boolean checkCollide(float ballX, float ballY, float ballWidth, float holeX, float holeY, float holeWidth) {
  float distance = distance(ballX, ballY, holeX, holeY);

  if (distance <= (ballWidth/2 + holeWidth/2)) {
    return true;
  } else {
    return false;
  }
}

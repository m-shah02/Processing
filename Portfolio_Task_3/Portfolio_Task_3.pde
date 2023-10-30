// the number of rows to draw
int numRows;
// the number of rectangles in the starting (bottom) row
int rowLength;
// the X coordinate of the first rectangle in the bottom row
int startX;
// the Y coordinate of the first rectangle in the bottom row
int startY;
// the width of each rectangle
int rectWidth;
// the height of each rectangle
int rectHeight;
// when isColour is false , all rectangles are filled in white
// otherwise a random fill colour is chosen
boolean isColour;

void setup() {
  size(900, 400);
  stroke(0) ; // pen colour black
  numRows = 1; // initially one row of rectangles is drawn
  rowLength = 10; // 10 rectangles in the first row
  startX = 50;
  startY = 350;
  rectWidth = 75; // each rectangle 75 pixels wide
  rectHeight = 30; // each rectangle 30 pixels wide
  isColour = false ; // no colour to start with
}

void draw() {
  background(255);
  int x1 = startX;
  int y1 = startY;
  for (int counterY = 0; counterY < numRows; counterY++) {
    for (int counterX = 0; counterX < rowLength - counterY; counterX++) {
      rect(x1, y1, rectWidth, rectHeight);
      // This is the rectangle 
      x1 = x1 + 75;
      //Moves by 75 to the right each time
    }
    x1 = (startX + ((rectWidth/2)*counterY) + rectWidth/2);
    //When a new row is made the X position resets
    y1 = y1-30;
    //Height increases by 30
  }
}
void mousePressed() {
  numRows++; 
  //Number of rows increases 
  if (numRows == 11) {
    numRows = 0;
    //When rows > 10 then it rests
  }
  if (numRows == 0) {
    isColour =!isColour;
  }
  if (isColour) {
    fill(random(0, 255), random(0, 255), random(0, 255));
  } else {
    fill(255);
  }
}

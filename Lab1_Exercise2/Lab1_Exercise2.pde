int ellipseHeight;
int strokeValue;
int fillValue;

void setup(){
  size(600,400);
  rectMode(CENTER);
  ellipseHeight = 0;  
  strokeValue = 0;
  fillValue = 0;
}

void draw(){
  background(255);
  strokeValue = (strokeValue + 1) % 100;
  fillValue = (fillValue + 1) % 100;
  stroke(strokeValue);
  fill(fillValue);
  rect(mouseX,mouseY,50,50);
  stroke(strokeValue);
  fill(fillValue);  
  ellipse(mouseX-75,mouseY,100,ellipseHeight);
  stroke(strokeValue);
  fill(fillValue);
  ellipse(mouseX+75,mouseY,100,ellipseHeight);
  ellipseHeight = (ellipseHeight + 1) % 100;
}

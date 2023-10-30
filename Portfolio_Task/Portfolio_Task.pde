void setup(){
  rectMode(CENTER);
  size(400,400);
}

void draw(){
  //White BG
  background(255);
  
  //Left Wheel
  fill(0);
  ellipse(mouseX-25,mouseY+30,40,40);
  fill(50);
  ellipse(mouseX-25,mouseY+30,30,30);
  
  //Right Wheel
  fill(0);
  ellipse(mouseX+25,mouseY+30,40,40);
  fill(50);
  ellipse(mouseX+25,mouseY+30,30,30);
  
  //Body
  fill(10,255,30);
  rect(mouseX,mouseY,100,40);
  
  //Head
  fill(10,255,30);
  rect(mouseX,mouseY-30,75,40);
  
  
  //Gun
  fill(10,255,30);
  noStroke();
  rect(mouseX+50,mouseY-30,175,10);

}

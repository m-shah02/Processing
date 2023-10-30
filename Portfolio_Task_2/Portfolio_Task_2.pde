boolean stop;

void setup() {
  size(200, 200);
  stop = true;
}

void draw() {
  //Red with STOP text
  if (stop == true) {
    background(255, 0, 0);
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text("STOP", width/2, height/2);
  } 

  //Green with GO text
  else {
    background(0, 255, 0);
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text("WALK", width/2, height/2);
  }
}

void mousePressed() {
  stop = !stop;
}

Car[] car; //<>//
RaceTrack track;
boolean raceOver;

void setup() {
  size(1000, 600);
  track = new RaceTrack();
  car = new Car[5];
  for (int index = 0; index < car.length; index++) {
    car[index] = new Car(track.getStartPosition(), 100+50*index, 60, color(200, 100, 100));
  }
  raceOver = false;
}

void draw() {
  background(70);
  track.display();
  for (int index = 0; index < car.length; index++) {
    car[index].display();
    if (!raceOver) {
      if (car[index].getPosition() >= track.getFinishPosition()) {
        raceOver = true;
        car[index].score = car[index].score + 1;
        println("Car " + (index + 1) + " wins!!");
        println("Press 's' to restart");
      } else {
        car[index].move();
      }
    }
  }
}
void keyPressed() {
  if (key == 's' && raceOver) {
    for (int index = 0; index < car.length; index++) {
      float startLine = track.getStartPosition();
      car[index].setPosition(startLine);
      raceOver = false;
    }
  }
}

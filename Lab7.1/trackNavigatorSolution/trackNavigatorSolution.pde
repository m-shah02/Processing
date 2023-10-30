import java.util.Scanner;
import java.util.ArrayList;

Scanner in;
ArrayList<Track> tracks;
Button next;
Button prev;
int current = 0;

void setup() {
  size(800, 400);
  next = new Button(400, 250, 100, 75);
  next.setText("Next");
  prev = new Button(200, 250, 100, 75);
  prev.setText("Prev");
  tracks = new ArrayList<Track>();
  in = InputReader.getScanner("/home/beaumoaj/restore/cs1310/JPF_cs1310_cs1020/Week7/Lecture/DailyMix.csv");
  String header = in.nextLine(); // ignore the header line
  while (in.hasNext()) {
    String csv = in.nextLine();
    String[] data = csv.split(",");
    Track track = new Track(data[0], data[1], data[2]);
    tracks.add(track);
  }
  int numTitles = tracks.size();
  println("You read " + numTitles + " tracks:\n");
  for (int i=0; i<tracks.size(); i++) {
    println(tracks.get(i));
  }
}

void draw() {
  background(255);
  next.display();
  prev.display();
  fill(0);
  textSize(20);
  text(tracks.get(current).toString(), 200, 100);
}

void mousePressed() {
  if (next.isInside(mouseX, mouseY) && current < tracks.size()-1) {
    current++;
  } else if (prev.isInside(mouseX, mouseY) && current > 0) {
    current--;
  }
}

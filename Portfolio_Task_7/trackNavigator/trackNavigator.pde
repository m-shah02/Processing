import java.util.Scanner;
import java.util.ArrayList;

Scanner in;
ArrayList<Contact> contacts;
Button next;
Button prev;
int current = 0;

void setup(){
  size(800,400);
  next = new Button(400,250,100,75);
  next.setText("Next");
  prev = new Button(200,250,100,75);
  prev.setText("Prev");
  contacts = new ArrayList<Contact>();
  in = InputReader.getScanner("C:\\Users\\T430\\Documents\\Processing\\Portfolio_Task_7\\Contacts.csv");
  String header = in.nextLine(); // ignore the header line
  while (in.hasNext()) {
    String csv = in.nextLine();
    String[] data = csv.split(",");
    Contact contact = new Contact(data[0], data[1]);
    contact.setemail(data[2]);
    contact.setphone(data[3]);
    contacts.add(contact);
  }
  int numTitles = contacts.size();
  println("You read " + numTitles + " tracks:\n");
  for (int i=0; i<contacts.size(); i++) {
    println(contacts.get(i));
  }
}

void draw() {
  background(255);
  next.display();
  prev.display();
  fill(0);
  textSize(20);
  text(contacts.get(current).toString(), 200, 100);
}

void mousePressed() {
  if (next.isInside(mouseX, mouseY) && current < contacts.size()-1) {
    current++;
  } else if (prev.isInside(mouseX, mouseY) && current > 0) {
    current--;
  }
}

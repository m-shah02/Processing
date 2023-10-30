import java.util.Scanner;
String path = "C:\\Users\\T430\\Desktop\\Portfolio 9\\data.csv";
Scanner input = InputReader.getScanner(path);
PhoneList phoneL = new PhoneList();
PhoneMap phoneM = new PhoneMap();
void setup() {
  surface.setVisible(false);
  while (input.hasNext()) {
    String temp = input.nextLine();
    String[] splitLine = input.nextLine().split(",");
    Phone newPhone = new Phone(splitLine[0]);

    newPhone.setModel(splitLine[1]);
    newPhone.setAnnounced(splitLine[8]);
    newPhone.setWeight_g(float(splitLine[11]));
    newPhone.setInternal_memory(splitLine[11]);
    newPhone.setApprox_price_EUR(int(splitLine[36]));

    phoneL.addPhone(newPhone);
    PhoneM.addPhone(newPhone);
  }

  print(phoneM.getSize());
}

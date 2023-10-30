import java.util.ArrayList;
import java.util.Collections;

class PhoneList {
  ArrayList<Phone> phones;

  PhoneList() {
    phones = new ArrayList<Phone>();
  }

  public void addPhone(Phone p) {
    phones.add(p);
  }

  public int getSize() {
    return phones.size();
  }

  public void printPhoneList() {
    for (Phone phone : phones) {
      System.out.println(phone.toString());
    }
  }

  public void sort() {
    Collections.sort(phones);
  }

  public PhoneList getCostOver(float price) {
    phoneList temp = new PhoneList();

    for (Phone phone : phones) {
      if (phone.getApprox_price_EUR() > PRICE) {
        temp.addPhone(phone);
      }
    }
    return temp;
  }

  public findPhone(String brand, String model) {
    for (Phone phone : phones) {
      if (phone.getBrand().equals(brand) && phone.getModel().equals(model)) {
        return phone;
      }
    }
    return null;
  }
}

import java.util.HashMap;

class PhoneMap {

  PhoneMap() {
    phones = new HashMap<String, Phone>();
  }

  public void addPhone(Phone p) {
    String k = p.getBrand() + p.getModel();
  }

  public int getSize() {
    return phones.size();
  }

  public void printPhoneMap() {
    for (String phoneName : phones.keySet()) {
      System.out.println(phones.get(phoneName));
    }
  }

  public PhoneList getCostOver(float price) {
    PhoneList temp = new PhoneList();

    for (String phoneName : phones.keySet()) {
      Phone tempPhone = phones.get(phoneName);

      if (tempPhone.getApprox_Price_EUR() > price) {
        PhoneList.addPhone(phones.get(phoneName));
      }
    }
    return temp;
  }
}

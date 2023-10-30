import java.util.ArrayList;
import java.util.Collections;

public class PhoneList {

  private ArrayList<Phone> phones;

  public PhoneList() {
    phones = new ArrayList <Phone>();
  }

  public void addPhone(Phone p) {
    phones.add(p);
  }
  public int getSize() {
    return phones.size();
  }

  public void printPhoneList() {
    for (Phone phone : phones) {
      System.out.println(phone);
    }
  }
  public void sort() {
    Collections.sort(phones);
  }

  public PhoneList getCostOver(int price) {
    PhoneList listedPhones = new PhoneList();
    for (Phone phone : phones) {
      if (phone.getApprox_price_EUR() > price) {
        listedPhones.addPhone(phone);
      }
    }
    return listedPhones;
  }

  public Phone findPhone(String brandName, String modelName) {
    for (Phone phone : phones) {
      if (phone.getBrand().equals(brandName) && phone.getModel().equals(modelName)) {
        return phone;
      }
    }
    return null;
  }
  
  public PhoneList findPhonesInPriceRange(int lowerB, int higherB) {
	  PhoneList priceRangeList = new PhoneList();
	   for(Phone phone : phones) {
	if (phone.getApprox_price_EUR() >= lowerB && phone.getApprox_price_EUR() <= higherB ) {
	priceRangeList.addPhone(phone);
	   }
  }
	   return priceRangeList;
  }
}
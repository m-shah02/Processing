import java.util.Scanner;

public class PhoneMain   {
	public static void main(String args[] ) {			
	Scanner in = new Scanner(System.in);
	in = InputReader.getScanner("C:\\Users\\headr\\OneDrive\\Desktop\\data.csv");
		String Header = in.nextLine();
		 PhoneList phoneList = new PhoneList();
	    while (in.hasNext()) {
	    String csv = in.nextLine();
	    String[] data = csv.split(",");
	    
	    Phone phone = new Phone(data[0]);
	    phone.setModel(data[1]);
	    phone.setAnnounced(data[8]);
	    phone.setWeight_g(Float.parseFloat(data[11]));
	    phone.setInternal_memory(data[21]);
	    phone.setApprox_price_EUR(Integer.parseInt(data[36]));    
	    phoneList.addPhone(phone);
	    }	    
	       
	    
	    
		
		  
	    
	             
	    Scanner scan = new Scanner(System.in);	   
	    
	    System.out.println("Enter a lower price bound: ");
	    int lower = scan.nextInt();
	    
	    System.out.println("Enter a higher price bound: ");
	    int higher = scan.nextInt();
	    
	    phoneList = phoneList.findPhonesInPriceRange(lower, higher);	    
	//    System.out.println(phone);
	  phoneList.sort();
	  phoneList.printPhoneList();
	  
	    
}


	


	
}


	
		  


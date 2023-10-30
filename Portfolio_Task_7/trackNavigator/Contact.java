
class Contact {
  private String firstName;
  private String lastName;
  private String email;
  private String phone;

  public Contact(String fn, String ln) {
    firstName = fn;
    lastName = ln;
  }
  
  public void setemail(String e) {
    this.email = e;
  }

  public void setphone(String p) {
    this.phone = p;
  }

  /* */
  public String toString() {
    return firstName + " " + lastName + "\nEmail: " + email + "\nPhone Number: " + phone;
  }
  /* */
}

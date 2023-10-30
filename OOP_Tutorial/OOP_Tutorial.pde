for (int i = 1; i < 11; i++) {
  println("Multiples of " + i); 
  for (int count = 0; count < 13; count++) {
    print(i*count); 
    if (count < 12) {
      print(", ");
    } else {
      println();
    }
  }
}

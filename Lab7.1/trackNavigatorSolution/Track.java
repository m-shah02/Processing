class Track {
  private String title;
  private String artist;
  private String len;
  
  public Track(String t, String a, String l) {
    title = t;
    artist = a;
    len = l;
  }
  
  public String getTitle() {
    return title;
  }
  
  public String getArtist() {
    return artist;
  }
  
  public String getLength() {
    return len;
  }
  
  /* */
  public String toString() {
    return title + "\nBy: " + artist + "\nLength: " + len + "\n";
  }
   /* */
}

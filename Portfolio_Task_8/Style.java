class Style {
  private int fillColour;
  private int strokeColour;
  private int bgColour;
  private int textSize;
  private String name;
 
  Style(String label, int bgCol, int stroke, int fill, int tSize) {
    this.name = label;
    this.bgColour = bgCol;
    this.strokeColour = strokeColour;
    this.textSize = tSize;
    this.fillColour = fill;
  }
  
  public String getName() {
    return this.name;
  }
  
  public int getFillColour() {
    return this.fillColour;
  }
  
  public int getStrokeColour() {
    return this.strokeColour;
  }
  
  public int getTextSize() {
    return this.textSize;
  }
  
  public int getBackground() {
    return this.bgColour;
  }
}

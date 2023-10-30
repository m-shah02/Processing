String text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eu rutrum lorem. Sed faucibus efficitur magna quis suscipit. Suspendisse potenti. Sed ac eleifend dui. Phasellus eu cursus erat. Morbi vitae nunc ultrices, scelerisque lacus vel, facilisis dui. Curabitur efficitur, odio eget consectetur lacinia, augue tellus placerat urna, in volutpat est lacus at sem.";
String[] styleNames = {"dark", "light", "red", "blue"};
StyleCollection styles;
Style currentStyle;
Button[] buttons;

void setupStyles() {
  textAlign(CENTER);
  styles = new StyleCollection();

  styles.addStyle(new Style("dark", 75, 0, 75, 10));
  styles.addStyle(new Style("light", 255, 0, 0, 10));
  styles.addStyle(new Style("red", 0xF6465B, 0, 0xF6465B, 10));
  styles.addStyle(new Style("blue", 0x449ADF, 0, 0x449ADF, 10));

  Style defaultStyle = new Style("light", 255, 0, 0, 10);

  styles.setDefaultStyles(defaultStyle);
  currentStyle = defaultStyle;
}

void setupButtons() {
  buttons = new Button[styleNames.length];

  for (int i = 0; i < styleNames.length; i++) {
    String temp = styleNames[i];
    buttons[i] = new Button(width/2 -150 + (i*110), height/2+50, 100, 50, styles.getStyle(temp));
  }
}

void setup() {
  setupStyles();
  setupButtons();
  
  size(800, 600);
}

void draw() {
  background(currentStyle.getBackground());
  fill(currentStyle.getFillColour());
  stroke(currentStyle.getStrokeColour());

  text(text, width/2, height/2 - 50);
  for (Button button : buttons) {
    button.display();
  }
}

void mousePressed() {
  for (Button button : buttons) {
    if (button.isInside()) {
      currentStyle = button.style;
    }
  }
}

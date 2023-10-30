// f = "field"
// t = "tile"
// b = "bakuhatsu"
int fRow, fCol;
float tW, tH; 
float offsetX, offsetY;
int bNum;
int testMode;
boolean start;
boolean game;
boolean win;
int[][] fieldBB;
boolean[][] windowUI;
int test;

void setup() {
  size(300, 400, FX2D);
  frameRate(24);
  fRow = 5; 
  fCol = 5;
  tW = 50; 
  tH = 50;
  offsetX = 45; 
  offsetY = 45;
  bNum = 3;
  testMode = 0;
  rectMode(CENTER);
  textAlign(CENTER);
  start = true;
  game = true;
  win = false;
  fieldBB = new int[fRow + 2][fCol + 2];
  windowUI = new boolean[fRow + 2][fCol + 2];
  test = 1;
}


void draw() {
  background(255);
  if (start) {
    startField(fieldBB, bNum);
    //randomField(fieldBB);
    //testField(fieldBB);

    startWindow(windowUI, true);
    start = false;
  }
  rectMode(CENTER);
  boardTile(offsetX, offsetY, tW, tH, fieldBB);
  boardBorder(offsetX, offsetY, tW, tH, fieldBB);
  boardWindow(offsetX, offsetY, tW, tH, windowUI, testMode);
  if (!game) {
    rectMode(CORNER);
    textSize(20);
    textAlign(CENTER);
    if (win) {
      fill(#95FA9C);
      float winX = offsetX - tW/2;
      float winY = offsetY - tH/2 + tH * fRow + 10;
      float winW = 100;
      float winH = tH;
      rect(winX, winY, winW, winH);
      fill(0);
      text("WIN!", winX + winW / 2, winY + winH / 2 + 8);
      //println("WIN");
    }
    fill(210);
    float resetX = offsetX - tW/2 + 100;
    float resetY = offsetY - tH/2 + tH * fRow + 10;
    float resetW = tW * fCol - 100;
    float resetH = tH;
    rect(resetX, resetY, resetW, resetH);
    fill(0);
    text("Press R to reset", resetX + resetW / 2, resetY + resetH / 2 + 8);
    //println("Game end.");
  }
}

void keyPressed() {
  if (key == 'R') {
    start = true;
    game = true;
    win = false;
  }
  if (key == 'F') {
    println("f");
    //game = false;
    //win = true;
  }
}

void mouseClicked() {
  //boardBorder(offsetX, offsetY, tW, tH, fieldBB);
  //float x = x0 - w/2;
  //float y = y0 - h/2;
  //line(0, y, width, y);
  //line(0, y + h * row, width, y + h * row);
  //line(x, 0, x, height);
  //line(x + w * col, 0, x + w * col, height);
  float x = offsetX - tW/2; 
  float y = offsetY - tH/2;
  int windowX;
  int windowY;
  if (mouseX > x && mouseX < x + tW * fCol && mouseY > y && mouseY < y + tH * fRow) {
    //test++;
    //println(test);
    windowX = floor((mouseX - x) / tW) + 1;
    windowY = floor((mouseY - y) / tH) + 1;
    //println(windowY + " " + windowX);
    windowUI[windowY][windowX] = false;
    game = bTest(fieldBB, windowUI);
    win = winTest(windowUI, bNum, game);
    if(win) {
      game = false;
    }
  }
  //println(game + " " + win);
}


void startField(int[][] a, int b) {
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
      a[i][j] = 0;
    }
  }
  int t = 0;
  while (t < b) {
    int row = randomInt(1, fRow);
    int col = randomInt(1, fCol);
    if (a[row][col] != -1) {
      a[row][col] = -1;
      t++;
    }
  }

  int row = a.length - 2;
  int col = a[0].length - 2;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= col; j++) {
      a[i][j] = detect(a, i, j);
    }
  }
}

void randomField(int[][] a) {
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
      a[i][j] = randomInt(-1, 5);
    }
  }
}

void testField(int[][] a) {
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
      print(a[i][j] + " ");
    }
    println();
  }
}

int detect(int[][] a, int row, int col) {
  int z = 0;
  if (a[row][col] == -1) {
    return -1;
  }
  for (int i = (row - 1); i <= (row + 1); i++) {
    for (int j = (col - 1); j <= (col + 1); j++) {
      if (a[i][j] == -1) {
        z++;
      }
    }
  }
  return z;
}

void boardTile(float x, float y, float w, float h, int[][] a) {
  int row = a.length - 2;
  int col = a[0].length - 2;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= col; j++) {
      tile(x + (w * (j - 1)), y + (h * (i - 1)), w, h, a[i][j]);
    }
  }
}

void tile(float x, float y, float w, float h, int a) {
  fill(210);
  rect(x, y, w, h);
  switch(a) {
  case 0:
    fill(210);
    break;
  case 1:
    fill(#607AFA);
    break;
  case 2:
    fill(#27AA31);
    break;
  case 3:
    fill(#FC4F4F);
    break;
  case 4:
    fill(#C358FA);
    break;
  default:
    fill(0);
    break;
  }
  textSize(20);
  text(a, x, y + 8);

  if (a == -1) {
    fill(0);
    rect(x, y, 20, 20);
  }
}

void boardBorder(float x0, float y0, float w, float h, int[][] a) {
  int row = a.length - 2;
  int col = a[0].length - 2;
  float x = x0 - w/2;
  float y = y0 - h/2;
  line(0, y, width, y);
  line(0, y + h * row, width, y + h * row);
  line(x, 0, x, height);
  line(x + w * col, 0, x + w * col, height);
}

int randomInt(int a, int b) {
  int z = ceil(random(a - 0.99999, b));
  return z;
}

void startWindow(boolean[][] a, boolean mode) {
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[0].length; j++) {
      if (mode) {
        a[i][j] = true;
      } else {
        a[i][j] = false;
      }
    }
  }
}

void boardWindow(float x, float y, float w, float h, boolean[][] a, int control) {
  int row = a.length - 2;
  int col = a[0].length - 2;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= col; j++) {
      window(x + (w * (j - 1)), y + (h * (i - 1)), w, h, a[i][j], control);
    }
  }
}

void window(float x, float y, float w, float h, boolean a, int control) {
  if (a && control == 0) {
    fill(180);
    rect(x, y, w, h);
    fill(160);
    rect(x, y, w - 10, h - 10);
  } else if (a && control == 1) {
    noFill();
    /*
    for(int i = 0; i < 3; i++) {
     rect(x, y, w - i - 3, h - i - 3);
     }
     */
    rect(x, y, w - 3, h - 3);
  }
}

boolean bTest(int[][] a, boolean[][] b) {
  int row = a.length - 2;
  int col = a[0].length - 2;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= col; j++) {
      if (a[i][j] == -1) {
        if (b[i][j] == false) {
          startWindow(b, false);
          return false;
        }
      }
    }
  }
  return true;
}

boolean winTest(boolean[][] b, int bNum, boolean game) {
  int row = b.length - 2;
  int col = b[0].length - 2;
  int z = 0;
  for (int i = 1; i <= row; i++) {
    for (int j = 1; j <= col; j++) {
      if (b[i][j]) {
        z++;
      }
    }
  }
  if (game && z == bNum) {
    startWindow(b, false);
    game = false;
    return true;
  }
  return false;
}

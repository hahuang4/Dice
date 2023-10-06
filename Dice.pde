Die[] dice = new Die[100];
int totalDots = 0; 

void setup() {
  size(800, 800); 
  noLoop();
  for (int i = 0; i < dice.length; i++) {
    int x = (i % 10) * 80 + 20; 
    int y = (i / 10) * 80 + 20; 
    dice[i] = new Die(x, y); 
  }
}

void draw() {
  background(255);
  totalDots = 0;
  for (int i = 0; i < dice.length; i++) {
    dice[i].roll(); 
    dice[i].show(); 
    totalDots += dice[i].value; 
  }
  
 
  fill(255,0,0);
  textSize(24);
  text("Total Dots: " + totalDots, 20, 40);
}

void mousePressed() {
  redraw();
}

class Die {
  int value;
  int x, y;
  
  Die(int x, int y) {
    this.x = x;
    this.y = y;
    roll(); 
  }
  
  void roll() {
    value = (int)(random(1, 7)); 
  }
  
  void show() {
    fill(255);
    rect(x, y, 50, 50);
    fill(0);
    switch (value) {
      case 1:
        ellipse(x + 25, y + 25, 10, 10); 
        break;
      case 2:
        ellipse(x + 15, y + 35, 10, 10);
        ellipse(x + 35, y + 15, 10, 10); 
        break;
      case 3:
        ellipse(x + 15, y + 15, 10, 10);
        ellipse(x + 25, y + 25, 10, 10);
        ellipse(x + 35, y + 35, 10, 10); 
        ellipse(x + 15, y + 35, 10, 10);
        ellipse(x + 35, y + 15, 10, 10);
        break;
      case 4:
        ellipse(x + 15, y + 15, 10, 10);
        ellipse(x + 35, y + 15, 10, 10);
        ellipse(x + 15, y + 35, 10, 10);
        ellipse(x + 35, y + 35, 10, 10); 
        break;
      case 5:
        ellipse(x + 15, y + 15, 10, 10);
        ellipse(x + 35, y + 15, 10, 10);
        ellipse(x + 25, y + 25, 10, 10);
        ellipse(x + 15, y + 35, 10, 10);
        ellipse(x + 35, y + 35, 10, 10); 
        break;
      case 6:
        ellipse(x + 15, y + 15, 10, 10);
        ellipse(x + 35, y + 15, 10, 10);
        ellipse(x + 15, y + 25, 10, 10);
        ellipse(x + 35, y + 25, 10, 10);
        ellipse(x + 15, y + 35, 10, 10);
        ellipse(x + 35, y + 35, 10, 10); 
        break;
    }
  }
}



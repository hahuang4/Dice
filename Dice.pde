Die[] dice = new Die[100];
int totalDots = 0; // Variable to keep track of the total dots

void setup() {
  size(800, 800); // Increase the size of the screen
  noLoop();
  for (int i = 0; i < dice.length; i++) {
    int x = (i % 10) * 80 + 20; // Adjust the x position to prevent overlap
    int y = (i / 10) * 80 + 20; // Adjust the y position to prevent overlap
    dice[i] = new Die(x, y); // Create Die objects with non-overlapping positions
  }
}

void draw() {
  background(255);
  totalDots = 0; // Reset the total dots count
  for (int i = 0; i < dice.length; i++) {
    dice[i].roll(); // Roll each die
    dice[i].show(); // Display the result of each die
    totalDots += dice[i].value; // Add the value of each die to the total
  }
  
  // Display the total dots count
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
    roll(); // Roll the die when it's created
  }
  
  void roll() {
    value = (int)(random(1, 7)); // Randomly generate a value from 1 to 6
  }
  
  void show() {
    fill(255);
    rect(x, y, 50, 50);
    fill(0);
    switch (value) {
      case 1:
        ellipse(x + 25, y + 25, 10, 10); // Display a dot for value 1
        break;
      case 2:
        ellipse(x + 15, y + 35, 10, 10);
        ellipse(x + 35, y + 15, 10, 10); // Display two dots for value 2
        break;
      case 3:
        ellipse(x + 15, y + 15, 10, 10);
        ellipse(x + 25, y + 25, 10, 10);
        ellipse(x + 35, y + 35, 10, 10); // Display three dots for value 3
        ellipse(x + 15, y + 35, 10, 10);
        ellipse(x + 35, y + 15, 10, 10);
        break;
      case 4:
        ellipse(x + 15, y + 15, 10, 10);
        ellipse(x + 35, y + 15, 10, 10);
        ellipse(x + 15, y + 35, 10, 10);
        ellipse(x + 35, y + 35, 10, 10); // Display four dots for value 4
        break;
      case 5:
        ellipse(x + 15, y + 15, 10, 10);
        ellipse(x + 35, y + 15, 10, 10);
        ellipse(x + 25, y + 25, 10, 10);
        ellipse(x + 15, y + 35, 10, 10);
        ellipse(x + 35, y + 35, 10, 10); // Display five dots for value 5
        break;
      case 6:
        ellipse(x + 15, y + 15, 10, 10);
        ellipse(x + 35, y + 15, 10, 10);
        ellipse(x + 15, y + 25, 10, 10);
        ellipse(x + 35, y + 25, 10, 10);
        ellipse(x + 15, y + 35, 10, 10);
        ellipse(x + 35, y + 35, 10, 10); // Display six dots for value 6
        break;
    }
  }
}



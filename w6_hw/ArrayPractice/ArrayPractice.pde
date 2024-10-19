int[] fruitAmts;
String[] fruitNames;
color[] fruitColors;

void setup() {
  size(800, 480);

  fruitAmts = new int[6];
  for (int n = 0; n < 6; n++) {
    if (n == 0) {
      fruitAmts[n] = 50;
    } else {
      fruitAmts[n] = int(random(5, 100));
    }
  }

  fruitNames = new String[6];
  fruitNames[0] = "apple";
  fruitNames[1] = "banana";
  fruitNames[2] = "mango";
  fruitNames[3] = "kiwi";
  fruitNames[4] = "peach";
  fruitNames[5] = "orange";


  fruitColors = new color[6];
  for (int i = 0; i < fruitColors.length; i++) {
    fruitColors[i] = color(random(255), random(255), random(255));
  }
}

float barGap = 120;
float barWidth = 24;
float x = 80;

void draw () {
  background(0);

  int totalAmount = 0;

  strokeWeight(barWidth);

  for (int n = 0; n < 6; n++) {
    //stroke(255);
    stroke(fruitColors[n]);
    strokeCap(SQUARE);
    textAlign(CENTER);
    textSize(24);

    //fill(255, 0, 0);
    fill(fruitColors[n]);
    line(x + barGap * n, height * 0.5,
      x + barGap * n, height * 0.5 - 2 * fruitAmts[n]);

    text(fruitNames[n],
      x + barGap * n, height * 0.5 + 30);
    text(fruitAmts[n],
      x + barGap * n, height * 0.5 - 2 * fruitAmts[n] - 20);

    println("Fruit: " + fruitNames[n] + ", Amount: " + fruitAmts[n]);
    totalAmount += fruitAmts[n];
  }
  println("Total Amount: " + totalAmount);

  fill(255);
  textSize(24);
  text("Total Amount: " + totalAmount, width * 0.5, height - 40);
}

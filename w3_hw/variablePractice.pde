float squareSize = random(50, 150);
float lineWidth = random(4, 16);
float circleSize = random(60, 200);
float circleX = random(0, 640);
float circleY = random(0, 480);

void setup() {
  size(640, 480);
  background(0);
}

void mousePressed() {
  circleSize = random(60, 200);
  circle(mouseX, mouseY, circleSize);
}

void draw() {
  squareSize = random(50, 150);
  lineWidth = random(4, 16);
  rectMode(CENTER);
  strokeWeight(lineWidth);
  stroke(0, 0, 255, 10);
  fill(0, 255, 0, 10);
  square(320, 180, squareSize);
}

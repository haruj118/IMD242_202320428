void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  translate(width / 2, height / 2);

  float hr = hour() % 12;
  float mn = minute();
  float sc = second();

  stroke(255);
  strokeWeight(8);
  noFill();
  ellipse(0, 0, 700, 700);


  stroke(255);
  strokeWeight(8);
  float hourAngle = map(hr + mn / 60, 0, 12, 0, TWO_PI);
  pushMatrix();
  rotate(hourAngle);
  line(0, 0, 0, -175);
  popMatrix();


  stroke(255);
  strokeWeight(6);
  float minuteAngle = map(mn + sc / 60, 0, 60, 0, TWO_PI);
  pushMatrix();
  rotate(minuteAngle);
  line(0, 0, 0, -225);
  popMatrix();


  stroke(255, 0, 0);
  strokeWeight(4);
  float secondAngle = map(sc, 0, 60, 0, TWO_PI);
  pushMatrix();
  rotate(secondAngle);
  line(0, 0, 0, -275);
  popMatrix();


  stroke(255);
  fill(255);
  ellipse(0, 0, 10, 10);


  for (int i = 0; i < 60; i++) {
    float angle = map(i, 0, 60, 0, TWO_PI);
    float x1 = cos(angle) * 320;
    float y1 = sin(angle) * 320;
    float x2, y2;

    if (i % 5 == 0) {
      strokeWeight(6);
      x2 = cos(angle) * 290;
      y2 = sin(angle) * 290;
    } else {
      strokeWeight(2);
      x2 = cos(angle) * 305;
      y2 = sin(angle) * 305;
    }
    stroke(255);
    line(x1, y1, x2, y2);
  }
}

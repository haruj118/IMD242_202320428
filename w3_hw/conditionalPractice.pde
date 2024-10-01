void setup() {
  size(600, 480);
}

void draw() {
  background(0);
  stroke(255);
  fill(175);
  rectMode(CENTER);


  if (mouseX < 150) {
    circle(75, 240, 100);
  } else if (mouseX < 300) {
    square(225, 240, 100);
  }
  if (mouseX > 300) {
    circle(450, 240, 200);
  } else if (mouseX > 450);
  {
    square(450, 240, 150);
  }

  stroke(127);
  strokeWeight(4);
  line(150, 0, 150, height);
  line(300, 0, 300, height);
  line(450, 0, 450, height);
}

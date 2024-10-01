void setup() {
  size(640, 480);
  background(255, 157, 254);
}

void draw() {
  stroke(0);
  strokeWeight(10);
  fill(69, 216, 50);
  circle(320, 240, 300);
  fill(0);
  ellipse(245, 240, 50, 70);
  ellipse(395, 240, 50, 70);
  line(245, 110, 220, 40);
  line(395, 110, 420, 40);
  line(250, 320, 390, 320);
  
}

void mousePressed() {
  stroke(0);
  strokeWeight(10);
  fill(69, 216, 50);
  circle(320, 240, 300);
  fill(0);
  ellipse(245, 240, 50, 70);
  ellipse(395, 240, 50, 70);
  rectMode(CENTER);
  rect(320, 320, 30, 20);
  
 // background(mouseX, mouseY, 0);
}

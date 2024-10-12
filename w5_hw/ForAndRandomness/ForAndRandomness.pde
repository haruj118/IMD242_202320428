int tileNum;
int randomSeed = 0;
float noiseMult = 0.001;

void setup() {
  size(800, 800);
}

void draw() {
  noiseSeed(randomSeed);
  randomSeed(randomSeed);
  background(0);
  tileNum = int(map(mouseX, 0, width, 3, 16 + 1));
  noiseMult = pow(10, map(mouseY, 0, height, -1, -4));
  float tileSize = width / float(tileNum);
  for (int row = 0; row < tileNum; row++) {
    for (int col = 0; col < tileNum; col++) {
      float rectX = tileSize * col;
      float rectY = tileSize * row;
      float centerX = rectX + tileSize * 0.5;
      float centerY = rectY + tileSize * 0.5;
      float noiseVal = noise(centerX * noiseMult, centerY * noiseMult);


      fill(0);
      rect(rectX, rectY, tileSize, tileSize);


      noFill();
      stroke(255);
      circle(centerX, centerY, tileSize * 0.8);


      pushMatrix();
      translate(centerX, centerY);
      rotate(radians(360 * noiseVal));
      stroke(255);
      line(0, 0, tileSize * 0.8 * 0.5, 0);
      popMatrix();


      pushMatrix();
      translate(centerX, centerY);
      rotate(radians(360 * noiseVal));
      fill(255);
      noStroke();
      circle(tileSize * 0.8 * 0.5, 0, tileSize * 0.3);
      popMatrix();
    }
  }
}

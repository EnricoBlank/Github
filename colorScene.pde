color foregroundColor;
color backgroundColor;

void setupColorScene() {
  colorMode(HSB, 360, 100, 100);
  foregroundColor = color(random(360), 50, 160);
  backgroundColor = color(random(360), 50, 160);
  colorMode(RGB, 255, 255, 255);
}

void drawColorScene() {
  if (frameCount % 120 == 0) {
    colorMode(HSB, 360, 100, 100);
    foregroundColor = color(random(360), 50, 160);
    backgroundColor = color(random(360), 50, 160);
    colorMode(RGB, 255, 255, 255);
  }
  
  float time = (float)(frameCount % 120) / 120;
  color currentForegroundColor =  lerpColor(foregroundColor, backgroundColor, time);
  color currentBackgroundCOlor =  lerpColor(backgroundColor, foregroundColor, time);
  
  time = 0.5 - (cos(PI * time) /2);

  background(currentBackgroundCOlor);
  fill(currentForegroundColor);
  noStroke();

  translate(width /2, height /2);
  circle(0, 0, height/ 1.61803);
}

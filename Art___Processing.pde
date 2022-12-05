float angle;

void setup() {
  size(800, 800);
  surface.setLocation(957, 0);
  rectMode(CENTER);
  stroke(0, 15, 30);
  strokeWeight(25);
}

void draw() {
  background(0, 15, 30);
  
  translate(width/2, height/2);
  float scaleVar = map(mouseX, 0, width, 0.5, 5);
  scale(scaleVar);
  for(int i=0; i<100; i++) {
    fill(i*10, 255-i*25, 255-i*10);
    scale(0.95);
    rotate(radians(angle));
    rect(0, 0, 600, 600);
  }
  
  angle += 0.1;
}

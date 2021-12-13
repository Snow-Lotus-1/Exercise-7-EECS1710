//just went and looked at an example in processing
//this is what I think we were actually supposed to do
KochFractal k;

void setup() {
  size(800,250);
  background(255,0,0);
  frameRate(2);  // Animate slowly
  k = new KochFractal();
}

void draw() {
  background(255,0,0);
  // Draws the snowflake!
  k.render();
  // Iterate
  k.nextLevel();
  // really hard to see after 6
  if (k.getCount() > 10) {
    k.restart();
  }
}

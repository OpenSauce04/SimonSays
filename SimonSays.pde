ArrayList<Short> currentSequence = new ArrayList<Short>();
ArrayList<Short> cloneSequence = new ArrayList<Short>();
void setup() {
  size(900, 900, P2D);
  stroke(0, 0);
  frameRate(60);
  addMove();
}
void draw() {
  background(255, 100);
  buttonEvents();
  drawButtons();
  mouseReleased = false;
}
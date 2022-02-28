ArrayList<Short> currentSequence = new ArrayList<Short>();
ArrayList<Short> cloneSequence = new ArrayList<Short>();
ArrayList<Short> demoSequence = new ArrayList<Short>(); // Used to show the new sequence to the player
void setup() {
  size(900, 900, P2D);
  stroke(0, 0);
  frameRate(60);
  addMove();
}
void draw() {
  println(cloneSequence);
  background(255, 100);
  if (gameOver) {
    tlGlow = trGlow = blGlow = brGlow = 0;
    fill(0);
    text("GAME OVER", width/2, height/2);
    text("Final score: "+score, width/2, 10+height/2);
  } else {
    fill(0);
    text("Score: "+score, 10, 10);
    if (!nextMove) {
      buttonEvents();
    }
  }
  drawButtons();
  mouseReleased = false;
}
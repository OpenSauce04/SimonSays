ArrayList<Short> currentSequence = new ArrayList<Short>();
ArrayList<Short> cloneSequence = new ArrayList<Short>();
ArrayList<Short> demoSequence = new ArrayList<Short>(); // Used to show the new sequence to the player
void setup() {
  size(900, 900, P2D);
  stroke(0, 0);
  frameRate(60);
  addMove();
  textSize(32);
  textAlign(CENTER);
}
void draw() {
  //println(cloneSequence);
  background(255, 100);
  if (gameOver) {
    tlGlow = trGlow = blGlow = brGlow = min(brGlow + 3, 200);
  } else {
    fill(0);
    text("Score: "+score, 64, 32);
    if (!nextMove) {
      buttonEvents();
    }
  }
  drawButtons();
  if (gameOver) {
    fill(0);
    text("GAME OVER", width/2, height/2 - 5);
    text("Final score: "+score, width/2, height/2 + 32-5);
  }
  mouseReleased = false;
}
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
  initBackground();
  surface.setLocation(500, 50);
  surface.setTitle("Simon Says");
}

void draw() {
  //println(cloneSequence);
  updateBackground();
  drawBackground();
  if (gameOver) {
    buttonTransparency -= 3;
    maxBgBoxTransparency = 150;
  } else {
    fill(255);
    text("Score: "+score, 64, 32);
    if (!nextMove) {
      buttonEvents();
    }
  }
  drawButtons();
  if (gameOver) {
    fill(0);
    text("GAME OVER", width/2, height/2 - 20);
    text("Final score: "+score, width/2, height/2 + 32-15);
    text("Press any key to restart...", width/2, height/2 + 80-10);
    if (keyPressed) {
      resetGame();
    }
  }
  mouseReleased = false;
}

void resetGame() {
  gameOver = false;
  score = 0;
  maxBgBoxTransparency = 20;
  buttonTransparency = 210;
  currentSequence = new ArrayList<Short>();
  addMove();
}
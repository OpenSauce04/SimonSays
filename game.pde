boolean nextMove = false;
boolean gameOver = false;
void addMove() {
  currentSequence.add((short)constrain(int(random(0, 5)), 1, 4));
  demoSequence = new ArrayList<Short>(currentSequence);
  nextMove = true;
  thread("demoSequence");
  cloneSequence = new ArrayList<Short>(currentSequence);
}
void demoSequence() {
  while (!demoSequence.isEmpty()) {
    tlGlow = trGlow = blGlow = brGlow = -200;
    delay(100);
    switch(demoSequence.get(0)) {
      case 1:
        tlGlow = 0;
        break;
      case 2:
        trGlow = 0;
        break;
      case 3:
        blGlow = 0;
        break;
      case 4:
        brGlow = 0;
        break;
    }
    delay(500);
    demoSequence.remove(0);
  }
  nextMove = false;
}
void checkSequence(int buttonID) {
  if (cloneSequence.get(0) == buttonID) {
    cloneSequence.remove(0);
    if (cloneSequence.isEmpty()) {
      addMove();
    }
  } else {
    gameOver = true;
  }
}
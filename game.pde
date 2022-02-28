boolean nextMove = false;
void addMove() {
  currentSequence.add((short)int(random(1, 4)));
  cloneSequence = currentSequence;
}
void checkSequence(int buttonID) {
  if (cloneSequence.get(0) == buttonID) {
    cloneSequence.remove(0);
    if (cloneSequence.isEmpty()) {
      addMove();
    }
  }
}
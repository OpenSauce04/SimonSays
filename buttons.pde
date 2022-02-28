int buttonSize = 325;
int buttonSpacing = 375;
int buttonOffset = 100;
void drawButtons() {
  fill(0,255,0);
  rect(buttonOffset, buttonOffset, buttonSize, buttonSize); // Top Left
  fill(255, 0,0);
  rect(buttonOffset+buttonSpacing, buttonOffset, buttonSize, buttonSize); // Top Right
  fill(255, 255, 0);
  rect(buttonOffset, buttonOffset+buttonSpacing, buttonSize, buttonSize); // Bottom Left
  fill(0, 0, 255);
  rect(buttonOffset+buttonSpacing, buttonOffset+buttonSpacing, buttonSize, buttonSize); // Bottom Right
}
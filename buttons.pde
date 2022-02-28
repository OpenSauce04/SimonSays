int buttonSize = 325;
int buttonSpacing = 375;
int buttonOffset = 100;
int buttonTransparency = 210;
float tlGlow, trGlow, blGlow, brGlow = 0;
void drawButtons() {
  fill(0+tlGlow, 255+tlGlow, 0+tlGlow, buttonTransparency);
  rect(buttonOffset, buttonOffset, buttonSize, buttonSize); // Top Left
  fill(255+trGlow, 0+trGlow, 0+trGlow, buttonTransparency);
  rect(buttonOffset+buttonSpacing, buttonOffset, buttonSize, buttonSize); // Top Right
  fill(255+blGlow, 255+blGlow, 0+blGlow, buttonTransparency);
  rect(buttonOffset, buttonOffset+buttonSpacing, buttonSize, buttonSize); // Bottom Left
  fill(0+brGlow, 0+brGlow, 255+brGlow, buttonTransparency);
  rect(buttonOffset+buttonSpacing, buttonOffset+buttonSpacing, buttonSize, buttonSize); // Bottom Right
}
void buttonEvents() {
  tlGlow = trGlow = blGlow = brGlow = 0;
  // Top Left
  if (mouseX>=buttonOffset && mouseY>=buttonOffset && mouseX<=buttonOffset+buttonSize && mouseY<=buttonOffset+buttonSize) {
    tlGlow = 50;
    if (mouseReleased) {
      tlGlow = 100;
      checkSequence(1);
    }
  }
  // Top Right
  if (mouseX>=buttonOffset+buttonSpacing && mouseY>=buttonOffset && mouseX<=buttonOffset+buttonSpacing+buttonSize && mouseY<=buttonOffset+buttonSize) {
    trGlow = 50;
    if (mouseReleased) {
      trGlow = 100;
      checkSequence(2);
    }
  }
  // Bottom Left
  if (mouseX>=buttonOffset && mouseY>=buttonOffset+buttonSpacing && mouseX<=buttonOffset+buttonSize && mouseY<=buttonOffset+buttonSpacing+buttonSize) {
    blGlow = 50;
    if (mouseReleased) {
      blGlow = 100;
      checkSequence(3);
    }
  }
  // Bottom Right
  if (mouseX>=buttonOffset+buttonSpacing && mouseY>=buttonOffset+buttonSpacing && mouseX<=buttonOffset+buttonSpacing+buttonSize && mouseY<=buttonOffset+buttonSpacing+buttonSize) {
    brGlow = 50;
    if (mouseReleased) {
      brGlow = 100;
      checkSequence(4);
    }
  }
}
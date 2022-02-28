int boxCount = 250;
int maxBgBoxTransparency = 20;

class bgBox {
  float xpos, ypos, xvel, yvel, rot, rotvel, size, transparency;
  void reset() {
    size = random(100, 200);
    transparency = 0;
    xpos = random(0,width);
    ypos = random(0,height);
    xvel = random(-0.5, 0.5);
    yvel = random(-0.5, 0.5);
    rot = random(0, 360);
    rotvel = random(-0.5, 0.5);
  }
}

ArrayList<bgBox> bgBoxes = new ArrayList<bgBox>();

void initBackground() {
  for (int i=0; i<boxCount; i++) {
    bgBoxes.add(new bgBox());
    bgBoxes.get(i).reset();
  }
  for (int i=0; i<400; i++) { // Iterate the boxes a bit before actually starting to draw them
    updateBackground();
  }
}

void updateBackground() {
  for (int i=0; i<boxCount; i++) {
    if (!(bgBoxes.get(i).xpos < width+bgBoxes.get(i).size // If off screen
       && bgBoxes.get(i).xpos > -bgBoxes.get(i).size
       && bgBoxes.get(i).ypos < height+bgBoxes.get(i).size
       && bgBoxes.get(i).ypos > -bgBoxes.get(i).size)) {
      bgBoxes.get(i).reset();
    } else {
      bgBoxes.get(i).xpos += bgBoxes.get(i).xvel;
      bgBoxes.get(i).ypos += bgBoxes.get(i).yvel;
      bgBoxes.get(i).rot += bgBoxes.get(i).rotvel;
      bgBoxes.get(i).transparency += 0.5;

      if (bgBoxes.get(i).transparency > maxBgBoxTransparency) { // Fade after restarting the game
        bgBoxes.get(i).transparency -= 1;
      }
    }
    
  }
}

void drawBackground() {
  background(0, 100);
  for (int i=0; i<boxCount; i++) {
    fill(255, bgBoxes.get(i).transparency);
    pushMatrix();
    translate(bgBoxes.get(i).xpos, bgBoxes.get(i).ypos);
    rotate(radians(bgBoxes.get(i).rot));
    rect(-bgBoxes.get(i).size/2, -bgBoxes.get(i).size/2, bgBoxes.get(i).size, bgBoxes.get(i).size);
    popMatrix();
  }
}
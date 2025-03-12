//Some Music are from https://www.youtube.com/playlist?list=PLK7YTXgop1wT2O9-xmcm9QrN0NzCLg5S7
//New Music Player Button

float rectX100,rectY100;
float rectX,rectY;

void setup () {
  size (1500,750);
  rectX = width/100;
  rectY = height/100;
}

void draw () {
  rect (rectX100,rectY100,rectX,rectY);
  rectloop();
  /*rect (width-rectX*8,0,rectX*8,rectY*10);
  rect (0,rectY*10,rectX*75,rectY*75);
  rect (rectX*75,rectY*10,rectX*25,rectY*50);
  rect (rectX*75,rectY*35,rectX*25,rectY*50);
  rect (0,rectY*85,rectX*75,rectY*25);
*/
}

void mousePressed () {
  if (mouseX>width-rectX*8&&mouseY<height-rectY*8) exit();
}

void keyPressed () {
  if (key==CODED||keyCode==ESC) exit();
}

void rectloop () {
  rectX100 = rectX++;
  if (rectX100 = rectX*100) {
    rectY100 = rectY++;
    rectX100 = 0;
  }
  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Scaling up to draw a rectangle at (x,y)
      int x = i*videoScale;
      int y = j*videoScale;
      fill(255);
      stroke(0);
      // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
      rect(x, y, videoScale, videoScale);
      }
    } 
  }
}

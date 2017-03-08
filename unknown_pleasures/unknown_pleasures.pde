import processing.pdf.*;

// set your file name here
String fileName = "sketch.pdf";

void setup() {
  // drawing as 500x500 PDF
  size(500, 500, PDF, fileName);
  background(0);
  fill(0);
  stroke(255);
}

void draw() {
 // this will be the amplitude (height) of our waves
 float amp = 10;
 
 // move our starting point down 100px and over 150px
 translate(150, 100);
 
 // we're using this double for loop to cycle through
 // both the x AND y coordinates. think of the screen
 // as a series of rows of pixels. we're starting at
 // the top-left, going all the way across the top row.
 // then moving down a row and starting at the left
 // again...
 
 
 // in this case we start with y values
 for(int y=0; y<300; y = y+5) {
   beginShape();
   for(int x=0; x<200; x++) {
     amp = abs(x - 100);
     amp = map(amp, 0, 100, 40, 0);
     vertex(x, y-noise(x*.1, y*.1)*amp);
   }
   endShape();
 }
  
 // exit the sketch after drawing PDF 
 exit(); 
}
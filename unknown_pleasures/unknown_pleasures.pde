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
 float amp = 10;

 translate(100, 80);
 
 for(int i=0; i<350; i = i+10) {
   beginShape();
   for(int j=0; j<300; j++) {
     //amp = abs(j-150);
     amp = abs(j - 150);
     amp = map(amp, 0, 150, 40, 0);
     vertex(j, i-noise(j*.1, i*.1)*amp);
   }
   endShape();
 }
  
 // exit the sketch after drawing PDF 
 exit(); 
}
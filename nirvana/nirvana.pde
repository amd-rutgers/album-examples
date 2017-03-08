import processing.pdf.*;

// set your file name here
String fileName = "sketch.pdf";

PFont title;

char[] letters = {'N', 'I', 'R', 'V', 'A', 'N'};

void setup() {
  // drawing as 500x500 PDF
  size(500, 500, PDF, fileName);
  background(0);
  fill(150);
  
  title = createFont("BodoniSvtyTwoITCTT-Bold", 78);
  textFont(title, 78);
  
}

void draw() {

 translate(width/2, height/2); 
 scale(0.6, 1);
 textAlign(CENTER);
 
 char[] name = new char[7];
 
 for(int i=0; i < 7; i++) {
   name[i] = letters[floor(random(letters.length))];
 }
 
 text(new String(name), 0, 39);
 
 // exit the sketch after drawing PDF 
 exit(); 
}
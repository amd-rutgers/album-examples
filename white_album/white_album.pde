import processing.pdf.*;

// set your file name here
String fileName = "sketch.pdf";

PFont helvetica;
PFont americanTypewriter;

float redValue;
float greenValue;
float blueValue;

color bg;
color title;
color stamp;

void setup() {
  // drawing as 500x500 PDF
  size(500, 500, PDF, fileName);

  redValue = random(100, 255);
  greenValue = random(100, 255);
  blueValue = random(100, 255);

  
  bg = color(redValue, greenValue, blueValue);
  title = color(redValue+10, greenValue+10, blueValue+10);
  stamp =color(redValue-20, greenValue-20, blueValue-20);
  
  background(bg);
  
  fill(title);  
  
  helvetica = createFont("Helvetica-Bold", 22);
  americanTypewriter = createFont("AmericanTypewriter", 11);

}

void draw() {

  textFont(helvetica, 22);
  text("The BEATLES", 200, 300);

  translate(400, 450);
  rotate(radians(random(-10, 10)));
  fill(stamp);
  textFont(americanTypewriter, 11);
  text("No "+floor(random(0000001, 9999999)), 0,0);

  
 // exit the sketch after drawing PDF 
 exit(); 
}
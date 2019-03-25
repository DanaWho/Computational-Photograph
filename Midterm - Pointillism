PImage photo;
int pointillize = 13;

void setup(){
  size(457,685);
  photo = loadImage("Hannah.jpg");
  background(255);
  smooth();
}

void draw(){
  int x=int(random(photo.width));
  int y=int(random(photo.height));
  int loc = x+y*width;
  
  loadPixels();
  float r = red(photo.pixels[loc]);
  float g = green(photo.pixels[loc]);
  float b = blue(photo.pixels[loc]);
  noStroke();
  
  fill(r,g,b,100);
  ellipse(x,y,pointillize,pointillize);
}

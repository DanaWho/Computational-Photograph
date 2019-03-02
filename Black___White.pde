PImage photo;

void setup(){
  size(355,532);
  photo = loadImage("Deer.jpg");
}

void draw(){
  loadPixels();
  photo.loadPixels();
  for (int y=0; y<height; y++){
    for (int x=0; x<width; x++){
      int loc = x+y*width;
      float r = red(photo.pixels [loc]); 
      float g = green(photo.pixels[loc]);
      float b = blue(photo.pixels[loc]);
      
      float total = r+g+b;
      float grey = total/2;
      
      if (grey<178) pixels[loc]=color(0);
      if (grey>178) pixels[loc]=color(255);
    }
  }
  updatePixels();
}

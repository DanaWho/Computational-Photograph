PImage photo;

void setup(){
  size(414,621);
  photo = loadImage("Dana.jpg");
}

void draw(){
  loadPixels();
  photo.loadPixels();
  for (int y=0; y<height; y++){
    for (int x=0; x<width; x++){
      int loc = x+y*width;
      float r = red(photo.pixels [loc])+13; 
      float g = green(photo.pixels[loc])+27;
      float b = blue(photo.pixels[loc])+42;
      
  
     pixels[loc]=color(r,g,b);
    }
  }
  updatePixels();
}

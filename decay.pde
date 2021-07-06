PImage img;

void setup() {
  size(900, 600);
  img=loadImage("IMG_9125 copy.JPG");
}

void draw() {
  loadPixels();
  img.loadPixels();
  for (int x=0; x < width-1; x++) {
    for (int y=0; y < height; y++) {
      int loc1= x + y*width;
      int loc2= (x+1) + y*width;
      float b1= brightness(img.pixels[loc1]);
      float b2= brightness(img.pixels[loc2]);

      float diff= abs(b1-b2);
      if (diff>20) {
        pixels[loc1]=color(255,0,0);
      } else {
        pixels[loc1]=color(0);
      }
    }
  }
  updatePixels();
 save("outline1.jpg");
}

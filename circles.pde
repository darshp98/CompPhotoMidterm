PImage img;
int lastTime=0;

void setup() {
  size(900, 600);
  noStroke();
  background(0);
  img=loadImage("IMG_9174 copy 2.JPG");
  img.loadPixels();
}

void draw() {
  int xLoc= (int) random(0, img.width);
  int yLoc= (int) random(0, img.height);
  color c= img.pixels[yLoc * img.width + xLoc]; //gets number of that pixel

  int size= (int) random(10, 50);
  int transparency=200;

  fill(c, transparency);
  ellipse(xLoc, yLoc, size, size);

  //10,000=10 sec; 30,000=30 sec
  if (millis()- lastTime>= 30000) {
    saveFrame("2ndimg-#####.tif");
    lastTime=millis();
  }
}

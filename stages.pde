PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;


void setup() {

  size(900, 600);
  img=loadImage("IMG_9152 copy.JPG"); //withered roses
  img2=loadImage("IMG_9174 copy 2.JPG");//blue flowers
  img3=loadImage("IMG_9232 copy 3.JPG"); //brown flower
  img4=loadImage("IMG_9125 copy.JPG");//white flowers
  img5=loadImage("IMG_9116 copy.JPG"); //red roses
  img6=loadImage("IMG_9141 copy.JPG");//green leaves
}

void draw() {

  image(img6, 0, 0);

  image(img5, 0, 0);

  image(img4, 0, 0);

  image(img3, 0, 0);
  image(img2, 0, 0);
  image(img, 0, 0);

  tint(255, 10);
  
//save("final.jpg");
}

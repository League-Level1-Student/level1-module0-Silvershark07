import ddf.minim.*;  //at the very top of your sketch
PImage pictureOfRecord;     //as member variable
int height = 600;
int width = 600;
int num = 100;
Minim minim;  //as a member variable
AudioPlayer song;  //as a member variable



void setup(){
size(600,600);     //in setup method  
 pictureOfRecord= loadImage("record player.jpg");     //in setup method   
 pictureOfRecord.resize(height, width);     //in setup method
minim = new Minim(this);  //in the setup method  
  song = minim.loadFile("beer.mp3", 512);//in the setup method

  


  
}
void draw(){
 if (mousePressed){
  num = num+1000000000;
  num++;
  rotateImage(pictureOfRecord, num);
song.play();

 }
else{
  song.pause();
song.rewind();
}
  image(pictureOfRecord, 0,0);     //in draw method
  
  
  
}
void rotateImage(PImage image, int amountToRotate) {
     translate(width/2, height/2);
     rotate(amountToRotate*TWO_PI/360);
     translate(-image.width/2, -image.height/2);

}
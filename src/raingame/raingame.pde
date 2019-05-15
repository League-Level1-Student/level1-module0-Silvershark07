int width = 100;
int height = 100;
int rainy = 250;
int  randomNumber;
int x = 250;
int y = 400;
int a = 50;
int b = 50;
int score = 0;
void setup(){
  size(500, 500);
   randomNumber = (int) random(500);  
 fill(0, 0, 0);
    textSize(16);
    text("Score: " + score, 20, 20); 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
void draw(){
background(0, 255, 0); 
  fill(0, 0, 255);
    stroke(0, 0, 0);
    
    ellipse(randomNumber, rainy, width , height);
          
       fill(100,0,0 );
         
         
         
          rect( mouseX,  450,  a, b);
rainy += 5;
  if(rainy>480){
  rainy = 0;
  checkCatch( randomNumber);
  randomNumber = (int) random(500);
  
  
  }
  
  
}
void checkCatch(int x){
         if (x > mouseX && x < mouseX+100)
            score++;
         else if (score > 0) 
            score--;
        println("Your score is now: " + score);

  }


//ufhduhfh

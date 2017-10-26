int xu = 0;
int yu = 0;
int xd = 1000;
int yd = 600;
float r = 0;
float g = 0;
float rSpeed,gSpeed;
int eSize = 20;
int xvelocity = 10;
int yvelocity = 6;
int texty = 600;
int textvelocity = 5;


int result(){
  //Write procedure here.
  background_idle = loadImage("20120419160139_img1_10.jpg");
  image(background_idle, 0, 0, 1000, 600);
  
  fill(0);
  String a = str(score);
  
  textSize(100);
  text("your score is ", 200, height/2-100);
  
  textSize(200);
  fill(255,0,0);
  text(a + "!?",width/2-150,height/2+100);
  
  noStroke();
 
 
  fill(0,0,255);
  ellipse(xu, height/10, eSize, eSize); 
  xu += xvelocity; 
  fill(0,255,r);
  ellipse(xd, 9*height/10, eSize, eSize); 
  xd -= xvelocity; 

  fill(255,0,0);
  ellipse(width/10, yu, eSize, eSize);
  yu += yvelocity; 
  fill(255,255,0);
  ellipse(9*width/10, yd, eSize, eSize); 
  yd -= yvelocity; 
  
  mcnt++;
  if((mcnt%60)<40){
    textSize(20);
    fill(0);
    text("Click r to retry!", 800,500);
  }

  if ((keyPressed == true)&& ( key == 'r')){
  
  return 0;
  }return 4;
  

}
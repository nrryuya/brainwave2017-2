PImage background_idle;
PImage hand;
float change_height;

int hold_hands(){
  //Write procedure here.
  
  
  background_idle = loadImage("static/hand_shake.jpg");
  hand = loadImage("static/hand.jpg");
  background(#FFFFFF, 255);
  image(background_idle, 0, 0, 1000, 600);
  
  fill(0);
  textSize(100);
  text("Shake your hands!!", 100, 350);

  degree_in_hold_hands += 100;
  change_height = 30*sin(degree_in_hold_hands);
  tint( #FFFFFF, 200);
  image(hand,  width / 2 -75, height / 2 -50 + change_height, 150,100);
 
    fill(0);
  textSize(100);

    if ((keyPressed == true)&& ( key == 'c')){
      pointer = 0; 
      return 2;
    }return 1;
}
<<<<<<< bcee0cf3abc9f15af3d0e455b532d6087741ff62
int hold_hands(){
  //Write procedure here.
  return 2;
=======
PImage background_idle;
PImage hand;
float change_height;

void hold_hands(){
  //Write procedure here.
  
  
  background_idle = loadImage("static/hand_shake.jpg");
  hand = loadImage("static/shand.jpg");
  background(#FFFFFF, 255);
  image(background_idle, 0, 0, 1000, 600);
  
  fill(0);
  textSize(100);
  text("Shake your hands!!", 100, 350);

  degree_in_hold_hands += 100;
  change_height = 30*sin(degree_in_hold_hands);
  tint( #FFFFFF, 200);
  image(hand,  width / 2 -75, height / 2 -50 + change_height, 150,100);
  
  
>>>>>>> make hold_hands.pde
}
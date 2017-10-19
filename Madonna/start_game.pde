int start_game(){


PImage img;
 img = loadImage("170324_mdna_skin_mainvisual.jpg");
  
image(img,0,0,1000,600);
 textSize(100);
   fill(0);
  text("CLICK HERE",50,450);
  
if (mousePressed == true&&mouseX<100&&mouseY>500){
return 1; 
}
else return 0;

}
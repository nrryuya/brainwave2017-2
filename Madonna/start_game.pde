int start_game(){
  //Write procedure here.
  PImage img;
 img = loadImage("170324_mdna_skin_mainvisual.jpg");
  
image(img,0,0,1000,600);


    fill(0);
  textSize(60);
  text("push s key to start!!", 100, 350);
    


    if ((keyPressed == true)&& ( key == 's')){
    
    return 1;
  }else{
          return 0;
  }

}
int start_game(){
  //Write procedure here.

    fill(0);
  textSize(60);
  text("push s key to start!!", 100, 350);
    


    if ((keyPressed == true)&& ( key == 's')){
    
    return 1;
  }else{
          return 0;
  }

}

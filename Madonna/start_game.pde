int start_game(){
  //Write procedure here.

    fill(0);
  textSize(100);
  text("start!!", 100, 350);
    t = (millis() - t_start) / 1000.0; 


    if (t > 3){
    
    return 1;
  }else{
          return 0;
  }
}
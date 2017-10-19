int result(){
  //Write procedure here.
      fill(0);
  textSize(100);
  text("your score is ...", 100, 350);
  
  mcnt++;
  if((mcnt%60)<40){
    textSize(20);
    fill(0);
    text("Click r to retry!", 200,400);
  }

  if ((keyPressed == true)&& ( key == 'r')){
  
  return 0;
  }return 4;

}
int question(){
    background(BG_COLOR);
    fill(255);
    text("click", 80,100);
    
  fill(255);
  rect(100,350,50,50);

  rect(200,350,50,50); //<>//
 //<>//
  rect(300,350,50,50);
 
  fill(0);
  textSize(20);
  text("click", 100,390);
  text("click", 200,390);
  text("click", 300,390);
  
  if ((mousePressed == true)&& ( mouseX <150)&&(mouseX >100)&&(mouseY>350)&&(mouseY<400)){
    score += 10;
    return 1;
  }else if((mousePressed == true)&& ( mouseX <250)&&(mouseX >200)&&(mouseY>350)&&(mouseY<400)){
    
    return 1;
  }else if((mousePressed == true)&& ( mouseX <350)&&(mouseX >300)&&(mouseY>350)&&(mouseY<400)){
    score -= 10;
    return 1;
  }else{
          return 5;
  }

}
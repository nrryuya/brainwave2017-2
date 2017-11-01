int question(){
    background(BG_COLOR);
    fill(255);
    textSize(30);
    text("What do you have ?", 150,200);
    
  fill(255);
  rect(100,350,100,50);
  rect(250,350,100,50);
  rect(400,350,100,50); //<>//
  rect(550,350,100,50); //<>//
 
  fill(0);
  textSize(20);
  text("Love", 110,390);
  text("Money", 260,390);
  text("Muscle", 410,390);
  text("Nothing", 560,390);
  
  if ((mousePressed == true)&& ( mouseX <200)&&(mouseX >100)&&(mouseY>350)&&(mouseY<400)){
    score += 20;
    return 1;
  }else if((mousePressed == true)&& ( mouseX <350)&&(mouseX >250)&&(mouseY>350)&&(mouseY<400)){
    score += 5;
    return 1;
  }else if((mousePressed == true)&& ( mouseX <500)&&(mouseX >400)&&(mouseY>350)&&(mouseY<400)){
    score += 15;
    return 1;
  }else if((mousePressed == true)&& ( mouseX <650)&&(mouseX >550)&&(mouseY>350)&&(mouseY<400)){

    return 3;
  }else{
          return 5;
  }

}
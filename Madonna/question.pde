PImage question;
int question(){
    question = loadImage("question.jpg");
    background(#FFFFFF, 255);
    image(question, 0, 0, 1000, 600);
    fill(0);
    textSize(30);
    text("What do you have ?", 150,200);
   int page = 5;
  fill(255); //<>//
  rect(100,350,100,50); //<>//
  rect(250,350,100,50);
  rect(400,350,100,50);
  rect(550,350,100,50);
 
  fill(0);
  textSize(20);
  text("Love", 110,390);
  text("Money", 260,390);
  text("Muscle", 410,390);
  text("Nothing", 560,390);
  
  if ((mousePressed == true)&& ( mouseX <200)&&(mouseX >100)&&(mouseY>350)&&(mouseY<400)){
    fill(255,0,0);
    rect(100,350,100,50);
    score += 20;
    return 6;
  }else if((mousePressed == true)&& ( mouseX <350)&&(mouseX >250)&&(mouseY>350)&&(mouseY<400)){
    fill(255,0,0);
    rect(250,350,100,50);
    score += 5;
    return 6;
  }else if((mousePressed == true)&& ( mouseX <500)&&(mouseX >400)&&(mouseY>350)&&(mouseY<400)){
    fill(255,0,0);
    rect(400,350,100,50);
    score += 15;
    return 6;
  }else if((mousePressed == true)&& ( mouseX <650)&&(mouseX >550)&&(mouseY>350)&&(mouseY<400)){
    fill(255,0,0);
    rect(550,350,100,50);

    return 3;
  }else{
          return 5;
  }

}


int question2(){
    question = loadImage("question.jpg");
    background(#FFFFFF, 255);
    image(question, 0, 0, 1000, 600);
    fill(0);
    textSize(30);
    text(" You are ...?", 150,200);
    
  fill(255);
  rect(100,350,100,50);
  rect(250,350,100,50);
  rect(400,350,100,50);
  rect(550,350,100,50);
 
  fill(0);
  textSize(15);
  text("good-looking", 100,390);
  text("handsome", 250,390);
  text("hot", 410,390);
  text("None of them", 550,390);
  
  if ((mousePressed == true)&& ( mouseX <200)&&(mouseX >100)&&(mouseY>350)&&(mouseY<400)){
    score += 10;
    fill(255,0,0);
    rect(100,350,100,50);
    return 7;
  }else if((mousePressed == true)&& ( mouseX <350)&&(mouseX >250)&&(mouseY>350)&&(mouseY<400)){
    score += 10;
    fill(255,0,0);
    rect(250,350,100,50);
    return 7;
  }else if((mousePressed == true)&& ( mouseX <500)&&(mouseX >400)&&(mouseY>350)&&(mouseY<400)){
    score += 5;
    fill(255,0,0);
    rect(400,350,100,50);
    return 7;
  }else if((mousePressed == true)&& ( mouseX <650)&&(mouseX >550)&&(mouseY>350)&&(mouseY<400)){
    fill(255,0,0);
    rect(550,350,100,50);
    return 3;
  }else{
          return 6;
  }
}


int question3(){
    question = loadImage("question.jpg");
    background(#FFFFFF, 255);
    image(question, 0, 0, 1000, 600);
    fill(0);
    textSize(30);
    text(" Interested in...?", 150,200);
    
  fill(255);
  rect(100,350,100,50);
  rect(250,350,100,50);
  rect(400,350,100,50);
  rect(550,350,100,50);
 
  fill(0);
  textSize(15);
  text("Boys", 100,390);
  text("Girls", 250,390);
  text("Both", 410,390);
  text("Neither", 550,390);
  
  if ((mousePressed == true)&& ( mouseX <200)&&(mouseX >100)&&(mouseY>350)&&(mouseY<400)){
    fill(255,0,0);
    rect(100,350,100,50);
    return 3;
  }else if((mousePressed == true)&& ( mouseX <350)&&(mouseX >250)&&(mouseY>350)&&(mouseY<400)){
    fill(255,0,0);
    rect(250,350,100,50);
    return 1;
  }else if((mousePressed == true)&& ( mouseX <500)&&(mouseX >400)&&(mouseY>350)&&(mouseY<400)){
    fill(255,0,0);
    rect(400,350,100,50);
    return 1;
  }else if((mousePressed == true)&& ( mouseX <650)&&(mouseX >550)&&(mouseY>350)&&(mouseY<400)){
    fill(255,0,0);
    rect(550,350,100,50);
    return 3;
  }else{
          return 7;
  }
}
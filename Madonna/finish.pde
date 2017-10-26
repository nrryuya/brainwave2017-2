PImage dere;
PImage akiramero;
PImage hasyaguna;

int finish(){
  dere = loadImage("dere.jpg");
  akiramero = loadImage("akiramero.jpg");
  hasyaguna = loadImage("hasyaguna.jpg");
  //score = 10;
  background(#FFFFFF, 255);
    
  if (score > 50){
    
    finish_good();
    
  }else if(score < 50 && score >=30){
    
    finish_bad();
    
  }else{
    finish_sobad(); 
  }
  
  t = (millis() - t_start) / 1000.0; 
  if (t > 3){
    
    return 4;
  }return 3;
  

}

void finish_good(){
  background(#FFFFFF, 255);
  image(dere, 0, 0, 1000, 600);
}

void finish_bad(){
  background(#FFFFFF, 255);
  image(hasyaguna, 0, 0, 1000, 600);
}

void finish_sobad(){
  background(#FFFFFF, 255);
  image(akiramero, 0, 0, 1000, 600);
}
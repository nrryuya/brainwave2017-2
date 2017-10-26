int finish(){
  fill(0);
  textSize(100);
  text("finish!", 100, 350);
  
  if (score > 50){
    
    finish_good();
    
  }else{
    
    finish_bad();
    
  }
  
  
  
  
  t = (millis() - t_start) / 1000.0; 
  if (t > 6){
    
    return 4;
  }return 3;

}

void finish_good(){
  
}

void finish_bad(){
  
}
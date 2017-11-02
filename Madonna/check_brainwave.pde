int counter = 0;

float zPos;
Platform boxes[] = new Platform[400];

int check_brainwave(){
  num_check_brainwave ++;
  if (num_check_brainwave == 1){       
      //size(480, 480, P3D);
      background(0);
      smooth();
    
      for (int i = 0; i < boxes.length; i++) {
        boxes[i] = new Platform();
      }
    
      for (int i = 260 + 12; i <= 740 - 12; i+=24) {
        for (int j = 60 + 12; j <= 540 - 12; j+=24) {
    
          counter++;
    
          boxes[counter-1].position(i, j);
        }
      }
  }
  
  
  
  // draw
  translate(0, 250, 0);
    rotateX(radians(45));
    translate(0, -450, 0);
  
    background(0);
   // lights();
  //directionalLight(175, 175, 175, 0, 1, 0);
    spotLight(255, 255, 255, width/2, 960/2, 400, 0, 0, -1, PI/4, 2);
  
  float my = 60 + buffer[1][pointer];
  
    for (int i = 0; i < boxes.length; i++) {
      boxes[i].update(260 + buffer[2][pointer], my);
      boxes[i].display();
    }
    
    if(mousePressed){
      zPos += (0 - zPos) * .1;
    }else{
      zPos += (-115 - zPos) * .1;
    }
  
    //println(boxes[63].getAngle());
    
    
  
    fill(255);
    pushMatrix();
    translate(260 + buffer[2][pointer], my, zPos);
    sphere(25);
    popMatrix();
 
  
  
  t = (millis() - t_start) / 1000.0; 
  if (t > 10){
    get_score();
    return 3;
  }
  return 2;
}
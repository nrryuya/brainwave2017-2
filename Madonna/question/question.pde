void setup(){
  size(500, 500);
  smooth();
  background(0);
  fill(255);
  textSize(400);
  textAlign(CENTER);
}

void draw(){

}

void keyPressed(){
  background(0);
  //char keys[] = {key};
  //text(new String(keys), 0, 0, width, height);
  println( +key);
  text(key,100,100);
}
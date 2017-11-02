import oscP5.*;
import netP5.*;

final int N_CHANNELS = 4;
final int BUFFER_SIZE = 220;
final float MAX_MICROVOLTS = 1682.815;
final float DISPLAY_SCALE = 300.0;

final color BG_COLOR = color(0, 0, 0);

final int PORT = 5000;
OscP5 oscP5 = new OscP5(this, PORT);

float[][] buffer = new float[N_CHANNELS][BUFFER_SIZE];
int pointer = 0;

int state;
float score;
float degree_in_hold_hands;
int nextState;
int num_check_brainwave = 0;

long t_start;
float t;
int mcnt;

void setup(){
  size(1000, 600, P3D);
  frameRate(30);
  smooth();
  state = 0;  
  nextState = 0;
  degree_in_hold_hands = 0;
    t_start = millis();
}

void draw(){
  background(255);
  if(state == 0){ nextState = start_game(); }
  else if(state == 5){ nextState = question(); }
  else if(state == 1){ nextState = hold_hands(); }
  else if(state == 2){ nextState = check_brainwave(); }
  else if(state == 3){ nextState = finish(); }
  else if(state == 4){ nextState = result(); }
  if(state != nextState){ t_start = millis(); }
    state = nextState;
}

void oscEvent(OscMessage msg){
  float data;
  if(msg.checkAddrPattern("/muse/elements/beta_absolute")){
    for(int ch = 0; ch < N_CHANNELS; ch++){
      data = msg.get(ch).floatValue();
      buffer[ch][pointer] = data * DISPLAY_SCALE;
    }
    println(buffer[1][pointer], buffer[2][pointer]);
    pointer = (pointer + 1) % BUFFER_SIZE;
  }
}

class Platform {

  float x, y, z, an;

  float affect = 125;

  Platform() {

    x = 0;
    y = 0;
  }

  void position(float tx, float ty) {

    x = tx;
    y = ty;
    z = -100;

    an = 0;
  }

  void update(float ux, float uy) {

    float mdist = dist(ux, uy, x, y);

    float lift = map(mdist, 0, affect, PI, 0);
    
    float easing = map(mdist, 0, affect, .25, .01);
    
    if(easing < .01){
      easing = .01;
    }
    
    if(easing > 1){
      easing = 1;
    }

    if (mdist < affect) {
      an += (lift - an) * easing;
    } else {
      an += (0 - an) * easing;
    }
    
    if(mousePressed){
      an += (0 - an) * .1;
    }


    z = -100 + ((50 * cos(an))*map(zPos,0,-115,0,1));
  }

  void display() {
    noStroke();
    fill(0, 0, map(an,0,PI,255,100));
    pushMatrix();
    translate(x, y, z); 
    box(22);
    popMatrix();
  }

  float getAngle() {
    return(an);
  }
}
// the end of the difinition of Platform()
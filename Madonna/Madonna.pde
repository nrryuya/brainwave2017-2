import oscP5.*;
import netP5.*;

final int N_CHANNELS = 4;
final int BUFFER_SIZE = 220;
final float MAX_MICROVOLTS = 1682.815;
final float DISPLAY_SCALE = 200.0;
final String[] LABELS = new String[] {
  "TP9", "FP1", "FP2", "TP10"
};

final color BG_COLOR = color(0, 0, 0);
final color AXIS_COLOR = color(255, 0, 0);
final color GRAPH_COLOR = color(0, 0, 255);
final color LABEL_COLOR = color(255, 255, 0);
final int LABEL_SIZE = 21;

final int PORT = 5000;
OscP5 oscP5 = new OscP5(this, PORT);

float[][] buffer = new float[N_CHANNELS][BUFFER_SIZE];
int pointer = 0;
float[] offsetX = new float[N_CHANNELS];
float[] offsetY = new float[N_CHANNELS];

int state;
float score;
float degree_in_hold_hands;

int nextState;

long t_start;
float t;
int mcnt;

void setup(){
  size(1000, 600);
  frameRate(30);
  smooth();
  state = 0;
  nextState= 0;
  degree_in_hold_hands = 0;
    t_start = millis();
  
  for(int ch = 0; ch < N_CHANNELS; ch++){
    offsetX[ch] = (width / N_CHANNELS) * ch + 15;
    offsetY[ch] = height / 2;
  }
}

void draw(){
  background(255);
  //Call method in the following order.

  nextState = 0;

  if(state == 0){ nextState = start_game(); }
  else if(state == 1){ nextState = hold_hands(); }
  else if(state == 2){ nextState = check_brainwave(); }
  else if(state == 3){ nextState = finish(); }
  else if(state == 4){ nextState = result(); }

  if(state != nextState){ t_start = millis(); }
    state = nextState;


  // The following is default.
  //float x1, y1, x2, y2;
  //background(BG_COLOR);
  //for(int ch = 0; ch < N_CHANNELS; ch++){
  //  for(int t = 0; t < BUFFER_SIZE; t++){
  //    stroke(GRAPH_COLOR);
  //    x1 = offsetX[ch] + t;
  //    y1 = offsetY[ch] + buffer[ch][(t + pointer) % BUFFER_SIZE] * DISPLAY_SCALE;
  //    x2 = offsetX[ch] + t + 1;
  //    y2 = offsetY[ch] + buffer[ch][(t + 1 + pointer) % BUFFER_SIZE] * DISPLAY_SCALE;
  //    line(x1, y1, x2, y2);
  //  }
  //  stroke(AXIS_COLOR);
  //  x1 = offsetX[ch];
  //  y1 = offsetY[ch];
  //  x2 = offsetX[ch] + BUFFER_SIZE;
  //  y2 = offsetY[ch];
  //  line(x1, y1, x2, y2);
  //}
  //fill(LABEL_COLOR);
  //textSize(LABEL_SIZE);
  //for(int ch = 0; ch < N_CHANNELS; ch++){
  //  text(LABELS[ch], offsetX[ch], offsetY[ch]);
  //}
}

void oscEvent(OscMessage msg){
  float data;
  if(msg.checkAddrPattern("/muse/elements/alpha_relative")){
    for(int ch = 0; ch < N_CHANNELS; ch++){
      data = msg.get(ch).floatValue();
      data = (data - (MAX_MICROVOLTS / 2)) / (MAX_MICROVOLTS / 2); // -1.0 1.0
      buffer[ch][pointer] = data;
    }
    pointer = (pointer + 1) % BUFFER_SIZE;
  }
}
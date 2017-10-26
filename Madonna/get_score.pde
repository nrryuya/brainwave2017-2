void get_score(){
  float[] sum = new float[N_CHANNELS];
  // sum up each channnel's value
  for (int ch = 0; ch < N_CHANNELS; ch++){
    sum[ch] = buffer[ch][0];
    for (int i = 1; i < buffer[ch].length; i++){
      sum[ch] += buffer[ch][i];
    }
  }
  for (int ch = 0; ch < N_CHANNELS; ch++){
    if (!(Float.isNaN(sum[ch]))){
      score += sum[ch];    
    }
  }
  println(score);
}
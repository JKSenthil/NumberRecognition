class NeuralNetwork{
  int input;
  int hidden;
  int output;
  
  Perceptron[] inp;
  Perceptron[] hid;
  Perceptron[] out;
  
  public NeuralNetwork(int i, int h, int o){
    input = i;
    hidden = h;
    output = o;
    
    hid = new Perceptron[hidden];
    for(int j = 0; j < hid.length; j++){
      hid[j] = new Perceptron(input);
    }
    out = new Perceptron[output];
    for(int l = 0; l < out.length; l++){
      out[l] = new Perceptron(hidden);
    }
  }
  
  void toHidden(float[] inputs){
    for(Perceptron p : hid){
      p.calcOutput(inputs);
    }
  }
  
  float[] hiddenOutputs(){
    float[] inputs = new float[hidden];
    for(int i = 0; i < hid.length; i++){
      inputs[i] = hid[i].output;
    }
    return inputs;
  }
  
  void toLast(float[] inputs){
    for(Perceptron p : out){
      p.calcOutput(inputs);
    }
  }
}
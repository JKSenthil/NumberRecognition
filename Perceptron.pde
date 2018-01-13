class Perceptron{
  float[] weights;
  float output;
  int bias;
  
  public Perceptron(int n){
    weights = new float[n];
    for(int i = 0; i < weights.length; i++){
      weights[i] = random(-1,1);
    }
    bias = 1;
  }
  
  void calcOutput(float[] inputs){
    float sum = 0;
    for(int i = 0; i < weights.length; i++){
      sum += inputs[i] * weights[i];
    }
    sum += bias;
    output = sum;
  }
  
  float sigmoid(){
    return 1 / (1 + exp(-1 * output));
  }
}
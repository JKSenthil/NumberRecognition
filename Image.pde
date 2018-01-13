import java.util.Scanner;

class NImageManager{
  PImage trainingSet;
  NImage[] images;
  
  int row = 10;
  int col = 40;
  int pixelSize = 28;

  public NImageManager(){
    images = new NImage[col * row];
    trainingSet= loadImage("TrainingSet.png");
    trainingSet.resize(1120,280);
    loadNImages();
  }
  
  void loadNImages(){
    int x = 0;
    int y = 0;
    int sIndex = 0;
    String[] label = loadStrings("labels.txt");
    Scanner scan = new Scanner(label[sIndex]);
    for(int j = 0; j < images.length; j++){
      PImage i = trainingSet.get(x, y, pixelSize, pixelSize);
      int n = scan.nextInt();
      images[j] = new NImage(i, n);
      x += pixelSize;
      if(x == col * pixelSize){
        x = 0;
        y += pixelSize;
        sIndex++;
        if(sIndex < 10)
          scan = new Scanner(label[sIndex]);
      } 
    }
    scan.close();
  }
}

class NImage{
  PImage i;
  int n;
  
  public NImage(PImage i, int n){
    this.i = i;
    this.n = n;
  }
  
  void show(int x, int y){
    image(i, x, y);
  }
}
NImageManager nm;

void setup(){
  size(1120,480);
  nm = new NImageManager();
}

void draw(){
  if(mousePressed){
    for(NImage i : nm.images){
      i.show((int) random(width), (int) random(height));
    }
  }
}
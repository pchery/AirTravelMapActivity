

void setup() {
  size(2000, 1000);
  pixelDensity(displayDensity());
  
  worldMapImage = loadImage("GRAY_50M_SR_W.png");
  loadData();
}


void draw(){
  
  
}

void loadData(){
  
   Table data = loadTable("airports.csv", "header");
   for (int i = 0; i<data.getRowCount(); i++) {
     data.getRow(i);
   }
   
  
  
}
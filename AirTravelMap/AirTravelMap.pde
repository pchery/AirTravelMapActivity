ArrayList<Airport> airports = new ArrayList<Airport>();
PImage worldMapImage;
void setup() {
  size(2000, 1000);
  pixelDensity(displayDensity());
  
  worldMapImage = loadImage("GRAY_50M_SR_W.png");
  loadData();
}


void draw(){
  image(worldMapImage, 0, 0, width, height);

  for(Airport a : airports){
    a.display();
  }
  
}

void loadData(){
  
   Table data = loadTable("airports.csv", "header");
   for (int i = 0; i<data.getRowCount(); i++) {
     TableRow row = data.getRow(i);
     float lat = row.getFloat(6);
     float lon = row.getFloat(7);
     String name = row.getString(2);
     airports.add(new Airport(name, lat, lon));
   }
   
  
  
}
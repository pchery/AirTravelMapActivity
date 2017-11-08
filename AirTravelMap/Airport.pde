class Airport{
  String name;
  float lat;
  float lon; 
  float x;
  float y; 
  
  Airport(String name, float lat, float lon){
    this.name = name;
    this.lat = lat;
    this.lon = lon;  
    x = map(lon, -180, 180, 0, width); 
    y = map(lat, 90, -90, 0, height);
    
  }
  
  void display(){
    fill(255,0,0);
    ellipse(x, y, 3,3);
    
  }
  
}
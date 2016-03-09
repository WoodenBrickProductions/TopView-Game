public class GUIManager {
private int Health;  
private final int MaxHealth = 10;  

  
public GUIManager() {
  
  
  Health = 10;
  
  
}
  
  
public void HealthBar() {
  
  fill(255,0,0,80);
  
  for (int i = 0; i<Health;i++) {
  rect(200+i*50,20, 50, 60);
    
  }
  
  
  
  
  
  
}
  
  
public void MiniMap() {
  
  copy(0,height/8+1,width,height/8*7,width/50,10,width/8,height/8);
 
  
  
  
  
}


  
public void Items() {
  
  fill(255,255,255,80);
  
 rect(830,20,80,60); 
  
 rect(920,20,80,60); 
   
 rect(1010,20,80,60); 
   
  
}
  
  
public void render() {
  HealthBar(); 
   MiniMap();  
   Items();
  
  
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
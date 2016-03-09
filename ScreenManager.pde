public class ScreenManager{
  GUIManager guiManager = new GUIManager();
  Button Menu = new Button(1200,20,60,60);
  MapManager mapmanager = new MapManager();
  
    public ScreenManager() {
  
  
  
  
  
    }
  
  
    public void init() {
        background(0);
        fill(0);
        rect(0,0,width,height/8);
        
      
      
    }
    
    public void tick() {
      
      
      
      
      
    }
    
    public void render() {
 
      mapmanager.render();    
      guiManager.render();
          
      if(Menu.ButtonPressed()) {
          Menu.DrawButton(125); 
        
      
       }else{
         Menu.DrawButton(255);
    
       }  
      
          
      
      
    }
    
    public void Buttons() {
      if(Menu.ButtonPressed()) gamestate = 2; 
    
    
    
    
  }
  
    
  
  public void ShowScreen() {
   tick();
   render();
    
    
  }
  
  
  
}
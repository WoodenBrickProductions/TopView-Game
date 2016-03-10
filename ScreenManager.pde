public class ScreenManager{
  GUIManager guiManager = new GUIManager();
  Button Menu = new Button(1200,20,60,60);
  MapManager mapmanager = new MapManager();
  AI ai = new AI();
  Player player = new Player();
    
    public ScreenManager() {
  
  
  
  
  
    }
  
  
    public void init() {
      //ai.init(); 
      
      background(0);
        fill(0);
        rect(0,0,width,height/8);
    
    }
    
    public void tick() {
      player.tick();
      
      
      
      
    }
    
    public void render() {
 
      mapmanager.render();    
      //ai.render();
      player.render();
      
      
      
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
public class ScreenManager{
  
  Button Menu = new Button(1160,20,80,80);

  
    public ScreenManager() {
  
  
  
  
  
    }
  
  
    public void init() {
        background(0);
        fill(255);
        rect(0,0,width,height/6);
        
      
      
    }
    
    public void tick() {
      
      
      
      
      
    }
    
    public void render() {

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
public class MainMenu {

      Button Play = new Button(200,200,200,200);

    
    public MainMenu() {
                
  
  
  
  
    }
  
  
    public void init() {
       background(0);

      
      
    }
    
    public void tick() {
      
      
      
      
      
    }
    
    public void render() {
      
       if(Play.ButtonPressed()) {
       Play.DrawButton(125); 
        
      
        }else{
          Play.DrawButton(255);
    
        }  
          
      
      
    }
    
  public void Buttons() {
    if(Play.ButtonPressed()) gamestate = 0;
    
    
    
    
  }
  
  
  public void LoadMenu() {
   tick();
   render();
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
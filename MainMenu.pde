public class MainMenu {

    int[] bigmapx = {300,200,1080,1580,1850,1580,980,200,1080,1560,2840,4240,2700,2700,2700,4200,4700,4700,5200,5450,4000,3500,3500,2000,2000,650,650,150,500,3060,3910,4910,5410,5560,6560,9010,5750,6650,7150,7950,6950,6950,7050,7900,4000,8060,5450,3550};
    int[] bigmapy = {300,200,300,200,600,1880,1980,1980,2940,2540,2640,1380,1380,1230,930,1080,1080,2580,1780,1080,3580,3680,3680,4280,3480,3480,3480,4230,5780,5980,5730,5930,5130,5130,4980,4300,3730,3000,3000,2000,2000,1000,1000,1000,4280,5110,1480,4480};
    int[] bigmapdx = {50,880,500,880,340,880,600,880,1760,240,1600,200,1640,200,1500,550,50,500,1000,500,1750,500,50,1550,50,1350,50,1050,2560,850,1000,500,150,1000,1500,1000,900,500,800,600,1000,100,850,2000,1000,950,300,450};
 
    int[] bigmapdy = {50,400,200,400,1280,400,200,1080,120,520,420,1380,200,150,350,50,2500,100,1200,400,400,100,600,1000,1000,50,2300,500,600,100,600,150,950,150,450,1000,100,830,100,1100,100,1000,100,500,500,100,300,300};

      Button Play = new Button(200,200,200,200);
      Button BigMap = new Button(1200,20,50,50); 
      Button BigMapMenu = new Button(1200,20,50,50);
      
    private int MenuState = 0;
    
    public MainMenu() {
                
  
  
  
  
    }
  

        void bigmap() {
          background(0,0,0);
          
          noStroke();
          fill(0,255,0);
          for(int r=1;r<bigmapdx.length;r++)
          {
            
            if(r>=bigmapx.length-2)
            {
              fill(1,0,0);
              rect(bigmapx[r]/8,bigmapy[r]/8,bigmapdx[r]/8,bigmapdy[r]/8);
              fill(0,255,0);
            }
            else rect(bigmapx[r]/8,bigmapy[r]/8,bigmapdx[r]/8,bigmapdy[r]/8);
          }
          fill(255,0,0);
          rect(bigmapx[0]/8,bigmapy[0]/8,bigmapdx[0]/8,bigmapdy[0]/8);
          }
        
          
          public void init() {
             background(0);
      
          
          
        }
    
    public void tick() {
      
      
      
      
      
    }
    
    public void render() {
      background(0);
      
        switch(MenuState) {
        
          //Main menu
          case 0:
          Play.DrawButton(255);    
          BigMap.DrawButton(255);
          break;
 
          //Big map
          case 1:
          bigmap();
          BigMapMenu.DrawButton(255);
          break;
        }
    }
    
      public void Buttons() {
       
         switch(MenuState) {
        
          //Main menu
          case 0:
        if(Play.ButtonPressed()) gamestate = 0;
        if(BigMap.ButtonPressed()) MenuState = 1;
        break;
        
          case 1:
        if(BigMapMenu.ButtonPressed()) MenuState = 0;
        break;  
          
         }
      }
        
    
  
  
  
  public void LoadMenu() {
   tick();
   render();
    
  }
  
  
  
  
  
}
MainMenu mainMenu = new MainMenu();
ScreenManager screenManager = new ScreenManager();

public static int gamestate = 0;

void setup() {
  size(1280, 800);
  

}


void draw() {
  
  switch(gamestate) {
  
    /*
    case 0 - pre Game Screen
    case 1 - Game Screen
    case 2 - pre Main Menu Screen
    case 3 - Main Menu Screen
    
    */
  case 0:
    screenManager.init();
    gamestate = 1;
    break;
    
  case 1:  
     screenManager.ShowScreen();
    break;
  
  case 2:
    mainMenu.init();
    gamestate = 3;
    break;
  
  case 3:
    mainMenu.LoadMenu();
    break;
}
    
}
    
void mousePressed() {
  
 switch(gamestate) {
  case 1: 
     screenManager.Buttons();
     break;
     
  case 3:
     mainMenu.Buttons();
     break;  
   
   
   
 }
  
  
  
  
  
}  
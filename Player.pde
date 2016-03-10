public class Player extends Moveable{
  
  MainMenu mainmenu = new MainMenu();
  
  
    public Player() {
      
      
   
      
      
      
    }
  

  void drawPlayer() {
     fill(255,0,0);
    rect(xpos,ypos, size,size); 
    
    
    
    
  }
  
void movecollision()
{
  if(key=='a' || key=='A')
  {
  if(color(0)!=get(xpos-1,ypos) && color(0)!=get(xpos-1,ypos+size-1))
  {
    xpos -= 10;
    mainmenu.bigmapx[0] -= 10;
  }
  }
  
  if(key=='d' || key=='D')
  {
  if(color(0)!=get(xpos+size+1,ypos) && color(0)!=get(xpos+size+1,ypos+size-1))
  {
    xpos += 10;
    mainmenu.bigmapx[0] += 10;
  }
  }
  
  if(key=='w' || key=='W')
  {
  if(color(0)!=get(xpos,ypos-1) && color(0)!=get(xpos+size-1,ypos-1))
  {
    ypos -= 10;
    mainmenu.bigmapy[0] -= 10;
  }
  }
  
  if(key=='s' || key=='S')
  {
  if(color(0)!=get(xpos,ypos+size+1) && color(0)!=get(xpos+size-1,ypos+size+1))
  {
    ypos += 10;
    mainmenu.bigmapy[0] += 10;
  }
  }
  
}

 
  public void init() {
    
    
    
  }
  
  public void tick() {
    if(keyPressed) movecollision();
    perejimas();
    
    
  }
  
  public void render() {
    drawPlayer();
  }
  
}
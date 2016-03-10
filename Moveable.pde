public class Moveable {

  
  MapManager map = new MapManager();
  MainMenu mainmenu = new MainMenu();
  public int xpos = 300;
  public int ypos = 300;
  public int size = 50;
  
  
  
  public Moveable() {
  
  }
  
  void perejimas()
{
  if(xpos>=width) 
  {
    xpos -= width;
    for(int q=0;q<map.rectx.length;q++)
    {
      map.rectx[q]=map.rectx[q]-width;
    }
    
    for(int w=0;w<map.enemyx.length;w++)
    {
      map.enemyx[w]=map.enemyx[w]-width;
    }
    
  }
  
  if(xpos<=0-size) 
  {
    xpos += width;
    for(int l=0;l<map.rectx.length;l++)
    {
      map.rectx[l]=map.rectx[l]+width;
    }
    
    for(int e=0;e<map.enemyx.length;e++)
    {
      map.enemyx[e]=map.enemyx[e]+width;
    }
  }
  
  if(ypos>=height) 
  {
    ypos -= height/8*7;
    mainmenu.bigmapy[0] += height/8;
    for(int o=0;o<map.rectx.length;o++)
    {
      map.recty[o]=map.recty[o]-height;
    }
    
    for(int u=0;u<map.enemyx.length;u++)
    {
      map.enemyy[u]=map.enemyy[u]-height;
    }
  }
  if(ypos<=height/8-size) 
  {
    ypos += height/8*7;
    mainmenu.bigmapy[0] -= height/8;
    for(int p=0;p<map.rectx.length;p++)
    {
      map.recty[p]=map.recty[p]+height;
    }
    
    for(int a=0;a<map.enemyx.length;a++)
    {
      map.enemyy[a]=map.enemyy[a]+800;
    }
  }
}

  
 public void setXpos(int xpos) {
 this.xpos = xpos; 
  
  
} 
  
  
  
  
}
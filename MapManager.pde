public class MapManager {

int[] rectx = {300,200,1080,1580,1850,1580,980,200,1080,1560,2840,4240,2700,2700,2700,4200,4700,4700,5200,5450,4000,3500,3500,2000,2000,650,650,150,500,3060,3910,4910,5410,5560,6560,9010,5750,6650,7150,7950,6950,6950,7050,7900,4000,8060,5450,3550};
int[] recty = {300,200,300,200,600,1880,1980,1980,2940,2540,2640,1380,1380,1230,930,1080,1080,2580,1780,1080,3580,3680,3680,4280,3480,3480,3480,4230,5780,5980,5730,5930,5130,5130,4980,4300,3730,3000,3000,2000,2000,1000,1000,1000,4280,5110,1480,4480};
int[] rectdx = {50,880,500,880,340,880,600,880,1760,240,1600,200,1640,200,1500,550,50,500,1000,500,1750,500,50,1550,50,1350,50,1050,2560,850,1000,500,150,1000,1500,1000,900,500,800,600,1000,100,850,2000,1000,950,300,450};
int[] rectdy = {50,400,200,400,1280,400,200,1080,120,520,420,1380,200,150,350,50,2500,100,1200,400,400,100,600,1000,1000,50,2300,500,600,100,600,150,950,150,450,1200,100,830,100,1100,100,1000,100,500,500,100,300,300};

int[] enemyx = {2080,2280,2000,2200,2000,1600,700,400,700,1650,1650,3100,3400,3700,4200,4310,4310,4100,3300,2770,3600,4200,4900,5400,5800,5800,5500,5900,4900,4300,5500,6200,6900,6900,8400,8100,8200,7300,8200,8700,9500,9600,3000,2700,3100,2200,2100,300,1000,300,1000,800,1100,2000,2000,2000,2950,4200,4750,4300,6000,7100,7400,8000,9300};
int[] enemyy = {280,500,1350,1950,2200,2000,2100,2700,2900,2800,2600,2700,2900,2700,2900,2600,2000,1450,1450,1200,1100,1080,2600,2800,2750,2550,2000,1900,3700,3900,3750,3750,3750,3400,2950,2700,2100,1020,1400,1200,1100,1300,4500,4600,5000,5000,4400,4300,4300,4600,4600,6200,5900,6050,5850,6250,6000,5850,6000,6200,5200,5040,5260,5170,4450};
int enemyd = 50;
int bossd = 150;

MainMenu mainmenu = new MainMenu();

  


void movecollision()
{
  if(key=='a' || key=='A')
  {
  if(color(0)!=get(rectx[0]-1,recty[0]) && color(0)!=get(rectx[0]-1,recty[0]+rectdy[0]-1))
  {
    rectx[0] -= 10;
    mainmenu.bigmapx[0] -= 10;
  }
  }
  
  if(key=='d' || key=='D')
  {
  if(color(0)!=get(rectx[0]+rectdx[0]+1,recty[0]) && color(0)!=get(rectx[0]+rectdx[0]+1,recty[0]+rectdy[0]-1))
  {
    rectx[0] += 10;
    mainmenu.bigmapx[0] += 10;
  }
  }
  
  if(key=='w' || key=='W')
  {
  if(color(0)!=get(rectx[0],recty[0]-1) && color(0)!=get(rectx[0]+rectdx[0]-1,recty[0]-1))
  {
    recty[0] -= 10;
    mainmenu.bigmapy[0] -= 10;
  }
  }
  
  if(key=='s' || key=='S')
  {
  if(color(0)!=get(rectx[0],recty[0]+rectdy[0]+1) && color(0)!=get(rectx[0]+rectdx[0]-1,recty[0]+rectdy[0]+1))
  {
    recty[0] += 10;
    mainmenu.bigmapy[0] += 10;
  }
  }
  
}

void perejimas()
{
  if(rectx[0]>=width) 
  {
    for(int q=0;q<rectx.length;q++)
    {
      rectx[q]=rectx[q]-width;
    }
    
    for(int w=0;w<enemyx.length;w++)
    {
      enemyx[w]=enemyx[w]-width;
    }
    
  }
  
  if(rectx[0]<=0-rectdx[0]) 
  {
    for(int l=0;l<rectx.length;l++)
    {
      rectx[l]=rectx[l]+width;
    }
    
    for(int e=0;e<enemyx.length;e++)
    {
      enemyx[e]=enemyx[e]+width;
    }
  }
  
  if(recty[0]>=height) 
  {
    recty[0] -= height/8*7;
    mainmenu.bigmapy[0] += height/8;
    for(int o=1;o<rectx.length;o++)
    {
      recty[o]=recty[o]-height;
    }
    
    for(int u=0;u<enemyx.length;u++)
    {
      enemyy[u]=enemyy[u]-height;
    }
  }
  if(recty[0]<=height/8-rectdy[0]) 
  {
    recty[0] -= height/8;
    mainmenu.bigmapy[0] -= height/8;
    for(int p=0;p<rectx.length;p++)
    {
      recty[p]=recty[p]+height;
    }
    
    for(int a=0;a<enemyx.length;a++)
    {
      enemyy[a]=enemyy[a]+800;
    }
  }
}




void enemy()
{
  fill(0,0,255);
  for(int e=0;e<enemyx.length;e++)
  {
    if(e==enemyx.length-1)
    {
      rect(enemyx[e],enemyy[e],bossd,bossd);
    }
    rect(enemyx[e],enemyy[e],enemyd,enemyd);
  }
  fill(0,255,0);
}

public void init() {
  
  
  
  
}

public void tick() {
  
  
  
  
  
}

public void render() {

    background(0,0,0);

  noStroke();
  fill(0,255,0);
  for(int r=1;r<rectx.length;r++)
  {
    if(r>=rectx.length-2)
    {
      fill(1,0,0);
      rect(rectx[r],recty[r],rectdx[r],rectdy[r]);
      fill(0,255,0);
    }
    else rect(rectx[r],recty[r],rectdx[r],rectdy[r]);
  }
  fill(255,0,0);
  rect(rectx[0],recty[0],rectdx[0],rectdy[0]);
  
  
  perejimas();
  enemy();
  if(keyPressed)movecollision();
  //if(keyPressed && (key=='m' || key=='M'))bigmap();
 
  
  
  
  
}

}
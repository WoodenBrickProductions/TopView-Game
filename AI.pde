public class AI extends Moveable{
   int player_x=300, player_y=300, spawn_x=800, spawn_y= 800;
int RobotX[], RobotY[], Robot_HP[];
int sauna=0; // nereikia kitur bus tiesiog n
int Moving_shootX1[]; //n
int Moving_shootY1[]; //n
int Moving_shoot_direction1[]; //n
int pkiekis=0; //n
int kiekis[]={0,0,0,0,0};
int kiekis1[]={0,0,0,0,0};
int kryptis[]={0,0,0,0,0};
//int skaitliukas[]={0,0,0,0,0};
int enemy=3; // enemy skaicius
int hp=100000;
int Moving_shootX[][], Moving_shootY[][], Moving_shoot_direction[][];
boolean right=true; //n
boolean left=false;//n
boolean up=false;//n
boolean down=false;//n

  
   
    
  


void move() // player kodas nereikia det
{
 if(keyPressed)
 {
if(key=='a')
{
  if(color(0)!=get(player_x-1,player_y) && color(0)!=get(player_x-1,player_y+49))
  {
    player_x-=10; 
    left=true;
  right=false;
  up=false;
  down=false;
  }
}
if(key=='d')
{
 if(color(0)!=get(player_x+51,player_y) && color(0)!=get(player_x+51,player_y+24))
 {
   player_x+=10; 
    right=true;
  left=false;
  up=false;
  down=false;
 }
}
if(key=='w')
{
  if(color(0)!=get(player_x,player_y-1) && color(0)!=get(player_x+49,player_y-1)) 
  {player_y-=10; 
  up=true;
  left=false;
  right=false;
  down=false;
  }
   
}
if(key=='s')
{
 if(color(0)!=get(player_x,player_y+51) && color(0)!=get(player_x+49,player_y+51))
 {
   player_y+=10; 
   down=true;
  left=false;
  right=false;
  up=false;
 }
}
 if(key==' ')
{
  if(pkiekis<2) 
  {
    if(up)
    {
      Moving_shoot_direction1[pkiekis]=1;
      Moving_shootX1[pkiekis]=player_x+25;
      Moving_shootY1[pkiekis]=player_y-50;
    }
    if(down)
    {
      Moving_shoot_direction1[pkiekis]=2;
      Moving_shootX1[pkiekis]=player_x+25;
      Moving_shootY1[pkiekis]=player_y+50;
    }
    if(right) 
    {
      Moving_shoot_direction1[pkiekis]=3;
      Moving_shootX1[pkiekis]=player_x+50;
      Moving_shootY1[pkiekis]=player_y+25;
    }
    if(left)
    {
      Moving_shoot_direction1[pkiekis]=4;
      Moving_shootX1[pkiekis]=player_x-50;
      Moving_shootY1[pkiekis]=player_y+25;
    }
    pkiekis++;
  }
}
 }
  
}

void atstumas()
{
  for(int i=0;i<enemy;i++)
  {
 if(dist(player_x,player_y,RobotX[i],RobotY[i])<=500)
 {
  if(abs(player_x-RobotX[i])<abs(player_y-RobotY[i]))
  {
     if((RobotX[i]>player_x)&&(color(0)!=get(RobotX[i]-1,RobotY[i]) && color(0)!=get(RobotX[i]-1,RobotY[i]+49)))
     {
      RobotX[i]-=2; 
     }
     else if(RobotX[i]==player_x)
     {
       if(kiekis[i]<1)
       {
         if(RobotY[i]>player_y)
         { 
           Moving_shootX[i][0]=RobotX[i]+20;
           Moving_shootY[i][0]=RobotY[i];
           Moving_shoot_direction[i][0]=1;
           kiekis[i]+=1;
         }
         else
         {
           Moving_shootX[i][0]=RobotX[i]+20;
           Moving_shootY[i][0]=RobotY[i]+50;
           Moving_shoot_direction[i][0]=2;
           kiekis[i]+=1;
         }
       }
     }
     else if (color(0)!=get(RobotX[i]+51,RobotY[i]) && color(0)!=get(RobotX[i]+51,RobotY[i]+24))
     {
      RobotX[i]+=2; 
     }
  }
  else
  {
     if((RobotY[i]>player_y)&&(color(0)!=get(RobotX[i],RobotY[i]-1) && color(0)!=get(RobotX[i]+49,RobotY[i]-1)))
     {
      RobotY[i]-=2; 
     }
     else if(RobotY[i]==player_y)
     {
        if(kiekis[i]<1)
       {
         if(RobotX[i]>player_x)
         { 
           Moving_shootX[i][0]=RobotX[i];
           Moving_shootY[i][0]=RobotY[i]+20;
           Moving_shoot_direction[i][0]=4;
           kiekis[i]+=1;
         }
         else
         {
           Moving_shootX[i][0]=RobotX[i]+50;
           Moving_shootY[i][0]=RobotY[i]+20;
           Moving_shoot_direction[i][0]=3;
           kiekis[i]+=1;
         }
       }
     }
     else if (color(0)!=get(RobotX[i],RobotY[i]+51) && color(0)!=get(RobotX[i]+49,RobotY[i]+51))
     {
      RobotY[i]+=2; 
     } 
  }
 }
  }
}
void random_move()
{
  for(int i=0;i<enemy;i++)
  {
  if(dist(player_x,player_y,RobotX[i],RobotY[i])>=500)
  {
    if(kiekis1[i]==0)
    {
     int x= (int)random(4);
     kiekis1[i]=50;
     if((x==0)&&(color(0)!=get(RobotX[i],RobotY[i]-1) && color(0)!=get(RobotX[i]+49,RobotY[i]-1)))
     {
       RobotY[i]-=2;
       kiekis1[i]--;
       kryptis[i]=0;
     }
     else if((x==1)&&(color(0)!=get(RobotX[i],RobotY[i]+51) && color(0)!=get(RobotX[i]+49,RobotY[i]+51)))
     {
       RobotY[i]+=2;
       kiekis1[i]--;
       kryptis[i]=1;
     }
     else if((x==2)&&(color(0)!=get(RobotX[i]+51,RobotY[i]) && color(0)!=get(RobotX[i]+51,RobotY[i]+24)))
     {
       RobotX[i]+=2;
       kiekis1[i]--;
       kryptis[i]=2;
     }
     else if((x==3)&&(color(0)!=get(RobotX[i]-1,RobotY[i]) && color(0)!=get(RobotX[i]-1,RobotY[i]+49)))
     {
       RobotX[i]-=2;
       kiekis1[i]--;
       kryptis[i]=3;
     }
     else 
     {
      kiekis1[i]=0; 
     }
    }
    else
    {
     if((kryptis[i]==0)&&(color(0)!=get(RobotX[i],RobotY[i]-1) && color(0)!=get(RobotX[i]+49,RobotY[i]-1)))
     {
       RobotY[i]-=2;
       kiekis1[i]--;
     }
     else if((kryptis[i]==1)&&(color(0)!=get(RobotX[i],RobotY[i]+51)&&(color(0)!=get(RobotX[i]+49,RobotY[i]+51))))
     {
       RobotY[i]+=2;
       kiekis1[i]--;
     }
     else if((kryptis[i]==2)&&(color(0)!=get(RobotX[i]+51,RobotY[i]) && color(0)!=get(RobotX[i]+51,RobotY[i]+24)))
     {
       RobotX[i]+=2;
       kiekis1[i]--;
     }
     else if((kryptis[i]==3)&&(color(0)!=get(RobotX[i]-1,RobotY[i]) && color(0)!=get(RobotX[i]-1,RobotY[i]+49)))
     {
       RobotX[i]-=2;
       kiekis1[i]--;
     }
     else
     {
      kiekis1[i]=0; 
     }
    }
  }
  }
}
void Shoot()
{ 
  for(int j=0;j<enemy;j++)
  {
    
  for(int i=0;i<kiekis[j];i++)
  {
    int direction=Moving_shoot_direction[j][0];
    if(direction==1)
    {
      fill(0);
      rect(Moving_shootX[j][0],Moving_shootY[j][0],10,50);
      Moving_shootY[j][0]-=10;
    }
     if(direction==2)
    {
      fill(0);
      rect(Moving_shootX[j][0],Moving_shootY[j][0],10,50);
      Moving_shootY[j][0]+=10;
    } 
    if(direction==3)
    {
      fill(0);
      rect(Moving_shootX[j][0],Moving_shootY[j][0],50,10);
      Moving_shootX[j][0]+=10;
    } 
    if(direction==4)
    {
      fill(0);
      rect(Moving_shootX[j][0],Moving_shootY[j][0],50,10);
      Moving_shootX[j][0]-=10;
    }
    if(pasove(Moving_shootX[j][0],Moving_shootY[j][0],player_x,player_y))
    {
      hp--;
      kiekis[j]--;
    }
    if((Moving_shootX[j][0]<-50)||(Moving_shootY[j][0]<-50)||(Moving_shootX[j][0]>1210)||(Moving_shootY[j][0]>950))
    { 
      kiekis[j]--;
    } 
}
}
}

boolean pasove(int x, int y, int x1, int y1)
{
  if(((x>=x1)&&(x<=x1+50)&&(y<=y1+50)&&(y>=y1))||((x+50>=x1)&&(x+50<=x1+50)&&(y<=y1+50)&&(y>=y1)))
  {
   return true; 
  }
  return false;
}
void GG()
{
  background(0,255,0);
 text("GG Hard",500,500);
 noLoop();
}
void robot_hp()
{
  for(int i=0;i<enemy;i++)
  {
   if(Robot_HP[i]<=0)
   {
    RobotX[i]=-10000;
    RobotY[i]=-10000;
   // if(skaitliukas[i]==500)
   // {
    // RobotX[i]=spawn_x;
    // RobotY[i]=spawn_y;
    // Robot_HP[i]=10;
   // }
   /* else
    {
     skaitliukas[i]++; 
    }*/
   }
  }
}





void Shoot1() //n
{ 
  for(int i=0;i<pkiekis;i++)
  {
    int direction=Moving_shoot_direction1[i];
    if(direction==1)
    {
      rect(Moving_shootX1[i],Moving_shootY1[i],10,50);
      Moving_shootY1[i]-=10;
    }
     if(direction==2)
    {
      rect(Moving_shootX1[i],Moving_shootY1[i],10,50);
      Moving_shootY1[i]+=10;
    } 
    if(direction==3)
    {
        rect(Moving_shootX1[i],Moving_shootY1[i],50,10);
      Moving_shootX1[i]+=10;
    } 
    if(direction==4)
    {
        rect(Moving_shootX1[i],Moving_shootY1[i],50,10);
      Moving_shootX1[i]-=10;
    }
    int kiekis2=0;
    for(int j=0;j<enemy;j++)
    {
    if(pasove(Moving_shootX1[i],Moving_shootY1[i],RobotX[j],RobotY[j]))
    {
      sauna++;
      Robot_HP[j]--;
      pkiekis--;
    }
    }
    if(((Moving_shootX1[i]<-50)||(Moving_shootY1[i]<-50)||(Moving_shootX1[i]>1210)||(Moving_shootY1[i]>750)||(Shot_Collision(Moving_shootX1[i],Moving_shootY1[i],Moving_shoot_direction1[i])))&&(kiekis2==0)) // map'o duomenys, bei dar tureses isideti boolean colission
    {
      Moving_shootX1[i]=-1000;
      Moving_shootY1[i]=-1000;
      Moving_shoot_direction1[i]=-1000;
        if((i+1)!=pkiekis)
          for(int k=i;k<pkiekis-1;k++)
          {
           Moving_shootX1[k]= Moving_shootX1[k+1];
           Moving_shootY1[k]= Moving_shootY1[k+1];
           Moving_shoot_direction1[k]= Moving_shoot_direction1[k+1];
          }
      pkiekis--;
    }
}
}
boolean Shot_Collision(int shootx,int shooty,int shootdirection) //n
{
  if(shootdirection==1)
  {
    if(color(0)==get(shootx,shooty))
    {
     return true;
    }
    if(color(0)==get(shootx+10,shooty))
    {
     return true;
    }
  }
  if(shootdirection==2)
  {
   if(color(0)==get(shootx,shooty+50))
    {
     return true;
    } 
    if(color(0)==get(shootx+10,shooty+50))
    {
     return true;
    }
  }
  if(shootdirection==4)
  {
   if(color(0)==get(shootx,shooty))
    {
     return true;
    }
    if(color(0)==get(shootx,shooty+10))
    {
     return true;
    }
  }
  if(shootdirection==3)
  {
   if(color(0)==get(shootx+50,shooty))
    {
     return true;
    } 
    if(color(0)==get(shootx+50,shooty+10))
    {
     return true;
    }
  }
  return false;
}
  
  public void init() {
   Moving_shootX= new int[5][1];
   Moving_shootY= new int[5][1];
   Moving_shoot_direction= new int[5][1];
   RobotX= new int[5];
   RobotY= new int[5];
   Robot_HP=new int[5];
   for(int i=0;i<enemy;i++)
   {
    RobotX[i]=spawn_x;
    RobotY[i]=spawn_y;
    Robot_HP[i]=10;
   }
   Moving_shootX1 = new int[2]; // n
   Moving_shootY1 = new int[2]; //n
   Moving_shoot_direction1 = new int[2];//n  

    
    
  }

  public void tick() {
    
    
    
    
    
    
  }
  
  
  public void render() {

 fill(255,0,0);
 noStroke();
 rect(player_x,player_y,50,50);// n
 for(int i=0;i<enemy;i++)
 {
   if(Robot_HP[i]>0)
   {
  fill(255);
  rect(RobotX[i],RobotY[i],50,50);
   }
 }
 atstumas();
 random_move();
 fill(255);
 textSize(50);
 text(sauna,1000,60);
 text(hp,100,60);
 Shoot1();//n
 Shoot();
 move();
  robot_hp(); 
 if(hp==0) GG();//n
   
    
    
    
    
  }

}
public class Button{
  private int x1,y1,size1,size2;
  
 public Button(int x1, int y1, int size1, int size2) {
 this.x1 = x1; 
 this.y1 = y1; 
 this.size1 = size1; 
 this.size2 = size2;   
}
  
  
    public boolean ButtonPressed() {
     if(mousePressed) {
      if((mouseX>=x1)&&(mouseX<=x1+size1)&&(mouseY>=y1)&&(mouseY<=y1+size2)) {
       
  
        return true;
       }
     
    }
    
    return false; 
}
  public void DrawButton(int fill) {
    fill(fill);
    rect(x1,y1,size1,size2);
    
    
    
    
  }

}
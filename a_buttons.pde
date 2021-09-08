class Button
{
  int x0,y0;   
  int bw, bh; 
  String label;
  
  Button (int x,int y,int bwid,int bht, String lab)
  {
    x0 = x;
    y0 = y;
    bw = bwid;
    bh = bht;
   
    label = lab;
    
  }
  boolean isOver(int x,int y)
  {
  
    if (x>x0 && x<(x0+bw) && y>y0 && y<(y0+bh) ) 
     {
       return true;
     }
    else 
     {
       return false;
     }
  }
  void display()
  {
     fill(200);
     rect(x0,y0,bw,bh);
     fill(0);
     textAlign(CENTER,CENTER);
     text (label,x0+bw/2,y0+bh/2-2);
  }
  void doAction() {
    
    
  }
}

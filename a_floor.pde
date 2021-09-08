class FloorButton extends Button {
   FloorButton (int x,int y,int bwid,int bht, String lab) {
     super(x,y,bwid,bht,lab);
   }  
  void doAction() {                           //change floor
    
    if (floor == medium){
      
    floor = light;
    }
    else if ( floor == light) {
      floor = dark;
    }
    else if (floor == dark) {
      floor = carpet;
    }
    else {
      floor = medium;
    }
}
}

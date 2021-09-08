class RotateBButton extends Button {
   RotateBButton (int x,int y,int bwid,int bht, String lab) {
     super(x,y,bwid,bht,lab);
   } 
  void doAction() {    
    bed.rotateb();
   
}
}

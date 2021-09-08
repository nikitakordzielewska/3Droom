class FurButton extends Button {
   FurButton (int x,int y,int bwid,int bht, String lab) {
     super(x,y,bwid,bht,lab);
   } 
  void doAction() {                         //change furniture
       if (img == white){ 
      
    img = black;
    }
    else if ( img == black) {
      img = wooden;
    }
    else if ( img == wooden) {
       img = white;
    }
    
}
}

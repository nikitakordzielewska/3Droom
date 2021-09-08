class WallButton extends Button {
   WallButton (int x,int y,int bwid,int bht,  String lab) {
     super(x,y,bwid,bht,lab);
   } 
  void doAction() {                                //change walls
    
    if (wall == color(220)){
     
    wall = color(#EAB6DE);
    
    }
    else if (wall == color(#EAB6DE)){
      wall = color(#86EFFA);
    }
    else if (wall == color(#86EFFA)){
      wall = color(#E5D8BE);
    }
    else if (wall == color(#E5D8BE)) {
      wall = color(#FFB134);
    }
    else {
      wall = color(220);
    }
    }

  }

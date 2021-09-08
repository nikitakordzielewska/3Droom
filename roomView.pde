Button[] buttons;
Bed bed;
Dresser dresser;


color wall;
PImage light;
PImage dark;
PImage medium;
PImage carpet;
PImage white;
PImage black;
PImage wooden;

int aB = 150; //bed move square
int bB =370;

int aD = 1350; //dresser move square
int bD = 370;


PImage img;
PImage floor;

float roty = 0;



void setup() {
 
  makeButtons();
  bed = new Bed();
  dresser = new Dresser();
  
  
  size(1600,900,P3D);
  
 
 light = loadImage("light.jpg");
 dark = loadImage("dark.jpg");
 medium = loadImage("medium.jpg");
 carpet = loadImage("carpet.jpg");
 black = loadImage("black.jpg");
 white = loadImage("white.jpg");
 wooden = loadImage("wooden.jpeg");
  
  
  floor = medium;
  img = white;
  wall = color(220);
}


void mouseClicked()
{
 for (int i=0;i<buttons.length;i++){
   if (buttons[i].isOver(mouseX,mouseY)) {
     buttons[i].doAction();
   }
 } 
}


void draw() {
  background(200);
 pointLight(250,250,250,800,300,560);
  
  drawButtons();
  
textSize(20);  
text("BED",200,300); 
text("DRESSER",1400,300);
textSize(12);
text("drag mouse within square to move",200,350);
text("drag mouse within square to move",1400,350);

fill(255);         
rect(aB,bB,100,100); //bed move square
rect(aD,bD,100,100); //dresser move square
  
 
  

translate(width/2,4*height/7);
rotateY(roty); // room rotation

//floor
pushMatrix();
translate(-300,200,200);
beginShape();
texture(floor);
vertex(0,0,0,0,0);
vertex(600,0,0,1200,0);
vertex(600,0,-400,1200,800);
vertex(0,0,-400,0,800);
endShape(CLOSE);
popMatrix();

//left wall
pushMatrix();
translate(-300,200,200);
fill(wall);
beginShape();
vertex(0,0,0);
vertex(0,0,-400);
vertex(0,-400,-400);
vertex(0,-400,0);
endShape(CLOSE);
popMatrix();

//center wall
pushMatrix();
translate(-300,200,-200);
fill(wall);
beginShape();
vertex(0,0,0);
vertex(600,0,0);
vertex(600,-400,0);
vertex(0,-400,0);
endShape(CLOSE);
popMatrix();

//right wall
pushMatrix();
translate(300,200,200);
fill(wall);
beginShape();
vertex(0,0,0);
vertex(0,0,-400);
vertex(0,-400,-400);
vertex(0,-400,0);
endShape(CLOSE);
popMatrix();

bed.display();
bed.checkWallsB();

dresser.display();
dresser.checkWallsD();
  
}

void makeButtons()
{
  buttons = new Button[5];
  buttons[0] = new FloorButton(600,150,100,50, "FLOOR");
  buttons[1] = new WallButton(750,150,100,50, "WALLS");
  buttons[2] = new RotateBButton(150,500,100,40, "ROTATE");
  buttons[3] = new RotateDButton(1350,500,100,40, "ROTATE");
  buttons[4] = new FurButton(900,150,100,50, "FURNITURE");

}



void drawButtons()
{
  for (int i=0;i<buttons.length;i++)
  {
      buttons[i].display();
  }
}





  void keyPressed() {              //room view rotation
   if (key == CODED) {
    if (keyCode == LEFT) {
      roty = roty - PI/36;
    }
    if (keyCode == RIGHT){
      roty = roty + PI/36;
    }
   }
   
   if (roty>(.4)) {
     roty = 0.4;
   }
   else if (roty<(-.4)) {
     roty = -.4;
   }
   
   
  }
  void mouseDragged(){
    
    if ( mouseX>aB && mouseX<aB+100 && mouseY>bB && mouseY<bB+100){   // bed move square
      
    bed.moveB();
    }
    else   if ( mouseX>aD && mouseX<aD+100 && mouseY>bD && mouseY<bD+100){  //dresser move square
    dresser.moveD();
    }
    
    }
    
  
  
  
  
      
  

class Dresser {
  
  int x1;
  int z1;
  float l1 = 0;
  
  Dresser() {
    x1=100;
    z1=0;
    
  }
  
  void display() {
    
    pushMatrix();
    rotateY(l1);
    beginShape(QUADS);
    texture(img);
  //back
   vertex(x1,60,z1,0,0);
  vertex(x1+200,60,z1,200,0);
  vertex(x1+200,200,z1,200,200);
  vertex(x1,200,z1,0,200);
  //front
   vertex(x1,60,z1+90,0,0);
  vertex(x1+200,60,z1+90,200,0);
  vertex(x1+200,200,z1+90,200,200);
  vertex(x1,200,z1+90,0,200);
  
  //left
  vertex(x1,60,z1,0,0);
  vertex(x1,200,z1,0,200);
  vertex(x1,200,z1+90,200,200);
  vertex(x1,60,z1+90,200,0);
  
  //right
  vertex(x1+200,60,z1,0,0);
  vertex(x1+200,200,z1,0,200);
  vertex(x1+200,200,z1+90,200,200);
  vertex(x1+200,60,z1+90,200,0);
  
  //top
  vertex(x1,60,z1,0,0);
  vertex(x1+200,60,z1,200,0);
  vertex(x1+200,60,z1+90,200,200);
  vertex(x1,60,z1+90,0,200);
  // drawer 1
  vertex(x1+10,70,z1+90,0,0);
  vertex(x1+190,70,z1+90,200,0);
  vertex(x1+190,125,z1+90,200,200);
  vertex(x1+10,125,z1+90,0,200);
  //drawer 2
  vertex(x1+10,135,z1+90,0,0);
  vertex(x1+190,135,z1+90,200,0);
  vertex(x1+190,190,z1+90,200,200);
  vertex(x1+10,190,z1+90,0,200);
  
  
  
  endShape();
  popMatrix();
  
 
}
void moveD(){
   println("x",x1,"z",z1);
   
   if (l1==0) {
     x1 = x1 + (mouseX - pmouseX)*10;
    z1 = z1 + (mouseY - pmouseY)*10;
   }
   else if (l1==PI) {
      x1 = x1 - (mouseX - pmouseX)*10;
    z1 =  z1 - (mouseY - pmouseY)*10;
   }
   else if (l1==PI/2) {
     x1 = x1 - (mouseY - pmouseY)*10;
     z1 =  z1 + (mouseX - pmouseX)*10;
   }
   else if (l1==3*PI/2){
     x1 =  x1 + (mouseY - pmouseY)*10;
     z1 = z1 - (mouseX - pmouseX)*10;
   }
}
  void rotateD(){
  
    l1 = l1 + PI/2;
    if (l1==2*PI) {
      l1 = 0;
    }
  }
  
     void checkWallsD(){
      
    if (x1<-300 && l1 == 0 ){
      x1 = -300;
    }
    else if (x1>100 && l1==0 ) {
      x1 = 100;
    }
  else if(z1>110 && l1==0 ) {
    z1 = 110;
  }
  else if(z1<-200 && l1==0 ){
    z1 = -200;
  }
  
   else  if (x1<-300 && l1 == PI ){
      x1 = -300;
    }
    else if (x1>100 && l1== PI ) {
      x1 = 100;
    }
  else if(z1>110 && l1==PI ) {
    z1 = 110;
  }
  else if(z1<-200 && l1==PI ){
    z1 = -200;
  }
  
   else  if (x1<-200 && l1 == PI/2 ){
      x1 = -200;
    }
    else if (x1>0 && l1== PI/2 ) {
      x1 = 0;
    }
  else if(z1<-300 && l1==PI/2 ) {
    z1 = -300;
  }
  else if(z1>210 && l1==PI/2 ){
    z1 = 210;
  }
   
      else  if (x1<-200 && l1 == 3*PI/2 ){
      x1 = -200;
    }
    else if (x1>0 && l1== 3*PI/2 ) {
      x1 = 0;
    }
  else if(z1<-300 && l1==3*PI/2 ) {
    z1 = -300;
  }
  else if(z1>210 && l1==3*PI/2 ){
    z1 = 210;
  }
}
}

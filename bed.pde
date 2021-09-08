class Bed{
  
  int x;
  int z;
  float l = 0; //angle
  
  Bed() {
    x=-300;
    z=-200;
  }
  
  void display() {
  
  
  pushMatrix();
  rotateY(l);    //rotate bed 
  beginShape(QUADS); //bedframe 
  //back
  texture(img);
  //front left
  vertex(x,0,z,0,0);
  vertex(x+20,0,z,200,0);
  vertex(x+20,200,z,200,200);
  vertex(x,200,z,0,200);
  
  //back left
   vertex(x,0,z+10,0,0);
  vertex(x+20,0,z+10,200,0);
  vertex(x+20,200,z+10,200,200);
  vertex(x,200,z+10,0,200);

  //back right
  vertex(x+150,0,z,0,0);
  vertex(x+170,0,z,200,0);
  vertex(x+170,200,z,200,200);
  vertex(x+150,200,z,0,200);
  
  //front right
   vertex(x+150,0,z+10,0,0);
  vertex(x+170,0,z+10,200,0);
  vertex(x+170,200,z+10,200,200);
  vertex(x+150,200,z+10,0,200);
  
  //back ceter
  vertex(x+20,30,z,0,0);
  vertex(x+150,30,z,200,0);
  vertex(x+150,160,z,200,200);
  vertex(x+20,160,z,0,200);
  
  //front center
   vertex(x+20,30,z+10,0,0);
  vertex(x+150,30,z+10,200,0);
  vertex(x+150,160,z+10,200,200);
  vertex(x+20,160,z+10,0,200);
 

// left left
 vertex(x,200,z,0,0);
 vertex(x,200,z+10,200,0);
 vertex(x,0,z+10,200,200);
 vertex(x,0,z,0,200);
 
 
//left right
 vertex(x+20,0,z,0,0);
 vertex(x+20,200,z,200,0);
 vertex(x+20,200,z+10,200,200);
 vertex(x+20,0,z+10,0,200);
 
 //right left
 vertex(x+150,0,z,0,0);
 vertex(x+150,200,z,200,0);
 vertex(x+150,200,z+10,200,200);
 vertex(x+150,0,z+10,0,200);
 
 //right right
 vertex(x+170,0,z,0,0);
 vertex(x+170,200,z,200,0);
 vertex(x+170,200,z+10,200,200);
 vertex(x+170,0,z+10,0,200);
 
 

 //left top
 vertex(x,0,z,0,0);
 vertex(x+20,0,z,200,0);
 vertex(x+20,0,z+10,200,200);
 vertex(x,0,z+10,0,200);
 
 //ceter top
 vertex(x+20,30,z,0,0);
 vertex(x+150,30,z,200,0);
 vertex(x+150,30,z+10,200,200);
 vertex(x+20,30,z+10,0,200);

//right top
 vertex(x+150,0,z,0,0);
 vertex(x+170,0,z,200,0);
 vertex(x+170,0,z+10,200,200);
 vertex(x+150,0,z+10,0,200);
 
 
 //front
 
 //left front
   vertex(x,80,z+200,0,0);
  vertex(x+20,80,z+200,0,200);
  vertex(x+20,200,z+200,200,200);
  vertex(x,200,z+200,0,200);
  
  //left back
   vertex(x,80,z+210,0,0);
  vertex(x+20,80,z+210,200,0);
  vertex(x+20,200,z+210,200,200);
  vertex(x,200,z+210,0,200);

  //right front
  vertex(x+150,80,z+200,0,0);
  vertex(x+170,80,z+200,200,0);
  vertex(x+170,200,z+200,200,200);
  vertex(x+150,200,z+200,0,200);
  
  //right back
   vertex(x+150,80,z+210,0,0);
  vertex(x+170,80,z+210,200,0);
  vertex(x+170,200,z+210,200,200);
  vertex(x+150,200,z+210,0,200);
  
  //center front
  
  vertex(x+20,100,z+200,0,0);
  vertex(x+150,100,z+200,200,0);
  vertex(x+150,160,z+200,200,200);
  vertex(x+20,160,z+200,0,200);
  
  //center back
   vertex(x+20,100,z+210,0,0);
  vertex(x+150,100,z+210,200,0);
  vertex(x+150,160,z+210,200,200);
  vertex(x+20,160,z+210,0,200);
 

//left left
 vertex(x,200,z+200,0,0);
 vertex(x,200,z+210,200,0);
 vertex(x,80,z+210,200,200);
 vertex(x,80,z+200,0,200);

//left right
 vertex(x+20,200,z+200,0,0);
 vertex(x+20,200,z+210,200,0);
 vertex(x+20,80,z+210,200,200);
 vertex(x+20,80,z+200,0,200);
 
 //right left
 vertex(x+150,80,z+200,0,0);
 vertex(x+150,200,z+200,200,0);
 vertex(x+150,200,z+210,200,200);
 vertex(x+150,80,z+210,0,200);
 //right right 
 vertex(x+170,80,z+200,0,0);
 vertex(x+170,200,z+200,200,0);
 vertex(x+170,200,z+210,200,200);
 vertex(x+170,80,z+210,0,200);
 
 

 //left top
 vertex(x,80,z+200,0,0);
 vertex(x+20,80,z+200,200,0);
 vertex(x+20,80,z+210,200,200);
 vertex(x,80,z+210,0,200);
 
 //center top
 vertex(x+20,100,z+200,0,0);
 vertex(x+150,100,z+200,200,0);
 vertex(x+150,100,z+210,200,200);
 vertex(x+20,100,z+210,0,200);

//right top
 vertex(x+150,80,z+200,0,0);
 vertex(x+170,80,z+200,200,0);
 vertex(x+170,80,z+210,200,200);
 vertex(x+150,80,z+210,0,200);
 
  endShape();
  
  beginShape(QUADS); //mattress
  fill(255);
  vertex(x+20,120,z);
  vertex(x+150,120,z);
  vertex(x+150,120,z+200);
  vertex(x+20,120,z+200);
  
  vertex(x+20,160,z+0);
  vertex(x+150,160,z);
  vertex(x+150,160,z+200);
  vertex(x+20,160,z+200);
  
  vertex(x+20,120,z);
  vertex(x+20,160,z);
  vertex(x+20,160,z+200);
  vertex(x+20,120,z+200);
  
  vertex(x+150,120,z);
  vertex(x+150,160,z);
  vertex(x+150,160,z+200);
  vertex(x+150,120,z+200);
  
  endShape();
  popMatrix();
  
  }
 
void moveB(){
   println("x",x,"z",z);
   
   if (l==0) {
     x = x + (mouseX - pmouseX)*10;
    z = z + (mouseY - pmouseY)*10;
   }
   else if (l==PI) {
      x = x - (mouseX - pmouseX)*10;
    z =  z - (mouseY - pmouseY)*10;
   }
   else if (l==PI/2) {
     x = x - (mouseY - pmouseY)*10;
     z =  z + (mouseX - pmouseX)*10;
   }
   else if (l==3*PI/2){
     x =  x + (mouseY - pmouseY)*10;
     z = z - (mouseX - pmouseX)*10;
   }
}
    void checkWallsB(){
      
    if (x<-300 && l == 0 ){
      x = -300;
    }
    else if (x>130 && l==0 ) {
      x = 130;
    }
  else if(z>-10 && l==0 ) {
    z = -10;
  }
  else if(z<-200 && l==0 ){
    z = -200;
  }
  
   else  if (x<-300 && l == PI ){
      x = -300;
    }
    else if (x>130 && l== PI ) {
      x = 130;
    }
  else if(z>-10 && l==PI ) {
    z = -10;
  }
  else if(z<-200 && l==PI ){
    z = -200;
  }
  
   else  if (x<-200 && l == PI/2 ){
      x = -200;
    }
    else if (x>30 && l== PI/2 ) {
      x = 30;
    }
  else if(z<-300 && l==PI/2 ) {
    z = -300;
  }
  else if(z>90 && l==PI/2 ){
    z = 90;
  }
   
      else  if (x<-200 && l == 3*PI/2 ){
      x = -200;
    }
    else if (x>30 && l== 3*PI/2 ) {
      x = 30;
    }
  else if(z<-300 && l==3*PI/2 ) {
    z = -300;
  }
  else if(z>90 && l==3*PI/2 ){
    z = 90;
  }
   
   
   
  }
   
  void rotateb(){
  
    l = l + PI/2;
    if (l==2*PI) {
      l = 0;
    }
  }
    
  
}
 

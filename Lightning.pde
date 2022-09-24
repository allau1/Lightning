int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
//
int startX2 = 0;
int startY2 = 150;
int endX2= 10;
int endY2 = 150;

void setup(){
size(400,400);
strokeWeight(5);
background(0,0,0);
stroke(#03FFDF);
frameRate(300);
}

void draw(){
if (endX <=400){
fill(0,0,0,5);
rect(-100,-100,4000,4000);
fill(#717171);
stroke(0,0,0);
rect(250,-10,250,500);
stroke(#03FFDF);
line(startX,startY,endX,endY);


startX = endX;
startY = endY;
endX = startX + (int)((Math.random()*8)+1);
endY = startY +(int)((Math.random()*18)-9);
startX2 = endX;
startY2 = endY;
}else{
//Magic
fill(0,0,0,20);
rect(-100,-100,4000,4000);
fill(#717171);
stroke(0,0,0);
rect(250,-10,250,500);
stroke(#03FFDF);
endX2 = startX2 - (int)((Math.random()*8)+1);
endY2 = startY2 +(int)((Math.random()*18)-9);
line(startX2,startY2,endX2,endY2);
startX2 = endX2;
startY2 = endY2;
}
}

void mousePressed(){
  fill(0,0,0);
  rect(-100,-100,4000,4000);
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}

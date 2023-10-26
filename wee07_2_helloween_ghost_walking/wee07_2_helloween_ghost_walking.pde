void setup(){
  size(400,400);
}
float ghostX=40, ghostY=20;
void draw(){
  ellipse(200,200,15,15);///主角
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
  ellipse( ghostX, ghostY, 15, 15);//鬼
  float dx = 200-ghostX, dy = 200-ghostY, len= sqrt(dx*dx+dy*dy);
  ghostX += dx/ len/ 3;
  ghostY += dy/ len/ 3;
}
void mouseReleased(){///所以改當滑鼠放開時才清背景
  background(255);
}

PImage img;
void setup(){
  size(800,600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);//用中心點，來畫四邊形
}
void draw(){
  background(#FFFFF2);//淡黃色，清背景
  fill(255,0,0,128);//半透明(128)的紅色
  image(img,0,600-266);
  rect(mouseX,mouseY,28,30,5);//定位、印出mouse座標
}
void mousePressed(){
  println(mouseX,mouseY);//定位、印出mouse座標
}

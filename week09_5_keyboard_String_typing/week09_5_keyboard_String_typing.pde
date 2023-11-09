PImage img;
int [][] pos = {{92,491},{245,525},{179,525},{162,490},{152,456},{195,490},{230,490},
{265,490},{323,457},{298,490},{332,490},{366,491},{315,525},{280,524},{358,457},
{392,456},{83,457},{186,456},{128,490},{220,456},{288,456},{212,524},{117,457},
{143,524},{254,457},{109,524}};
void setup(){
  size(800,600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);//用中心點，來畫四邊形
}
void draw(){
  background(#FFFFF2);//淡黃色，清背景
  image(img,0,600-266);
  fill(255,0,0,128);//半透明(128)的紅色
  rect(mouseX,mouseY,28,30,5);
  fill(0,255,0,128);//半透明(128)的綠色
  for(int i=0;i<26;i++){
    if(pressed[i]) rect(pos[i][0],pos[i][1],28,30,5);
  }
}
boolean [] pressed = new boolean[26];//Java的陣列宣告，都是0或false
void keyPressed(){
  if(key>='a' && key<='z') pressed[key-'a'] = true;
}
void keyReleased(){
  if(key>='a' && key<='z') pressed[key-'a'] = false;
}

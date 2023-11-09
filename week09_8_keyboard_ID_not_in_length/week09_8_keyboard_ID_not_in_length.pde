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
    if(typing.charAt(ID)-'a'==i) rect(pos[i][0],pos[i][1],28,30,5);
  }
  textSize(50);
  fill(0);//黑色的字
  text(typing,50,50);//要打的字
  fill(255,0,0);//紅色
  text(typed+typing.charAt(ID),50,100);//現在要打的字，是typing.charA(ID)
  fill(0);//再用黑色，秀出已經打好的字
  text(typed,50,100);//已經打好的字
}
String typing ="printfprintfprintf";
String typed = "";//一開始打了0個字
int ID = 0;//第幾個字母要被打
boolean [] pressed = new boolean[26];//Java的陣列宣告，都是0或false
void keyPressed(){
  if(key>='a' && key<='z'){ 
    if(key == typing.charAt(ID)){//字母正確，就往下
      pressed[key-'a'] = true;
      typed += key;
      ID++;
  }else{
      background(255,0,0);//畫面紅色閃一下背景
    }
  }
}
void keyReleased(){
  if(key>='a' && key<='z') pressed[key-'a'] = false;
}

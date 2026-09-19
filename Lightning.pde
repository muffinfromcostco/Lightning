
int startX=300;
int startY= 0;
int endX= 0;
int endY= 150;
int g= 0;
int w=0;
int e=0;
int q=0;
PImage bg;

  void setup()
{
  size(600,600);
  strokeWeight(7);
  bg = loadImage("a-lightning-bolt-is-seen-in-the-sky-above-a-storm-photo.jpg");
}

void draw()
{
if (bg.width > 0 && bg.height > 0) {
    bg.resize(600,600);
 background(bg);
}
stroke(#E8D5F2);

if (Math.random() <= .5){
g = -60;
}
else{
  g = 60;
}

while(endX <=600){
 
if(Math.random() < .5){
  endX = startX + (int)(Math.random() * 40);
}
  else{
endX = startX - (int)(Math.random() * 40);
  }
  endY= startY + (int)(Math.random()* 60);
 line(startX, startY, endX, endY);

if (endX >= 280 && endX <= 320 && endY >=430 && endY <=490){
  w=256;
 }
 if (endX >= 210 && endX <= 250 && endY >=430 && endY <=490){
  e=256;
 }
 if (endX >= 350 && endX <=390 && endY >=430 && endY <=490){
  q=256; 
 }
 
startX= endX;
startY= endY;

}


  noFill();
stroke(0,0,0);
arc(300,500,600,50,0,PI);

fill(#9D874F);
noStroke();
rect(0,450,90,30);
rect(0,450,30,150);

noFill();
stroke(0,0,0);
arc(360,470,600,50,0,PI);


  fill(222-w,87-w,87-w);
  noStroke();
  ellipse(300,440,30,30);
   ellipse(300,460,35,50);
   triangle(300,470,280,490,320,490);
   
 fill(255,255,0);
 triangle(300,440,300,450,310,445);
 rect(290,480,5,10);
  rect(305,480,5,10);
 
 fill(0,0,0);
 ellipse(290,440,5,5);
  ellipse(310,440,5,5);
 
  fill(117-e,195-e,252-e);
  noStroke();
  ellipse(230,440,30,30);
   ellipse(230,460,35,50);
   triangle(230,470,210,490,250,490);
   
 fill(255,255,0);
 triangle(230,440,230,450,240,445);
 rect(220,480,5,10);
  rect(235,480,5,10);
 
 fill(0,0,0);
 ellipse(220,440,5,5);
  ellipse(240,440,5,5);
 
  fill(252-q,224-q,0-q);
  noStroke();
  ellipse(370,440,30,30);
   ellipse(370,460,35,50);
   triangle(370,470,350,490,390,490);
   
 fill(255,255,0);
 triangle(370,440,370,450,380,445);
 rect(360,480,5,10);
  rect(375,480,5,10);
 
 fill(0,0,0);
 ellipse(360,440,5,5);
  ellipse(380,440,5,5);
  
 if (w==256){
   fill(w,w,w);
  ellipse(310,440,5,10);
   ellipse(290,440,5,10);
 }
   
    if (e==256){
   fill(e,e,e);
  ellipse(240,440,5,10);
   ellipse(220,440,5,10);
 }
 
 
 if (q==256){
   fill(q,q,q);
  ellipse(380,440,5,10);
   ellipse(360,440,5,10);
 }

fill(#818181);
ellipse(100,0,200,50);
ellipse(190,40,200,50);
ellipse(300,20,300,100);
ellipse(240,20,200,150);
ellipse(500,0,200,50);

   
}

void mousePressed()
{
startX= (int)(Math.random()*600);
startY= 0;
endX= 0;
endY= 150;
w=0;
e=0;
q=0;
background(bg);


}






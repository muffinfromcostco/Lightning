#lightning bird
int startX=300;
int startY= 0;
int endX= 0;
int endY= 150;
int g= 0;
int w=0;
void setup()
{
  size(600,600);
  background(#3F536C);
  strokeWeight(5);
}
void draw()
{
stroke(#FFF700);


if (Math.random() <= .5){
g = -60;
}
else{
  g = 60;
}


while (endX <= 600)
{
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
 
startX= endX;
startY= endY;
}

  noFill();
stroke(0,0,0);
arc(300,500,600,50,0,PI);

fill(#867246);
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
 
 if (w==256){
   fill(w,w,w);
    ellipse(310,440,5,10);
     ellipse(290,440,5,10);
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
background(#3F536C);
}
[^1]: Try to strike the bird with lightning


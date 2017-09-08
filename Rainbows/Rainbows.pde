int Circle_Count = 1500; 
float [] Xs = new float[Circle_Count];
float [] Ys = new float [Circle_Count];
int colorVal = 0; 
PImage pan; 
PFont dis; 
int x = 155;
int y = 645; 

void setup()
{
size (800, 800); 

  for (int i = 0; i < 1500; i++)
  {
    Xs[i] = random(width);
    Ys[i] = random(height);
  }
  
   pan= loadImage("pan.png");
  
}
void draw()
{
 
  
  for (int i =0; i < 1500; i++)
  {
       fill(colorVal,255,255,255); 
    ellipse(Xs[i], Ys[i], 15, 15);
fill(random(225),random(225),random(255));

    Ys[i] = Ys[i]+ random(200); 
    if (Ys[i]>height)
 
      Ys[i]=0;
      
      noStroke(); 
    colorVal++; 
    if(colorVal>255)
    {
      colorVal = 0;
    }
  }
  imageMode(CENTER);
 image(pan, x, y, 300, 300);
  
 Disney(); 
} 
void Disney()
{
  fill(0,0,0); 
dis = createFont("waltograph42.ttf",32);
textFont(dis,150); 
   text("Magic is Real",100,300); 
 
 
}
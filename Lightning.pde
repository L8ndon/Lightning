PImage bruh;
int startX = 150;
int startY = 0;
int endX = 250;
int endY = 250;

void setup() 
{
  size(250,250);
  bruh = loadImage("http://pm1.narvii.com/6722/0ab8cce1e61ba0ef3beec0823b2c5321d1716fef_00.jpg");
  strokeWeight(1);

}
void draw()
{
   image(bruh, 0, 0, 250, 250);
   while(endX < 250) {
    strokeWeight(2);
     //stroke((int)(Math.random() * 255), ((int)Math.random() * 255), (int)(Math.random() * 255));
     endY = (int)(Math.random() * 9) + startY;
     endX = (int)(Math.random() * 18 - 9) + startX;
     line(startX, startY, endX, endY);
     startX = endX;
     startY = endY;
   }
}
void mousePressed()
{
    startX = 100;
    startY = 0;
    endX = 100;
    endY = 250;
}

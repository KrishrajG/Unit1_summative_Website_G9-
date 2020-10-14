
PImage photoshoe1;
PImage photoshoe2;
PImage photoshoe3;
PImage photoshoe4;
PImage photoshoe5;
PImage photoshoe6;
PImage photoshoe7;
PImage photoshoe8;
PImage photoshoe9;
shoes shoe1;
shoes shoe2;
shoes shoe3;
shoes shoe4;
shoes shoe5;
shoes shoe6;
shoes shoe7;
shoes shoe8;
shoes shoe9;
int scene=0;

shoes[] stock=new shoes [9];

void setup()
{
  size (640, 640);

  //1
  photoshoe1=loadImage("images-3.png");
  photoshoe1.resize(150, 100);
  stock[0]=new shoes("nike", "mint", 2, 10, "white", photoshoe1, 500.00, color(0), 10, 10, 100);
  //2
  photoshoe2=loadImage("images-4.png");
  photoshoe2.resize(150, 100);
  stock[1]=new shoes("nike", "mint", 2, 220, "rainbow", photoshoe2, 650.00, color(255, 0, 0), 10, 220, 101);
  //3
  photoshoe3=loadImage("images-5.png");
  photoshoe3.resize(150, 100);
  stock[2]=new shoes("converse", "not mint", 2, 430, "white", photoshoe3, 570.00, color(0), 10, 430, 102);
  //4
  photoshoe4=loadImage("images-6.png");
  photoshoe4.resize(150, 100);
  stock[3]=new shoes("yeezy", "mint", 212, 10, "gray", photoshoe4, 641.00, color(221, 221, 221), 220, 10, 103 ); 
  //5
  photoshoe5=loadImage("images.png");
  photoshoe5.resize(150, 100);
  stock[4]=new shoes("nike", "mint", 422, 10, "yellow", photoshoe5, 500.00, color(255, 255, 0), 430, 10, 104);
  //6
  photoshoe6=loadImage("images-1.png");
  photoshoe6.resize(150, 100);
  stock[5]=new shoes("nike", "mint", 422, 430, "black", photoshoe6, 562.00, color(255), 430, 430, 105);
  //7
  photoshoe7=loadImage("images-2.png");
  photoshoe7.resize(150, 100);
  stock[6]=new shoes("nike", "mint", 212, 220, "red", photoshoe7, 505.00, color(255, 0, 0), 220, 220, 106);
  //8
  photoshoe8=loadImage("download.png");
  photoshoe8.resize(150, 100);
  stock[7]=new shoes("yeezy", "mint", 422, 220, "black", photoshoe8, 664.00, color(255), 430, 220, 107);
  //9
  photoshoe9=loadImage("download-1.png");
  photoshoe9.resize(150, 100);
  stock[8]=new shoes("offwhite", "mint", 212, 430, "black", photoshoe9, 682.00, color(255), 220, 430, 108);
}

void draw()
{
  if (scene==0)
  {
    background(0);
    //1
    stock[0].draw();
    ////2
    stock[1].draw();
    //3
    stock[2].draw();
    //4
    stock[3].draw();
    //5
    stock[4].draw();
    //6
    stock[5].draw();
    //7
    stock[6].draw();
    //8
    stock[7].draw();
    //9
    stock[8].draw();
  }

  if (scene==100)
  {
    stock[0].drawspec();
  }
  if (scene==101)
  {
    stock[1].drawspec();
  }
  if (scene==102)
  {
    stock[2].drawspec();
  }
  if (scene==103)
  {
    stock[3].drawspec();
  }
  if (scene==104)
  {
    stock[4].drawspec();
  }
  if (scene==105)
  {
    stock[5].drawspec();
  }
  if (scene==106)
  {
    stock[6].drawspec();
  }
  if (scene==107)
  {
    stock[7].drawspec();
  }
  if (scene==108)
  {
    stock[8].drawspec();
  }
  //inside the cart screen
  if (scene==999)
  {

    background (255);
    int totalprice=0;
    for (int i=0; i<9; i++)
    {

      if (stock[i].incart==true)
      {
        textSize(12);
        image(stock[i].Image,50,i*50,50,50);
        text(stock[i].price,100,i*50);
       totalprice+=stock[i].price;
      }
    }
    textSize(12);
    fill(255,0,0);
    text(totalprice,400,400);
    fill(0);
  }
}

void keyPressed()
{
  if (key==' ')
  {
    scene=0;
  }
}
void mouseClicked()
{
  for (int i=0; i<9; i++)
  {
    stock[i].checkclick();
  }
  for (int i=0; i<9; i++)
  {
    stock[i].checkcart();
  }
}


void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(e);
  if (e<0)
  {
    
    
    
    for(int i=0; i<9;i++)
    {
    stock[i].scrollup();
    }
  }
  if (e>0)
  {
      for(int i=0; i<9;i++)
    {
    stock[i].scrolldown();
    }
  }
}

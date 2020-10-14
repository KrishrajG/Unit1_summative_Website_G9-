class shoes
{
  String brandName;
  String condition;
  float price;
  int x;
  int y;
  String maincol;
  PImage Image;
  color shoescol;
  int boxXs;
  int boxYs;
  int clickedscene;
  boolean incart;
  int numbercart;


  shoes(String _brandName, String _condition, int _x, int _y, String _maincol, PImage _Image, float _price, color _shoescol, int _boxXs, int _boxYs, int _clickedscene)
  {
    brandName= _brandName;
    condition=_condition;
    x=_x;
    maincol=_maincol;
    Image=_Image;
    y= _y;
    Image= _Image;
    price=_price;
    shoescol= _shoescol;
    boxXs=  _boxXs;
    boxYs= _boxYs;
    clickedscene= _clickedscene;
    incart= false;
    numbercart=0;
  }
  void draw()
  {
    fill(255);
    Image.resize(150, 100);
    rect(boxXs, boxYs, 200, 200);
    image(Image, x, y);
    fill(0);
    textSize(12);
    text(brandName, x+10, y+10);
    text(condition, x+10, y+170);
    text(maincol, x+10, y+180);
    text(price, x+10, y+190);
    fill(255);
  }
  void drawspec()
  {
    background(255);
    fill(23, 152, 178);
    rect(0, 0, 800, 20);
    Image.resize(250, 200);
    image(Image, 10, 100 );
    fill(shoescol);
    rect(700, 700, 100, 100);
    fill (23, 152, 178);
    rect(10, 500, 180, 250);
    textSize(30); 
    text(brandName, 500, 200);
    text(condition, 500, 250);
    text (price, 490, 300);
    rect(200, 500, 180, 250);
    fill(0);
    text ("add to cart", 15, 575 );
    text ("view cart", 205, 575 );
    text(numbercart, 100, 100);
    checkcart();
    checkscenecart();
  }
  void scrollup()
  {
    boxYs-=1;
    y-=1;
  }
  void scrolldown()
  {
    boxYs+=1;
    y+=1;
  }
  void checkclick()
  {
    if (mouseX>boxXs)
    {
      if (mouseX<boxXs+200)
      {
        if (mouseY>boxYs)
        {
          if (mouseY<boxYs+200)
          {
            if (scene==0)
            {
              scene=clickedscene;
            }
          }
        }
      }
    }
  }
  void checkcart()
  {
    if (mousePressed)
    {

      if (mouseX>10)
      {
        if (mouseX<10+180)
        {
          if (mouseY>500)
          {
            if (mouseY<500+250)
            {
              incart=true;
              numbercart+=1;
            }
          }
        }
      }
    }
  }

  //change for new box
  void checkscenecart()
  {
    if (mousePressed)
    {
      if (mouseX>200)
      {
        if (mouseX<200+180)
        {
          if (mouseY>500)
          {
            if (mouseY<500+250)
            {
              scene=999;
            }
          }
        }
      }
    }
  }
}

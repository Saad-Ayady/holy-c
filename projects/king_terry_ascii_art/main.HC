#include "./lib/drawlingCross.HC"
#include "./lib/drawlingTempleOS.HC"

I32 Main()
{
	/*
	CreatCross c;
	c.x = 70;
	c.y = 30;
	c.Char = '.';
	c.Size = 8;
	c.Top = 40;
	c.Ydin  = 15;
	c.CharBox = '*';
	c.CharShadow = '_';
	creatCross(&c);
	*/
	CreatTOS t;
	t.x = 30;
	t.y = 70;
	t.Char = ' ';
	t.Sif = 23;
	t.charSif = '+';
	t.buttomSif = '\\';
	t.gbda = 'o';
	creatSif(&t);
	return 0;
}

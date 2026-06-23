class Drop
{
	I64 x;
	I64 y;
	U8 Char;
};


class CreatCross : Drop
{
	I64 Size;
	I64 Top;
	I64 Ydin;
	U8 CharBox;
	U8 CharShadow;
};

U0 printInfoCross(CreatCross *c)
{
	"==[CROSS INFO]====\n";
	"- SIZE    : %d\n",c->Size;
	"- Top     : %d\n",c->Top;
	"- Ydin    : %d\n",c->Ydin;
	"- CharBox : %c\n",c->CharBox;
	"- CharSho : %c\n",c->CharShadow;
	"==[Drop Info ]====\n";
	"- WHIDET  : %d\n",c->x;
	"- HEGHET  : %d\n",c->y;
	"- DropC   : %c\n",c->Char;
	"==================\n";
}

U0 creatCross(CreatCross *c)
{
	// Cross
	I64 sizeCross = c->Size;
	I64 topCross  = c->Top;
	I64 ydin = c->Ydin;
	// Box
	I64 boxX = c->x;
	I64 boxY = c->y;
	// start drawling
	I64 sX, sY = 0;
	I64 sCross = (boxX / 2) - (sizeCross / 2);
	I64 eCross = (boxX / 2) + (sizeCross / 2);
	I64 yyCross = sCross - ydin;
	I64 ytCross = eCross + ydin;
	//printInfoCross(c);
	while (sY <= boxY)
	{
		sX = 0;	
		while (sX <= boxX)
		{
			if (sX >= yyCross && sX <= ytCross && (sY >= 7 && sY <= 9))
			{
				"%c",c->CharBox;
			} else if (sX >= sCross && sX <= eCross && (sY >= 3 && sY <= 26)) 
			{
				"%c",c->CharBox;
			} else 
			{
				"%c",c->Char;
			}
			sX++;
		}
		"\n";
		sY++;
	}
}

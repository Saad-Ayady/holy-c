class Drop
{
        I64 x;
        I64 y;
        U8 Char;
};

class CreatTOS : Drop
{
        I64 Sif;
        U8 charSif;
	U8 buttomSif;
	U8 gbda;
};

U0 creatSif(CreatTOS *t)
{
        I64 sX = 0, sY;
        I64 eX = t->x;
        I64 eY = t->y;
        I32 back = 3;
        Bool sifStart = FALSE;
        I32 Zaba = 0;
	I32 Z1 = 1;
	I32 Z2 = 0;
        while (sX <= eX)
        {
                sY = 0;
                I32 checkE = eY - back;
        	I32 checkS = eY - back - 4;

                if (sifStart)
                {
                        //checkE += Zaba;
                        if (Zaba <= 3)
                                Zaba = Zaba + 2;
                        else
                                sifStart = FALSE;
                } else if (!sifStart && sX == 3)
        	{
            		sifStart = TRUE;
        	}
        	checkE += Zaba;
		if (sX >= eX - 10)
		{
			checkS = checkS + Z1;
			Z1+=4;
		}
		"%i|",sX;
        	while (sY <= eY)
        	{
			if (sY == checkS-1 && (sX >= (eX - 10) && sX <= (eX - 10 + 2)))
			{
				"%c", t->buttomSif;
			}else if ((sX >= 20 && sX <= 22) && sY == (checkS-1-Z2))
			{
				"%c", t->gbda;
				Z2+=2;
			} else if (sY >= checkS && sY <= checkE && sX >= 3 && sX <= eX-3)
			{
				"%c", t->charSif;
			} else
				"%c", t->Char;
			sY++;
		}
        	"\n";
        	back += 2;
		sX++;
        }
}

/* ******************************************************* */
/*  _  _  ____  _  _  ___    ____  ____  ____  ____  _  _  */
/* ( )/ )(_  _)( \( )/ __)  (_  _)( ___)(  _ \(  _ \( \/ ) */
/*  )  (  _)(_  )  (( (_-.    )(   )__)  )   / )   / \  /  */
/* (_)\_)(____)(_)\_)\___/   (__) (____)(_)\_)(_)\_) (__)  */
/* *-----------------------------------------------------  */
/* | By  : saad 0xdy <???????*???.ma>                      */
/* | Msg : RIB King Terry ✞	                               */
/* *-----------------------------------------------------  */
/* ******************************************************* */

extern "c" I64 write(I32 i, U8 *c, I32 j);

U0 ft_putchar(U8 c)
{
	write(1, &c, 1);
}

U8 ft_conv2char(I32 n)
{
	return n + '0';
}

I32 ft_len(U8 *s)
{
	I32 i = 0;
	while (s[i])
	{
		i++;
	}
	return i;
}

U0 ft_print_str(U8 *s)
{
	I32 i = 0;
	while (s[i])
	{
		ft_putchar(s[i++]);
	}
}

I32 ft_cn2c(I64 n, U8 *buffer)
{
	I32 index = 0;
	
	if (n == 0)
	{
		buffer[index++] = '0';
		buffer[index] = '\0';
		return index;
	}
	
	if (n < 0)
	{
		buffer[index++] = '-';
		n = -n;
	}
	
	I32 start = index;
	while (n > 0)
	{
		buffer[index++] = ft_conv2char(n % 10);
		n = n / 10;
	}
	buffer[index] = '\0';
	
	I32 end = index - 1;
	while (start < end)
	{
		U8 temp = buffer[start];
		buffer[start] = buffer[end];
		buffer[end] = temp;
		start++;
		end--;
	}
	
	return index;
}

U0 ft_putnbr(I64 n)
{
	U8 buffer[64];
	
	if (n == 0)
	{
		ft_putchar('0');
		ft_putchar('\n');
		return;
	}
	
	ft_cn2c(n, buffer);
	ft_print_str(buffer);
	ft_putchar('\n');
}

I32 Main()
{
	ft_putnbr(1337);    // Should print: 1337
	ft_putnbr(-1228);   // Should print: -1228
	ft_putnbr(0);       // Should print: 0
	ft_putnbr(42);      // Should print: 42
	
	return 0;
}

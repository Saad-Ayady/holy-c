

U0  ft_ultimate_div_mod(I32 *a, I32 *b)
{
	I32 z;
	z = *a;
	*a = z / *b;
	*b = z % *b;
}

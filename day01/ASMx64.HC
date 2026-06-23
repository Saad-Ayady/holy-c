_extern _DRB I64 drb(I64 a, I64 b);

asm{
_DRB::
	IMUL RDI, RSI
	MOV RAX, RDI
	RET 
}

I32 Main()
{
	"%d\n", drb(2,2);
	return 0;
}

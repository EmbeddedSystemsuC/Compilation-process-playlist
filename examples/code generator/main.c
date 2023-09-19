int uix;
int iix=5;
const int x=6;

void func1(long k);
void func2(long k);
long func3(long k);
void func4(long k);

void func1(long k)
{
	if(k>x)
	{
		func2(k);
	}
	else if(k<x)
	{
		k=func3(k);
	}
	else if(k==x)
	{
		func4(k);
	}
}

void func2(long k)
{
	int i;
	for(i=0;i<k;i++)
	{
		func4(k);
	}
}

long func3(long k)
{
	return k;
}

void func4(long k)
{
	int x=2;
	int y=3;
	k=y+x-10;
}

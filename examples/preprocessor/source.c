#include "header.h"

#define func1 init
#define func2 deinit
#define func3 nop

#define add(a,b) a+b
#define sub(n,m) n-m
#define zero 0


void func1(int x,int y)
{
	int z=add(x,y);
}
void func2(int x,int y)
{
	int z=sub(x,y);
}
int func3()
{
	return zero;
}
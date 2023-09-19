# 1 "source.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "source.c"
# 1 "header.h" 1



void init(int x,int y);
void deinit(int x,int y);
int nop();

int x;
float y;
# 2 "source.c" 2
# 12 "source.c"
void init(int x,int y)
{
 int z=x+y;
}
void deinit(int x,int y)
{
 int z=x-y;
}
int nop()
{
 return 0;
}

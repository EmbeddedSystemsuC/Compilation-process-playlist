int uninitialized_integer_x; //no reserves ".bss"
int initialized_integer_x=5; //will reserve 4 bytes ".data"
char array[100]="This array will reserve 100Byte , AKA 64(from dec to hex)";
extern int extern_integer_x; //no reserve, symbol will not be recreated as it's extern
const int const_integer_x = 10;	//will reserve 4 bytes ".rodata"


// will take the same address as infilefunction
void weakinfilefunction(long k)__attribute__((weak,alias("infilefunction"))); 



void infilefunction(long k)
{
	int localx=10;
	notinfilefunction(k);
}


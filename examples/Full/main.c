
#include "Platform_types.h"
#include "Mem_Map.h"



int main(void)
{

	//enable the clock for PORTA from Bus APB2
	RCC_APB2ENR|=1<<2;
	//pin8 in port A is output with max speed 2MHz
	PORTA_Mode->pin.Pin8=0;
	PORTA_Mode->pin.Pin8=2;

	while(1)
	{
		PORTA_Data->pin.Pin8=1;
		for(uint32 i=0;i<500000;i++);
		PORTA_Data->pin.Pin8=0;
		for(uint32 i=0;i<500000;i++);
	}

	return 0;
}

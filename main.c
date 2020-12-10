#include<avr/io.h>
#include<util/delay.h>

#ifndef F_CPU
/* prevent compiler error by supplying a default */
# warning "F_CPU not defined for "
# define F_CPU 1000000UL
#endif


int main(){

	DDRD = 0x01;

	for(;;){
		PORTD = 0x01;
		_delay_ms(100);
		PORTD = 0x00;
		_delay_ms(100);
	}

	return 0;
}
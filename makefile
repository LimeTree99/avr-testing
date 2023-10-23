run: blink.c
	avr-gcc -std=c99 -mmcu=atmega328p blink.c -o blink.out
	avr-objcopy -O ihex -j.text -j.data blink.out blink.hex
	avrdude -c arduino -P COM6 -b 115200 -p atmega328p -D -U flash:w:blink.hex:i
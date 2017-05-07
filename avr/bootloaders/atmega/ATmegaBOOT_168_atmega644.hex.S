
ATmegaBOOT_168_atmega644.elf:     file format elf32-avr

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .data         00000002  00800100  0000fdaa  0000063e  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  1 .text         000005aa  0000f800  0000f800  00000094  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .bss          0000010b  00800102  00800102  00000640  2**0
                  ALLOC
  3 .comment      00000011  00000000  00000000  00000640  2**0
                  CONTENTS, READONLY
  4 .note.gnu.avr.deviceinfo 00000040  00000000  00000000  00000654  2**2
                  CONTENTS, READONLY
  5 .debug_aranges 00000028  00000000  00000000  00000694  2**0
                  CONTENTS, READONLY, DEBUGGING
  6 .debug_info   00000e97  00000000  00000000  000006bc  2**0
                  CONTENTS, READONLY, DEBUGGING
  7 .debug_abbrev 0000094b  00000000  00000000  00001553  2**0
                  CONTENTS, READONLY, DEBUGGING
  8 .debug_line   000002af  00000000  00000000  00001e9e  2**0
                  CONTENTS, READONLY, DEBUGGING
  9 .debug_frame  000000f0  00000000  00000000  00002150  2**2
                  CONTENTS, READONLY, DEBUGGING
 10 .debug_str    000004fa  00000000  00000000  00002240  2**0
                  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc    0000047a  00000000  00000000  0000273a  2**0
                  CONTENTS, READONLY, DEBUGGING
 12 .debug_ranges 00000018  00000000  00000000  00002bb4  2**0
                  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

0000f800 <__vectors>:
    f800:	3d c0       	rjmp	.+122    	; 0xf87c <__ctors_end>
    f802:	00 00       	nop
    f804:	56 c0       	rjmp	.+172    	; 0xf8b2 <__bad_interrupt>
    f806:	00 00       	nop
    f808:	54 c0       	rjmp	.+168    	; 0xf8b2 <__bad_interrupt>
    f80a:	00 00       	nop
    f80c:	52 c0       	rjmp	.+164    	; 0xf8b2 <__bad_interrupt>
    f80e:	00 00       	nop
    f810:	50 c0       	rjmp	.+160    	; 0xf8b2 <__bad_interrupt>
    f812:	00 00       	nop
    f814:	4e c0       	rjmp	.+156    	; 0xf8b2 <__bad_interrupt>
    f816:	00 00       	nop
    f818:	4c c0       	rjmp	.+152    	; 0xf8b2 <__bad_interrupt>
    f81a:	00 00       	nop
    f81c:	4a c0       	rjmp	.+148    	; 0xf8b2 <__bad_interrupt>
    f81e:	00 00       	nop
    f820:	48 c0       	rjmp	.+144    	; 0xf8b2 <__bad_interrupt>
    f822:	00 00       	nop
    f824:	46 c0       	rjmp	.+140    	; 0xf8b2 <__bad_interrupt>
    f826:	00 00       	nop
    f828:	44 c0       	rjmp	.+136    	; 0xf8b2 <__bad_interrupt>
    f82a:	00 00       	nop
    f82c:	42 c0       	rjmp	.+132    	; 0xf8b2 <__bad_interrupt>
    f82e:	00 00       	nop
    f830:	40 c0       	rjmp	.+128    	; 0xf8b2 <__bad_interrupt>
    f832:	00 00       	nop
    f834:	3e c0       	rjmp	.+124    	; 0xf8b2 <__bad_interrupt>
    f836:	00 00       	nop
    f838:	3c c0       	rjmp	.+120    	; 0xf8b2 <__bad_interrupt>
    f83a:	00 00       	nop
    f83c:	3a c0       	rjmp	.+116    	; 0xf8b2 <__bad_interrupt>
    f83e:	00 00       	nop
    f840:	38 c0       	rjmp	.+112    	; 0xf8b2 <__bad_interrupt>
    f842:	00 00       	nop
    f844:	36 c0       	rjmp	.+108    	; 0xf8b2 <__bad_interrupt>
    f846:	00 00       	nop
    f848:	34 c0       	rjmp	.+104    	; 0xf8b2 <__bad_interrupt>
    f84a:	00 00       	nop
    f84c:	32 c0       	rjmp	.+100    	; 0xf8b2 <__bad_interrupt>
    f84e:	00 00       	nop
    f850:	30 c0       	rjmp	.+96     	; 0xf8b2 <__bad_interrupt>
    f852:	00 00       	nop
    f854:	2e c0       	rjmp	.+92     	; 0xf8b2 <__bad_interrupt>
    f856:	00 00       	nop
    f858:	2c c0       	rjmp	.+88     	; 0xf8b2 <__bad_interrupt>
    f85a:	00 00       	nop
    f85c:	2a c0       	rjmp	.+84     	; 0xf8b2 <__bad_interrupt>
    f85e:	00 00       	nop
    f860:	28 c0       	rjmp	.+80     	; 0xf8b2 <__bad_interrupt>
    f862:	00 00       	nop
    f864:	26 c0       	rjmp	.+76     	; 0xf8b2 <__bad_interrupt>
    f866:	00 00       	nop
    f868:	24 c0       	rjmp	.+72     	; 0xf8b2 <__bad_interrupt>
    f86a:	00 00       	nop
    f86c:	22 c0       	rjmp	.+68     	; 0xf8b2 <__bad_interrupt>
    f86e:	00 00       	nop
    f870:	20 c0       	rjmp	.+64     	; 0xf8b2 <__bad_interrupt>
    f872:	00 00       	nop
    f874:	1e c0       	rjmp	.+60     	; 0xf8b2 <__bad_interrupt>
    f876:	00 00       	nop
    f878:	1c c0       	rjmp	.+56     	; 0xf8b2 <__bad_interrupt>
	...

0000f87c <__ctors_end>:
    f87c:	11 24       	eor	r1, r1
    f87e:	1f be       	out	0x3f, r1	; 63
    f880:	cf ef       	ldi	r28, 0xFF	; 255
    f882:	d0 e1       	ldi	r29, 0x10	; 16
    f884:	de bf       	out	0x3e, r29	; 62
    f886:	cd bf       	out	0x3d, r28	; 61

0000f888 <__do_copy_data>:
    f888:	11 e0       	ldi	r17, 0x01	; 1
    f88a:	a0 e0       	ldi	r26, 0x00	; 0
    f88c:	b1 e0       	ldi	r27, 0x01	; 1
    f88e:	ea ea       	ldi	r30, 0xAA	; 170
    f890:	fd ef       	ldi	r31, 0xFD	; 253
    f892:	02 c0       	rjmp	.+4      	; 0xf898 <__do_copy_data+0x10>
    f894:	05 90       	lpm	r0, Z+
    f896:	0d 92       	st	X+, r0
    f898:	a2 30       	cpi	r26, 0x02	; 2
    f89a:	b1 07       	cpc	r27, r17
    f89c:	d9 f7       	brne	.-10     	; 0xf894 <__do_copy_data+0xc>

0000f89e <__do_clear_bss>:
    f89e:	22 e0       	ldi	r18, 0x02	; 2
    f8a0:	a2 e0       	ldi	r26, 0x02	; 2
    f8a2:	b1 e0       	ldi	r27, 0x01	; 1
    f8a4:	01 c0       	rjmp	.+2      	; 0xf8a8 <.do_clear_bss_start>

0000f8a6 <.do_clear_bss_loop>:
    f8a6:	1d 92       	st	X+, r1

0000f8a8 <.do_clear_bss_start>:
    f8a8:	ad 30       	cpi	r26, 0x0D	; 13
    f8aa:	b2 07       	cpc	r27, r18
    f8ac:	e1 f7       	brne	.-8      	; 0xf8a6 <.do_clear_bss_loop>
    f8ae:	ab d0       	rcall	.+342    	; 0xfa06 <main>
    f8b0:	7a c2       	rjmp	.+1268   	; 0xfda6 <_exit>

0000f8b2 <__bad_interrupt>:
    f8b2:	a6 cf       	rjmp	.-180    	; 0xf800 <__vectors>

0000f8b4 <putch>:
	}
#elif defined(__AVR_ATmega168__) || defined(__AVR_ATmega328P__) || defined (__AVR_ATmega328__)
	while (!(UCSR0A & _BV(UDRE0)));
	UDR0 = ch;
#elif defined(__AVR_ATmega644P__)
	while (!(UCSR0A & _BV(UDRE0)));
    f8b4:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <__data_load_end+0x7f0314>
    f8b8:	95 ff       	sbrs	r25, 5
    f8ba:	fc cf       	rjmp	.-8      	; 0xf8b4 <putch>
	UDR0 = ch;
    f8bc:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__data_load_end+0x7f031a>
    f8c0:	08 95       	ret

0000f8c2 <puthex>:
char gethex(void) {
	return (gethexnib() << 4) + gethexnib();
}


void puthex(char ch) {
    f8c2:	cf 93       	push	r28
    f8c4:	98 2f       	mov	r25, r24
	char ah;

	ah = ch >> 4;
    f8c6:	85 95       	asr	r24
    f8c8:	85 95       	asr	r24
    f8ca:	85 95       	asr	r24
    f8cc:	85 95       	asr	r24
	if(ah >= 0x0a) {
		ah = ah - 0x0a + 'a';
	} else {
		ah += '0';
    f8ce:	80 5d       	subi	r24, 0xD0	; 208
	}
	
	ch &= 0x0f;
    f8d0:	9f 70       	andi	r25, 0x0F	; 15
	if(ch >= 0x0a) {
    f8d2:	9a 30       	cpi	r25, 0x0A	; 10
    f8d4:	14 f0       	brlt	.+4      	; 0xf8da <puthex+0x18>
		ch = ch - 0x0a + 'a';
    f8d6:	c7 e5       	ldi	r28, 0x57	; 87
    f8d8:	01 c0       	rjmp	.+2      	; 0xf8dc <puthex+0x1a>
	} else {
		ch += '0';
    f8da:	c0 e3       	ldi	r28, 0x30	; 48
    f8dc:	c9 0f       	add	r28, r25
	}
	
	putch(ah);
    f8de:	ea df       	rcall	.-44     	; 0xf8b4 <putch>
    f8e0:	8c 2f       	mov	r24, r28
	putch(ch);
    f8e2:	cf 91       	pop	r28
}
    f8e4:	e7 cf       	rjmp	.-50     	; 0xf8b4 <putch>

0000f8e6 <getch>:
	} else {
		ch += '0';
	}
	
	putch(ah);
	putch(ch);
    f8e6:	cf 92       	push	r12
    f8e8:	df 92       	push	r13
#endif
}


char getch(void)
{
    f8ea:	ef 92       	push	r14
    f8ec:	ff 92       	push	r15
    f8ee:	c1 2c       	mov	r12, r1
    f8f0:	d1 2c       	mov	r13, r1

		return UDR1;
	}
	return 0;
#elif defined(__AVR_ATmega168__)  || defined(__AVR_ATmega328P__) || defined (__AVR_ATmega328__) || defined(__AVR_ATmega644P__)
	uint32_t count = 0;
    f8f2:	76 01       	movw	r14, r12
    f8f4:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__data_load_end+0x7f0314>
	while(!(UCSR0A & _BV(RXC0))){
    f8f8:	87 fd       	sbrc	r24, 7
    f8fa:	13 c0       	rjmp	.+38     	; 0xf922 <getch+0x3c>
    f8fc:	8f ef       	ldi	r24, 0xFF	; 255
    f8fe:	c8 1a       	sub	r12, r24
		/* 20060803 DojoCorp:: Addon coming from the previous Bootloader*/               
		/* HACKME:: here is a good place to count times*/
		count++;
    f900:	d8 0a       	sbc	r13, r24
    f902:	e8 0a       	sbc	r14, r24
    f904:	f8 0a       	sbc	r15, r24
    f906:	81 e4       	ldi	r24, 0x41	; 65
    f908:	c8 16       	cp	r12, r24
		if (count > MAX_TIME_COUNT)
    f90a:	82 e4       	ldi	r24, 0x42	; 66
    f90c:	d8 06       	cpc	r13, r24
    f90e:	8f e0       	ldi	r24, 0x0F	; 15
    f910:	e8 06       	cpc	r14, r24
    f912:	f1 04       	cpc	r15, r1
    f914:	78 f3       	brcs	.-34     	; 0xf8f4 <getch+0xe>
    f916:	e0 91 02 01 	lds	r30, 0x0102	; 0x800102 <__data_end>
			app_start();
    f91a:	f0 91 03 01 	lds	r31, 0x0103	; 0x800103 <__data_end+0x1>
    f91e:	09 95       	icall
    f920:	e9 cf       	rjmp	.-46     	; 0xf8f4 <getch+0xe>
    f922:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <__data_load_end+0x7f031a>
	}
	return UDR0;
    f926:	ff 90       	pop	r15
    f928:	ef 90       	pop	r14
		if (count > MAX_TIME_COUNT)
			app_start();
	}
	return UDR;
#endif
}
    f92a:	df 90       	pop	r13
    f92c:	cf 90       	pop	r12
    f92e:	08 95       	ret

0000f930 <gethexnib>:
    f930:	cf 93       	push	r28
    f932:	d9 df       	rcall	.-78     	; 0xf8e6 <getch>
	} /* end of forever loop */

}


char gethexnib(void) {
    f934:	c8 2f       	mov	r28, r24
	char a;
	a = getch(); putch(a);
    f936:	be df       	rcall	.-132    	; 0xf8b4 <putch>
    f938:	c1 36       	cpi	r28, 0x61	; 97
    f93a:	14 f0       	brlt	.+4      	; 0xf940 <gethexnib+0x10>
    f93c:	89 ea       	ldi	r24, 0xA9	; 169
    f93e:	03 c0       	rjmp	.+6      	; 0xf946 <gethexnib+0x16>
	if(a >= 'a') {
    f940:	c0 33       	cpi	r28, 0x30	; 48
    f942:	1c f0       	brlt	.+6      	; 0xf94a <gethexnib+0x1a>
		return (a - 'a' + 0x0a);
    f944:	80 ed       	ldi	r24, 0xD0	; 208
    f946:	8c 0f       	add	r24, r28
	} else if(a >= '0') {
    f948:	01 c0       	rjmp	.+2      	; 0xf94c <gethexnib+0x1c>
    f94a:	8c 2f       	mov	r24, r28
		return(a - '0');
    f94c:	cf 91       	pop	r28
    f94e:	08 95       	ret

0000f950 <gethex>:
    f950:	cf 93       	push	r28
    f952:	ee df       	rcall	.-36     	; 0xf930 <gethexnib>
	}
	return a;
}
    f954:	c8 2f       	mov	r28, r24
    f956:	ec df       	rcall	.-40     	; 0xf930 <gethexnib>


char gethex(void) {
    f958:	90 e1       	ldi	r25, 0x10	; 16
	return (gethexnib() << 4) + gethexnib();
    f95a:	c9 9f       	mul	r28, r25
    f95c:	80 0d       	add	r24, r0
    f95e:	11 24       	eor	r1, r1
    f960:	cf 91       	pop	r28
    f962:	08 95       	ret

0000f964 <getNch>:
}
    f964:	cf 93       	push	r28
    f966:	c8 2f       	mov	r28, r24
    f968:	cc 23       	and	r28, r28
    f96a:	19 f0       	breq	.+6      	; 0xf972 <getNch+0xe>
    f96c:	bc df       	rcall	.-136    	; 0xf8e6 <getch>
    f96e:	c1 50       	subi	r28, 0x01	; 1
#endif
}


void getNch(uint8_t count)
{
    f970:	fb cf       	rjmp	.-10     	; 0xf968 <getNch+0x4>
    f972:	cf 91       	pop	r28
	while(count--) {
    f974:	08 95       	ret

0000f976 <byte_response>:
    f976:	cf 93       	push	r28
		else if(bootuart == 2) {
			while(!(UCSR1A & _BV(RXC1)));
			UDR1;
		}
#elif defined(__AVR_ATmega168__)  || defined(__AVR_ATmega328P__) || defined (__AVR_ATmega328__) || defined(__AVR_ATmega644P__)
		getch();
    f978:	c8 2f       	mov	r28, r24
    f97a:	b5 df       	rcall	.-150    	; 0xf8e6 <getch>
    f97c:	80 32       	cpi	r24, 0x20	; 32
    f97e:	39 f4       	brne	.+14     	; 0xf98e <byte_response+0x18>
		//while(!(UCSRA & _BV(RXC)));
		//UDR;
		getch(); // need to handle time out
#endif		
	}
}
    f980:	84 e1       	ldi	r24, 0x14	; 20
    f982:	98 df       	rcall	.-208    	; 0xf8b4 <putch>


void byte_response(uint8_t val)
{
    f984:	8c 2f       	mov	r24, r28
    f986:	96 df       	rcall	.-212    	; 0xf8b4 <putch>
	if (getch() == ' ') {
    f988:	80 e1       	ldi	r24, 0x10	; 16
    f98a:	cf 91       	pop	r28
    f98c:	93 cf       	rjmp	.-218    	; 0xf8b4 <putch>
    f98e:	80 91 04 01 	lds	r24, 0x0104	; 0x800104 <error_count>
		putch(0x14);
    f992:	8f 5f       	subi	r24, 0xFF	; 255
    f994:	80 93 04 01 	sts	0x0104, r24	; 0x800104 <error_count>
		putch(val);
    f998:	85 30       	cpi	r24, 0x05	; 5
    f99a:	31 f4       	brne	.+12     	; 0xf9a8 <byte_response+0x32>
		putch(0x10);
    f99c:	e0 91 02 01 	lds	r30, 0x0102	; 0x800102 <__data_end>
    f9a0:	f0 91 03 01 	lds	r31, 0x0103	; 0x800103 <__data_end+0x1>
	} else {
		if (++error_count == MAX_ERROR_COUNT)
    f9a4:	cf 91       	pop	r28
    f9a6:	09 94       	ijmp
    f9a8:	cf 91       	pop	r28
    f9aa:	08 95       	ret

0000f9ac <nothing_response>:
    f9ac:	9c df       	rcall	.-200    	; 0xf8e6 <getch>
    f9ae:	80 32       	cpi	r24, 0x20	; 32
    f9b0:	21 f4       	brne	.+8      	; 0xf9ba <nothing_response+0xe>
			app_start();
    f9b2:	84 e1       	ldi	r24, 0x14	; 20
    f9b4:	7f df       	rcall	.-258    	; 0xf8b4 <putch>
    f9b6:	80 e1       	ldi	r24, 0x10	; 16
    f9b8:	7d cf       	rjmp	.-262    	; 0xf8b4 <putch>
	}
}
    f9ba:	80 91 04 01 	lds	r24, 0x0104	; 0x800104 <error_count>
    f9be:	8f 5f       	subi	r24, 0xFF	; 255
    f9c0:	80 93 04 01 	sts	0x0104, r24	; 0x800104 <error_count>


void nothing_response(void)
{
	if (getch() == ' ') {
    f9c4:	85 30       	cpi	r24, 0x05	; 5
    f9c6:	29 f4       	brne	.+10     	; 0xf9d2 <nothing_response+0x26>
    f9c8:	e0 91 02 01 	lds	r30, 0x0102	; 0x800102 <__data_end>
		putch(0x14);
    f9cc:	f0 91 03 01 	lds	r31, 0x0103	; 0x800103 <__data_end+0x1>
		putch(0x10);
    f9d0:	09 94       	ijmp
    f9d2:	08 95       	ret

0000f9d4 <flash_led>:
    f9d4:	88 23       	and	r24, r24
	} else {
		if (++error_count == MAX_ERROR_COUNT)
    f9d6:	b1 f0       	breq	.+44     	; 0xfa04 <flash_led+0x30>
    f9d8:	13 9a       	sbi	0x02, 3	; 2
    f9da:	2f ef       	ldi	r18, 0xFF	; 255
    f9dc:	31 ee       	ldi	r19, 0xE1	; 225
    f9de:	94 e0       	ldi	r25, 0x04	; 4
    f9e0:	21 50       	subi	r18, 0x01	; 1
    f9e2:	30 40       	sbci	r19, 0x00	; 0
			app_start();
    f9e4:	90 40       	sbci	r25, 0x00	; 0
    f9e6:	e1 f7       	brne	.-8      	; 0xf9e0 <flash_led+0xc>
    f9e8:	00 c0       	rjmp	.+0      	; 0xf9ea <flash_led+0x16>
    f9ea:	00 00       	nop
    f9ec:	13 98       	cbi	0x02, 3	; 2
    f9ee:	2f ef       	ldi	r18, 0xFF	; 255
	}
}

void flash_led(uint8_t count)
{
	while (count--) {
    f9f0:	31 ee       	ldi	r19, 0xE1	; 225
    f9f2:	94 e0       	ldi	r25, 0x04	; 4
		LED_PORT |= _BV(LED);
    f9f4:	21 50       	subi	r18, 0x01	; 1
	#else
		//round up by default
		__ticks_dc = (uint32_t)(ceil(fabs(__tmp)));
	#endif

	__builtin_avr_delay_cycles(__ticks_dc);
    f9f6:	30 40       	sbci	r19, 0x00	; 0
    f9f8:	90 40       	sbci	r25, 0x00	; 0
    f9fa:	e1 f7       	brne	.-8      	; 0xf9f4 <flash_led+0x20>
    f9fc:	00 c0       	rjmp	.+0      	; 0xf9fe <flash_led+0x2a>
    f9fe:	00 00       	nop
    fa00:	81 50       	subi	r24, 0x01	; 1
    fa02:	e8 cf       	rjmp	.-48     	; 0xf9d4 <flash_led>
    fa04:	08 95       	ret

0000fa06 <main>:
    fa06:	94 b7       	in	r25, 0x34	; 52
		_delay_ms(100);
		LED_PORT &= ~_BV(LED);
    fa08:	14 be       	out	0x34, r1	; 52
    fa0a:	80 91 60 00 	lds	r24, 0x0060	; 0x800060 <__data_load_end+0x7f02b4>
    fa0e:	88 61       	ori	r24, 0x18	; 24
    fa10:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__data_load_end+0x7f02b4>
    fa14:	10 92 60 00 	sts	0x0060, r1	; 0x800060 <__data_load_end+0x7f02b4>
    fa18:	91 fd       	sbrc	r25, 1
    fa1a:	05 c0       	rjmp	.+10     	; 0xfa26 <main+0x20>
    fa1c:	e0 91 02 01 	lds	r30, 0x0102	; 0x800102 <__data_end>
		_delay_ms(100);
	}
}
    fa20:	f0 91 03 01 	lds	r31, 0x0103	; 0x800103 <__data_end+0x1>
	WDTCSR |= _BV(WDCE) | _BV(WDE);
	WDTCSR = 0;

	// Check if the WDT was used to reset, in which case we dont bootload and skip straight to the code. woot.
	if (! (ch &  _BV(EXTRF))) // if its a not an external reset...
		app_start();  // skip bootloader
    fa24:	09 95       	icall
	/* however, we don't wanna confuse people, to avoid making a mess, we will stick to RXD0, TXD0 */
	bootuart = 1;
#endif

	/* check if flash is programmed already, if not start bootloader anyway */
	if(pgm_read_byte_near(0x0000) != 0xFF) {
    fa26:	e0 e0       	ldi	r30, 0x00	; 0
    fa28:	f0 e0       	ldi	r31, 0x00	; 0
    fa2a:	e4 91       	lpm	r30, Z
		UCSR1A = 0x00;
		UCSR1C = 0x06;
		UCSR1B = _BV(TXEN1)|_BV(RXEN1);
	}
#elif defined (__AVR_ATmega644P__)
		UBRR0L = (uint8_t)(F_CPU/(BAUD_RATE*16L)-1);
    fa2c:	80 e1       	ldi	r24, 0x10	; 16
    fa2e:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__data_load_end+0x7f0318>
		UBRR0H = (F_CPU/(BAUD_RATE*16L)-1) >> 8;
    fa32:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__data_load_end+0x7f0319>
		UCSR0A = 0x00;
    fa36:	10 92 c0 00 	sts	0x00C0, r1	; 0x8000c0 <__data_load_end+0x7f0314>
		UCSR0C = 0x06;
    fa3a:	86 e0       	ldi	r24, 0x06	; 6
    fa3c:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__data_load_end+0x7f0316>
		UCSR0B = _BV(TXEN0)|_BV(RXEN0);
    fa40:	88 e1       	ldi	r24, 0x18	; 24
    fa42:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__data_load_end+0x7f0315>

	/* Enable internal pull-up resistor on pin D0 (RX), in order
	to supress line noise that prevents the bootloader from
	timing out */
	DDRD &= ~_BV(PIND0);
    fa46:	50 98       	cbi	0x0a, 0	; 10
	PORTD |= _BV(PIND0);
    fa48:	58 9a       	sbi	0x0b, 0	; 11
	PORTE |= _BV(PINE0);
#endif


	/* set LED pin as output */
	LED_DDR |= _BV(LED);
    fa4a:	0b 9a       	sbi	0x01, 3	; 1
	/* flash onboard LED to signal entering of bootloader */
#if defined(__AVR_ATmega128__) || defined(__AVR_ATmega1280__)
	// 4x for UART0, 5x for UART1
	flash_led(NUM_LED_FLASHES + bootuart);
#else
	flash_led(NUM_LED_FLASHES);
    fa4c:	81 e0       	ldi	r24, 0x01	; 1
    fa4e:	c2 df       	rcall	.-124    	; 0xf9d4 <flash_led>
    fa50:	ff 24       	eor	r15, r15
#endif
					address.word++;
				}			
			}
			else {					        //Write to FLASH one page at a time
				if (address.byte[1]>127) address_high = 0x01;	//Only possible with m128, m256 will need 3rd address byte. FIXME
    fa52:	f3 94       	inc	r15
    fa54:	48 df       	rcall	.-368    	; 0xf8e6 <getch>

	/* forever loop */
	for (;;) {

	/* get character from UART */
	ch = getch();
    fa56:	80 33       	cpi	r24, 0x30	; 48
    fa58:	09 f4       	brne	.+2      	; 0xfa5c <main+0x56>

	/* A bunch of if...else if... gives smaller code than switch...case ! */

	/* Hello is anyone home ? */ 
	if(ch=='0') {
    fa5a:	36 c0       	rjmp	.+108    	; 0xfac8 <main+0xc2>
    fa5c:	81 33       	cpi	r24, 0x31	; 49
    fa5e:	a1 f4       	brne	.+40     	; 0xfa88 <main+0x82>


	/* Request programmer ID */
	/* Not using PROGMEM string due to boot block in m128 being beyond 64kB boundry  */
	/* Would need to selectively manipulate RAMPZ, and it's only 9 characters anyway so who cares.  */
	else if(ch=='1') {
    fa60:	42 df       	rcall	.-380    	; 0xf8e6 <getch>
    fa62:	80 32       	cpi	r24, 0x20	; 32
		if (getch() == ' ') {
    fa64:	09 f0       	breq	.+2      	; 0xfa68 <main+0x62>
    fa66:	7b c1       	rjmp	.+758    	; 0xfd5e <block_done+0xba>
    fa68:	84 e1       	ldi	r24, 0x14	; 20
    fa6a:	24 df       	rcall	.-440    	; 0xf8b4 <putch>
    fa6c:	81 e4       	ldi	r24, 0x41	; 65
			putch(0x14);
    fa6e:	22 df       	rcall	.-444    	; 0xf8b4 <putch>
    fa70:	86 e5       	ldi	r24, 0x56	; 86
    fa72:	20 df       	rcall	.-448    	; 0xf8b4 <putch>
			putch('A');
    fa74:	82 e5       	ldi	r24, 0x52	; 82
    fa76:	1e df       	rcall	.-452    	; 0xf8b4 <putch>
    fa78:	80 e2       	ldi	r24, 0x20	; 32
			putch('V');
    fa7a:	1c df       	rcall	.-456    	; 0xf8b4 <putch>
    fa7c:	89 e4       	ldi	r24, 0x49	; 73
    fa7e:	1a df       	rcall	.-460    	; 0xf8b4 <putch>
			putch('R');
    fa80:	83 e5       	ldi	r24, 0x53	; 83
    fa82:	18 df       	rcall	.-464    	; 0xf8b4 <putch>
    fa84:	80 e5       	ldi	r24, 0x50	; 80
			putch(' ');
    fa86:	64 c1       	rjmp	.+712    	; 0xfd50 <block_done+0xac>
    fa88:	80 34       	cpi	r24, 0x40	; 64
    fa8a:	29 f4       	brne	.+10     	; 0xfa96 <main+0x90>
			putch('I');
    fa8c:	2c df       	rcall	.-424    	; 0xf8e6 <getch>
    fa8e:	86 38       	cpi	r24, 0x86	; 134
    fa90:	d8 f0       	brcs	.+54     	; 0xfac8 <main+0xc2>
			putch('S');
    fa92:	29 df       	rcall	.-430    	; 0xf8e6 <getch>
    fa94:	19 c0       	rjmp	.+50     	; 0xfac8 <main+0xc2>
    fa96:	81 34       	cpi	r24, 0x41	; 65
			putch('P');
    fa98:	99 f4       	brne	.+38     	; 0xfac0 <main+0xba>
    fa9a:	25 df       	rcall	.-438    	; 0xf8e6 <getch>
		}
	}


	/* AVR ISP/STK500 board commands  DON'T CARE so default nothing_response */
	else if(ch=='@') {
    fa9c:	80 38       	cpi	r24, 0x80	; 128
    fa9e:	11 f4       	brne	.+4      	; 0xfaa4 <main+0x9e>
		ch2 = getch();
    faa0:	82 e0       	ldi	r24, 0x02	; 2
    faa2:	03 c0       	rjmp	.+6      	; 0xfaaa <main+0xa4>
		if (ch2>0x85) getch();
    faa4:	81 38       	cpi	r24, 0x81	; 129
    faa6:	19 f4       	brne	.+6      	; 0xfaae <main+0xa8>
    faa8:	81 e0       	ldi	r24, 0x01	; 1
    faaa:	65 df       	rcall	.-310    	; 0xf976 <byte_response>
    faac:	d3 cf       	rjmp	.-90     	; 0xfa54 <main+0x4e>
		nothing_response();
	}


	/* AVR ISP/STK500 board requests */
	else if(ch=='A') {
    faae:	82 38       	cpi	r24, 0x82	; 130
    fab0:	11 f4       	brne	.+4      	; 0xfab6 <main+0xb0>
		ch2 = getch();
    fab2:	80 e1       	ldi	r24, 0x10	; 16
    fab4:	fa cf       	rjmp	.-12     	; 0xfaaa <main+0xa4>
		if(ch2==0x80) byte_response(HW_VER);		// Hardware version
    fab6:	88 39       	cpi	r24, 0x98	; 152
    fab8:	09 f0       	breq	.+2      	; 0xfabc <main+0xb6>
    faba:	35 c0       	rjmp	.+106    	; 0xfb26 <main+0x120>
    fabc:	83 e0       	ldi	r24, 0x03	; 3
		else if(ch2==0x81) byte_response(SW_MAJOR);	// Software major version
    fabe:	f5 cf       	rjmp	.-22     	; 0xfaaa <main+0xa4>
    fac0:	82 34       	cpi	r24, 0x42	; 66
    fac2:	21 f4       	brne	.+8      	; 0xfacc <main+0xc6>
    fac4:	84 e1       	ldi	r24, 0x14	; 20
    fac6:	4e df       	rcall	.-356    	; 0xf964 <getNch>
    fac8:	71 df       	rcall	.-286    	; 0xf9ac <nothing_response>
		else if(ch2==0x82) byte_response(SW_MINOR);	// Software minor version
    faca:	c4 cf       	rjmp	.-120    	; 0xfa54 <main+0x4e>
    facc:	85 34       	cpi	r24, 0x45	; 69
    face:	11 f4       	brne	.+4      	; 0xfad4 <main+0xce>
    fad0:	85 e0       	ldi	r24, 0x05	; 5
		else if(ch2==0x98) byte_response(0x03);		// Unknown but seems to be required by avr studio 3.56
    fad2:	f9 cf       	rjmp	.-14     	; 0xfac6 <main+0xc0>
    fad4:	98 2f       	mov	r25, r24
    fad6:	9d 7f       	andi	r25, 0xFD	; 253
    fad8:	90 35       	cpi	r25, 0x50	; 80
    fada:	b1 f3       	breq	.-20     	; 0xfac8 <main+0xc2>
		else byte_response(0x00);				// Covers various unnecessary responses we don't care about
	}


	/* Device Parameters  DON'T CARE, DEVICE IS FIXED  */
	else if(ch=='B') {
    fadc:	81 35       	cpi	r24, 0x51	; 81
    fade:	29 f4       	brne	.+10     	; 0xfaea <main+0xe4>
		getNch(20);
    fae0:	65 df       	rcall	.-310    	; 0xf9ac <nothing_response>
    fae2:	88 e0       	ldi	r24, 0x08	; 8
    fae4:	80 93 60 00 	sts	0x0060, r24	; 0x800060 <__data_load_end+0x7f02b4>
		nothing_response();
    fae8:	ff cf       	rjmp	.-2      	; 0xfae8 <main+0xe2>
    faea:	85 35       	cpi	r24, 0x55	; 85
	}


	/* Parallel programming stuff  DON'T CARE  */
	else if(ch=='E') {
    faec:	39 f4       	brne	.+14     	; 0xfafc <main+0xf6>
    faee:	fb de       	rcall	.-522    	; 0xf8e6 <getch>
		getNch(5);
    faf0:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <address>
	}


	/* P: Enter programming mode  */
	/* R: Erase device, don't care as we will erase one page at a time anyway.  */
	else if(ch=='P' || ch=='R') {
    faf4:	f8 de       	rcall	.-528    	; 0xf8e6 <getch>
    faf6:	80 93 07 01 	sts	0x0107, r24	; 0x800107 <address+0x1>
    fafa:	e6 cf       	rjmp	.-52     	; 0xfac8 <main+0xc2>
		nothing_response();
	}


	/* Leave programming mode  */
	else if(ch=='Q') {
    fafc:	86 35       	cpi	r24, 0x56	; 86
    fafe:	a9 f4       	brne	.+42     	; 0xfb2a <main+0x124>
		nothing_response();
    fb00:	f2 de       	rcall	.-540    	; 0xf8e6 <getch>
    fb02:	80 33       	cpi	r24, 0x30	; 48
#ifdef WATCHDOG_MODS
		// autoreset via watchdog (sneaky!)
		WDTCSR = _BV(WDE);
    fb04:	71 f4       	brne	.+28     	; 0xfb22 <main+0x11c>
    fb06:	ef de       	rcall	.-546    	; 0xf8e6 <getch>
    fb08:	ee de       	rcall	.-548    	; 0xf8e6 <getch>
		while (1); // 16 ms
    fb0a:	18 2f       	mov	r17, r24


	/* Set address, little endian. EEPROM in bytes, FLASH in words  */
	/* Perhaps extra address bytes may be added in future to support > 128kB FLASH.  */
	/* This might explain why little endian was used here, big endian used everywhere else.  */
	else if(ch=='U') {
    fb0c:	ec de       	rcall	.-552    	; 0xf8e6 <getch>
    fb0e:	11 11       	cpse	r17, r1
		address.byte[0] = getch();
    fb10:	02 c0       	rjmp	.+4      	; 0xfb16 <main+0x110>
    fb12:	8e e1       	ldi	r24, 0x1E	; 30
    fb14:	ca cf       	rjmp	.-108    	; 0xfaaa <main+0xa4>
    fb16:	11 30       	cpi	r17, 0x01	; 1
		address.byte[1] = getch();
    fb18:	11 f4       	brne	.+4      	; 0xfb1e <main+0x118>
    fb1a:	86 e9       	ldi	r24, 0x96	; 150
    fb1c:	c6 cf       	rjmp	.-116    	; 0xfaaa <main+0xa4>
    fb1e:	8a e0       	ldi	r24, 0x0A	; 10
    fb20:	c4 cf       	rjmp	.-120    	; 0xfaaa <main+0xa4>
		nothing_response();
	}


	/* Universal SPI programming command, disabled.  Would be used for fuses and lock bits.  */
	else if(ch=='V') {
    fb22:	83 e0       	ldi	r24, 0x03	; 3
    fb24:	1f df       	rcall	.-450    	; 0xf964 <getNch>
		if (getch() == 0x30) {
    fb26:	80 e0       	ldi	r24, 0x00	; 0
    fb28:	c0 cf       	rjmp	.-128    	; 0xfaaa <main+0xa4>
    fb2a:	84 36       	cpi	r24, 0x64	; 100
    fb2c:	09 f0       	breq	.+2      	; 0xfb30 <main+0x12a>
			getch();
    fb2e:	bd c0       	rjmp	.+378    	; 0xfcaa <block_done+0x6>
    fb30:	da de       	rcall	.-588    	; 0xf8e6 <getch>
			ch = getch();
    fb32:	80 93 09 02 	sts	0x0209, r24	; 0x800209 <length+0x1>
    fb36:	d7 de       	rcall	.-594    	; 0xf8e6 <getch>
			getch();
    fb38:	80 93 08 02 	sts	0x0208, r24	; 0x800208 <length>
			if (ch == 0) {
    fb3c:	80 91 0c 02 	lds	r24, 0x020C	; 0x80020c <flags>
				byte_response(SIG1);
    fb40:	8e 7f       	andi	r24, 0xFE	; 254
    fb42:	80 93 0c 02 	sts	0x020C, r24	; 0x80020c <flags>
			} else if (ch == 1) {
    fb46:	cf de       	rcall	.-610    	; 0xf8e6 <getch>
				byte_response(SIG2); 
    fb48:	85 34       	cpi	r24, 0x45	; 69
    fb4a:	29 f4       	brne	.+10     	; 0xfb56 <main+0x150>
			} else {
				byte_response(SIG3);
    fb4c:	80 91 0c 02 	lds	r24, 0x020C	; 0x80020c <flags>
			} 
		} else {
			getNch(3);
    fb50:	81 60       	ori	r24, 0x01	; 1
    fb52:	80 93 0c 02 	sts	0x020C, r24	; 0x80020c <flags>
			byte_response(0x00);
    fb56:	08 e0       	ldi	r16, 0x08	; 8
    fb58:	11 e0       	ldi	r17, 0x01	; 1
		}
	}


	/* Write memory, length is big endian and is in bytes  */
	else if(ch=='d') {
    fb5a:	20 91 08 02 	lds	r18, 0x0208	; 0x800208 <length>
    fb5e:	30 91 09 02 	lds	r19, 0x0209	; 0x800209 <length+0x1>
		length.byte[1] = getch();
    fb62:	c8 01       	movw	r24, r16
    fb64:	88 50       	subi	r24, 0x08	; 8
    fb66:	91 40       	sbci	r25, 0x01	; 1
		length.byte[0] = getch();
    fb68:	82 17       	cp	r24, r18
    fb6a:	93 07       	cpc	r25, r19
    fb6c:	28 f4       	brcc	.+10     	; 0xfb78 <main+0x172>
    fb6e:	bb de       	rcall	.-650    	; 0xf8e6 <getch>
		flags.eeprom = 0;
    fb70:	f8 01       	movw	r30, r16
    fb72:	81 93       	st	Z+, r24
    fb74:	8f 01       	movw	r16, r30
    fb76:	f1 cf       	rjmp	.-30     	; 0xfb5a <main+0x154>
    fb78:	b6 de       	rcall	.-660    	; 0xf8e6 <getch>
		if (getch() == 'E') flags.eeprom = 1;
    fb7a:	80 32       	cpi	r24, 0x20	; 32
    fb7c:	09 f0       	breq	.+2      	; 0xfb80 <main+0x17a>
    fb7e:	ef c0       	rjmp	.+478    	; 0xfd5e <block_done+0xba>
    fb80:	80 91 0c 02 	lds	r24, 0x020C	; 0x80020c <flags>
    fb84:	20 91 06 01 	lds	r18, 0x0106	; 0x800106 <address>
    fb88:	30 91 07 01 	lds	r19, 0x0107	; 0x800107 <address+0x1>
void (*app_start)(void) = 0x0000;


/* main program starts here */
int main(void)
{
    fb8c:	80 ff       	sbrs	r24, 0
    fb8e:	25 c0       	rjmp	.+74     	; 0xfbda <main+0x1d4>
	else if(ch=='d') {
		length.byte[1] = getch();
		length.byte[0] = getch();
		flags.eeprom = 0;
		if (getch() == 'E') flags.eeprom = 1;
		for (w=0;w<length.word;w++) {
    fb90:	22 0f       	add	r18, r18
    fb92:	33 1f       	adc	r19, r19
    fb94:	30 93 07 01 	sts	0x0107, r19	; 0x800107 <address+0x1>
    fb98:	20 93 06 01 	sts	0x0106, r18	; 0x800106 <address>
    fb9c:	08 e0       	ldi	r16, 0x08	; 8
    fb9e:	11 e0       	ldi	r17, 0x01	; 1
    fba0:	20 91 08 02 	lds	r18, 0x0208	; 0x800208 <length>
			buff[w] = getch();	                        // Store data in buffer, can't keep up with serial data stream whilst programming pages
    fba4:	30 91 09 02 	lds	r19, 0x0209	; 0x800209 <length+0x1>
    fba8:	c8 01       	movw	r24, r16
    fbaa:	88 50       	subi	r24, 0x08	; 8
    fbac:	91 40       	sbci	r25, 0x01	; 1
    fbae:	82 17       	cp	r24, r18
		}
		if (getch() == ' ') {
    fbb0:	93 07       	cpc	r25, r19
    fbb2:	08 f0       	brcs	.+2      	; 0xfbb6 <main+0x1b0>
    fbb4:	78 c0       	rjmp	.+240    	; 0xfca6 <block_done+0x2>
    fbb6:	f8 01       	movw	r30, r16
    fbb8:	61 91       	ld	r22, Z+
			if (flags.eeprom) {		                //Write to EEPROM one byte at a time
    fbba:	8f 01       	movw	r16, r30
    fbbc:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <address>
    fbc0:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <address+0x1>
    fbc4:	e2 d0       	rcall	.+452    	; 0xfd8a <eeprom_write_byte>
    fbc6:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <address>
				address.word <<= 1;
    fbca:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <address+0x1>
    fbce:	01 96       	adiw	r24, 0x01	; 1
    fbd0:	90 93 07 01 	sts	0x0107, r25	; 0x800107 <address+0x1>
    fbd4:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <address>
				for(w=0;w<length.word;w++) {
    fbd8:	e3 cf       	rjmp	.-58     	; 0xfba0 <main+0x19a>
    fbda:	80 91 07 01 	lds	r24, 0x0107	; 0x800107 <address+0x1>
    fbde:	88 0f       	add	r24, r24
    fbe0:	88 0b       	sbc	r24, r24
    fbe2:	8f 21       	and	r24, r15
    fbe4:	80 93 0b 02 	sts	0x020B, r24	; 0x80020b <address_high>
    fbe8:	22 0f       	add	r18, r18
    fbea:	33 1f       	adc	r19, r19
    fbec:	30 93 07 01 	sts	0x0107, r19	; 0x800107 <address+0x1>
					EEAR = (uint16_t)(void *)address.word;
					EEDR = buff[w];
					EECR |= (1<<EEMPE);
					EECR |= (1<<EEPE);
#else
					eeprom_write_byte((void *)address.word,buff[w]);
    fbf0:	20 93 06 01 	sts	0x0106, r18	; 0x800106 <address>
    fbf4:	80 91 08 02 	lds	r24, 0x0208	; 0x800208 <length>
    fbf8:	80 ff       	sbrs	r24, 0
    fbfa:	09 c0       	rjmp	.+18     	; 0xfc0e <main+0x208>
    fbfc:	80 91 08 02 	lds	r24, 0x0208	; 0x800208 <length>
    fc00:	90 91 09 02 	lds	r25, 0x0209	; 0x800209 <length+0x1>
#endif
					address.word++;
    fc04:	01 96       	adiw	r24, 0x01	; 1
    fc06:	90 93 09 02 	sts	0x0209, r25	; 0x800209 <length+0x1>
    fc0a:	80 93 08 02 	sts	0x0208, r24	; 0x800208 <length>
    fc0e:	f8 94       	cli
    fc10:	f9 99       	sbic	0x1f, 1	; 31
    fc12:	fe cf       	rjmp	.-4      	; 0xfc10 <main+0x20a>
    fc14:	11 27       	eor	r17, r17
				}			
			}
			else {					        //Write to FLASH one page at a time
				if (address.byte[1]>127) address_high = 0x01;	//Only possible with m128, m256 will need 3rd address byte. FIXME
    fc16:	e0 91 06 01 	lds	r30, 0x0106	; 0x800106 <address>
    fc1a:	f0 91 07 01 	lds	r31, 0x0107	; 0x800107 <address+0x1>
    fc1e:	c8 e0       	ldi	r28, 0x08	; 8
    fc20:	d1 e0       	ldi	r29, 0x01	; 1
    fc22:	80 91 08 02 	lds	r24, 0x0208	; 0x800208 <length>
				else address_high = 0x00;
#if defined(__AVR_ATmega128__) || defined(__AVR_ATmega1280__) || defined(__AVR_ATmega1281__)
				RAMPZ = address_high;
#endif
				address.word = address.word << 1;	        //address * 2 -> byte location
    fc26:	90 91 09 02 	lds	r25, 0x0209	; 0x800209 <length+0x1>

0000fc2a <length_loop>:
    fc2a:	10 30       	cpi	r17, 0x00	; 0
    fc2c:	91 f4       	brne	.+36     	; 0xfc52 <no_page_erase>

0000fc2e <wait_spm1>:
    fc2e:	00 91 57 00 	lds	r16, 0x0057	; 0x800057 <__data_load_end+0x7f02ab>
				/* if ((length.byte[0] & 0x01) == 0x01) length.word++;	//Even up an odd number of bytes */
				if ((length.byte[0] & 0x01)) length.word++;	//Even up an odd number of bytes
    fc32:	01 70       	andi	r16, 0x01	; 1
    fc34:	01 30       	cpi	r16, 0x01	; 1
    fc36:	d9 f3       	breq	.-10     	; 0xfc2e <wait_spm1>
    fc38:	03 e0       	ldi	r16, 0x03	; 3
    fc3a:	00 93 57 00 	sts	0x0057, r16	; 0x800057 <__data_load_end+0x7f02ab>
    fc3e:	e8 95       	spm

0000fc40 <wait_spm2>:
    fc40:	00 91 57 00 	lds	r16, 0x0057	; 0x800057 <__data_load_end+0x7f02ab>
    fc44:	01 70       	andi	r16, 0x01	; 1
    fc46:	01 30       	cpi	r16, 0x01	; 1
    fc48:	d9 f3       	breq	.-10     	; 0xfc40 <wait_spm2>
				cli();					//Disable interrupts, just to be sure
    fc4a:	01 e1       	ldi	r16, 0x11	; 17
#if defined(EEPE)
				while(bit_is_set(EECR,EEPE));			//Wait for previous EEPROM writes to complete
    fc4c:	00 93 57 00 	sts	0x0057, r16	; 0x800057 <__data_load_end+0x7f02ab>
#else
				while(bit_is_set(EECR,EEWE));			//Wait for previous EEPROM writes to complete
#endif
				asm volatile(
    fc50:	e8 95       	spm

0000fc52 <no_page_erase>:
    fc52:	09 90       	ld	r0, Y+
    fc54:	19 90       	ld	r1, Y+

0000fc56 <wait_spm3>:
    fc56:	00 91 57 00 	lds	r16, 0x0057	; 0x800057 <__data_load_end+0x7f02ab>
    fc5a:	01 70       	andi	r16, 0x01	; 1
    fc5c:	01 30       	cpi	r16, 0x01	; 1
    fc5e:	d9 f3       	breq	.-10     	; 0xfc56 <wait_spm3>
    fc60:	01 e0       	ldi	r16, 0x01	; 1
    fc62:	00 93 57 00 	sts	0x0057, r16	; 0x800057 <__data_load_end+0x7f02ab>
    fc66:	e8 95       	spm
    fc68:	13 95       	inc	r17
    fc6a:	10 34       	cpi	r17, 0x40	; 64
    fc6c:	98 f0       	brcs	.+38     	; 0xfc94 <same_page>

0000fc6e <write_page>:
    fc6e:	11 27       	eor	r17, r17

0000fc70 <wait_spm4>:
    fc70:	00 91 57 00 	lds	r16, 0x0057	; 0x800057 <__data_load_end+0x7f02ab>
    fc74:	01 70       	andi	r16, 0x01	; 1
    fc76:	01 30       	cpi	r16, 0x01	; 1
    fc78:	d9 f3       	breq	.-10     	; 0xfc70 <wait_spm4>
    fc7a:	05 e0       	ldi	r16, 0x05	; 5
    fc7c:	00 93 57 00 	sts	0x0057, r16	; 0x800057 <__data_load_end+0x7f02ab>
    fc80:	e8 95       	spm

0000fc82 <wait_spm5>:
    fc82:	00 91 57 00 	lds	r16, 0x0057	; 0x800057 <__data_load_end+0x7f02ab>
    fc86:	01 70       	andi	r16, 0x01	; 1
    fc88:	01 30       	cpi	r16, 0x01	; 1
    fc8a:	d9 f3       	breq	.-10     	; 0xfc82 <wait_spm5>
    fc8c:	01 e1       	ldi	r16, 0x11	; 17
    fc8e:	00 93 57 00 	sts	0x0057, r16	; 0x800057 <__data_load_end+0x7f02ab>
    fc92:	e8 95       	spm

0000fc94 <same_page>:
    fc94:	32 96       	adiw	r30, 0x02	; 2
    fc96:	02 97       	sbiw	r24, 0x02	; 2
    fc98:	09 f0       	breq	.+2      	; 0xfc9c <final_write>
    fc9a:	c7 cf       	rjmp	.-114    	; 0xfc2a <length_loop>

0000fc9c <final_write>:
    fc9c:	10 30       	cpi	r17, 0x00	; 0
    fc9e:	11 f0       	breq	.+4      	; 0xfca4 <block_done>
    fca0:	02 96       	adiw	r24, 0x02	; 2
    fca2:	e5 cf       	rjmp	.-54     	; 0xfc6e <write_page>

0000fca4 <block_done>:
    fca4:	11 24       	eor	r1, r1
    fca6:	84 e1       	ldi	r24, 0x14	; 20
    fca8:	53 c0       	rjmp	.+166    	; 0xfd50 <block_done+0xac>
    fcaa:	84 37       	cpi	r24, 0x74	; 116
    fcac:	09 f0       	breq	.+2      	; 0xfcb0 <block_done+0xc>
    fcae:	44 c0       	rjmp	.+136    	; 0xfd38 <block_done+0x94>
    fcb0:	1a de       	rcall	.-972    	; 0xf8e6 <getch>
    fcb2:	80 93 09 02 	sts	0x0209, r24	; 0x800209 <length+0x1>
    fcb6:	17 de       	rcall	.-978    	; 0xf8e6 <getch>
    fcb8:	80 93 08 02 	sts	0x0208, r24	; 0x800208 <length>
    fcbc:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <address>
    fcc0:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <address+0x1>
    fcc4:	88 0f       	add	r24, r24
    fcc6:	99 1f       	adc	r25, r25
    fcc8:	90 93 07 01 	sts	0x0107, r25	; 0x800107 <address+0x1>
    fccc:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <address>
    fcd0:	0a de       	rcall	.-1004   	; 0xf8e6 <getch>
    fcd2:	90 91 0c 02 	lds	r25, 0x020C	; 0x80020c <flags>
    fcd6:	85 34       	cpi	r24, 0x45	; 69
    fcd8:	11 f4       	brne	.+4      	; 0xfcde <block_done+0x3a>
    fcda:	91 60       	ori	r25, 0x01	; 1
    fcdc:	01 c0       	rjmp	.+2      	; 0xfce0 <block_done+0x3c>
    fcde:	9e 7f       	andi	r25, 0xFE	; 254
    fce0:	90 93 0c 02 	sts	0x020C, r25	; 0x80020c <flags>
#endif
					 );
				/* Should really add a wait for RWW section to be enabled, don't actually need it since we never */
				/* exit the bootloader without a power cycle anyhow */
			}
			putch(0x14);
    fce4:	00 de       	rcall	.-1024   	; 0xf8e6 <getch>
		}		
	}


	/* Read memory block mode, length is big endian.  */
	else if(ch=='t') {
    fce6:	80 32       	cpi	r24, 0x20	; 32
    fce8:	09 f0       	breq	.+2      	; 0xfcec <block_done+0x48>
    fcea:	b4 ce       	rjmp	.-664    	; 0xfa54 <main+0x4e>
		length.byte[1] = getch();
    fcec:	84 e1       	ldi	r24, 0x14	; 20
    fcee:	e2 dd       	rcall	.-1084   	; 0xf8b4 <putch>
    fcf0:	00 e0       	ldi	r16, 0x00	; 0
    fcf2:	10 e0       	ldi	r17, 0x00	; 0
		length.byte[0] = getch();
    fcf4:	80 91 08 02 	lds	r24, 0x0208	; 0x800208 <length>
    fcf8:	90 91 09 02 	lds	r25, 0x0209	; 0x800209 <length+0x1>
#if defined(__AVR_ATmega128__) || defined(__AVR_ATmega1280__)
		if (address.word>0x7FFF) flags.rampz = 1;		// No go with m256, FIXME
		else flags.rampz = 0;
#endif
		address.word = address.word << 1;	        // address * 2 -> byte location
    fcfc:	08 17       	cp	r16, r24
    fcfe:	19 07       	cpc	r17, r25
    fd00:	40 f5       	brcc	.+80     	; 0xfd52 <block_done+0xae>
    fd02:	20 91 0c 02 	lds	r18, 0x020C	; 0x80020c <flags>
    fd06:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <address>
    fd0a:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <address+0x1>
    fd0e:	20 ff       	sbrs	r18, 0
		if (getch() == 'E') flags.eeprom = 1;
    fd10:	02 c0       	rjmp	.+4      	; 0xfd16 <block_done+0x72>
    fd12:	33 d0       	rcall	.+102    	; 0xfd7a <eeprom_read_byte>
    fd14:	04 c0       	rjmp	.+8      	; 0xfd1e <block_done+0x7a>
    fd16:	21 fd       	sbrc	r18, 1
    fd18:	03 c0       	rjmp	.+6      	; 0xfd20 <block_done+0x7c>
    fd1a:	fc 01       	movw	r30, r24
    fd1c:	84 91       	lpm	r24, Z
    fd1e:	ca dd       	rcall	.-1132   	; 0xf8b4 <putch>
		else flags.eeprom = 0;
    fd20:	80 91 06 01 	lds	r24, 0x0106	; 0x800106 <address>
    fd24:	90 91 07 01 	lds	r25, 0x0107	; 0x800107 <address+0x1>
		if (getch() == ' ') {		                // Command terminator
    fd28:	01 96       	adiw	r24, 0x01	; 1
    fd2a:	90 93 07 01 	sts	0x0107, r25	; 0x800107 <address+0x1>
    fd2e:	80 93 06 01 	sts	0x0106, r24	; 0x800106 <address>
			putch(0x14);
    fd32:	0f 5f       	subi	r16, 0xFF	; 255
    fd34:	1f 4f       	sbci	r17, 0xFF	; 255
			for (w=0;w < length.word;w++) {		        // Can handle odd and even lengths okay
    fd36:	de cf       	rjmp	.-68     	; 0xfcf4 <block_done+0x50>
    fd38:	85 37       	cpi	r24, 0x75	; 117
    fd3a:	71 f4       	brne	.+28     	; 0xfd58 <block_done+0xb4>
    fd3c:	d4 dd       	rcall	.-1112   	; 0xf8e6 <getch>
    fd3e:	80 32       	cpi	r24, 0x20	; 32
    fd40:	71 f4       	brne	.+28     	; 0xfd5e <block_done+0xba>
    fd42:	84 e1       	ldi	r24, 0x14	; 20
    fd44:	b7 dd       	rcall	.-1170   	; 0xf8b4 <putch>
    fd46:	8e e1       	ldi	r24, 0x1E	; 30
				if (flags.eeprom) {	                        // Byte access EEPROM read
    fd48:	b5 dd       	rcall	.-1174   	; 0xf8b4 <putch>
    fd4a:	86 e9       	ldi	r24, 0x96	; 150
    fd4c:	b3 dd       	rcall	.-1178   	; 0xf8b4 <putch>
    fd4e:	8a e0       	ldi	r24, 0x0A	; 10
    fd50:	b1 dd       	rcall	.-1182   	; 0xf8b4 <putch>
    fd52:	80 e1       	ldi	r24, 0x10	; 16
    fd54:	af dd       	rcall	.-1186   	; 0xf8b4 <putch>
    fd56:	7e ce       	rjmp	.-772    	; 0xfa54 <main+0x4e>
					while(EECR & (1<<EEPE));
					EEAR = (uint16_t)(void *)address.word;
					EECR |= (1<<EERE);
					putch(EEDR);
#else
					putch(eeprom_read_byte((void *)address.word));
    fd58:	86 37       	cpi	r24, 0x76	; 118
    fd5a:	09 f4       	brne	.+2      	; 0xfd5e <block_done+0xba>
    fd5c:	e4 ce       	rjmp	.-568    	; 0xfb26 <main+0x120>
#endif
					address.word++;
				}
				else {

					if (!flags.rampz) putch(pgm_read_byte_near(address.word));
    fd5e:	80 91 04 01 	lds	r24, 0x0104	; 0x800104 <error_count>
    fd62:	8f 5f       	subi	r24, 0xFF	; 255
    fd64:	80 93 04 01 	sts	0x0104, r24	; 0x800104 <error_count>
    fd68:	85 30       	cpi	r24, 0x05	; 5
#if defined(__AVR_ATmega128__) || defined(__AVR_ATmega1280__)
					else putch(pgm_read_byte_far(address.word + 0x10000));
					// Hmmmm, yuck  FIXME when m256 arrvies
#endif
					address.word++;
    fd6a:	09 f0       	breq	.+2      	; 0xfd6e <block_done+0xca>
    fd6c:	73 ce       	rjmp	.-794    	; 0xfa54 <main+0x4e>
    fd6e:	e0 91 02 01 	lds	r30, 0x0102	; 0x800102 <__data_end>
    fd72:	f0 91 03 01 	lds	r31, 0x0103	; 0x800103 <__data_end+0x1>
    fd76:	09 95       	icall
    fd78:	6d ce       	rjmp	.-806    	; 0xfa54 <main+0x4e>

0000fd7a <eeprom_read_byte>:
    fd7a:	f9 99       	sbic	0x1f, 1	; 31
		address.word = address.word << 1;	        // address * 2 -> byte location
		if (getch() == 'E') flags.eeprom = 1;
		else flags.eeprom = 0;
		if (getch() == ' ') {		                // Command terminator
			putch(0x14);
			for (w=0;w < length.word;w++) {		        // Can handle odd and even lengths okay
    fd7c:	fe cf       	rjmp	.-4      	; 0xfd7a <eeprom_read_byte>
    fd7e:	92 bd       	out	0x22, r25	; 34
    fd80:	81 bd       	out	0x21, r24	; 33
		}
	}


	/* Get device signature bytes  */
	else if(ch=='u') {
    fd82:	f8 9a       	sbi	0x1f, 0	; 31
    fd84:	99 27       	eor	r25, r25
		if (getch() == ' ') {
    fd86:	80 b5       	in	r24, 0x20	; 32
    fd88:	08 95       	ret

0000fd8a <eeprom_write_byte>:
    fd8a:	26 2f       	mov	r18, r22

0000fd8c <eeprom_write_r18>:
    fd8c:	f9 99       	sbic	0x1f, 1	; 31
			putch(0x14);
    fd8e:	fe cf       	rjmp	.-4      	; 0xfd8c <eeprom_write_r18>
    fd90:	1f ba       	out	0x1f, r1	; 31
    fd92:	92 bd       	out	0x22, r25	; 34
			putch(SIG1);
    fd94:	81 bd       	out	0x21, r24	; 33
    fd96:	20 bd       	out	0x20, r18	; 32
    fd98:	0f b6       	in	r0, 0x3f	; 63
			putch(SIG2);
    fd9a:	f8 94       	cli
    fd9c:	fa 9a       	sbi	0x1f, 2	; 31
    fd9e:	f9 9a       	sbi	0x1f, 1	; 31
			putch(SIG3);
    fda0:	0f be       	out	0x3f, r0	; 63
    fda2:	01 96       	adiw	r24, 0x01	; 1
    fda4:	08 95       	ret

0000fda6 <_exit>:
			putch(0x10);
    fda6:	f8 94       	cli

0000fda8 <__stop_program>:
    fda8:	ff cf       	rjmp	.-2      	; 0xfda8 <__stop_program>

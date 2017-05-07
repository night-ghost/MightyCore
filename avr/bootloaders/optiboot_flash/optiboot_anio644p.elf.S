
optiboot_anio644p.elf:     file format elf32-avr


Disassembly of section .text:

0000fc00 <pre_main>:
/* everything that needs to run VERY early */
void pre_main(void) {
	// Allow convenient way of calling do_spm function - jump table,
	//   so entry to this function will always be here, indepedent of compilation,
	//   features etc
	asm volatile (
    fc00:	01 c0       	rjmp	.+2      	; 0xfc04 <main>
    fc02:	c9 c0       	rjmp	.+402    	; 0xfd96 <do_spm>

0000fc04 <main>:
}
#endif


/* main program starts here */
int main(void) {
    fc04:	1f 92       	push	r1
    fc06:	cd b7       	in	r28, 0x3d	; 61
    fc08:	de b7       	in	r29, 0x3e	; 62
  //  No interrupts will execute
  //  SP points to RAMEND
  //  r1 contains zero
  //
  // If not, uncomment the following instructions:
  asm volatile ("cli");
    fc0a:	f8 94       	cli
  asm volatile ("clr __zero_reg__");
    fc0c:	11 24       	eor	r1, r1

#if defined(__AVR_ATmega8535__) || defined(__AVR_ATmega16__)
   ch = MCUCSR;
   MCUCSR = 0;
#else
  ch = MCUSR;
    fc0e:	84 b7       	in	r24, 0x34	; 52
  MCUSR = 0;
    fc10:	14 be       	out	0x34, r1	; 52
#endif

 
  if (ch & (_BV(WDRF) | _BV(BORF) | _BV(PORF)))
    fc12:	98 2f       	mov	r25, r24
    fc14:	9d 70       	andi	r25, 0x0D	; 13
    fc16:	09 f0       	breq	.+2      	; 0xfc1a <main+0x16>
      appStart(ch);
    fc18:	f6 d0       	rcall	.+492    	; 0xfe06 <appStart>
    fc1a:	82 e0       	ldi	r24, 0x02	; 2
  UCSRA = _BV(U2X); //Double speed mode USART
  UCSRB = _BV(RXEN) | _BV(TXEN);  // enable Rx & Tx
  UCSRC = _BV(URSEL) | _BV(UCSZ1) | _BV(UCSZ0);  // config USART; 8N1
  UBRRL = (uint8_t)( (F_CPU + BAUD_RATE * 4L) / (BAUD_RATE * 8L) - 1 );
#else
  UART_SRA = _BV(U2X0); //Double speed mode USART0
    fc1c:	80 93 c0 00 	sts	0x00C0, r24	; 0x8000c0 <_etext+0x7f0282>
    fc20:	88 e1       	ldi	r24, 0x18	; 24
  UART_SRB = _BV(RXEN0) | _BV(TXEN0);
    fc22:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <_etext+0x7f0283>
    fc26:	86 e0       	ldi	r24, 0x06	; 6
  UART_SRC = _BV(UCSZ00) | _BV(UCSZ01);
    fc28:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <_etext+0x7f0284>
    fc2c:	82 e2       	ldi	r24, 0x22	; 34
  UART_SRL = (uint8_t)( (F_CPU + BAUD_RATE * 4L) / (BAUD_RATE * 8L) - 1 );
    fc2e:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <_etext+0x7f0286>
    fc32:	8e e0       	ldi	r24, 0x0E	; 14
#endif
#endif

  // Set up watchdog to trigger after 1s
  watchdogConfig(WATCHDOG_1S);
    fc34:	d3 d0       	rcall	.+422    	; 0xfddc <watchdogConfig>
    fc36:	81 2c       	mov	r8, r1
    fc38:	91 2c       	mov	r9, r1
   * Making these local and in registers prevents the need for initializing
   * them, and also saves space because code no longer stores to memory.
   * (initializing address keeps the compiler happy, but isn't really
   *  necessary, and uses 4 bytes of flash.)
   */
  register uint16_t address = 0;
    fc3a:	c4 d0       	rcall	.+392    	; 0xfdc4 <getch>
    fc3c:	81 34       	cpi	r24, 0x41	; 65
#endif

  /* Forever loop: exits by causing WDT reset */
  for (;;) {
    /* get character from UART */
    ch = getch();
    fc3e:	79 f4       	brne	.+30     	; 0xfc5e <main+0x5a>
    fc40:	c1 d0       	rcall	.+386    	; 0xfdc4 <getch>

    if(ch == STK_GET_PARAMETER) {
    fc42:	89 83       	std	Y+1, r24	; 0x01
    fc44:	d1 d0       	rcall	.+418    	; 0xfde8 <verifySpace>
      unsigned char which = getch();
    fc46:	89 81       	ldd	r24, Y+1	; 0x01
    fc48:	82 38       	cpi	r24, 0x82	; 130
      verifySpace();
    fc4a:	11 f4       	brne	.+4      	; 0xfc50 <main+0x4c>
    fc4c:	82 e0       	ldi	r24, 0x02	; 2
    fc4e:	05 c0       	rjmp	.+10     	; 0xfc5a <main+0x56>
      /*
       * Send optiboot version as "SW version"
       * Note that the references to memory are optimized away.
       */
      if (which == 0x82) {
    fc50:	81 38       	cpi	r24, 0x81	; 129
    fc52:	11 f4       	brne	.+4      	; 0xfc58 <main+0x54>
    fc54:	86 e0       	ldi	r24, 0x06	; 6
	  putch(optiboot_version & 0xFF);
    fc56:	01 c0       	rjmp	.+2      	; 0xfc5a <main+0x56>
    fc58:	83 e0       	ldi	r24, 0x03	; 3
      } else if (which == 0x81) {
    fc5a:	ad d0       	rcall	.+346    	; 0xfdb6 <putch>
    fc5c:	99 c0       	rjmp	.+306    	; 0xfd90 <main+0x18c>
	  putch(optiboot_version >> 8);
    fc5e:	82 34       	cpi	r24, 0x42	; 66
    fc60:	11 f4       	brne	.+4      	; 0xfc66 <main+0x62>
      } else {
	/*
	 * GET PARAMETER returns a generic 0x03 reply for
         * other parameters - enough to keep Avrdude happy
	 */
	putch(0x03);
    fc62:	84 e1       	ldi	r24, 0x14	; 20
    fc64:	03 c0       	rjmp	.+6      	; 0xfc6c <main+0x68>
    fc66:	85 34       	cpi	r24, 0x45	; 69
    fc68:	19 f4       	brne	.+6      	; 0xfc70 <main+0x6c>
      }
    }
    else if(ch == STK_SET_DEVICE) {
    fc6a:	85 e0       	ldi	r24, 0x05	; 5
    fc6c:	c5 d0       	rcall	.+394    	; 0xfdf8 <getNch>
      // SET DEVICE is ignored
      getNch(20);
    fc6e:	90 c0       	rjmp	.+288    	; 0xfd90 <main+0x18c>
    fc70:	85 35       	cpi	r24, 0x55	; 85
    }
    else if(ch == STK_SET_DEVICE_EXT) {
    fc72:	49 f4       	brne	.+18     	; 0xfc86 <main+0x82>
    fc74:	a7 d0       	rcall	.+334    	; 0xfdc4 <getch>
      // SET DEVICE EXT is ignored
      getNch(5);
    fc76:	18 2f       	mov	r17, r24
    fc78:	a5 d0       	rcall	.+330    	; 0xfdc4 <getch>
    fc7a:	81 2e       	mov	r8, r17
    fc7c:	91 2c       	mov	r9, r1
    }
    else if(ch == STK_LOAD_ADDRESS) {
    fc7e:	98 2a       	or	r9, r24
    fc80:	88 0c       	add	r8, r8
      // LOAD ADDRESS
      uint16_t newAddress;
      newAddress = getch();
    fc82:	99 1c       	adc	r9, r9
    fc84:	84 c0       	rjmp	.+264    	; 0xfd8e <main+0x18a>
    fc86:	86 35       	cpi	r24, 0x56	; 86
      newAddress = (newAddress & 0xff) | (getch() << 8);
    fc88:	21 f4       	brne	.+8      	; 0xfc92 <main+0x8e>
    fc8a:	84 e0       	ldi	r24, 0x04	; 4
    fc8c:	b5 d0       	rcall	.+362    	; 0xfdf8 <getNch>
    fc8e:	80 e0       	ldi	r24, 0x00	; 0
    fc90:	e4 cf       	rjmp	.-56     	; 0xfc5a <main+0x56>
#ifdef RAMPZ
      // Transfer top bit to RAMPZ
      RAMPZ = (newAddress & 0x8000) ? 1 : 0;
#endif
      newAddress += newAddress; // Convert from word address to byte address
    fc92:	84 36       	cpi	r24, 0x64	; 100
    fc94:	09 f0       	breq	.+2      	; 0xfc98 <main+0x94>
    fc96:	4a c0       	rjmp	.+148    	; 0xfd2c <main+0x128>
      address = newAddress;
      verifySpace();
    }
    else if(ch == STK_UNIVERSAL) {
    fc98:	95 d0       	rcall	.+298    	; 0xfdc4 <getch>
    fc9a:	08 2f       	mov	r16, r24
      // UNIVERSAL command is ignored
      getNch(4);
    fc9c:	10 e0       	ldi	r17, 0x00	; 0
    fc9e:	10 2f       	mov	r17, r16
    fca0:	00 27       	eor	r16, r16
      putch(0x00);
    fca2:	90 d0       	rcall	.+288    	; 0xfdc4 <getch>
    fca4:	08 2b       	or	r16, r24
    }
    /* Write memory, length is big endian and is in bytes */
    else if(ch == STK_PROG_PAGE) {
    fca6:	8e d0       	rcall	.+284    	; 0xfdc4 <getch>
    fca8:	b8 2e       	mov	r11, r24
    fcaa:	78 01       	movw	r14, r16
      // PROGRAM PAGE - we support flash programming only, not EEPROM
      uint8_t desttype;
      uint8_t *bufPtr;
      pagelen_t savelength;

      GETLENGTH(length);
    fcac:	c1 2c       	mov	r12, r1
    fcae:	dd 24       	eor	r13, r13
    fcb0:	d3 94       	inc	r13
    fcb2:	88 d0       	rcall	.+272    	; 0xfdc4 <getch>
    fcb4:	f6 01       	movw	r30, r12
    fcb6:	81 93       	st	Z+, r24
    fcb8:	6f 01       	movw	r12, r30
    fcba:	f1 e0       	ldi	r31, 0x01	; 1
    fcbc:	ef 1a       	sub	r14, r31
      savelength = length;
      desttype = getch();
    fcbe:	f1 08       	sbc	r15, r1
    fcc0:	c1 f7       	brne	.-16     	; 0xfcb2 <main+0xae>
    fcc2:	92 d0       	rcall	.+292    	; 0xfde8 <verifySpace>
      // PROGRAM PAGE - we support flash programming only, not EEPROM
      uint8_t desttype;
      uint8_t *bufPtr;
      pagelen_t savelength;

      GETLENGTH(length);
    fcc4:	85 e4       	ldi	r24, 0x45	; 69
      savelength = length;
      desttype = getch();
    fcc6:	b8 12       	cpse	r11, r24
    fcc8:	12 c0       	rjmp	.+36     	; 0xfcee <main+0xea>
    fcca:	68 01       	movw	r12, r16

      // read a page worth of contents
      bufPtr = buff;
      do *bufPtr++ = getch();
    fccc:	d3 94       	inc	r13
    fcce:	74 01       	movw	r14, r8
    fcd0:	00 e0       	ldi	r16, 0x00	; 0
    fcd2:	11 e0       	ldi	r17, 0x01	; 1
    fcd4:	0c 15       	cp	r16, r12
      while (--length);
    fcd6:	1d 05       	cpc	r17, r13
    fcd8:	09 f4       	brne	.+2      	; 0xfcdc <main+0xd8>
    fcda:	5a c0       	rjmp	.+180    	; 0xfd90 <main+0x18c>
    fcdc:	f8 01       	movw	r30, r16

      // Read command terminator, start reply
      verifySpace();
    fcde:	61 91       	ld	r22, Z+
    fce0:	8f 01       	movw	r16, r30
 * void writebuffer(memtype, buffer, address, length)
 */
static inline void writebuffer(int8_t memtype, uint8_t *mybuff,
			       uint16_t address, pagelen_t len)
{
    switch (memtype) {
    fce2:	c7 01       	movw	r24, r14
    fce4:	9e d0       	rcall	.+316    	; 0xfe22 <eeprom_write_byte>
    fce6:	ff ef       	ldi	r31, 0xFF	; 255
    fce8:	ef 1a       	sub	r14, r31
    fcea:	ff 0a       	sbc	r15, r31
    fcec:	f3 cf       	rjmp	.-26     	; 0xfcd4 <main+0xd0>
    fcee:	40 e0       	ldi	r20, 0x00	; 0
    fcf0:	50 e0       	ldi	r21, 0x00	; 0
    case 'E': // EEPROM
#if defined(SUPPORT_EEPROM) || defined(BIGBOOT)
        while(len--) {
    fcf2:	63 e0       	ldi	r22, 0x03	; 3
    fcf4:	c4 01       	movw	r24, r8
    fcf6:	4f d0       	rcall	.+158    	; 0xfd96 <do_spm>
    fcf8:	e1 2c       	mov	r14, r1
	    eeprom_write_byte((uint8_t *)(address++), *mybuff++);
    fcfa:	f1 2c       	mov	r15, r1
    fcfc:	f7 01       	movw	r30, r14
    fcfe:	f3 95       	inc	r31
    fd00:	40 81       	ld	r20, Z
    fd02:	31 96       	adiw	r30, 0x01	; 1
    fd04:	80 81       	ld	r24, Z
    fd06:	50 e0       	ldi	r21, 0x00	; 0
    fd08:	58 2b       	or	r21, r24
    fd0a:	61 e0       	ldi	r22, 0x01	; 1
    fd0c:	c7 01       	movw	r24, r14
	     * Start the page erase and wait for it to finish.  There
	     * used to be code to do this while receiving the data over
	     * the serial link, but the performance improvement was slight,
	     * and we needed the space back.
	     */
	    do_spm((uint16_t)(void*)address,__BOOT_PAGE_ERASE,0);
    fd0e:	88 0d       	add	r24, r8
    fd10:	99 1d       	adc	r25, r9
    fd12:	41 d0       	rcall	.+130    	; 0xfd96 <do_spm>
    fd14:	82 e0       	ldi	r24, 0x02	; 2
    fd16:	e8 0e       	add	r14, r24
    fd18:	f1 1c       	adc	r15, r1
    fd1a:	0e 15       	cp	r16, r14
    fd1c:	1f 05       	cpc	r17, r15
    fd1e:	71 f7       	brne	.-36     	; 0xfcfc <main+0xf8>
    fd20:	40 e0       	ldi	r20, 0x00	; 0
	    /*
	     * Copy data from the buffer into the flash write buffer.
	     */
	    do {
		uint16_t a;
		a = *bufPtr++;
    fd22:	50 e0       	ldi	r21, 0x00	; 0
    fd24:	65 e0       	ldi	r22, 0x05	; 5
		a |= (*bufPtr++) << 8;
    fd26:	c4 01       	movw	r24, r8
    fd28:	36 d0       	rcall	.+108    	; 0xfd96 <do_spm>
    fd2a:	32 c0       	rjmp	.+100    	; 0xfd90 <main+0x18c>
		do_spm((uint16_t)(void*)addrPtr,__BOOT_PAGE_FILL,a);
    fd2c:	84 37       	cpi	r24, 0x74	; 116
    fd2e:	11 f5       	brne	.+68     	; 0xfd74 <main+0x170>
    fd30:	49 d0       	rcall	.+146    	; 0xfdc4 <getch>
    fd32:	08 2f       	mov	r16, r24
    fd34:	10 e0       	ldi	r17, 0x00	; 0
    fd36:	10 2f       	mov	r17, r16
    fd38:	00 27       	eor	r16, r16
    fd3a:	44 d0       	rcall	.+136    	; 0xfdc4 <getch>
    fd3c:	08 2b       	or	r16, r24
		addrPtr += 2;
	    } while (len -= 2);
    fd3e:	42 d0       	rcall	.+132    	; 0xfdc4 <getch>
    fd40:	89 83       	std	Y+1, r24	; 0x01
    fd42:	52 d0       	rcall	.+164    	; 0xfde8 <verifySpace>

	    /*
	     * Actually Write the buffer to flash (and wait for it to finish.)
	     */
	    do_spm((uint16_t)(void*)address,__BOOT_PAGE_WRITE,0);
    fd44:	89 81       	ldd	r24, Y+1	; 0x01
    fd46:	74 01       	movw	r14, r8
    fd48:	85 34       	cpi	r24, 0x45	; 69
    fd4a:	61 f4       	brne	.+24     	; 0xfd64 <main+0x160>
    fd4c:	c7 01       	movw	r24, r14
    fd4e:	61 d0       	rcall	.+194    	; 0xfe12 <eeprom_read_byte>
    fd50:	32 d0       	rcall	.+100    	; 0xfdb6 <putch>
      writebuffer(desttype, buff, address, savelength);


    }
    /* Read memory block mode, length is big endian.  */
    else if(ch == STK_READ_PAGE) {
    fd52:	01 50       	subi	r16, 0x01	; 1
    fd54:	11 09       	sbc	r17, r1
      uint8_t desttype;
      GETLENGTH(length);
    fd56:	ef ef       	ldi	r30, 0xFF	; 255
    fd58:	ee 1a       	sub	r14, r30
    fd5a:	fe 0a       	sbc	r15, r30
    fd5c:	01 15       	cp	r16, r1
    fd5e:	11 05       	cpc	r17, r1
    fd60:	a9 f7       	brne	.-22     	; 0xfd4c <main+0x148>
    fd62:	16 c0       	rjmp	.+44     	; 0xfd90 <main+0x18c>
    fd64:	f7 01       	movw	r30, r14
    fd66:	85 91       	lpm	r24, Z+

      desttype = getch();
    fd68:	7f 01       	movw	r14, r30
    fd6a:	25 d0       	rcall	.+74     	; 0xfdb6 <putch>

      verifySpace();
    fd6c:	01 50       	subi	r16, 0x01	; 1
    fd6e:	11 09       	sbc	r17, r1
    fd70:	c9 f7       	brne	.-14     	; 0xfd64 <main+0x160>

static inline void read_mem(uint8_t memtype, uint16_t address, pagelen_t length)
{
    uint8_t ch;

    switch (memtype) {
    fd72:	0e c0       	rjmp	.+28     	; 0xfd90 <main+0x18c>
    fd74:	85 37       	cpi	r24, 0x75	; 117
    fd76:	39 f4       	brne	.+14     	; 0xfd86 <main+0x182>
    fd78:	37 d0       	rcall	.+110    	; 0xfde8 <verifySpace>

#if defined(SUPPORT_EEPROM) || defined(BIGBOOT)
    case 'E': // EEPROM
	do {
	    putch(eeprom_read_byte((uint8_t *)(address++)));
    fd7a:	8e e1       	ldi	r24, 0x1E	; 30
    fd7c:	1c d0       	rcall	.+56     	; 0xfdb6 <putch>
    fd7e:	86 e9       	ldi	r24, 0x96	; 150
    fd80:	1a d0       	rcall	.+52     	; 0xfdb6 <putch>
    fd82:	8a e0       	ldi	r24, 0x0A	; 10
	} while (--length);
    fd84:	6a cf       	rjmp	.-300    	; 0xfc5a <main+0x56>
    fd86:	81 35       	cpi	r24, 0x51	; 81
    fd88:	11 f4       	brne	.+4      	; 0xfd8e <main+0x18a>
    fd8a:	88 e0       	ldi	r24, 0x08	; 8
    fd8c:	27 d0       	rcall	.+78     	; 0xfddc <watchdogConfig>
    fd8e:	2c d0       	rcall	.+88     	; 0xfde8 <verifySpace>
    fd90:	80 e1       	ldi	r24, 0x10	; 16
    fd92:	11 d0       	rcall	.+34     	; 0xfdb6 <putch>
    fd94:	52 cf       	rjmp	.-348    	; 0xfc3a <main+0x36>

0000fd96 <do_spm>:
	    __asm__ ("elpm %0,Z+\n" : "=r" (ch), "=z" (address): "1" (address));
#else
	    // read a Flash byte and increment the address
	    __asm__ ("lpm %0,Z+\n" : "=r" (ch), "=z" (address): "1" (address));
#endif
	    putch(ch);
    fd96:	fc 01       	movw	r30, r24
    fd98:	0a 01       	movw	r0, r20
    fd9a:	67 bf       	out	0x37, r22	; 55
    fd9c:	e8 95       	spm
    fd9e:	11 24       	eor	r1, r1
	} while (--length);
    fda0:	07 b6       	in	r0, 0x37	; 55
    fda2:	00 fc       	sbrc	r0, 0
    fda4:	fd cf       	rjmp	.-6      	; 0xfda0 <do_spm+0xa>
    fda6:	66 70       	andi	r22, 0x06	; 6

      read_mem(desttype, address, length);
    }

    /* Get device signature bytes  */
    else if(ch == STK_READ_SIGN) {
    fda8:	29 f0       	breq	.+10     	; 0xfdb4 <do_spm+0x1e>
    fdaa:	45 2b       	or	r20, r21
      // READ SIGN - return what Avrdude wants to hear
      verifySpace();
    fdac:	19 f4       	brne	.+6      	; 0xfdb4 <do_spm+0x1e>
    fdae:	81 e1       	ldi	r24, 0x11	; 17
      putch(SIGNATURE_0);
    fdb0:	87 bf       	out	0x37, r24	; 55
    fdb2:	e8 95       	spm
    fdb4:	08 95       	ret

0000fdb6 <putch>:
      putch(SIGNATURE_1);
    fdb6:	90 91 c0 00 	lds	r25, 0x00C0	; 0x8000c0 <_etext+0x7f0282>
    fdba:	95 ff       	sbrs	r25, 5
      putch(SIGNATURE_2);
    fdbc:	fc cf       	rjmp	.-8      	; 0xfdb6 <putch>
    fdbe:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <_etext+0x7f0288>
    }
    else if (ch == STK_LEAVE_PROGMODE) { /* 'Q' */
    fdc2:	08 95       	ret

0000fdc4 <getch>:
      // Adaboot no-wait mod
      watchdogConfig(WATCHDOG_16MS);
    fdc4:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <_etext+0x7f0282>
    fdc8:	87 ff       	sbrs	r24, 7
      verifySpace();
    }
    else {
      // This covers the response to commands like STK_ENTER_PROGMODE
      verifySpace();
    fdca:	fc cf       	rjmp	.-8      	; 0xfdc4 <getch>
    fdcc:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <_etext+0x7f0282>
    }
    putch(STK_OK);
    fdd0:	84 fd       	sbrc	r24, 4
    fdd2:	01 c0       	rjmp	.+2      	; 0xfdd6 <getch+0x12>
  }
    fdd4:	a8 95       	wdr
       * don't care that an invalid char is returned...)
       */
    watchdogReset();
  }

  ch = UART_UDR;
    fdd6:	80 91 c6 00 	lds	r24, 0x00C6	; 0x8000c6 <_etext+0x7f0288>
  LED_PIN |= _BV(LED);
#endif
#endif

  return ch;
}
    fdda:	08 95       	ret

0000fddc <watchdogConfig>:
    "wdr\n"
  );
}

void watchdogConfig(uint8_t x) {
  WDTCSR = _BV(WDCE) | _BV(WDE);
    fddc:	e0 e6       	ldi	r30, 0x60	; 96
    fdde:	f0 e0       	ldi	r31, 0x00	; 0
    fde0:	98 e1       	ldi	r25, 0x18	; 24
    fde2:	90 83       	st	Z, r25
  WDTCSR = x;
    fde4:	80 83       	st	Z, r24
    fde6:	08 95       	ret

0000fde8 <verifySpace>:
  do getch(); while (--count);
  verifySpace();
}

void verifySpace() {
  if (getch() != CRC_EOP) {
    fde8:	ed df       	rcall	.-38     	; 0xfdc4 <getch>
    fdea:	80 32       	cpi	r24, 0x20	; 32
    fdec:	19 f0       	breq	.+6      	; 0xfdf4 <verifySpace+0xc>
    fdee:	88 e0       	ldi	r24, 0x08	; 8
    watchdogConfig(WATCHDOG_16MS);    // shorten WD timeout
    fdf0:	f5 df       	rcall	.-22     	; 0xfddc <watchdogConfig>
    fdf2:	ff cf       	rjmp	.-2      	; 0xfdf2 <verifySpace+0xa>
    fdf4:	84 e1       	ldi	r24, 0x14	; 20
    while (1)			      // and busy-loop so that WD causes
      ;				      //  a reset and app start.
    fdf6:	df cf       	rjmp	.-66     	; 0xfdb6 <putch>

0000fdf8 <getNch>:
  }
  putch(STK_INSYNC);
    fdf8:	cf 93       	push	r28
    fdfa:	c8 2f       	mov	r28, r24
    fdfc:	e3 df       	rcall	.-58     	; 0xfdc4 <getch>
    ::[count] "M" (UART_B_VALUE)
  );
}
#endif

void getNch(uint8_t count) {
    fdfe:	c1 50       	subi	r28, 0x01	; 1
    fe00:	e9 f7       	brne	.-6      	; 0xfdfc <getNch+0x4>
  do getch(); while (--count);
    fe02:	cf 91       	pop	r28
    fe04:	f1 cf       	rjmp	.-30     	; 0xfde8 <verifySpace>

0000fe06 <appStart>:
    fe06:	28 2e       	mov	r2, r24
    fe08:	80 e0       	ldi	r24, 0x00	; 0
  verifySpace();
}
    fe0a:	e8 df       	rcall	.-48     	; 0xfddc <watchdogConfig>
}
#endif

void getNch(uint8_t count) {
  do getch(); while (--count);
  verifySpace();
    fe0c:	e0 e0       	ldi	r30, 0x00	; 0
    fe0e:	ff 27       	eor	r31, r31

void appStart(uint8_t rstFlags) {
  // save the reset flags in the designated register
  //  This can be saved in a main program by putting code in .init0 (which
  //  executes before normal c init code) to save R2 to a global variable.
  __asm__ __volatile__ ("mov r2, %0\n" :: "r" (rstFlags));
    fe10:	09 94       	ijmp

0000fe12 <eeprom_read_byte>:

  watchdogConfig(WATCHDOG_OFF);
    fe12:	f9 99       	sbic	0x1f, 1	; 31
    fe14:	fe cf       	rjmp	.-4      	; 0xfe12 <eeprom_read_byte>
    fe16:	92 bd       	out	0x22, r25	; 34
  // Note that appstart_vec is defined so that this works with either
  // real or virtual boot partitions.
  __asm__ __volatile__ (
    fe18:	81 bd       	out	0x21, r24	; 33
    fe1a:	f8 9a       	sbi	0x1f, 0	; 31
    fe1c:	99 27       	eor	r25, r25
    fe1e:	80 b5       	in	r24, 0x20	; 32
    fe20:	08 95       	ret

0000fe22 <eeprom_write_byte>:
    fe22:	26 2f       	mov	r18, r22

0000fe24 <eeprom_write_r18>:
    fe24:	f9 99       	sbic	0x1f, 1	; 31
    fe26:	fe cf       	rjmp	.-4      	; 0xfe24 <eeprom_write_r18>
    fe28:	1f ba       	out	0x1f, r1	; 31
    fe2a:	92 bd       	out	0x22, r25	; 34
    fe2c:	81 bd       	out	0x21, r24	; 33
    fe2e:	20 bd       	out	0x20, r18	; 32
    fe30:	0f b6       	in	r0, 0x3f	; 63
    fe32:	f8 94       	cli
    fe34:	fa 9a       	sbi	0x1f, 2	; 31
    fe36:	f9 9a       	sbi	0x1f, 1	; 31
    fe38:	0f be       	out	0x3f, r0	; 63
    fe3a:	01 96       	adiw	r24, 0x01	; 1
    fe3c:	08 95       	ret

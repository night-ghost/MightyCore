# Makefile for ATmegaBOOT
# E.Lins, 18.7.2005
#
# Instructions
#
# To make bootloader .hex file:
# make diecimila
# make lilypad
# make ng
# etc...
#
# To burn bootloader .hex file:
# make diecimila_isp
# make lilypad_isp
# make ng_isp
# etc...

# program name should not be changed...
PROGRAM    = ATmegaBOOT_168

# enter the parameters for the avrdude isp tool
ISPTOOL	   = stk500v2
ISPPORT	   = usb
ISPSPEED   = -b 115200

LOCK = 3f
ULOCK = 0f

PROTOCOL   = stk500
BAUD = 57600

MCU_TARGET = atmega644p
LDSECTION  = --section-start=.text=0x3800

# the efuse should really be 0xf8; since, however, only the lower
# three bits of that byte are used on the atmega168, avrdude gets
# confused if you specify 1's for the higher bits, see:
# http://tinker.it/now/2007/02/24/the-tale-of-avrdude-atmega168-and-extended-bits-fuses/
#
# similarly, the lock bits should be 0xff instead of 0x3f (to
# unlock the bootloader section) and 0xcf instead of 0x0f (to
# lock it), but since the high two bits of the lock byte are
# unused, avrdude would get confused.

ISPFUSES    = avrdude -c $(ISPTOOL) -p $(MCU_TARGET) -P $(ISPPORT) $(ISPSPEED) \
-e -u -U lock:w:0x3f:m -U efuse:w:0x$(EFUSE):m -U hfuse:w:0x$(HFUSE):m -U lfuse:w:0x$(LFUSE):m
ISPFLASH    = avrdude -c $(ISPTOOL) -p $(MCU_TARGET) -P $(ISPPORT) $(ISPSPEED) \
-U flash:w:$(PROGRAM)_$(TARGET).hex -U lock:w:0x0f:m


OBJ        = $(PROGRAM).o
OPTIMIZE   = -Os -fno-inline-small-functions -fno-split-wide-types -finline-functions-called-once -fverbose-asm

DEFS       =
LIBS       =

CC         = avr-gcc

# Override is only needed by avr-lib build system.

override CFLAGS        = -g -Wall $(OPTIMIZE) -mmcu=$(MCU_TARGET) -DF_CPU=$(AVR_FREQ) $(DEFS) -Wl,--relax -Wl,--gc-sections
override LDFLAGS       = -Wl,$(LDSECTION)
#override LDFLAGS       = -Wl,-Map,$(PROGRAM).map,$(LDSECTION)

OBJCOPY        = avr-objcopy
OBJDUMP        = avr-objdump
OBJSIZE    = avr-size

AWK        = awk

SRC        = $(PROGRAM).c
core = OSD

all:

pro8: TARGET = pro_8MHz
pro8: CFLAGS += '-DMAX_TIME_COUNT=F_CPU>>4' '-DNUM_LED_FLASHES=1' '-DWATCHDOG_MODS'
pro8: AVR_FREQ = 8000000L
pro8: $(PROGRAM)_pro_8MHz.hex

pro8_isp: pro8
pro8_isp: TARGET = pro_8MHz
pro8_isp: HFUSE = DD
pro8_isp: LFUSE = C6
pro8_isp: EFUSE = 00
pro8_isp: isp

pro16: TARGET = pro_16MHz
pro16: CFLAGS += '-DMAX_TIME_COUNT=F_CPU>>4' '-DNUM_LED_FLASHES=1' '-DWATCHDOG_MODS'
pro16: AVR_FREQ = 16000000L
pro16: $(PROGRAM)_pro_16MHz.hex

pro16_isp: pro16
pro16_isp: TARGET = pro_16MHz
pro16_isp: HFUSE = DD
pro16_isp: LFUSE = C6
pro16_isp: EFUSE = 00
pro16_isp: isp

pro20: TARGET = pro_20mhz
pro20: CFLAGS += '-DMAX_TIME_COUNT=F_CPU>>4' '-DNUM_LED_FLASHES=1' '-DWATCHDOG_MODS'
pro20: AVR_FREQ = 20000000L
pro20: $(PROGRAM)_pro_20mhz.hex

pro20_isp: pro20
pro20_isp: TARGET = pro_20mhz
pro20_isp: HFUSE = DD
pro20_isp: LFUSE = C6
pro20_isp: EFUSE = 00
pro20_isp: isp

atmega328: TARGET = atmega328
atmega328: MCU_TARGET = atmega328p
atmega328: CFLAGS += '-DMAX_TIME_COUNT=F_CPU>>4' '-DNUM_LED_FLASHES=1' -DBAUD_RATE=57600
atmega328: AVR_FREQ = 16000000L
atmega328: LDSECTION  = --section-start=.text=0x7800
atmega328: $(PROGRAM)_atmega328.hex

atmega328_isp: atmega328
atmega328_isp: TARGET = atmega328
atmega328_isp: MCU_TARGET = atmega328p
atmega328_isp: HFUSE = DA
atmega328_isp: LFUSE = FF
atmega328_isp: EFUSE = 05
atmega328_isp: isp

atmega644: TARGET = atmega644
atmega644: MCU_TARGET = atmega644p
atmega644: CFLAGS += '-DMAX_TIME_COUNT=F_CPU>>4' '-DNUM_LED_FLASHES=1' -DBAUD_RATE=57600
atmega644: AVR_FREQ = 16000000L
atmega644: LDSIZE  = 0xF800
atmega644: LDSECTION  = --section-start=.text=$(LDSIZE)
atmega644: $(PROGRAM)_atmega644.hex $(PROGRAM)_atmega644.boards.txt
atmega644: HFUSE = D4
atmega644: LFUSE = FF
atmega644: EFUSE = FD

atmega644_isp: atmega644
atmega644_isp: TARGET = atmega644
atmega644_isp: MCU_TARGET = atmega644p
atmega644_isp: HFUSE = D4
atmega644_isp: LFUSE = FF
atmega644_isp: EFUSE = FD
atmega644_isp: isp

atmega328_pro8: TARGET = atmega328_pro_8MHz
atmega328_pro8: MCU_TARGET = atmega328p
atmega328_pro8: CFLAGS += '-DMAX_TIME_COUNT=F_CPU>>4' '-DNUM_LED_FLASHES=1' -DBAUD_RATE=57600 -DDOUBLE_SPEED
atmega328_pro8: AVR_FREQ = 8000000L
atmega328_pro8: LDSECTION  = --section-start=.text=0x7800
atmega328_pro8: $(PROGRAM)_atmega328_pro_8MHz.hex

atmega328_pro8_isp: atmega328_pro8
atmega328_pro8_isp: TARGET = atmega328_pro_8MHz
atmega328_pro8_isp: MCU_TARGET = atmega328p
atmega328_pro8_isp: HFUSE = DA
atmega328_pro8_isp: LFUSE = FF
atmega328_pro8_isp: EFUSE = 05
atmega328_pro8_isp: isp

mega: TARGET = atmega1280
mega: MCU_TARGET = atmega1280
mega: CFLAGS += '-DMAX_TIME_COUNT=F_CPU>>4' '-DNUM_LED_FLASHES=0' -DBAUD_RATE=57600
mega: AVR_FREQ = 16000000L
mega: LDSECTION  = --section-start=.text=0x1F000
mega: $(PROGRAM)_atmega1280.hex

mega_isp: mega
mega_isp: TARGET = atmega1280
mega_isp: MCU_TARGET = atmega1280
mega_isp: HFUSE = DA
mega_isp: LFUSE = FF
mega_isp: EFUSE = F5
mega_isp: isp


reverse = $(if $(1),$(call reverse,$(wordlist 2,$(words $(1)),$(1)))) $(firstword $(1))
ldir = $(subst /, ,$(PWD))
rdir = $(call reverse,$(ldir))
bldr = $(word 1,$(rdir))

%.boards.txt: %.hex
	@echo "##################################################" > $@
	@echo "# $(TARGET): $(core) /w $(MCU_TARGET) ($(SRC))" >> $@
	@echo "##################################################" >> $@
	@echo "$(TARGET).name=$(core) w/ $(MCU_TARGET) ($(SRC))" >> $@
	@echo "$(TARGET).build.mcu=$(MCU_TARGET)" >> $@
	@echo "$(TARGET).build.f_cpu=$(AVR_FREQ)" >> $@
	@echo "$(TARGET).build.core=$(core)" >> $@
	@echo $(if $(variant),,'#') "$(TARGET).build.variant=$(variant)" >> $@
	@echo "$(TARGET).upload.protocol=$(PROTOCOL)" >> $@
	@echo -n "$(TARGET).upload.maximum_size=" >> $@
	@$(AWK) 'BEGIN {print $(LDSIZE);}' >> $@
	@echo "$(TARGET).upload.speed=$(BAUD)" >> $@
	@echo "$(TARGET).bootloader.path=$(bldr)" >> $@
	@echo "$(TARGET).bootloader.file=$<" >> $@
	@$(OBJSIZE) $(<:%.hex=%.elf) | $(AWK) '{print "# " $$0;}' >> $@
	@echo "$(TARGET).bootloader.low_fuses=0x$(LFUSE)" >> $@
	@echo "$(TARGET).bootloader.high_fuses=0x$(HFUSE)" >> $@
	@echo $(if $(EFUSE),,'#') "$(TARGET).bootloader.extended_fuses=0x$(EFUSE)" >> $@
	@echo "$(TARGET).bootloader.unlock_bits=0x$(ULOCK)" >> $@
	@echo "$(TARGET).bootloader.lock_bits=0x$(LOCK)" >> $@
	@echo "##################################################" >> $@
    

isp: $(TARGET)
	$(ISPFUSES)
	$(ISPFLASH)

%.elf: $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -rf *.o *.elf *.lst *.map *.sym *.lss *.eep *.srec *.bin *.hex

%.lst: %.elf
	$(OBJDUMP) -h -S $< > $@

%.hex: %.elf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@
	$(OBJDUMP) -h -S $< > $@.S

%.srec: %.elf
	$(OBJCOPY) -j .text -j .data -O srec $< $@

%.bin: %.elf
	$(OBJCOPY) -j .text -j .data -O binary $< $@
	

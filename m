Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P6hRa-0008KN-5l
	for barebox@lists.infradead.org; Fri, 15 Oct 2010 10:24:14 +0000
Date: Fri, 15 Oct 2010 12:22:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101015102245.GA28242@pengutronix.de>
References: <1287054406-31713-1-git-send-email-carsten.schlote@gmx.net>
	<1287054406-31713-2-git-send-email-carsten.schlote@gmx.net>
	<1287054406-31713-3-git-send-email-carsten.schlote@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1287054406-31713-3-git-send-email-carsten.schlote@gmx.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/5] [kp-mcb2] Added board files and configs for
	konzeptpark mcb2
To: Carsten Schlote <carsten.schlote@gmx.net>
Cc: barebox@lists.infradead.org

Hi Carsten,

There are several trailing whitespaces in this patch. Can you fix these
please?

Several other comments inline.

Regards
 Sascha

On Thu, Oct 14, 2010 at 01:06:44PM +0200, Carsten Schlote wrote:
> From: Carsten Schlote <c.schlote@konzeptpark.de>
> 
> Added board specific files and config changes for konzeptpark MCB2
> hardware.
> 
> Derived from pcm030 hardware.
> 
> Signed-off-by: Carsten Schlote <c.schlote@konzeptpark.de>
> ---
>  arch/ppc/Kconfig                        |   11 +
>  arch/ppc/Makefile                       |    2 +-
>  arch/ppc/boards/kp-mcb2/Makefile        |    2 +
>  arch/ppc/boards/kp-mcb2/barebox.lds.S   |  139 ++++++++++++
>  arch/ppc/boards/kp-mcb2/config.h        |  253 ++++++++++++++++++++++
>  arch/ppc/boards/kp-mcb2/kp-mcb2.c       |  349 +++++++++++++++++++++++++++++++
>  arch/ppc/boards/kp-mcb2/kp-mcb2.dox     |    8 +
>  arch/ppc/boards/kp-mcb2/mt46v32m16-75.h |   46 ++++
>  arch/ppc/mach-mpc5xxx/Kconfig           |    5 +-
>  9 files changed, 812 insertions(+), 3 deletions(-)
>  create mode 100644 arch/ppc/boards/kp-mcb2/Makefile
>  create mode 100644 arch/ppc/boards/kp-mcb2/barebox.lds.S
>  create mode 100644 arch/ppc/boards/kp-mcb2/config.h
>  create mode 100644 arch/ppc/boards/kp-mcb2/kp-mcb2.c
>  create mode 100644 arch/ppc/boards/kp-mcb2/kp-mcb2.dox
>  create mode 100644 arch/ppc/boards/kp-mcb2/mt46v32m16-75.h
> 
> diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
> index cda14de..32aa3ea 100644
> --- a/arch/ppc/Kconfig
> +++ b/arch/ppc/Kconfig
> @@ -1,11 +1,13 @@
>  
>  config BOARDINFO
>  	default "Phytec Phycore mpc5200b tiny" if MACH_PHYCORE_MPC5200B_TINY
> +	default "konzeptpark MCB2" if MACH_KONZEPTPARK_MCB2
>  	
>  config ARCH_TEXT_BASE
>  	hex
>  	default 0x00000000 if RELOCATABLE
>  	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
> +	default 0x01000000 if MACH_KONZEPTPARK_MCB2
>  
>  config MPC5XXX_EARLY_CONSOLE
>  	bool
> @@ -55,6 +57,15 @@ config MACH_PHYCORE_MPC5200B_TINY
>  	help
>  	  Say Y here if you are using the Phytec Phycore MPC5200B Tiny
>  	  board aka pcm030
> +
> +config MACH_KONZEPTPARK_MCB2
> +	bool "konzeptpark MCB2"
> +	select ARCH_MPC5200
> +	select MPC5200
> +	select MPC5xxx
> +	select HAS_CFI
> +	help
> +	  Say Y here if you are using the konzeptpark MCB2 board
>  endchoice
>  
>  source arch/ppc/mach-mpc5xxx/Kconfig
> diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
> index 46d64e5..e843ed5 100644
> --- a/arch/ppc/Makefile
> +++ b/arch/ppc/Makefile
> @@ -7,9 +7,9 @@ ifdef CONFIG_RELOCATABLE
>  CPPFLAGS += -fPIC -mrelocatable
>  endif
>  
> -
>  machine-$(CONFIG_ARCH_MPC5200)			:= mpc5200
>  board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
> +board-$(CONFIG_MACH_KONZEPTPARK_MCB2)		:= kp-mcb2
>  cpu-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
>  
>  TEXT_BASE = $(CONFIG_TEXT_BASE)
> diff --git a/arch/ppc/boards/kp-mcb2/Makefile b/arch/ppc/boards/kp-mcb2/Makefile
> new file mode 100644
> index 0000000..78d1120
> --- /dev/null
> +++ b/arch/ppc/boards/kp-mcb2/Makefile
> @@ -0,0 +1,2 @@
> +obj-y += kp-mcb2.o
> +extra-y += barebox.lds
> diff --git a/arch/ppc/boards/kp-mcb2/barebox.lds.S b/arch/ppc/boards/kp-mcb2/barebox.lds.S

Care to move this file to arch/ppc/lib and use it as a generic linker
script? Otherwise we'll never find out if it's generic and everyone
continues copying it.


> new file mode 100644
> index 0000000..ab99335
> --- /dev/null
> +++ b/arch/ppc/boards/kp-mcb2/barebox.lds.S
> @@ -0,0 +1,139 @@
> +/*
> + * (C) Copyright 2003
> + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <asm-generic/barebox.lds.h>
> +
> +OUTPUT_ARCH("powerpc")
> +/* Do we need any of these for elf?
> +   __DYNAMIC = 0;    */
> +SECTIONS
> +{
> +  . = TEXT_BASE;
> +
> +  /* Read-only sections, merged into text segment: */
> +  .interp : { *(.interp) }
> +  .hash          : { *(.hash)		}
> +  .dynsym        : { *(.dynsym)		}
> +  .dynstr        : { *(.dynstr)		}
> +  .rel.text      : { *(.rel.text)		}
> +  .rela.text     : { *(.rela.text) 	}
> +  .rel.data      : { *(.rel.data)		}
> +  .rela.data     : { *(.rela.data) 	}
> +  .rel.rodata    : { *(.rel.rodata) 	}
> +  .rela.rodata   : { *(.rela.rodata) 	}
> +  .rel.got       : { *(.rel.got)		}
> +  .rela.got      : { *(.rela.got)		}
> +  .rel.ctors     : { *(.rel.ctors)	}
> +  .rela.ctors    : { *(.rela.ctors)	}
> +  .rel.dtors     : { *(.rel.dtors)	}
> +  .rela.dtors    : { *(.rela.dtors)	}
> +  .rel.bss       : { *(.rel.bss)		}
> +  .rela.bss      : { *(.rela.bss)		}
> +  .rel.plt       : { *(.rel.plt)		}
> +  .rela.plt      : { *(.rela.plt)		}
> +  .init          : { *(.init)	}
> +  .plt : { *(.plt) }
> +  .text      :
> +  {
> +    arch/ppc/mach-mpc5xxx/start.o	(.text)

This should be changed to *(.text_entry*) and the code in start.S moved
to this section. Otherwise this file seems to be generic for powerpc.

> +    *(.text*)
> +    *(.got1*)
> +    . = ALIGN(16);
> +    *(.rodata*)
> +    *(.rodata1*)
> +    *(.rodata.str1.4)
> +  }
> +  .fini      : { *(.fini)    } =0
> +  .ctors     : { *(.ctors)   }
> +  .dtors     : { *(.dtors)   }
> +
> +  /* Read-write section, merged into data segment: */
> +  . = (. + 0x0FFF) & 0xFFFFF000;
> +  _etext = .;
> +  PROVIDE (erotext = .);
> +  .reloc   :
> +  {
> +    *(.got)
> +    _GOT2_TABLE_ = .;
> +    *(.got2)
> +    _FIXUP_TABLE_ = .;
> +    *(.fixup)
> +  }
> +  __got2_entries = (_FIXUP_TABLE_ - _GOT2_TABLE_) >> 2;
> +  __fixup_entries = (. - _FIXUP_TABLE_) >> 2;
> +
> +
> +  .data    :
> +  {
> +    *(.data*)
> +    *(.data1*)
> +    *(.sdata*)
> +    *(.sdata2*)
> +    *(.dynamic*)
> +    CONSTRUCTORS
> +  }
> +  _edata  =  .;
> +  PROVIDE (edata = .);
> +
> +  . = .;
> +  __barebox_cmd_start = .;
> +  .barebox_cmd : { BAREBOX_CMDS }
> +  __barebox_cmd_end = .;
> +
> +  __barebox_initcalls_start = .;
> +  .barebox_initcalls : { INITCALLS }
> +  __barebox_initcalls_end = .;
> +  __initcall_entries = (__barebox_initcalls_end - __barebox_initcalls_start) >> 2;
> +
> +  __usymtab_start = .;
> +  __usymtab : { BAREBOX_SYMS }
> +  __usymtab_end = .;
> +
> +  __early_init_data_begin = .;
> +  .early_init_data : { *(.early_init_data) }
> +  __early_init_data_end = .;
> +
> +  __start___ex_table = .;
> +  __ex_table : { *(__ex_table) }
> +  __stop___ex_table = .;
> +
> +  . = ALIGN(4096);
> +  __init_begin = .;
> +  .text.init : { *(.text.init) }
> +  .data.init : { *(.data.init) }
> +  . = ALIGN(4096);
> +  __init_end = .;
> +
> +  __init_size = __init_end - _start;
> +
> +  __bss_start = .;
> +  .bss       :
> +  {
> +   *(.sbss*) *(.scommon*)
> +   *(.dynbss*)
> +   *(.bss*)
> +   *(COMMON)
> +  }
> +  _end = . ;
> +  PROVIDE (end = .);
> +}
> diff --git a/arch/ppc/boards/kp-mcb2/config.h b/arch/ppc/boards/kp-mcb2/config.h
> new file mode 100644
> index 0000000..c3aa86c
> --- /dev/null
> +++ b/arch/ppc/boards/kp-mcb2/config.h
> @@ -0,0 +1,253 @@
> +/*
> + * (C) Copyright 2003-2005
> + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> + *
> + * (C) Copyright 2006
> + * Eric Schumann, Phytec Messatechnik GmbH
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +#include <mach/mpc5xxx.h>
> +
> +/* #define DEBUG */
> +
> +/*------------------------------------------------------------------------------------------------------------------------------------------------------
> +High Level Configuration Options
> +(easy to change)
> + ------------------------------------------------------------------------------------------------------------------------------------------------------*/

These are really long lines. Please change this to standard

/*
 * comment
 */

> +#define CONFIG_MPC5200_DDR	1	/* (with DDR-SDRAM) */
> +#define CFG_MPC5XXX_CLKIN	33333000 /* ... running at 33.333333MHz */
> +#define BOOTFLAG_COLD		0x01	/* Normal Power-On: Boot from FLASH  */
> +#define BOOTFLAG_WARM		0x02	/* Software reboot	     */
> +
> +/*------------------------------------------------------------------------------------------------------------------------------------------------------
> +Serial console configuration
> + ------------------------------------------------------------------------------------------------------------------------------------------------------*/
> +
> +#if (TEXT_BASE == 0xFF000000)		/* Boot low */
> +#define CFG_LOWBOOT		1
> +#endif
> +/* RAMBOOT will be defined automatically in memory section */
> +
> +/*------------------------------------------------------------------------------------------------------------------------------------------------------
> +IPB Bus clocking configuration.
> + ------------------------------------------------------------------------------------------------------------------------------------------------------*/
> +#define  CFG_IPBSPEED_133		/* define for 133MHz speed */
> +#if defined(CFG_IPBSPEED_133)
> +/*
> + * PCI Bus clocking configuration
> + *
> + * Actually a PCI Clock of 66 MHz is only set (in cpu_init.c) if
> + * CFG_IPBSPEED_133 is defined. This is because a PCI Clock of 66 MHz yet hasn't
> + * been tested with a IPB Bus Clock of 66 MHz.
> + */
> +#define CFG_PCISPEED_66		/* define for 66MHz speed */
> +#else
> +#undef CFG_PCISPEED_66			/* for 33MHz speed */
> +#endif
> +
> +/* we only use CS-Boot */
> +#define CFG_BOOTCS_START	0xFE000000
> +#define CFG_BOOTCS_SIZE		0x02000000
> +
> +//#define CFG_BOOTCS_CFG	0x0008FD00
> +/* one additional waitstate for the 33MHz statemachine */
> +#define CFG_BOOTCS_CFG	0x0001dd00
> +
> +#define CFG_CS0_START		CFG_BOOTCS_START
> +#define CFG_CS0_SIZE		CFG_BOOTCS_SIZE
> +//#define CFG_CS0_CFG		0x0001dd00
> +
> +/* Konzeptpark MCB2 Mainboard Additions */
> +#define CFG_CS1_START           0xfd310000
> +#define CFG_CS1_SIZE            0x00010000
> +#define CFG_CS1_CFG             0x000AD800      /* 10WS, MX, AL, CE, AS_24, DS_8 */
> +
> +#define CFG_CS2_START           0xfd320000
> +#define CFG_CS2_SIZE            0x00010000
> +#define CFG_CS2_CFG             0x000AD800      /* 10WS, MX, AL, CE, AS_24, DS_8 */
> +
> +#define CFG_CS3_START           0xfd330000
> +#define CFG_CS3_SIZE            0x00010000
> +#define CFG_CS3_CFG             0x000AD800      /* 10WS, MX, AL, CE, AS_24, DS_8 */
> +
> +
> +/* Konzeptpark MCB2 Topboard Additions */
> +#define CFG_CS4_START           0xfd400000
> +#define CFG_CS4_SIZE            0x00010000
> +#define CFG_CS4_CFG             0x000AD800      /* 10WS, MX, AL, CE, AS_24, DS_8 */
> +
> +#define CFG_CS5_START           0xfd410000
> +#define CFG_CS5_SIZE            0x00010000
> +#define CFG_CS5_CFG             0x000AD800      /* 10WS, MX, AL, CE, AS_24, DS_8 */
> +
> +#define CFG_CS6_START           0xfd420000
> +#define CFG_CS6_SIZE            0x00010000
> +#define CFG_CS6_CFG             0x000AD800      /* 10WS, MX, AL, CE, AS_24, DS_8 */
> +
> +#define CFG_CS7_START           0xfd430000
> +#define CFG_CS7_SIZE            0x00010000
> +#define CFG_CS7_CFG             0x000AD800      /* 10WS, MX, AL, CE, AS_24, DS_8 */
> +
> +/*
> + * Use also hardware protection. This seems required, as the BDI uses hardware protection
> + * Without this, U-Boot can't work with this sectors, as its protection is software only by default
> + */
> +#define CFG_FLASH_PROTECTION	1
> +#define CFG_FLASH_EMPTY_INFO
> +
> +/*------------------------------------------------------------------------------------------------------------------------------------------------------
> +  Memory map
> + ------------------------------------------------------------------------------------------------------------------------------------------------------*/
> +#define CFG_MBAR		0xF0000000 /* MBAR hast to be switched by other bootloader or debugger config  */
> +#define CFG_SDRAM_BASE		0x00000000
> +
> +/* Use SRAM until RAM will be available */
> +#define CFG_INIT_RAM_ADDR	MPC5XXX_SRAM
> +#define CFG_INIT_RAM_SIZE	MPC5XXX_SRAM_SIZE	/* End of used area in DPRAM */
> +#define CONFIG_EARLY_INITDATA_SIZE 0x100
> +
> +#define CFG_BOOTMAPSZ		(8 << 20)	/* Initial Memory map for Linux */
> +
> +/*------------------------------------------------------------------------------------------------------------------------------------------------------
> + GPIO configuration
> + ------------------------------------------------------------------------------------------------------------------------------------------------------*/
> +//#define CFG_GPS_PORT_CONFIG	0x00558c10 /* PSC6=UART, PSC3=UART ; Ether=100MBit with MD */

Please remove this line.

> +/*
> + * GPIO configuration
> + *
> + * Pin mapping:
> + *
> + * [29:31] = 01x
> + * PSC1_0 -> AC97 SDATA out
> + * PSC1_1 -> AC97 SDTA in
> + * PSC1_2 -> AC97 SYNC out
> + * PSC1_3 -> AC97 bitclock out
> + * PSC1_4 -> AC97 reset out
> + *
> + * [25:27] = 001
> + * PSC2_0 -> CAN 1 Tx out
> + * PSC2_1 -> CAN 1 Rx in
> + * PSC2_2 -> CAN 2 Tx out
> + * PSC2_3 -> CAN 2 Rx in
> + * PSC2_4 -> GPIO (claimed for ATA reset, active low)
> + *
> + * [20:23] = 1100
> + * PSC3_0 -> UART Tx out
> + * PSC3_1 -> UART Rx in
> + * PSC3_2 -> UART RTS (in/out FIXME)
> + * PSC3_3 -> UART CTS (in/out FIXME)
> + * PSC3_4 -> LocalPlus Bus CS6 \
> + * PSC3_5 -> LocalPlus Bus CS7 / --> see [4] and [5]
> + * PSC3_6 -> dedicated SPI MOSI out (master case)
> + * PSC3_7 -> dedicated SPI MISO in (master case)
> + * PSC3_8 -> dedicated SPI SS out (master case)
> + * PSC3_9 -> dedicated SPI CLK out (master case)
> + *
> + * [18:19] = 01
> + * USB_0 -> USB OE out
> + * USB_1 -> USB Tx- out
> + * USB_2 -> USB Tx+ out
> + * USB_3 -> USB RxD (in/out FIXME)
> + * USB_4 -> USB Rx+ in
> + * USB_5 -> USB Rx- in
> + * USB_6 -> USB PortPower out
> + * USB_7 -> USB speed out
> + * USB_8 -> USB suspend (in/out FIXME)
> + * USB_9 -> USB overcurrent in
> + *
> + * [17] = 0
> + * USB differential mode
> + *
> + * [16] = 0
> + * PCI enabled
> + *
> + * [12:15] = 0101
> + * ETH_0 -> ETH Txen
> + * ETH_1 -> ETH TxD0
> + * ETH_2 -> ETH TxD1
> + * ETH_3 -> ETH TxD2
> + * ETH_4 -> ETH TxD3
> + * ETH_5 -> ETH Txerr
> + * ETH_6 -> ETH MDC
> + * ETH_7 -> ETH MDIO
> + * ETH_8 -> ETH RxDv
> + * ETH_9 -> ETH RxCLK
> + * ETH_10 -> ETH Collision
> + * ETH_11 -> ETH TxD
> + * ETH_12 -> ETH RxD0
> + * ETH_13 -> ETH RxD1
> + * ETH_14 -> ETH RxD2
> + * ETH_15 -> ETH RxD3
> + * ETH_16 -> ETH Rxerr
> + * ETH_17 -> ETH CRS
> + *
> + * [9:11] = 101
> + * PSC6_0 -> UART RxD in
> + * PSC6_1 -> UART CTS (in/out FIXME)
> + * PSC6_2 -> UART TxD out
> + * PSC6_3 -> UART RTS (in/out FIXME)
> + *
> + * [2:3/6:7] = 00/11
> + * TMR_0 -> ATA_CS0 out
> + * TMR_1 -> ATA_CS1 out
> + * TMR_2 -> GPIO
> + * TMR_3 -> GPIO
> + * TMR_4 -> GPIO
> + * TMR_5 -> GPIO
> + * TMR_6 -> GPIO
> + * TMR_7 -> GPIO
> + * I2C_0 -> I2C 1 Clock out
> + * I2C_1 -> I2C 1 IO in/out
> + * I2C_2 -> I2C 2 Clock out
> + * I2C_3 -> I2C 2 IO in/out
> + *
> + * [4] = 1
> + * PSC3_5 is used as CS7
> + *
> + * [5] = 1
> + * PSC3_4 is used as CS6
> + *
> + * [1] = 0
> + * gpio_wkup_7 is GPIO
> + *
> + * [0] = 0
> + * gpio_wkup_6 is GPIO
> + *
> + */
> +#define CFG_GPS_PORT_CONFIG	0x0f551c12
> +
> +/*------------------------------------------------------------------------------------------------------------------------------------------------------
> + Various low-level settings
> + ------------------------------------------------------------------------------------------------------------------------------------------------------*/
> +#define CFG_HID0_INIT		HID0_ICE | HID0_ICFI
> +#define CFG_HID0_FINAL		HID0_ICE
> +
> +#define CFG_CS_BURST		0x00000000
> +#define CFG_CS_DEADCYCLE	0x33333333
> +
> +#define OF_CPU			"PowerPC,5200@0"
> +#define OF_TBCLK		CFG_MPC5XXX_CLKIN
> +#define OF_SOC                  "soc5200@f0000000"
> +
> +#endif /* __CONFIG_H */
> diff --git a/arch/ppc/boards/kp-mcb2/kp-mcb2.c b/arch/ppc/boards/kp-mcb2/kp-mcb2.c
> new file mode 100644
> index 0000000..f4574c1
> --- /dev/null
> +++ b/arch/ppc/boards/kp-mcb2/kp-mcb2.c
> @@ -0,0 +1,349 @@
> +/*
> + * (C) Copyright 2003
> + * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
> + *
> + * (C) Copyright 2004
> + * Mark Jonas, Freescale Semiconductor, mark.jonas@motorola.com.
> + *
> + * (C) Copyright 2006
> + * Eric Schumann, Phytec Messtechnik GmbH
> + *
> + * (C) Copyright 2010
> + * Carsten Schlote, konzeptpark GmbH
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +#define DEBUG

This shouldn't be defined

> +
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <mach/mpc5xxx.h>
> +#include <mach/fec.h>
> +#include <types.h>
> +#include <partition.h>
> +#include <mem_malloc.h>
> +#include <reloc.h>
> +
> +int cfi_flash_hwdetect (struct device_d *cfi_dev)
> +{

static

> +	int width, id=0;
> +	ulong mb=0, dev_size;
> +	ulong base = 0xfe000000;

base is always casted to (vu_short *). Maybe it's better to make this
a vu_short * in the first place?

> +	ulong lpb;
> +
> +	debug("BootCS: cfg=%08x\n", *(vu_long *)MPC5XXX_BOOTCS_CFG );
> +	debug("CS0: cfg=%08x\n", *(vu_long *)MPC5XXX_CS0_CFG );
> +	debug("*%08x = %04x\n", (vu_short *)base+0x100, *(vu_short *)base );
> +
> +	lpb = *(vu_long *)MPC5XXX_CS0_CFG;
> +
> +	*(vu_long *)MPC5XXX_BOOTCS_START = START_REG(base);
> +	*(vu_long *)MPC5XXX_BOOTCS_STOP = STOP_REG(base, 32 * 1024 * 1024);
> +	/*
> +	 * we run the PCI bus with 33 1/3 MHz. The flash requires 75ns accesstime.
> +	 * 2 base waitstates plus one additional waitstate makes the access as fast
> +	 * as possible (=90ns)
> +	 */
> +	lpb &=  0x0000dfc0; /* make it writable and mask out wait stages */
> +	lpb |=  0x0001d000; /* adjust wait stages */
> +	*(vu_long *)MPC5XXX_CS0_CFG = lpb;
> +
> +	/* get flash width */
> +	width = (lpb >> 8) & 0x3;
> +
> +	switch (width) {
> +	case 0: /* 8 bit */
> +		*(vu_char *)base = 0x90;
> +		id = *(vu_char *)(base + 3);
> +		*(vu_char *)base = 0xff;
> +		break;
> +	case 1: /* 16 bit */
> +		debug("*%08x = %04x\n", (vu_short *)base, *(vu_short *)base );
> +		*(vu_short *)base = 0x90;
> +		debug("*%08x = %04x\n", (vu_short *)base, *(vu_short *)base );
> +		id = *(vu_short *)(base + 2) & 0xff;
> +		debug("*%08x = %04x\n", (vu_short *)base, *(vu_short *)base );
> +		*(vu_short *)base = 0xff;
> +		debug("*%08x = %04x\n", (vu_short *)base, *(vu_short *)base );
> +		break;
> +	case 3: /* 32 bit */
> +		*(vu_short *)base = 0x90;
> +		id = *(vu_short *)(base + 4) & 0xff;
> +		*(vu_short *)base = 0xff;
> +		break;
> +	}
> +
> +	switch (id) {
> +	case 0x16:
> +		mb = 4;
> +		break;
> +	case 0x17:
> +		mb = 8;
> +		break;
> +	case 0x18:
> +		mb = 16;
> +		break;
> +	case 0x20:
> +		mb = 8;
> +		break;
> +	case 0x21:
> +		mb = 16;
> +		break;
> +	case 0x22:
> +		mb = 32;
> +		break;
> +	}
> +
> +	/* On these boards everything which is 32bit wide consists
> +	 * of two 16bit Flashes
> +	 */
> +	if (width == 3)
> +		mb <<= 1;
> +
> +	/*
> +	 * On this platform one chip select can only handle up to 32MiB.
> +	 * So we must limit boot cs's baseaddress to 0xfe000000 and above
> +         */
> +	if (mb > 32)
> +		dev_size = 32;
> +	else
> +		dev_size = mb;
> +
> +	debug("Flash configurator: width=%x id=%x dev_size=%d\n", width, id, dev_size);
> +	if (dev_size) {
> +		*(vu_long *)MPC5XXX_BOOTCS_START = START_REG(0x0u - (dev_size << 20));
> +		*(vu_long *)MPC5XXX_BOOTCS_STOP = STOP_REG(0x0u - (dev_size << 20), (dev_size << 20));
> +
> +		/*
> +		 * the developer is responsible to setup other chip select lines to
> +		 * reach other parts of the device if its larger than 32MiB
> +		 */
> +	}
> +	cfi_dev->map_base = 0x0u - (dev_size << 20);
> +	cfi_dev->size = (dev_size << 20);
> +	
> +	debug("BootCS: cfg=%08x\n", *(vu_long *)MPC5XXX_BOOTCS_CFG );
> +	debug("CS0: cfg=%08x\n", *(vu_long *)MPC5XXX_CS0_CFG );
> +
> +	return 0;
> +}
> +
> +struct device_d cfi_dev = {
> +	.name     = "cfi_flash",
> +	.map_base = 0xfe000000,
> +	.size     = 32 * 1024 * 1024,
> +};

static

Also, map_base and size shouldn't be initialized here as they get
overwriiten anyway. Maybe you could add a 'initialized during runtime'
comment instead.

> +
> +static struct memory_platform_data ram_pdata = {
> +	.name = "ram0",
> +	.flags = DEVFS_RDWR,
> +};
> +
> +struct device_d sdram_dev = {
> +	.name     = "mem",
> +	.map_base = 0x0,
> +	.size     = 128 * 1024 * 1024,
> +	.platform_data = &ram_pdata,
> +};

static

> +
> +static struct mpc5xxx_fec_platform_data fec_info = {
> +	.xcv_type = MII100,
> +};
> +
> +struct device_d eth_dev = {
> +	.name		= "fec_mpc5xxx",
> +	.map_base	= MPC5XXX_FEC,
> +	.platform_data	= &fec_info,
> +};

static

> +
> +static int devices_init (void)
> +{
> +	cfi_flash_hwdetect(&cfi_dev);
> +	if (cfi_dev.size)
> +		register_device(&cfi_dev);
> +	register_device(&sdram_dev);
> +	register_device(&eth_dev);
> +
> +	devfs_add_partition("nor0", 0x00000000, 0x0040000, PARTITION_FIXED, "bb-low");
> +	devfs_add_partition("nor0", 0x00040000, 0x1d00000, PARTITION_FIXED, "filesystem");
> +	devfs_add_partition("nor0", 0x01d40000, 0x01c0000, PARTITION_FIXED, "kernel");
> +	devfs_add_partition("nor0", 0x01f00000, 0x0080000, PARTITION_FIXED, "self0");
> +	devfs_add_partition("nor0", 0x01f80000, 0x0020000, PARTITION_FIXED, "dev-tree");
> +	devfs_add_partition("nor0", 0x01fa0000, 0x0040000, PARTITION_FIXED, "env0");

You assume a fixed flash size here while the actual size is probed
above. Either you have a fixed flash size in which case you can remove
the probing code above or the flash size is dynamic in which case you
should take it into account here.

> +
> +	return 0;
> +}
> +
> +device_initcall(devices_init);
> +
> +static struct device_d psc3 = {
> +	.name     = "mpc5xxx_serial",
> +	.map_base = MPC5XXX_PSC3,
> +	.size     = 4096,
> +};
> +
> +static struct device_d psc6 = {
> +	.name     = "mpc5xxx_serial",
> +	.map_base = MPC5XXX_PSC6,
> +	.size     = 4096,
> +};
> +
> +static int console_init(void)
> +{
> +	register_device(&psc3);
> +	register_device(&psc6);
> +	return 0;
> +}
> +
> +console_initcall(console_init);
> +
> +void *get_early_console_base(const char *name)
> +{
> +	if (!strcmp(name, RELOC("psc3")))
> +		return (void *)MPC5XXX_PSC3;
> +	if (!strcmp(name, RELOC("psc6")))
> +		return (void *)MPC5XXX_PSC6;
> +	return NULL;
> +}
> +
> +#include "mt46v32m16-75.h"
> +
> +static void sdram_start (int hi_addr)
> +{
> +	long hi_addr_bit = hi_addr ? 0x01000000 : 0;
> +
> +	/* unlock mode register */
> +	*(vu_long *)MPC5XXX_SDRAM_CTRL = SDRAM_CONTROL | 0x80000000 | hi_addr_bit;
> +	__asm__ volatile ("sync");
> +
> +	/* precharge all banks */
> +	*(vu_long *)MPC5XXX_SDRAM_CTRL = SDRAM_CONTROL | 0x80000002 | hi_addr_bit;
> +	__asm__ volatile ("sync");
> +
> +#if SDRAM_DDR
> +	/* set mode register: extended mode */
> +	*(vu_long *)MPC5XXX_SDRAM_MODE = SDRAM_EMODE;
> +	__asm__ volatile ("sync");
> +
> +	/* set mode register: reset DLL */
> +	*(vu_long *)MPC5XXX_SDRAM_MODE = SDRAM_MODE | 0x04000000;
> +	__asm__ volatile ("sync");
> +#endif
> +
> +	/* precharge all banks */
> +	*(vu_long *)MPC5XXX_SDRAM_CTRL = SDRAM_CONTROL | 0x80000002 | hi_addr_bit;
> +	__asm__ volatile ("sync");
> +
> +	/* auto refresh */
> +	*(vu_long *)MPC5XXX_SDRAM_CTRL = SDRAM_CONTROL | 0x80000004 | hi_addr_bit;
> +	__asm__ volatile ("sync");
> +
> +	/* set mode register */
> +	*(vu_long *)MPC5XXX_SDRAM_MODE = SDRAM_MODE;
> +	__asm__ volatile ("sync");
> +
> +	/* normal operation */
> +	*(vu_long *)MPC5XXX_SDRAM_CTRL = SDRAM_CONTROL | hi_addr_bit;
> +	__asm__ volatile ("sync");
> +}
> +
> +/*
> + * ATTENTION: Although partially referenced initdram does NOT make real use
> + *            use of CFG_SDRAM_BASE. The code does not work if CFG_SDRAM_BASE
> + *            is something else than 0x00000000.
> + */

Then we should better stop using CFG_SDRAM_BASE and remove the comment
here.

> +
> +long int initdram (int board_type)
> +{
> +	ulong dramsize = 0;
> +	ulong dramsize2 = 0;
> +
> +	ulong test1, test2;
> +
> +	if ((ulong)RELOC(initdram) > (2 << 30)) {
> +		/* setup SDRAM chip selects */
> +		*(vu_long *)MPC5XXX_SDRAM_CS0CFG = 0x0000001b;/* 256MB at 0x0 */
> +		*(vu_long *)MPC5XXX_SDRAM_CS1CFG = 0x10000000;/* disabled */
> +		__asm__ volatile ("sync");
> +
> +		/* setup config registers */
> +		*(vu_long *)MPC5XXX_SDRAM_CONFIG1 = SDRAM_CONFIG1;
> +		*(vu_long *)MPC5XXX_SDRAM_CONFIG2 = SDRAM_CONFIG2;
> +		__asm__ volatile ("sync");
> +
> +#if SDRAM_DDR && SDRAM_TAPDELAY
> +		/* set tap delay */
> +		*(vu_long *)MPC5XXX_CDM_PORCFG = SDRAM_TAPDELAY;
> +		__asm__ volatile ("sync");
> +#endif
> +
> +		/* find RAM size using SDRAM CS0 only */
> +		sdram_start(0);
> +		test1 = get_ram_size((ulong *)CFG_SDRAM_BASE, 0x10000000);
> +		sdram_start(1);
> +		test2 = get_ram_size((ulong *)CFG_SDRAM_BASE, 0x10000000);
> +		if (test1 > test2) {
> +			sdram_start(0);
> +			dramsize = test1;
> +		} else {
> +			dramsize = test2;
> +		}
> +
> +		/* memory smaller than 1MB is impossible */
> +		if (dramsize < (1 << 20)) {
> +			dramsize = 0;
> +		}
> +
> +		/* set SDRAM CS0 size according to the amount of RAM found */
> +		if (dramsize > 0) {
> +			*(vu_long *)MPC5XXX_SDRAM_CS0CFG = 0x13 + __builtin_ffs(dramsize >> 20) - 1;
> +		} else {
> +			*(vu_long *)MPC5XXX_SDRAM_CS0CFG = 0; /* disabled */
> +		}
> +	} else
> +		puts(RELOC("skipping sdram initialization\n"));
> +
> +	/* retrieve size of memory connected to SDRAM CS0 */
> +	dramsize = *(vu_long *)MPC5XXX_SDRAM_CS0CFG & 0xFF;
> +	if (dramsize >= 0x13) {
> +		dramsize = (1 << (dramsize - 0x13)) << 20;
> +	} else {
> +		dramsize = 0;
> +	}
> +
> +	/* retrieve size of memory connected to SDRAM CS1 */
> +	dramsize2 = *(vu_long *)MPC5XXX_SDRAM_CS1CFG & 0xFF;
> +	if (dramsize2 >= 0x13) {
> +		dramsize2 = (1 << (dramsize2 - 0x13)) << 20;
> +	} else {
> +		dramsize2 = 0;
> +	}
> +
> +	return dramsize + dramsize2;
> +}
> +
> +#if defined(CONFIG_OF_FLAT_TREE) && defined(CONFIG_OF_BOARD_SETUP)
> +void
> +ft_board_setup(void *blob, bd_t *bd)
> +{
> +	ft_cpu_setup(blob, bd);
> +}
> +#endif
> +
> diff --git a/arch/ppc/boards/kp-mcb2/kp-mcb2.dox b/arch/ppc/boards/kp-mcb2/kp-mcb2.dox
> new file mode 100644
> index 0000000..db64ba9
> --- /dev/null
> +++ b/arch/ppc/boards/kp-mcb2/kp-mcb2.dox
> @@ -0,0 +1,8 @@
> +/** @page kp-mcb2 konzeptpark MCB2
> +
> +This CPU card is based on a Freescale MPC5200B CPU. The card is shipped with:
> +
> +- 32MiB NOR type Flash Memory
> +- 128MiB synchronous dynamic RAM
> +
> +*/
> diff --git a/arch/ppc/boards/kp-mcb2/mt46v32m16-75.h b/arch/ppc/boards/kp-mcb2/mt46v32m16-75.h
> new file mode 100644
> index 0000000..4d191f1
> --- /dev/null
> +++ b/arch/ppc/boards/kp-mcb2/mt46v32m16-75.h
> @@ -0,0 +1,46 @@
> +/*
> + * (C) Copyright 2004
> + * Mark Jonas, Freescale Semiconductor, mark.jonas@motorola.com.
> + *
> + * Eric Schumann, Phytec Messtechnik
> + * adapted for mt46v32m16-75 DDR-RAM
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#define SDRAM_DDR	1		/* is DDR */
> +
> +/* Settings for XLB = 132 MHz */
> +#define SDRAM_MODE	0x018D0000
> +#define SDRAM_EMODE	0x40090000
> +#define SDRAM_CONTROL	0x715f0f00
> +#define SDRAM_CONFIG1	0x73722930
> +#define SDRAM_CONFIG2	0x47770000
> +
> +
> +/* Settings for XLB = 99 MHz */
> +/*
> +#define SDRAM_MODE	0x008D0000
> +#define SDRAM_EMODE	0x40090000
> +#define SDRAM_CONTROL	0x714b0f00
> +#define SDRAM_CONFIG1	0x63611730
> +#define SDRAM_CONFIG2	0x47670000
> +*/
> +
> +#define SDRAM_TAPDELAY	0x10000000 /* reserved Bit in MPC5200 B3-Step */
> diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
> index 5da6a5b..ce8815d 100644
> --- a/arch/ppc/mach-mpc5xxx/Kconfig
> +++ b/arch/ppc/mach-mpc5xxx/Kconfig
> @@ -3,7 +3,7 @@ menu "Board specific settings       "
>  config MACH_PHYCORE_MPC5200B_TINY_REV
>  	int "Board Revision"
>  	default 1
> -	depends on MACH_PHYCORE_MPC5200B_TINY
> +	depends on MACH_PHYCORE_MPC5200B_TINY || MACH_KONZEPTPARK_MCB2

You don't use MACH_PHYCORE_MPC5200B_TINY_REV and it looks strange to set
it for your board.

>  	help
>  	  Revision 0 and revision 1 of the tiny board have
>  	  incompatible flash settings. Unless you have a very
> @@ -12,4 +12,5 @@ config MACH_PHYCORE_MPC5200B_TINY_REV
>  endmenu
>  
>  config EARLY_CONSOLE_PORT
> -	default "psc3" if MACH_PHYCORE_MPC5200B_TINY
> \ No newline at end of file
> +	default "psc3" if MACH_PHYCORE_MPC5200B_TINY
> +	default "psc3" if MACH_KONZEPTPARK_MCB2
> -- 
> 1.7.2.2.277.gb49c4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

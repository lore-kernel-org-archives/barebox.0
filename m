Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f179.google.com ([209.85.217.179])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVNZb-0003QQ-Jf
 for barebox@lists.infradead.org; Thu, 25 Apr 2013 14:55:04 +0000
Received: by mail-lb0-f179.google.com with SMTP id t1so2905224lbd.38
 for <barebox@lists.infradead.org>; Thu, 25 Apr 2013 07:54:56 -0700 (PDT)
Date: Thu, 25 Apr 2013 18:54:09 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130425185409.f8a3b68b1aa6eca504293fea@gmail.com>
In-Reply-To: <1366621553-8947-1-git-send-email-linux@rempel-privat.de>
References: <1366621553-8947-1-git-send-email-linux@rempel-privat.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3][WiP] add atheros MIPS based ar2313 WiSoC chips
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <bug-track@fisher-privat.net>

On Mon, 22 Apr 2013 11:05:53 +0200
Oleksij Rempel <linux@rempel-privat.de> wrote:

> From: Oleksij Rempel <bug-track@fisher-privat.net>
> =

> ---
>  arch/mips/Kconfig                                  |   10 +
>  arch/mips/Makefile                                 |    3 +
>  arch/mips/boards/netgear-wg102/Kconfig             |    6 +
>  arch/mips/boards/netgear-wg102/Makefile            |    1 +
>  arch/mips/boards/netgear-wg102/config.h            |   15 +
>  arch/mips/boards/netgear-wg102/netgear-wg102.dox   |   38 +++
>  arch/mips/boards/netgear-wg102/serial.c            |   40 +++
>  arch/mips/mach-ar531x/Kconfig                      |   17 ++
>  arch/mips/mach-ar531x/Makefile                     |    3 +
>  arch/mips/mach-ar531x/ar531x.c                     |  204 ++++++++++++++
>  arch/mips/mach-ar531x/board.c                      |  182 ++++++++++++
>  .../mach-ar531x/include/mach/ar231x_platform.h     |   82 ++++++
>  arch/mips/mach-ar531x/include/mach/ar531x_regs.h   |  295 ++++++++++++++=
++++++
>  arch/mips/mach-ar531x/include/mach/debug_ll.h      |   31 ++
>  arch/mips/mach-ar531x/lowlevel_init.S              |   83 ++++++
>  arch/mips/mach-ar531x/mach-ar531x.dox              |    7 +
>  16 files changed, 1017 insertions(+)
>  create mode 100644 arch/mips/boards/netgear-wg102/Kconfig
>  create mode 100644 arch/mips/boards/netgear-wg102/Makefile
>  create mode 100644 arch/mips/boards/netgear-wg102/config.h
>  create mode 100644 arch/mips/boards/netgear-wg102/netgear-wg102.dox
>  create mode 100644 arch/mips/boards/netgear-wg102/serial.c
>  create mode 100644 arch/mips/mach-ar531x/Kconfig
>  create mode 100644 arch/mips/mach-ar531x/Makefile
>  create mode 100644 arch/mips/mach-ar531x/ar531x.c
>  create mode 100644 arch/mips/mach-ar531x/board.c
>  create mode 100644 arch/mips/mach-ar531x/include/mach/ar231x_platform.h
>  create mode 100644 arch/mips/mach-ar531x/include/mach/ar531x_regs.h
>  create mode 100644 arch/mips/mach-ar531x/include/mach/debug_ll.h
>  create mode 100644 arch/mips/mach-ar531x/lowlevel_init.S
>  create mode 100644 arch/mips/mach-ar531x/mach-ar531x.dox
> =

> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 947edcf..e3b425f 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -37,6 +37,15 @@ config MACH_MIPS_MALTA
>  	select SYS_SUPPORTS_BIG_ENDIAN
>  	select HAS_DEBUG_LL
>  =

> +config MACH_MIPS_AR531X
> +	bool "Atheros ar531x-based boards"
> +	select CSRC_R4K_LIB
> +	select DRIVER_SERIAL_NS16550
> +	select SYS_HAS_CPU_MIPS32_R1
> +	select SYS_SUPPORTS_32BIT_KERNEL
> +	select SYS_SUPPORTS_BIG_ENDIAN
> +	select HAS_DEBUG_LL
> +
>  config MACH_MIPS_BCM47XX
>  	bool "Broadcom BCM47xx-based boards"
>  	select CSRC_R4K_LIB
> @@ -56,6 +65,7 @@ config MACH_MIPS_XBURST
>  endchoice
>  =

>  source arch/mips/mach-malta/Kconfig
> +source arch/mips/mach-ar531x/Kconfig
>  source arch/mips/mach-bcm47xx/Kconfig
>  source arch/mips/mach-xburst/Kconfig
>  =

> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 3c565a4..a79ffdb 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -72,6 +72,9 @@ LDFLAGS_barebox +=3D -nostdlib
>  machine-$(CONFIG_MACH_MIPS_MALTA)	:=3D malta
>  board-$(CONFIG_BOARD_QEMU_MALTA)	:=3D qemu-malta
>  =

> +machine-$(CONFIG_MACH_MIPS_AR531X)	:=3D ar531x
> +board-$(CONFIG_BOARD_NETGEAR_WG102)	:=3D netgear-wg102
> +
>  machine-$(CONFIG_MACH_MIPS_BCM47XX)	:=3D bcm47xx
>  board-$(CONFIG_BOARD_DLINK_DIR320)	:=3D dlink-dir-320
>  =

> diff --git a/arch/mips/boards/netgear-wg102/Kconfig b/arch/mips/boards/ne=
tgear-wg102/Kconfig
> new file mode 100644
> index 0000000..ceca6de
> --- /dev/null
> +++ b/arch/mips/boards/netgear-wg102/Kconfig
> @@ -0,0 +1,6 @@
> +if BOARD_NETGEAR_WG102
> +
> +config BOARDINFO
> +	default "Netgear WG102"
> +
> +endif
> diff --git a/arch/mips/boards/netgear-wg102/Makefile b/arch/mips/boards/n=
etgear-wg102/Makefile
> new file mode 100644
> index 0000000..ff1a655
> --- /dev/null
> +++ b/arch/mips/boards/netgear-wg102/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_DRIVER_SERIAL_NS16550) +=3D serial.o
> diff --git a/arch/mips/boards/netgear-wg102/config.h b/arch/mips/boards/n=
etgear-wg102/config.h
> new file mode 100644
> index 0000000..db5f011
> --- /dev/null
> +++ b/arch/mips/boards/netgear-wg102/config.h
> @@ -0,0 +1,15 @@
> +/*
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
> + *
> + */
> +
> +/* nothing special yet */
> diff --git a/arch/mips/boards/netgear-wg102/netgear-wg102.dox b/arch/mips=
/boards/netgear-wg102/netgear-wg102.dox
> new file mode 100644
> index 0000000..d0f5869
> --- /dev/null
> +++ b/arch/mips/boards/netgear-wg102/netgear-wg102.dox
> @@ -0,0 +1,38 @@
> +/** @page dlink_dir_320 D-Link DIR-320 wireless router


Your board is not a replica of DIR-320, so
please change the contents of this file.


> +The router has
> +@li BCM5354 SoC;
> +@li 32 MiB SDRAM;
> +@li 4 MiB NOR type Flash Memory;
> +@li RS232 serial interface (LV-TTL levels on board!);
> +@li 1xUSB interface;
> +@li 4 + 1 ethernet interfaces;
> +@li 802.11b/g (WiFi) interface;
> +@li JTAG interface;
> +@li 5 LEDs;
> +@li 2 buttons.
> +
> +The router uses CFE as firmware.
> +
> +Barebox can be started from CFE using tftp.
> +You must setup tftp-server on host 192.168.0.1.
> +Put your barebox.bin to tftp-server directory
> +(usual /tftpboot or /srv/tftp).
> +Connect your DIR-320 to your tftp-server network via
> +one of four <LAN> sockets.
> +
> +Next, setup network on DIR-320 and run barebox.bin, e.g.:
> +@verbatim
> +CFE> ifconfig eth0 -addr=3D192.168.0.99
> +CFE> boot -tftp -addr=3Da0800000 -raw 192.168.0.1:barebox.bin
> +@endverbatim
> +
> +DIR-320 links:
> +@li http://www.dlink.com.au/products/?pid=3D768
> +@li http://wiki.openwrt.org/toh/d-link/dir-320
> +
> +CFE links:
> +@li http://www.broadcom.com/support/communications_processors/downloads.=
php#cfe
> +@li http://www.linux-mips.org/wiki/CFE
> +
> +*/
> diff --git a/arch/mips/boards/netgear-wg102/serial.c b/arch/mips/boards/n=
etgear-wg102/serial.c
> new file mode 100644
> index 0000000..e05da34
> --- /dev/null
> +++ b/arch/mips/boards/netgear-wg102/serial.c
> @@ -0,0 +1,40 @@
> +/*
> + * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <types.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <ns16550.h>
> +#include <io.h>
> +#include <asm/common.h>
> +#if 0
> +static struct NS16550_plat serial_plat =3D {
> +	.clock =3D 9100,
> +	.shift =3D 0,
> +};
> +
> +static int dir320_console_init(void)
> +{
> +	/* Register the serial port */
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, DEBUG_LL_UART_ADDR, 8,
> +			IORESOURCE_MEM_8BIT, &serial_plat);
> +
> +	return 0;
> +}
> +console_initcall(dir320_console_init);
> +#endif

You have commented this file (serial.c).

You can move ar531x_console_init() here. Or you can drop it completely.
 =


> diff --git a/arch/mips/mach-ar531x/Kconfig b/arch/mips/mach-ar531x/Kconfig
> new file mode 100644
> index 0000000..78d095b
> --- /dev/null
> +++ b/arch/mips/mach-ar531x/Kconfig
> @@ -0,0 +1,17 @@
> +if MACH_MIPS_AR531X
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0xa0800000
> +
> +choice
> +	prompt "Board type"
> +
> +config BOARD_NETGEAR_WG102
> +	bool "Netgear WG102"
> +
> +endchoice
> +
> +source arch/mips/boards/netgear-wg102/Kconfig
> +
> +endif
> diff --git a/arch/mips/mach-ar531x/Makefile b/arch/mips/mach-ar531x/Makef=
ile
> new file mode 100644
> index 0000000..00c5b3e
> --- /dev/null
> +++ b/arch/mips/mach-ar531x/Makefile
> @@ -0,0 +1,3 @@
> +obj-y +=3D ar531x.o
> +obj-y +=3D lowlevel_init.o
> +obj-y +=3D board.o
> diff --git a/arch/mips/mach-ar531x/ar531x.c b/arch/mips/mach-ar531x/ar531=
x.c
> new file mode 100644
> index 0000000..7a3fc97
> --- /dev/null
> +++ b/arch/mips/mach-ar531x/ar531x.c
> @@ -0,0 +1,204 @@
> +/*
> + * This file is subject to the terms and conditions of the GNU General P=
ublic
> + * License.  See the file "COPYING" in the main directory of this archive
> + * for more details.
> + *
> + * Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
> + * Copyright (C) 2006 FON Technology, SL.
> + * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
> + * Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
> + */
> +
> +/*
> + * Platform devices for Atheros SoCs
> + */
> +
> +
> +#include <common.h>
> +#include <io.h>
> +#include <mach/ar531x_regs.h>
> +#include <mach/ar231x_platform.h>
> +#include <mach/debug_ll.h>
> +#include <ns16550.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <linux/types.h>
> +
> +struct ar231x_board_data ar231x_board;
> +
> +void __noreturn reset_cpu(ulong addr)
> +{
> +	printf("reseting cpu\n");
> +	__raw_writel(0x10000,
> +			(char *)KSEG1ADDR(AR531X_WD_TIMER));
> +	__raw_writel(AR531X_WD_CTRL_RESET,
> +			(char *)KSEG1ADDR(AR531X_WD_CTRL));
> +	while(1);

You can use "unreachable();" instead of "while(1);" here.

> +}
> +EXPORT_SYMBOL(reset_cpu);
> +
> +/*
> + * This table is indexed by bits 5..4 of the CLOCKCTL1 register
> + * to determine the predevisor value.
> + */
> +static int CLOCKCTL1_PREDIVIDE_TABLE[4] =3D { 1, 2, 4, 5 };
> +
> +
> +static unsigned int
> +ar5312_cpu_frequency(void)
> +{
> +	unsigned int predivide_mask, predivide_shift;
> +	unsigned int multiplier_mask, multiplier_shift;
> +	unsigned int clockCtl1, preDivideSelect, preDivisor, multiplier;
> +	unsigned int doubler_mask;
> +	u32 devid;
> +
> +	devid =3D __raw_readl((char *)KSEG1ADDR(AR531X_REV));
> +	devid &=3D AR531X_REV_MAJ;
> +	devid >>=3D AR531X_REV_MAJ_S;
> +	if (devid =3D=3D AR531X_REV_MAJ_AR2313) {
> +		predivide_mask =3D AR2313_CLOCKCTL1_PREDIVIDE_MASK;
> +		predivide_shift =3D AR2313_CLOCKCTL1_PREDIVIDE_SHIFT;
> +		multiplier_mask =3D AR2313_CLOCKCTL1_MULTIPLIER_MASK;
> +		multiplier_shift =3D AR2313_CLOCKCTL1_MULTIPLIER_SHIFT;
> +		doubler_mask =3D AR2313_CLOCKCTL1_DOUBLER_MASK;
> +	} else { /* AR5312 and AR2312 */
> +		predivide_mask =3D AR2312_CLOCKCTL1_PREDIVIDE_MASK;
> +		predivide_shift =3D AR2312_CLOCKCTL1_PREDIVIDE_SHIFT;
> +		multiplier_mask =3D AR2312_CLOCKCTL1_MULTIPLIER_MASK;
> +		multiplier_shift =3D AR2312_CLOCKCTL1_MULTIPLIER_SHIFT;
> +		doubler_mask =3D AR2312_CLOCKCTL1_DOUBLER_MASK;
> +	}
> +
> +
> +	/*
> +	 * Clocking is derived from a fixed 40MHz input clock.
> +	 *
> +	 *  cpuFreq =3D InputClock * MULT (where MULT is PLL multiplier)
> +	 *  sysFreq =3D cpuFreq / 4	   (used for APB clock, serial,
> +	 *							   flash, Timer, Watchdog Timer)
> +	 *
> +	 *  cntFreq =3D cpuFreq / 2	   (use for CPU count/compare)
> +	 *
> +	 * So, for example, with a PLL multiplier of 5, we have
> +	 *
> +	 *  cpuFreq =3D 200MHz
> +	 *  sysFreq =3D 50MHz
> +	 *  cntFreq =3D 100MHz
> +	 *
> +	 * We compute the CPU frequency, based on PLL settings.
> +	 */
> +
> +	clockCtl1 =3D __raw_readl((char *)KSEG1ADDR(AR5312_CLOCKCTL1));
> +	preDivideSelect =3D (clockCtl1 & predivide_mask) >> predivide_shift;
> +	preDivisor =3D CLOCKCTL1_PREDIVIDE_TABLE[preDivideSelect];
> +	multiplier =3D (clockCtl1 & multiplier_mask) >> multiplier_shift;
> +
> +	if (clockCtl1 & doubler_mask) {
> +		multiplier =3D multiplier << 1;
> +	}
> +	return (40000000 / preDivisor) * multiplier;
> +}
> +
> +static unsigned int
> +ar5312_sys_frequency(void)
> +{
> +	return ar5312_cpu_frequency() / 4;
> +}
> +
> +/*
> + * shutdown watchdog
> + */
> +static int watchdog_init(void)
> +{
> +	printf("Disable watchdog.\n");
> +	__raw_writeb(AR531X_WD_CTRL_IGNORE_EXPIRATION,
> +					(char *)KSEG1ADDR(AR531X_WD_CTRL));
> +        return 0;
> +}
> +
> +static void flash_init(void)
> +{
> +	u32 flash_size;
> +	u32 ctl, old_ctl;
> +
> +    /*
> +     * Configure flash bank 0.
> +     * Assume 8M window size. Flash will be aliased if it's smaller
> +     */
> +	old_ctl =3D __raw_readl((char *)KSEG1ADDR(AR531X_FLASHCTL0));
> +	ctl =3D FLASHCTL_E | FLASHCTL_AC_8M | FLASHCTL_RBLE |
> +			(0x01 << FLASHCTL_IDCY_S) |
> +			(0x07 << FLASHCTL_WST1_S) |
> +			(0x07 << FLASHCTL_WST2_S) | (old_ctl & FLASHCTL_MW);
> +
> +	__raw_writel(ctl, (char *)KSEG1ADDR(AR531X_FLASHCTL0));
> +	/* Disable other flash banks */
> +	old_ctl =3D __raw_readl((char *)KSEG1ADDR(AR531X_FLASHCTL1));
> +	__raw_writel(old_ctl & ~(FLASHCTL_E | FLASHCTL_AC),
> +			(char *)KSEG1ADDR(AR531X_FLASHCTL1));
> +
> +	old_ctl =3D __raw_readl((char *)KSEG1ADDR(AR531X_FLASHCTL2));
> +	__raw_writel(old_ctl & ~(FLASHCTL_E | FLASHCTL_AC),
> +			(char *)KSEG1ADDR(AR531X_FLASHCTL2));
> +
> +	/* TODO: precompile option for different sices */
> +	/* find out the flash size */
> +	//__raw_writel(0x000d3ce1, (char *)KSEG1ADDR(AR531X_FLASHCTL));
> +	//__raw_readl((char *)KSEG1ADDR(AR531X_FLASHCTL));
> +	flash_size =3D 0x400000;
> +	/* check the bus width? cfi routine seems to detect it automatically */
> +	ar231x_find_config((char *)KSEG1ADDR(AR531X_FLASH + flash_size));
> +//	add_cfi_flash_device(0, KSEG1ADDR(AR531X_FLASH), flash_size, 0);
> +}
> +
> +static int ether_init(void)
> +{
> +	struct ar231x_eth_platform_data *eth =3D &ar231x_board.eth_pdata;
> +	//TODO: check board config to find which eth card we should enable
> +	//now we will take some cart
> +	eth->base_eth =3D KSEG1ADDR(AR531X_ENET1);
> +	eth->reset_mac =3D AR531X_RESET_ENET1;
> +	eth->reset_phy =3D AR531X_RESET_EPHY0;
> +	eth->base_reset =3D KSEG1ADDR(AR531X_RESET);
> +	eth->base_phy =3D KSEG1ADDR(AR531X_ENET0);
> +	eth->mac =3D ar231x_board.config->enet0_mac;
> +
> +	// and some base addresses here
> +	add_generic_device("ar231x_eth", 0, NULL,
> +		(resource_size_t)KSEG1ADDR(AR531X_ENET0), 0x1000, IORESOURCE_MEM, eth);
> +	return 0;
> +}
> +
> +static int platform_init(void)
> +{
> +	watchdog_init();
> +	flash_init();
> +	ether_init();
> +	return 0;
> +}
> +late_initcall(platform_init);
> +
> +static struct NS16550_plat serial_plat =3D {
> +	.shift =3D AR531X_UART_SHIFT,
> +};
> +
> +static int ar531x_console_init(void)
> +{
> +	u32 reset;
> +
> +	/* reset UART0 */
> +	reset =3D __raw_readl((char *)KSEG1ADDR(AR531X_RESET));
> +	reset =3D ((reset & ~AR531X_RESET_APB) | AR531X_RESET_UART0);
> +	__raw_writel(reset, (char *)KSEG1ADDR(AR531X_RESET));
> +
> +	reset &=3D ~AR531X_RESET_UART0;
> +	__raw_writel(reset, (char *)KSEG1ADDR(AR531X_RESET));
> +
> +	/* Register the serial port */
> +	serial_plat.clock =3D ar5312_sys_frequency();
> +	add_ns16550_device(DEVICE_ID_DYNAMIC, KSEG1ADDR(AR531X_UART0),
> +		8 << AR531X_UART_SHIFT, IORESOURCE_MEM_8BIT, &serial_plat);
> +	return 0;
> +}
> +console_initcall(ar531x_console_init);
> diff --git a/arch/mips/mach-ar531x/board.c b/arch/mips/mach-ar531x/board.c
> new file mode 100644
> index 0000000..ec6a6df
> --- /dev/null
> +++ b/arch/mips/mach-ar531x/board.c
> @@ -0,0 +1,182 @@
> +/*
> + * This file is subject to the terms and conditions of the GNU General P=
ublic
> + * License.  See the file "COPYING" in the main directory of this archive
> + * for more details.
> + *
> + * Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
> + * Copyright (C) 2006 FON Technology, SL.
> + * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
> + * Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
> + * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
> + */
> +
> +#include <common.h>
> +#include <io.h>
> +#include <mach/ar531x_regs.h>
> +#include <mach/ar231x_platform.h>
> +// this is needed only by eclipse
> +#include <linux/stddef.h>
> +#include <net.h>
> +
> +#define HDR_SIZE 6
> +
> +#define TAB_1 "\t"
> +#define TAB_2 "\t\t"
> +
> +extern struct ar231x_board_data ar231x_board;
> +
> +static void
> +ar231x_print_mac(unsigned char *mac)
> +{
> +	int i;
> +	for (i =3D 0; i < 5; i++) {
> +		printf("%02x:", mac[i]);
> +	}
> +	printf("%02x\n", mac[5]);
> +}
> +
> +static void
> +ar231x_print_board_config(struct ar231x_board_config *config)
> +{
> +	printf("board config:\n");
> +	printf(TAB_1 "chsum:" 		TAB_2 "%04x\n", config->cksum);
> +	printf(TAB_1 "rev:" 		TAB_2 "%04x\n", config->rev);
> +	printf(TAB_1 "name:" 		TAB_2 "%s\n", config->boardName);
> +	printf(TAB_1 "maj:" 		TAB_2 "%04x\n", config->major);
> +	printf(TAB_1 "min:" 		TAB_2 "%04x\n", config->minor);
> +	printf(TAB_1 "board flags:" TAB_1 "%08x\n", config->flags);
> +
> +	if (config->flags & BD_ENET0)
> +		printf(TAB_2 "ENET0 is stuffed\n");
> +	if (config->flags & BD_ENET1)
> +		printf(TAB_2 "ENET1 is stuffed\n");
> +	if (config->flags & BD_UART1)
> +		printf(TAB_2 "UART1 is stuffed\n");
> +	if (config->flags & BD_UART0)
> +		printf(TAB_2 "UART0 is stuffed (dma)\n");
> +	if (config->flags & BD_RSTFACTORY)
> +		printf(TAB_2 "Reset factory defaults stuffed\n");
> +	if (config->flags & BD_SYSLED)
> +		printf(TAB_2 "System LED stuffed\n");
> +	if (config->flags & BD_EXTUARTCLK)
> +		printf(TAB_2 "External UART clock\n");
> +	if (config->flags & BD_CPUFREQ)
> +		printf(TAB_2 "cpu freq is valid in nvram\n");
> +	if (config->flags & BD_SYSFREQ)
> +		printf(TAB_2 "sys freq is set in nvram\n");
> +	if (config->flags & BD_WLAN0)
> +		printf(TAB_2 "Enable WLAN0\n");
> +	if (config->flags & BD_MEMCAP)
> +		printf(TAB_2 "CAP SDRAM @ memCap for testing\n");
> +	if (config->flags & BD_DISWATCHDOG)
> +		printf(TAB_2 "disable system watchdog\n");
> +	if (config->flags & BD_WLAN1)
> +		printf(TAB_2 "Enable WLAN1 (ar5212)\n");
> +	if (config->flags & BD_ISCASPER)
> +		printf(TAB_2 "FLAG for AR2312\n");
> +	if (config->flags & BD_WLAN0_2G_EN)
> +		printf(TAB_2 "FLAG for radio0_2G\n");
> +	if (config->flags & BD_WLAN0_5G_EN)
> +		printf(TAB_2 "FLAG for radio0_5G\n");
> +	if (config->flags & BD_WLAN1_2G_EN)
> +		printf(TAB_2 "FLAG for radio1_2G\n");
> +	if (config->flags & BD_WLAN1_5G_EN)
> +		printf(TAB_2 "FLAG for radio1_5G\n");
> +
> +	printf(TAB_1 "ResetConf GPIO pin:" TAB_1 "%04x\n", config->resetConfigG=
pio);
> +	printf(TAB_1 "Sys LED GPIO pin:" TAB_1 "%04x\n", config->sysLedGpio);
> +	printf(TAB_1 "CPU Freq:" TAB_2 "%u\n", config->cpuFreq);
> +	printf(TAB_1 "Sys Freq:" TAB_2 "%u\n", config->sysFreq);
> +	printf(TAB_1 "Calculated Freq:" TAB_1 "%u\n", config->cntFreq);
> +
> +	printf(TAB_1 "wlan0 mac:" TAB_2);
> +	ar231x_print_mac(config->wlan0_mac);
> +	printf(TAB_1 "wlan1 mac:" TAB_2);
> +	ar231x_print_mac(config->wlan1_mac);
> +	printf(TAB_1 "eth0 mac:" TAB_2);
> +	ar231x_print_mac(config->enet0_mac);
> +	printf(TAB_1 "eth1 mac:" TAB_2);
> +	ar231x_print_mac(config->enet1_mac);
> +
> +	printf(TAB_1 "Pseudo PCIID:" TAB_2 "%04x\n", config->pciId);
> +	printf(TAB_1 "Mem capacity:" TAB_2 "%u\n", config->memCap);
> +}
> +
> +static u16
> +ar231x_cksum16(u8 *data, int size)
> +{
> +	int i;
> +	u16 sum;
> +
> +	for (i =3D 0; i < size; i++)
> +		sum +=3D data[i];
> +
> +	return sum;
> +}
> +
> +static void
> +ar231x_check_mac(u8 *addr)
> +{
> +	if (!is_valid_ether_addr(addr)) {
> +		pr_warn("config: no valid mac was found. "
> +				"Generating random mac: ");
> +		random_ether_addr(addr);
> +		ar231x_print_mac(addr);
> +	}
> +}
> +
> +static u8 *
> +ar231x_find_board_config(u8 *flash_limit)
> +{
> +	u8 *addr;
> +	int found =3D 0;
> +
> +	for (addr =3D flash_limit - 0x1000;
> +		addr >=3D flash_limit - 0x30000;
> +		addr -=3D 0x1000) {
> +
> +		if (*((u32 *)addr) =3D=3D AR531X_BD_MAGIC) {
> +			found =3D 1;
> +			pr_info("config at %x\n", addr);
> +			break;
> +		}
> +	}
> +
> +	if (!found)
> +		addr =3D NULL;
> +
> +	return addr;
> +}
> +
> +void
> +ar231x_find_config(u8 *flash_limit)
> +{
> +	struct ar231x_board_config *config;
> +	u8 *bcfg, bsize;
> +	u8 brocken;
> +
> +	bcfg =3D ar231x_find_board_config(flash_limit);
> +
> +	bsize =3D sizeof(struct ar231x_board_config);
> +	config =3D xzalloc(bsize);
> +	ar231x_board.config =3D config;
> +
> +	if (bcfg) {
> +		u16 cksum;
> +		/* Copy the board and radio data to RAM, because accessing the mapped
> +		 * memory of the flash directly after booting is not safe */
> +		memcpy(config, bcfg, bsize);
> +		cksum=3D 0xca + ar231x_cksum16((unsigned char *)config + HDR_SIZE,
> +				sizeof(struct ar231x_board_config) - HDR_SIZE);
> +		if (cksum !=3D config->cksum) {
> +			pr_err("config: checksum is invalid: %04x !=3D %04x\n",
> +					cksum, config->cksum);
> +			brocken =3D 1;
> +		}
> +		ar231x_print_board_config(config);
> +	}
> +
> +	/* We do not care about wlans here */
> +	ar231x_check_mac(config->enet0_mac);
> +	ar231x_check_mac(config->enet1_mac);
> +}
> diff --git a/arch/mips/mach-ar531x/include/mach/ar231x_platform.h b/arch/=
mips/mach-ar531x/include/mach/ar231x_platform.h
> new file mode 100644
> index 0000000..e33b09e
> --- /dev/null
> +++ b/arch/mips/mach-ar531x/include/mach/ar231x_platform.h
> @@ -0,0 +1,82 @@
> +#ifndef __AR531X_PLATFORM_H
> +#define __AR531X_PLATFORM_H
> +
> +/*
> + * This is board-specific data that is stored in a "fixed" location in f=
lash.
> + * It is shared across operating systems, so it should not be changed li=
ghtly.
> + * The main reason we need it is in order to extract the ethernet MAC
> + * address(es).
> + */
> +struct ar231x_board_config {
> +    u32 magic;                       /* board data is valid */
> +#define AR531X_BD_MAGIC 0x35333131   /* "5311", for all 531x platforms */
> +    u16 cksum;                       /* checksum (starting with BD_REV 2=
) */
> +    u16 rev;                         /* revision of this struct */
> +#define BD_REV  4
> +    char boardName[64];            /* Name of board */
> +    u16 major;                       /* Board major number */
> +    u16 minor;                       /* Board minor number */
> +    u32 flags;                      /* Board configuration */
> +#define BD_ENET0        0x00000001   /* ENET0 is stuffed */
> +#define BD_ENET1        0x00000002   /* ENET1 is stuffed */
> +#define BD_UART1        0x00000004   /* UART1 is stuffed */
> +#define BD_UART0        0x00000008   /* UART0 is stuffed (dma) */
> +#define BD_RSTFACTORY   0x00000010   /* Reset factory defaults stuffed */
> +#define BD_SYSLED       0x00000020   /* System LED stuffed */
> +#define BD_EXTUARTCLK   0x00000040   /* External UART clock */
> +#define BD_CPUFREQ      0x00000080   /* cpu freq is valid in nvram */
> +#define BD_SYSFREQ      0x00000100   /* sys freq is set in nvram */
> +#define BD_WLAN0        0x00000200   /* Enable WLAN0 */
> +#define BD_MEMCAP       0x00000400   /* CAP SDRAM @ memCap for testing */
> +#define BD_DISWATCHDOG  0x00000800   /* disable system watchdog */
> +#define BD_WLAN1        0x00001000   /* Enable WLAN1 (ar5212) */
> +#define BD_ISCASPER     0x00002000   /* FLAG for AR2312 */
> +#define BD_WLAN0_2G_EN  0x00004000   /* FLAG for radio0_2G */
> +#define BD_WLAN0_5G_EN  0x00008000   /* FLAG for radio0_2G */
> +#define BD_WLAN1_2G_EN  0x00020000   /* FLAG for radio0_2G */
> +#define BD_WLAN1_5G_EN  0x00040000   /* FLAG for radio0_2G */
> +    u16 resetConfigGpio;             /* Reset factory GPIO pin */
> +    u16 sysLedGpio;                  /* System LED GPIO pin */
> +
> +    u32 cpuFreq;                     /* CPU core frequency in Hz */
> +    u32 sysFreq;                     /* System frequency in Hz */
> +    u32 cntFreq;                     /* Calculated C0_COUNT frequency */
> +
> +    u8  wlan0_mac[6];
> +    u8  enet0_mac[6];
> +    u8  enet1_mac[6];
> +
> +    u16 pciId;                       /* Pseudo PCIID for common code */
> +    u16 memCap;                      /* cap bank1 in MB */
> +
> +    /* version 3 */
> +    u8  wlan1_mac[6];                 /* (ar5212) */
> +};
> +
> +#define BOARD_CONFIG_BUFSZ		0x1000
> +
> +/*
> + * Platform device information for the Ethernet MAC
> + */
> +struct ar231x_eth_platform_data {
> +	u32 base_eth;
> +	u32 base_reset;
> +	u32 reset_mac;
> +	u32 reset_phy;
> +	u32 base_phy;
> +
> +	u8 *mac;
> +};
> +
> +struct ar231x_board_data {
> +	u16 devid;
> +
> +	/* board config data */
> +	struct ar231x_board_config *config;
> +
> +	struct ar231x_eth_platform_data eth_pdata;
> +};
> +
> +void ar231x_find_config(u8 *flash_limit);
> +
> +#endif /* __AR531X_PLATFORM_H */
> diff --git a/arch/mips/mach-ar531x/include/mach/ar531x_regs.h b/arch/mips=
/mach-ar531x/include/mach/ar531x_regs.h
> new file mode 100644
> index 0000000..2db4b2a
> --- /dev/null
> +++ b/arch/mips/mach-ar531x/include/mach/ar531x_regs.h
> @@ -0,0 +1,295 @@
> +/*
> + * This file is subject to the terms and conditions of the GNU General P=
ublic
> + * License.  See the file "COPYING" in the main directory of this archive
> + * for more details.
> + *
> + * Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
> + * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
> + * Copyright (C) 2006 Felix Fietkau <nbd@openwrt.org>
> + */
> +
> +#ifndef AR5312_H
> +#define AR5312_H
> +
> +#include <asm/addrspace.h>
> +
> +/*
> + * IRQs
> + */
> +
> +#define AR5312_IRQ_WLAN0_INTRS  MIPS_CPU_IRQ_BASE+2 /* C0_CAUSE: 0x0400 =
*/
> +#define AR5312_IRQ_ENET0_INTRS  MIPS_CPU_IRQ_BASE+3 /* C0_CAUSE: 0x0800 =
*/
> +#define AR5312_IRQ_ENET1_INTRS  MIPS_CPU_IRQ_BASE+4 /* C0_CAUSE: 0x1000 =
*/
> +#define AR5312_IRQ_WLAN1_INTRS  MIPS_CPU_IRQ_BASE+5 /* C0_CAUSE: 0x2000 =
*/
> +#define AR5312_IRQ_MISC_INTRS   MIPS_CPU_IRQ_BASE+6 /* C0_CAUSE: 0x4000 =
*/
> +
> +
> +/* Address Map */
> +#define AR531X_SDRAM0   0x00000000
> +#define AR531X_SDRAM1   0x08000000
> +#define AR531X_WLAN0            0x18000000
> +#define AR531X_WLAN1            0x18500000
> +#define AR531X_ENET0            0x18100000
> +#define AR531X_ENET1            0x18200000
> +#define AR531X_SDRAMCTL         0x18300000
> +#define AR531X_FLASHCTL         0x18400000
> +#define AR531X_APBBASE		0x1c000000
> +#define AR531X_FLASH            0x1e000000
> +
> +#define AR5312_CPU_CLOCK_RATE              180000000
> +/* Used by romSizeMemory to set SDRAM Memory Refresh */
> +#define AR531X_SDRAM_CLOCK_RATE            (AR5312_CPU_CLOCK_RATE / 2)
> +/*
> + * SDRAM Memory Refresh (MEM_REF) value is computed as:
> + *    15.625us * SDRAM_CLOCK_RATE (in MHZ)
> + */
> +#define DESIRED_MEMORY_REFRESH_NSECS 15625
> +#define AR531X_SDRAM_MEMORY_REFRESH_VALUE \
> +        ((DESIRED_MEMORY_REFRESH_NSECS * AR531X_SDRAM_CLOCK_RATE/1000000=
) / 1000)
> +
> +/*
> + * APB Address Map
> + */
> +#define AR531X_UART0		(AR531X_APBBASE + 0x0003) /* high speed uart */
> +#define AR531X_UART_SHIFT	2
> +#define AR531X_UART1		(AR531X_APBBASE + 0x1000) /* ar531x only */
> +#define AR531X_GPIO		(AR531X_APBBASE + 0x2000)
> +#define AR531X_RESETTMR		(AR531X_APBBASE + 0x3000)
> +#define AR531X_APB2AHB		(AR531X_APBBASE + 0x4000)
> +
> +
> +
> +/*
> + * AR531X_NUM_ENET_MAC defines the number of ethernet MACs that
> + * should be considered available.  The AR5312 supports 2 enet MACS,
> + * even though many reference boards only actually use 1 of them
> + * (i.e. Only MAC 0 is actually connected to an enet PHY or PHY switch.
> + * The AR2312 supports 1 enet MAC.
> + */
> +#define AR531X_NUM_ENET_MAC             2
> +
> +/*
> + * Need these defines to determine true number of ethernet MACs
> + */
> +#define AR5212_AR5312_REV2      0x0052          /* AR5312 WMAC (AP31) */
> +#define AR5212_AR5312_REV7      0x0057          /* AR5312 WMAC (AP30-040=
) */
> +#define AR5212_AR2313_REV8      0x0058          /* AR2313 WMAC (AP43-030=
) */
> +
> +/*
> + * AR531X_NUM_WMAC defines the number of Wireless MACs that\
> + * should be considered available.
> + */
> +#define AR531X_NUM_WMAC                 2
> +
> +/* Reset/Timer Block Address Map */
> +#define AR531X_RESETTMR		(AR531X_APBBASE  + 0x3000)
> +#define AR531X_TIMER		(AR531X_RESETTMR + 0x0000) /* countdown timer */
> +#define AR531X_WD_CTRL          (AR531X_RESETTMR + 0x0008) /* watchdog c=
ntrl */
> +#define AR531X_WD_TIMER         (AR531X_RESETTMR + 0x000c) /* watchdog t=
imer */
> +#define AR531X_ISR		(AR531X_RESETTMR + 0x0010) /* Intr Status Reg */
> +#define AR531X_IMR		(AR531X_RESETTMR + 0x0014) /* Intr Mask Reg */
> +#define AR531X_RESET		(AR531X_RESETTMR + 0x0020)
> +#define AR5312_CLOCKCTL0	(AR531X_RESETTMR + 0x0060)
> +#define AR5312_CLOCKCTL1	(AR531X_RESETTMR + 0x0064)
> +#define AR5312_CLOCKCTL2	(AR531X_RESETTMR + 0x0068)
> +#define AR5312_SCRATCH   	(AR531X_RESETTMR + 0x006c)
> +#define AR531X_PROCADDR		(AR531X_RESETTMR + 0x0070)
> +#define AR531X_PROC1		(AR531X_RESETTMR + 0x0074)
> +#define AR531X_DMAADDR		(AR531X_RESETTMR + 0x0078)
> +#define AR531X_DMA1		(AR531X_RESETTMR + 0x007c)
> +#define AR531X_ENABLE           (AR531X_RESETTMR + 0x0080) /* interface =
enb */
> +#define AR531X_REV		(AR531X_RESETTMR + 0x0090) /* revision */
> +
> +/* AR531X_WD_CTRL register bit field definitions */
> +#define AR531X_WD_CTRL_IGNORE_EXPIRATION 0x0000
> +#define AR531X_WD_CTRL_NMI               0x0001
> +#define AR531X_WD_CTRL_RESET             0x0002
> +
> +/* AR531X_ISR register bit field definitions */
> +#define AR531X_ISR_NONE		0x0000
> +#define AR531X_ISR_TIMER	0x0001
> +#define AR531X_ISR_AHBPROC	0x0002
> +#define AR531X_ISR_AHBDMA	0x0004
> +#define AR531X_ISR_GPIO		0x0008
> +#define AR531X_ISR_UART0	0x0010
> +#define AR531X_ISR_UART0DMA	0x0020
> +#define AR531X_ISR_WD		0x0040
> +#define AR531X_ISR_LOCAL	0x0080
> +
> +/* AR531X_RESET register bit field definitions */
> +#define AR531X_RESET_SYSTEM     0x00000001  /* cold reset full system */
> +#define AR531X_RESET_PROC       0x00000002  /* cold reset MIPS core */
> +#define AR531X_RESET_WLAN0      0x00000004  /* cold reset WLAN MAC and B=
B */
> +#define AR531X_RESET_EPHY0      0x00000008  /* cold reset ENET0 phy */
> +#define AR531X_RESET_EPHY1      0x00000010  /* cold reset ENET1 phy */
> +#define AR531X_RESET_ENET0      0x00000020  /* cold reset ENET0 mac */
> +#define AR531X_RESET_ENET1      0x00000040  /* cold reset ENET1 mac */
> +#define AR531X_RESET_UART0      0x00000100  /* cold reset UART0 (high sp=
eed) */
> +#define AR531X_RESET_WLAN1      0x00000200  /* cold reset WLAN MAC/BB */
> +#define AR531X_RESET_APB        0x00000400  /* cold reset APB (ar5312) */
> +#define AR531X_RESET_WARM_PROC  0x00001000  /* warm reset MIPS core */
> +#define AR531X_RESET_WARM_WLAN0_MAC 0x00002000  /* warm reset WLAN0 MAC =
*/
> +#define AR531X_RESET_WARM_WLAN0_BB  0x00004000  /* warm reset WLAN0 Base=
Band */
> +#define AR531X_RESET_NMI        0x00010000  /* send an NMI to the proces=
sor */
> +#define AR531X_RESET_WARM_WLAN1_MAC 0x00020000  /* warm reset WLAN1 mac =
*/
> +#define AR531X_RESET_WARM_WLAN1_BB  0x00040000  /* warm reset WLAN1 base=
band */
> +#define AR531X_RESET_LOCAL_BUS  0x00080000  /* reset local bus */
> +#define AR531X_RESET_WDOG       0x00100000  /* last reset was a watchdog=
 */
> +
> +#define AR531X_RESET_WMAC0_BITS \
> +        AR531X_RESET_WLAN0 |\
> +        AR531X_RESET_WARM_WLAN0_MAC |\
> +        AR531X_RESET_WARM_WLAN0_BB
> +
> +#define AR531X_RESERT_WMAC1_BITS \
> +        AR531X_RESET_WLAN1 |\
> +        AR531X_RESET_WARM_WLAN1_MAC |\
> +        AR531X_RESET_WARM_WLAN1_BB
> +
> +/* AR5312_CLOCKCTL1 register bit field definitions */
> +#define AR2312_CLOCKCTL1_PREDIVIDE_MASK    0x00000030
> +#define AR2312_CLOCKCTL1_PREDIVIDE_SHIFT            4
> +#define AR2312_CLOCKCTL1_MULTIPLIER_MASK   0x00001f00
> +#define AR2312_CLOCKCTL1_MULTIPLIER_SHIFT           8
> +#define AR2312_CLOCKCTL1_DOUBLER_MASK      0x00010000
> +
> +/* Valid for AR2313 */
> +#define AR2313_CLOCKCTL1_PREDIVIDE_MASK    0x00003000
> +#define AR2313_CLOCKCTL1_PREDIVIDE_SHIFT           12
> +#define AR2313_CLOCKCTL1_MULTIPLIER_MASK   0x001f0000
> +#define AR2313_CLOCKCTL1_MULTIPLIER_SHIFT          16
> +#define AR2313_CLOCKCTL1_DOUBLER_MASK      0x00000000
> +
> +
> +/* AR531X_ENABLE register bit field definitions */
> +#define AR531X_ENABLE_WLAN0              0x0001
> +#define AR531X_ENABLE_ENET0              0x0002
> +#define AR531X_ENABLE_ENET1              0x0004
> +#define AR531X_ENABLE_UART_AND_WLAN1_PIO 0x0008   /* UART, and WLAN1 PIO=
s */
> +#define AR531X_ENABLE_WLAN1_DMA          0x0010   /* WLAN1 DMAs */
> +#define AR531X_ENABLE_WLAN1 \
> +            (AR531X_ENABLE_UART_AND_WLAN1_PIO | AR531X_ENABLE_WLAN1_DMA)
> +
> +/* AR531X_REV register bit field definitions */
> +#define AR531X_REV_WMAC_MAJ    0xf000
> +#define AR531X_REV_WMAC_MAJ_S  12
> +#define AR531X_REV_WMAC_MIN    0x0f00
> +#define AR531X_REV_WMAC_MIN_S  8
> +#define AR531X_REV_MAJ         0x00f0
> +#define AR531X_REV_MAJ_S       4
> +#define AR531X_REV_MIN         0x000f
> +#define AR531X_REV_MIN_S       0
> +#define AR531X_REV_CHIP        (AR531X_REV_MAJ|AR531X_REV_MIN)
> +
> +/* Major revision numbers, bits 7..4 of Revision ID register */
> +#define AR531X_REV_MAJ_AR5312          0x4
> +#define AR531X_REV_MAJ_AR2313          0x5
> +
> +/* Minor revision numbers, bits 3..0 of Revision ID register */
> +#define AR5312_REV_MIN_DUAL     0x0     /* Dual WLAN version */
> +#define AR5312_REV_MIN_SINGLE   0x1     /* Single WLAN version */
> +
> +/* AR531X_FLASHCTL register bit field definitions */
> +#define FLASHCTL_IDCY   0x0000000f      /* Idle cycle turn around time */
> +#define FLASHCTL_IDCY_S 0
> +#define FLASHCTL_WST1   0x000003e0      /* Wait state 1 */
> +#define FLASHCTL_WST1_S 5
> +#define FLASHCTL_RBLE   0x00000400      /* Read byte lane enable */
> +#define FLASHCTL_WST2   0x0000f800      /* Wait state 2 */
> +#define FLASHCTL_WST2_S 11
> +#define FLASHCTL_AC     0x00070000      /* Flash address check (added) */
> +#define FLASHCTL_AC_S   16
> +#define FLASHCTL_AC_128K 0x00000000
> +#define FLASHCTL_AC_256K 0x00010000
> +#define FLASHCTL_AC_512K 0x00020000
> +#define FLASHCTL_AC_1M   0x00030000
> +#define FLASHCTL_AC_2M   0x00040000
> +#define FLASHCTL_AC_4M   0x00050000
> +#define FLASHCTL_AC_8M   0x00060000
> +#define FLASHCTL_AC_RES  0x00070000     /* 16MB is not supported */
> +#define FLASHCTL_E      0x00080000      /* Flash bank enable (added) */
> +#define FLASHCTL_BUSERR 0x01000000      /* Bus transfer error status fla=
g */
> +#define FLASHCTL_WPERR  0x02000000      /* Write protect error status fl=
ag */
> +#define FLASHCTL_WP     0x04000000      /* Write protect */
> +#define FLASHCTL_BM     0x08000000      /* Burst mode */
> +#define FLASHCTL_MW     0x30000000      /* Memory width */
> +#define FLASHCTL_MWx8   0x00000000      /* Memory width x8 */
> +#define FLASHCTL_MWx16  0x10000000      /* Memory width x16 */
> +#define FLASHCTL_MWx32  0x20000000      /* Memory width x32 (not support=
ed) */
> +#define FLASHCTL_ATNR   0x00000000      /* Access type =3D=3D no retry */
> +#define FLASHCTL_ATR    0x80000000      /* Access type =3D=3D retry ever=
y */
> +#define FLASHCTL_ATR4   0xc0000000      /* Access type =3D=3D retry ever=
y 4 */
> +
> +/* ARM Flash Controller -- 3 flash banks with either x8 or x16 devices. =
 */
> +#define AR531X_FLASHCTL0        (AR531X_FLASHCTL + 0x00)
> +#define AR531X_FLASHCTL1        (AR531X_FLASHCTL + 0x04)
> +#define AR531X_FLASHCTL2        (AR531X_FLASHCTL + 0x08)
> +
> +
> +/* ARM SDRAM Controller -- just enough to determine memory size */
> +#define AR531X_MEM_CFG0 (AR531X_SDRAMCTL + 0x00)
> +#define AR531X_MEM_CFG1 (AR531X_SDRAMCTL + 0x04)
> +#define AR531X_MEM_REF  (AR531X_SDRAMCTL + 0x08)        /* 16 bit value =
*/
> +
> +#define MEM_CFG1_AC0    0x00000700      /* bank 0: SDRAM addr check (add=
ed) */
> +#define MEM_CFG1_AC0_S  8
> +#define MEM_CFG1_AC1    0x00007000      /* bank 1: SDRAM addr check (add=
ed) */
> +#define MEM_CFG1_AC1_S  12
> +
> +#define MEM_CFG0_F0     0x00000002      /* bank 0: 256Mb support */
> +#define MEM_CFG0_T0     0x00000004      /* bank 0: chip width */
> +#define MEM_CFG0_B0     0x00000008      /* bank 0: 2 vs 4 bank */
> +#define MEM_CFG0_F1     0x00000020      /* bank 1: 256Mb support */
> +#define MEM_CFG0_T1     0x00000040      /* bank 1: chip width */
> +#define MEM_CFG0_B1     0x00000080      /* bank 1: 2 vs 4 bank */
> +                                        /* bank 2 and 3 are not supporte=
d */
> +#define MEM_CFG0_E      0x00020000      /* SDRAM clock control */
> +#define MEM_CFG0_C      0x00040000      /* SDRAM clock enable */
> +#define MEM_CFG0_X      0x00080000      /* bus width (0 =3D=3D 32b) */
> +#define MEM_CFG0_CAS    0x00300000      /* CAS latency (1-3) */
> +#define MEM_CFG0_C1     0x00100000
> +#define MEM_CFG0_C2     0x00200000
> +#define MEM_CFG0_C3     0x00300000
> +#define MEM_CFG0_R      0x00c00000      /* RAS to CAS latency (1-3) */
> +#define MEM_CFG0_R1     0x00400000
> +#define MEM_CFG0_R2     0x00800000
> +#define MEM_CFG0_R3     0x00c00000
> +#define MEM_CFG0_A      0x01000000      /* AHB auto pre-charge */
> +
> +#define MEM_CFG1_I      0x00000001      /* memory init control */
> +#define MEM_CFG1_M      0x00000002      /* memory init control */
> +#define MEM_CFG1_R      0x00000004      /* read buffer enable (unused) */
> +#define MEM_CFG1_W      0x00000008      /* write buffer enable (unused) =
*/
> +#define MEM_CFG1_B      0x00000010      /* SDRAM engine busy */
> +#define MEM_CFG1_AC0    0x00000700      /* bank 0: SDRAM addr check (add=
ed) */
> +#define MEM_CFG1_AC_2   0       /* AC of 2MB */
> +#define MEM_CFG1_AC_4   1       /* AC of 4MB */
> +#define MEM_CFG1_AC_8   2       /* AC of 8MB */
> +#define MEM_CFG1_AC_16  3       /* AC of 16MB */
> +#define MEM_CFG1_AC_32  4       /* AC of 32MB */
> +#define MEM_CFG1_AC_64  5       /* AC of 64MB */
> +#define MEM_CFG1_AC_128 6       /* AC of 128MB */
> +#define MEM_CFG1_AC0_S  8
> +#define MEM_CFG1_E0     0x00000800      /* bank 0: enable */
> +#define MEM_CFG1_AC1    0x00007000      /* bank 1: SDRAM addr check (add=
ed) */
> +#define MEM_CFG1_AC1_S  12
> +#define MEM_CFG1_E1     0x00008000      /* bank 1: enable */
> +
> +
> +/* GPIO Address Map */
> +#define AR531X_GPIO         (AR531X_APBBASE  + 0x2000)
> +#define AR531X_GPIO_DO      (AR531X_GPIO + 0x00)        /* output regist=
er */
> +#define AR531X_GPIO_DI      (AR531X_GPIO + 0x04)        /* intput regist=
er */
> +#define AR531X_GPIO_CR      (AR531X_GPIO + 0x08)        /* control regis=
ter */
> +
> +/* GPIO Control Register bit field definitions */
> +#define AR531X_GPIO_CR_M(x)    (1 << (x))                      /* mask f=
or i/o */
> +#define AR531X_GPIO_CR_O(x)    (0 << (x))                      /* mask f=
or output */
> +#define AR531X_GPIO_CR_I(x)    (1 << (x))                      /* mask f=
or input */
> +#define AR531X_GPIO_CR_INT(x)  (1 << ((x)+8))                  /* mask f=
or interrupt */
> +#define AR531X_GPIO_CR_UART(x) (1 << ((x)+16))                 /* uart m=
ultiplex */
> +#define AR531X_NUM_GPIO		8
> +
> +
> +#endif
> +
> diff --git a/arch/mips/mach-ar531x/include/mach/debug_ll.h b/arch/mips/ma=
ch-ar531x/include/mach/debug_ll.h
> new file mode 100644
> index 0000000..b4c558b
> --- /dev/null
> +++ b/arch/mips/mach-ar531x/include/mach/debug_ll.h
> @@ -0,0 +1,31 @@
> +/*
> + * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> + *
> + * This file is part of barebox.
> + * See file CREDITS for list of people who contributed to this project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +/** @file
> + *  This File contains declaration for early output support
> + */
> +#ifndef __MACH_AR531X_DEBUG_LL_H__
> +#define __MACH_AR531X_DEBUG_LL_H__
> +
> +#include <mach/ar531x_regs.h>
> +
> +#define DEBUG_LL_UART_ADDR	KSEG1ADDR(AR531X_UART0)
> +#define DEBUG_LL_UART_SHIFT	AR531X_UART_SHIFT
> +
> +#include <debug_ll_ns16550.h>
> +
> +#endif  /* __INCLUDE_ARCH_DEBUG_LL_H__ */
> diff --git a/arch/mips/mach-ar531x/lowlevel_init.S b/arch/mips/mach-ar531=
x/lowlevel_init.S
> new file mode 100644
> index 0000000..d7f708c
> --- /dev/null
> +++ b/arch/mips/mach-ar531x/lowlevel_init.S
> @@ -0,0 +1,83 @@
> +#include <mach/ar531x_regs.h>
> +//#include <common.h>
> +#include <asm/regdef.h>
> +#include <asm/mipsregs.h>
> +#include <asm/asm.h>
> +#include <asm-generic/memory_layout.h>
> +#include <generated/compile.h>
> +#include <generated/utsrelease.h>
> +
> +
> +.globl lowlevel_init
> +lowlevel_init:
> +	li	t5, MEM_CFG0_X	# try x16
> +	li	t6, 0x23000	# use 8-word burst
> +
> +        /* Configure for a x16 SDRAM with 8-word burst */
> +        li      t5, MEM_CFG0_X           # try x16
> +        li      t6, 0x23000              # use 8-word burst
> +99:
> +        li      a0, KSEG1 | AR531X_MEM_CFG0
> +        li      a1, KSEG1 | AR531X_MEM_CFG1
> +        li      a2, KSEG1 | AR531X_MEM_REF
> +
> +        /* 1) wait 100us - handled by latency to boot up to this point. =
*/
> +
> +        /* 2) Set the I and M bits to issue an SDRAM nop */
> +        li      t0, MEM_CFG1_E0 | (MEM_CFG1_AC_128 << MEM_CFG1_AC0_S) | \
> +                    MEM_CFG1_E1 | (MEM_CFG1_AC_128 << MEM_CFG1_AC1_S) | \
> +                    MEM_CFG1_M | MEM_CFG1_I
> +        sw      t0, 0(a1)               # MEM_CFG1
> +
> +        /* 3) Wait 200us (roughly) */
> +//        MEMDELAY(50, t2)
> +
> +        /* 4) Reset the M bit to issue an SDRAM PRE-ALL */
> +        li      t0, MEM_CFG1_E0 | (MEM_CFG1_AC_128 << MEM_CFG1_AC0_S) | \
> +                    MEM_CFG1_E1 | (MEM_CFG1_AC_128 << MEM_CFG1_AC1_S) | \
> +                    MEM_CFG1_I
> +        sw      t0, 0(a1)               # MEM_CFG1
> +        sync
> +
> +        /* 5) Generate a refresh every 16 clocks (spec says 10) */
> +        li      t0, 16                  # very fast refresh for now
> +        sw      t0, 0(a2)               # MEM_REF
> +
> +        /* 6) Wait for 128 clocks (8 refresh cycles) */
> +//        MEMDELAY(5, t2)
> +
> +        /*
> +         * 7) Set operational value into the reset timer.
> +         *    [out of order from ARM SDRAM ctrl spec]
> +         */
> +
> +        /* 8) Set command write mode, and read each SDRAM */
> +        li      t0, MEM_CFG1_E0 | (MEM_CFG1_AC_128 << MEM_CFG1_AC0_S) | \
> +                    MEM_CFG1_E1 | (MEM_CFG1_AC_128 << MEM_CFG1_AC1_S) | \
> +                    MEM_CFG1_M
> +        sw      t0, 0(a1)               # MEM_CFG1
> +        sync
> +        li      t0, KSEG1 | AR531X_SDRAM0 =

> +        or      t0, t6 # burst
> +        lw      zero, 0(t0)
> +        li      t0, KSEG1 | AR531X_SDRAM1
> +        or      t0, t6 # burst
> +        lw      zero, 0(t0)
> +
> +        /* 9) Program configuration register 0 */
> +        li      t0, MEM_CFG0_C | MEM_CFG0_C2 | MEM_CFG0_R1 | \
> +                    MEM_CFG0_B0 | MEM_CFG0_B1
> +        or      t0, t5 # x16 or x32
> +        sw      t0, 0(a0)               # MEM_CFG0
> +        sync
> +
> +        li      t0, AR531X_SDRAM_MEMORY_REFRESH_VALUE
> +        sw      t0, 0(a2)               # MEM_REF
> +        sync
> +
> +        /* 10) Clear I and M and set cfg1 to the normal operational valu=
e */
> +        li      t0, MEM_CFG1_E0 | (MEM_CFG1_AC_128 << MEM_CFG1_AC0_S) | \
> +                    MEM_CFG1_E1 | (MEM_CFG1_AC_128 << MEM_CFG1_AC1_S)
> +        sw      t0, 0(a1)               # MEM_CFG1
> +        sync
> +
> diff --git a/arch/mips/mach-ar531x/mach-ar531x.dox b/arch/mips/mach-ar531=
x/mach-ar531x.dox
> new file mode 100644
> index 0000000..4304654
> --- /dev/null
> +++ b/arch/mips/mach-ar531x/mach-ar531x.dox
> @@ -0,0 +1,7 @@
> +/** @page dev_ar531x_mach AR531x in barebox
> +
> +@section ar531x_boards AR531x-based boards
> +
> +@li @subpage netgear-wg102
> +
> +*/
> -- =

> 1.7.10.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

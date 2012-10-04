Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo1.mail-out.ovh.net ([188.165.45.168]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJkx7-0005iM-Dp
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 12:55:00 +0000
Received: from mail615.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 52F6CFF8CE3
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 15:04:01 +0200 (CEST)
Date: Thu, 4 Oct 2012 14:52:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121004125229.GK26553@game.jcrosoft.org>
References: <1349354221-28409-1-git-send-email-shc_work@mail.ru>
 <1349354221-28409-3-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349354221-28409-3-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 3/3] ARM: Add CLPS711X architecture
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 16:37 Thu 04 Oct     , Alexander Shiyan wrote:
> This patch adds new architecture (CLPS711X) into barebox.
> The core-logic functionality of the device is built around an ARM720T
> processor running at clock speeds up to 90 MHz and 74 MHz.
> Patch also adds a generic board support (CLEP7212, Linux ARM ID=91) and
> serial driver for this CPU.
split board, arch and driver in different patch
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/Kconfig                                 |    6 +
>  arch/arm/Makefile                                |    2 +
>  arch/arm/boards/clep7212/Makefile                |    1 +
>  arch/arm/boards/clep7212/clep7212.c              |   62 +++++
>  arch/arm/boards/clep7212/config.h                |    4 +
>  arch/arm/boards/clep7212/env/bin/boot            |    9 +
>  arch/arm/boards/clep7212/env/bin/flash_partition |   21 ++
>  arch/arm/boards/clep7212/env/bin/init            |   22 ++
>  arch/arm/boards/clep7212/env/bin/update_kernel   |    8 +
>  arch/arm/boards/clep7212/env/bin/update_rootfs   |    8 +
>  arch/arm/boards/clep7212/env/config              |    4 +
>  arch/arm/configs/clep7212_defconfig              |   43 ++++
>  arch/arm/cpu/Kconfig                             |   15 ++
>  arch/arm/mach-clps711x/Kconfig                   |   26 ++
>  arch/arm/mach-clps711x/Makefile                  |    1 +
>  arch/arm/mach-clps711x/clock.c                   |  111 +++++++++
>  arch/arm/mach-clps711x/devices.c                 |   58 +++++
>  arch/arm/mach-clps711x/include/mach/clkdev.h     |    7 +
>  arch/arm/mach-clps711x/include/mach/clps711x.h   |  283 ++++++++++++++++++++++
>  arch/arm/mach-clps711x/include/mach/devices.h    |    7 +
>  arch/arm/mach-clps711x/lowlevel_init.c           |   61 +++++
>  drivers/serial/Kconfig                           |    5 +
>  drivers/serial/Makefile                          |    1 +
>  drivers/serial/serial_clps711x.c                 |  119 +++++++++
>  24 files changed, 884 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/boards/clep7212/Makefile
>  create mode 100644 arch/arm/boards/clep7212/clep7212.c
>  create mode 100644 arch/arm/boards/clep7212/config.h
>  create mode 100644 arch/arm/boards/clep7212/env/bin/boot
>  create mode 100644 arch/arm/boards/clep7212/env/bin/flash_partition
>  create mode 100644 arch/arm/boards/clep7212/env/bin/init
>  create mode 100644 arch/arm/boards/clep7212/env/bin/update_kernel
>  create mode 100644 arch/arm/boards/clep7212/env/bin/update_rootfs
>  create mode 100644 arch/arm/boards/clep7212/env/config
>  create mode 100644 arch/arm/configs/clep7212_defconfig
>  create mode 100644 arch/arm/mach-clps711x/Kconfig
>  create mode 100644 arch/arm/mach-clps711x/Makefile
>  create mode 100644 arch/arm/mach-clps711x/clock.c
>  create mode 100644 arch/arm/mach-clps711x/devices.c
>  create mode 100644 arch/arm/mach-clps711x/include/mach/clkdev.h
>  create mode 100644 arch/arm/mach-clps711x/include/mach/clps711x.h
>  create mode 100644 arch/arm/mach-clps711x/include/mach/devices.h
>  create mode 100644 arch/arm/mach-clps711x/lowlevel_init.c
>  create mode 100644 drivers/serial/serial_clps711x.c
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index a54ad03..0bd902a 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -31,6 +31,11 @@ config ARCH_AT91
>  	select HAS_DEBUG_LL
>  	select HAVE_MACH_ARM_HEAD
>  
> +config ARCH_CLPS711X
> +	bool "Cirrus Logic EP711x/EP721x/EP731x"
> +	select CLKDEV_LOOKUP
> +	select CPU_ARM720T
> +
>  config ARCH_EP93XX
>  	bool "Cirrus Logic EP93xx"
>  	select CPU_ARM920T
> @@ -96,6 +101,7 @@ endchoice
>  
>  source arch/arm/cpu/Kconfig
>  source arch/arm/mach-at91/Kconfig
> +source arch/arm/mach-clps711x/Kconfig
>  source arch/arm/mach-ep93xx/Kconfig
>  source arch/arm/mach-imx/Kconfig
>  source arch/arm/mach-mxs/Kconfig
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 8e660be..d9ddbfb 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -52,6 +52,7 @@ AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
>  # Machine directory name.  This list is sorted alphanumerically
>  # by CONFIG_* macro name.
>  machine-$(CONFIG_ARCH_AT91)		:= at91
> +machine-$(CONFIG_ARCH_CLPS711X)		:= clps711x
>  machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
>  machine-$(CONFIG_ARCH_IMX)		:= imx
>  machine-$(CONFIG_ARCH_MXS)		:= mxs
> @@ -75,6 +76,7 @@ board-$(CONFIG_MACH_AT91SAM9G10EK)		:= at91sam9261ek
>  board-$(CONFIG_MACH_AT91SAM9G20EK)		:= at91sam9260ek
>  board-$(CONFIG_MACH_AT91SAM9X5EK)		:= at91sam9x5ek
>  board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:= at91sam9m10g45ek
> +board-$(CONFIG_MACH_CLEP7212)			:= clep7212
>  board-$(CONFIG_MACH_DSS11)			:= dss11
>  board-$(CONFIG_MACH_EDB9301)			:= edb93xx
>  board-$(CONFIG_MACH_EDB9302)			:= edb93xx
> diff --git a/arch/arm/boards/clep7212/Makefile b/arch/arm/boards/clep7212/Makefile
> new file mode 100644
> index 0000000..676e867
> --- /dev/null
> +++ b/arch/arm/boards/clep7212/Makefile
> @@ -0,0 +1 @@
> +obj-y += clep7212.o
> diff --git a/arch/arm/boards/clep7212/clep7212.c b/arch/arm/boards/clep7212/clep7212.c
> new file mode 100644
> index 0000000..1211ebe
> --- /dev/null
> +++ b/arch/arm/boards/clep7212/clep7212.c
> @@ -0,0 +1,62 @@
> +/*
> + * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <init.h>
> +#include <partition.h>
> +#include <io.h>
> +#include <sizes.h>
> +#include <asm/armlinux.h>
> +#include <generated/mach-types.h>
> +
> +#include <mach/clps711x.h>
> +#include <mach/devices.h>
> +
> +static int clps711x_mem_init(void)
> +{
> +	ulong memsize = get_ram_size((ulong *)SDRAM_BASE, SZ_32M);
> +
> +	arm_add_mem_device("ram0", SDRAM_BASE, memsize);
> +
> +	return 0;
> +}
> +mem_initcall(clps711x_mem_init);
> +
> +static int clps711x_devices_init(void)
> +{
> +	/* Setup Chipselects */
> +	setup_memcfg(0, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_16);
> +	setup_memcfg(1, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_8);
> +	setup_memcfg(2, MEMCFG_WAITSTATE_8_3 | MEMCFG_BUS_WIDTH_16 |
> +			MEMCFG_CLKENB);
> +	setup_memcfg(3, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_16);
prefice function with arch
> +
> +	add_cfi_flash_device(DEVICE_ID_DYNAMIC, CS0_BASE, SZ_32M, 0);
> +
> +	devfs_add_partition("nor0", 0x00000, SZ_256K, DEVFS_PARTITION_FIXED,
> +			    "self0");
> +	devfs_add_partition("nor0", SZ_256K, SZ_256K, DEVFS_PARTITION_FIXED,
> +			    "env0");
> +
> +	armlinux_set_bootparams((void *)SDRAM_BASE + 0x100);
> +	armlinux_set_architecture(MACH_TYPE_CLEP7212);
> +	armlinux_set_serial(readl(UNIQID));
> +
> +	return 0;
> +}
> +device_initcall(clps711x_devices_init);
> +
> +static int clps711x_console_init(void)
> +{
> +	register_uart(0);
ditto
> +
> +	return 0;
> +}
> +console_initcall(clps711x_console_init);
> diff --git a/arch/arm/boards/clep7212/config.h b/arch/arm/boards/clep7212/config.h
> new file mode 100644
> index 0000000..6ae9a40
> --- /dev/null
> +++ b/arch/arm/boards/clep7212/config.h
> @@ -0,0 +1,4 @@
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +#endif  /* __CONFIG_H */
> diff --git a/arch/arm/boards/clep7212/env/bin/boot b/arch/arm/boards/clep7212/env/bin/boot
> new file mode 100644
> index 0000000..c3f12ce
> --- /dev/null
> +++ b/arch/arm/boards/clep7212/env/bin/boot
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +
> +. /env/config
> +
> +bootargs_mtd="mtdparts=physmap-flash.0:${nor_parts};mtd-ram.0:-(ramdisk)"
> +
> +bootargs="${bootargs_common} ${bootargs_mtd} root=/dev/mtdblock4"
> +
> +bootm /dev/nor0.kernel
please swtich to defaultenv-2
> diff --git a/arch/arm/boards/clep7212/env/bin/flash_partition b/arch/arm/boards/clep7212/env/bin/flash_partition
> new file mode 100644
> index 0000000..65aece8
...
> diff --git a/arch/arm/boards/clep7212/env/config b/arch/arm/boards/clep7212/env/config
> new file mode 100644
> index 0000000..6f15ee4
> --- /dev/null
> +++ b/arch/arm/boards/clep7212/env/config
> @@ -0,0 +1,4 @@
> +board=clep7212
> +autoboot_timeout=3
> +bootargs_common="earlyprintk console=ttyCL0,57600n8"
> +nor_parts="256k(barebox)ro,256k(env),3584k(kernel),-(root)"
> diff --git a/arch/arm/configs/clep7212_defconfig b/arch/arm/configs/clep7212_defconfig
> new file mode 100644
> index 0000000..c973629
> --- /dev/null
> +++ b/arch/arm/configs/clep7212_defconfig
> @@ -0,0 +1,43 @@
> +CONFIG_ARCH_CLPS711X=y
> +CONFIG_AEABI=y
> +CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
> +CONFIG_BAUDRATE=57600
why?? usally 115200
> +CONFIG_GLOB=y
> +CONFIG_GLOB_SORT=y
> +CONFIG_CMDLINE_EDITING=y
> +CONFIG_AUTO_COMPLETE=y
> +CONFIG_DEFAULT_ENVIRONMENT_COMPRESSED_LZO=y
> +CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
> +CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/clep7212/env"
> +CONFIG_ENABLE_FLASH_NOISE=y
> +CONFIG_ENABLE_PARTITION_NOISE=y
> +CONFIG_ENABLE_DEVICE_NOISE=y
> +CONFIG_CMD_SAVEENV=y
> +CONFIG_CMD_EXPORT=y
> +CONFIG_CMD_PRINTENV=y
> +CONFIG_CMD_GLOBAL=y
> +CONFIG_CMD_AUTOMOUNT=y
> +CONFIG_CMD_BASENAME=y
> +CONFIG_CMD_MEMINFO=y
> +CONFIG_CMD_FLASH=y
> +CONFIG_CMD_BOOTM_SHOW_TYPE=y
> +CONFIG_CMD_BOOTM_INITRD=y
> +CONFIG_CMD_BOOTZ=y
> +# CONFIG_CMD_BOOTU is not set
> +CONFIG_FLEXIBLE_BOOTARGS=y
> +CONFIG_CMD_TIMEOUT=y
> +CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_MAGICVAR=y
> +CONFIG_CMD_MAGICVAR_HELP=y
> +# CONFIG_SPI is not set
> +CONFIG_DRIVER_CFI=y
> +# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
> +# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
> +CONFIG_MTD=y
> +CONFIG_DISK=y
> +CONFIG_DISK_WRITE=y
> +CONFIG_DISK_INTF_PLATFORM_IDE=y
> +CONFIG_FS_CRAMFS=y
> +CONFIG_FS_FAT=y
> +CONFIG_FS_FAT_LFN=y
> +CONFIG_LZO_DECOMPRESS=y
> diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
> index 2ed6789..e732775 100644
> --- a/arch/arm/cpu/Kconfig
> +++ b/arch/arm/cpu/Kconfig
> @@ -8,6 +8,21 @@ config CPU_32
>  # which CPUs we support in the kernel image, and the compiler instruction
>  # optimiser behaviour.
>  
> +# ARM720T
> +config CPU_ARM720T
> +	bool
> +	select CPU_32v4T
> +	help
> +	  The EP7312 is designed for ultra-low-power applications such as
> +	  portable handheld devices that require digital audio decompression
> +	  capability, Internet appliances and low-power industrial controls.
> +
> +	  More information on the Cirrus Logic EP7312 at
> +	  <http://www.cirrus.com/en/products/ep7312.html>.
> +
> +	  Say Y if you want support for the ARM720T processor.
> +	  Otherwise, say N.
> +
>  # ARM920T
>  config CPU_ARM920T
>  	bool
> diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
> new file mode 100644
> index 0000000..45ac017
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/Kconfig
> @@ -0,0 +1,26 @@
> +if ARCH_CLPS711X
> +
> +choice
> +	prompt "Cirrus Logic EP711x/EP721x/EP731x Board Type"
> +
> +config MACH_CLEP7212
> +	bool "Cirrus Logic CLEP7212"
> +	select MACH_HAS_LOWLEVEL_INIT
> +	select MACH_DO_LOWLEVEL_INIT
> +	help
> +	  Boards based on the Cirrus Logic 7212/7312 chips
> +
> +endchoice
> +
> +config BOARDINFO
> +	default "Cirrus Logic CLEP7212"
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0xc0780000
> +
> +config BAREBOX_MAX_IMAGE_SIZE
> +	hex
> +	default 0x00080000
> +
> +endif
> diff --git a/arch/arm/mach-clps711x/Makefile b/arch/arm/mach-clps711x/Makefile
> new file mode 100644
> index 0000000..cb18e34
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/Makefile
> @@ -0,0 +1 @@
> +obj-y += clock.o devices.o lowlevel_init.o
> diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
> new file mode 100644
> index 0000000..acc8623
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/clock.c
> @@ -0,0 +1,111 @@
> +/*
> + * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <clock.h>
> +#include <asm/io.h>
> +#include <linux/clkdev.h>
> +
> +#include <mach/clps711x.h>
> +
> +struct clk {
> +	unsigned long	rate;
> +};
> +
> +static struct clk uart_clk, bus_clk;
> +
> +uint64_t clocksource_read(void)
> +{
> +	return 0xffff - readw(TC2D);
replace with
return ~readw(TC2D);
> +}
> +
> +static struct clocksource cs = {
> +	.read	= clocksource_read,
> +	.mask	= CLOCKSOURCE_MASK(16),
> +};
> +
> +unsigned long clk_get_rate(struct clk *clk)
> +{
> +	return clk->rate;
> +}
> +EXPORT_SYMBOL(clk_get_rate);
> +
> +/* Enable and Disable do nothing */
> +int clk_enable(struct clk *clk)
> +{
> +	return 0;
> +}
> +EXPORT_SYMBOL(clk_enable);
> +
> +void clk_disable(struct clk *clk)
> +{
> +}
> +EXPORT_SYMBOL(clk_disable);
> +
> +static int clocks_init(void)
please split clocksource and clk
> +{
> +	int osc, ext, pll, cpu, timer;
> +	u32 tmp;
> +
> +	osc = 3686400;
> +	ext = 13000000;
> +
> +	tmp = readl(PLLR) >> 24;
> +	if (tmp)
> +		pll = (osc * tmp) / 2;
> +	else
> +		pll = 73728000; /* Default value for old CPUs */
> +
> +	tmp = readl(SYSFLG2);
> +	if (tmp & SYSFLG2_CKMODE) {
> +		cpu = ext;
> +		bus_clk.rate = cpu;
> +	} else {
> +		cpu = pll;
> +		if (cpu >= 36864000)
> +			bus_clk.rate = cpu / 2;
> +		else
> +			bus_clk.rate = 36864000 / 2;
> +	}
> +
> +	uart_clk.rate = bus_clk.rate / 10;
> +
> +	if (tmp & SYSFLG2_CKMODE) {
> +		tmp = readw(SYSCON2);
> +		if (tmp & SYSCON2_OSTB)
> +			timer = ext / 26;
> +		else
> +			timer = 541440;
> +	} else
> +		timer = cpu / 144;
> +
> +	tmp = readl(SYSCON1);
> +	tmp &= ~SYSCON1_TC2M;	/* Free running mode */
> +	tmp |= SYSCON1_TC2S;	/* High frequency source */
> +	writel(tmp, SYSCON1);
> +
> +	clocks_calc_mult_shift(&cs.mult, &cs.shift, timer, NSEC_PER_SEC, 10);
> +
> +	return init_clock(&cs);
> +}
> +core_initcall(clocks_init);
> +
> +static struct clk_lookup clocks_lookups[] = {
> +	CLKDEV_CON_ID("bus", &bus_clk),
> +	CLKDEV_CON_ID("uart", &uart_clk),
> +};
> +
> +static int clkdev_init(void)
> +{
> +	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
> +
> +	return 0;
> +}
> +postcore_initcall(clkdev_init);
> diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
> new file mode 100644
> index 0000000..2aecc2b
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/devices.c
> @@ -0,0 +1,58 @@
> +/*
> + * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +
> +#include <asm/io.h>
> +
> +#include <mach/clps711x.h>
> +
> +void _setup_memcfg(int bank, u32 addr, u32 val)
> +{
> +	u32 tmp = readl(addr);
> +
> +	switch (bank) {
> +	case 0:
> +		tmp &= ~(0xff << 0);
> +		tmp |= val << 0;
> +		break;
> +	case 1:
> +		tmp &= ~(0xff << 8);
> +		tmp |= val << 8;
> +		break;
> +	case 2:
> +		tmp &= ~(0xff << 16);
> +		tmp |= val << 16;
> +		break;
> +	case 3:
> +		tmp &= ~(0xff << 24);
> +		tmp |= val << 24;
> +		break;
no default?
> +	}
> +
> +	writel(tmp, addr);
> +}
> +
> +void setup_memcfg(int bank, u32 val)
prefix with arch name
> +{
> +	switch (bank) {
> +	case 0 ... 3:
> +		_setup_memcfg(bank, MEMCFG1, val);
> +		break;
> +	case 4 ... 7:
> +		_setup_memcfg(bank - 4, MEMCFG2, val);
> +		break;
> +	}
> +}
> +
> +void register_uart(unsigned int id)
> +{
> +	add_generic_device_res("clps711x_serial", id, NULL, 0, NULL);
will no work you must pass resource
> +}
> diff --git a/arch/arm/mach-clps711x/include/mach/clkdev.h b/arch/arm/mach-clps711x/include/mach/clkdev.h
> new file mode 100644
> index 0000000..9278209
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/include/mach/clkdev.h
> @@ -0,0 +1,7 @@
> +#ifndef __MACH_CLKDEV_H
> +#define __MACH_CLKDEV_H
> +
> +#define __clk_get(clk)	({ 1; })
> +#define __clk_put(clk)	do { } while (0)
> +
> +#endif
> diff --git a/arch/arm/mach-clps711x/include/mach/clps711x.h b/arch/arm/mach-clps711x/include/mach/clps711x.h
> new file mode 100644
> index 0000000..ac6edfb
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/include/mach/clps711x.h
> @@ -0,0 +1,283 @@
> +/*
> + *  Hardware definitions for Cirrus Logic CLPS711X
> + *
> + *  Copyright (C) 2000 Deep Blue Solutions Ltd.
> + *  Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + */
> +
> +#ifndef __MACH_CLPS711X_H
> +#define __MACH_CLPS711X_H
> +
> +#define CS0_BASE		(0x00000000)
> +#define CS1_BASE		(0x10000000)
> +#define CS2_BASE		(0x20000000)
> +#define CS3_BASE		(0x30000000)
> +#define CS4_BASE		(0x40000000)
> +#define CS5_BASE		(0x50000000)
> +#define CS6_BASE		(0x60000000)
> +#define CS7_BASE		(0x70000000)
> +#define REGS_BASE		(0x80000000)
> +#define SDRAM_BASE		(0xc0000000)
> +
> +#define PADR			(REGS_BASE + 0x0000)
> +#define PBDR			(REGS_BASE + 0x0001)
> +#define PCDR			(REGS_BASE + 0x0002)
> +#define PDDR			(REGS_BASE + 0x0003)
> +#define PADDR			(REGS_BASE + 0x0040)
> +#define PBDDR			(REGS_BASE + 0x0041)
> +#define PCDDR			(REGS_BASE + 0x0042)
> +#define PDDDR			(REGS_BASE + 0x0043)
> +#define PEDR			(REGS_BASE + 0x0083)
> +#define PEDDR			(REGS_BASE + 0x00c3)
> +#define SYSCON1			(REGS_BASE + 0x0100)
> +#define SYSFLG1			(REGS_BASE + 0x0140)
> +#define MEMCFG1			(REGS_BASE + 0x0180)
> +#define MEMCFG2			(REGS_BASE + 0x01c0)
> +#define DRFPR			(REGS_BASE + 0x0200)
> +#define INTSR1			(REGS_BASE + 0x0240)
> +#define INTMR1			(REGS_BASE + 0x0280)
> +#define LCDCON			(REGS_BASE + 0x02c0)
> +#define TC1D			(REGS_BASE + 0x0300)
> +#define TC2D			(REGS_BASE + 0x0340)
> +#define RTCDR			(REGS_BASE + 0x0380)
> +#define RTCMR			(REGS_BASE + 0x03c0)
> +#define PMPCON			(REGS_BASE + 0x0400)
> +#define CODR			(REGS_BASE + 0x0440)
> +#define UARTDR1			(REGS_BASE + 0x0480)
> +#define UBRLCR1			(REGS_BASE + 0x04c0)
> +#define SYNCIO			(REGS_BASE + 0x0500)
> +#define PALLSW			(REGS_BASE + 0x0540)
> +#define PALMSW			(REGS_BASE + 0x0580)
> +#define STFCLR			(REGS_BASE + 0x05c0)
> +#define BLEOI			(REGS_BASE + 0x0600)
> +#define MCEOI			(REGS_BASE + 0x0640)
> +#define TEOI			(REGS_BASE + 0x0680)
> +#define TC1EOI			(REGS_BASE + 0x06c0)
> +#define TC2EOI			(REGS_BASE + 0x0700)
> +#define RTCEOI			(REGS_BASE + 0x0740)
> +#define UMSEOI			(REGS_BASE + 0x0780)
> +#define COEOI			(REGS_BASE + 0x07c0)
> +#define HALT			(REGS_BASE + 0x0800)
> +#define STDBY			(REGS_BASE + 0x0840)
> +
> +#define FBADDR			(REGS_BASE + 0x1000)
> +#define SYSCON2			(REGS_BASE + 0x1100)
> +#define SYSFLG2			(REGS_BASE + 0x1140)
> +#define INTSR2			(REGS_BASE + 0x1240)
> +#define INTMR2			(REGS_BASE + 0x1280)
> +#define UARTDR2			(REGS_BASE + 0x1480)
> +#define UBRLCR2			(REGS_BASE + 0x14c0)
> +#define SS2DR			(REGS_BASE + 0x1500)
> +#define SRXEOF			(REGS_BASE + 0x1600)
> +#define SS2POP			(REGS_BASE + 0x16c0)
> +#define KBDEOI			(REGS_BASE + 0x1700)
> +
> +#define DAIR			(REGS_BASE + 0x2000)
> +#define DAIDR0			(REGS_BASE + 0x2040)
> +#define DAIDR1			(REGS_BASE + 0x2080)
> +#define DAIDR2			(REGS_BASE + 0x20c0)
> +#define DAISR			(REGS_BASE + 0x2100)
> +#define SYSCON3			(REGS_BASE + 0x2200)
> +#define INTSR3			(REGS_BASE + 0x2240)
> +#define INTMR3			(REGS_BASE + 0x2280)
> +#define LEDFLSH			(REGS_BASE + 0x22c0)
> +#define SDCONF			(REGS_BASE + 0x2300)
> +#define SDRFPR			(REGS_BASE + 0x2340)
> +#define UNIQID			(REGS_BASE + 0x2440)
> +#define DAI64FS			(REGS_BASE + 0x2600)
> +#define PLLW			(REGS_BASE + 0x2610)
> +#define PLLR			(REGS_BASE + 0xa5a8)
> +#define RANDID0			(REGS_BASE + 0x2700)
> +#define RANDID1			(REGS_BASE + 0x2704)
> +#define RANDID2			(REGS_BASE + 0x2708)
> +#define RANDID3			(REGS_BASE + 0x270c)
> +
> +/* common bits: SYSCON1 / SYSCON2 */
> +#define SYSCON_UARTEN		(1 << 8)
> +
> +#define SYSCON1_KBDSCAN(x)	((x) & 15)
> +#define SYSCON1_KBDSCANMASK	(15)
> +#define SYSCON1_TC1M		(1 << 4)
> +#define SYSCON1_TC1S		(1 << 5)
> +#define SYSCON1_TC2M		(1 << 6)
> +#define SYSCON1_TC2S		(1 << 7)
> +#define SYSCON1_UART1EN		SYSCON_UARTEN
> +#define SYSCON1_BZTOG		(1 << 9)
> +#define SYSCON1_BZMOD		(1 << 10)
> +#define SYSCON1_DBGEN		(1 << 11)
> +#define SYSCON1_LCDEN		(1 << 12)
> +#define SYSCON1_CDENTX		(1 << 13)
> +#define SYSCON1_CDENRX		(1 << 14)
> +#define SYSCON1_SIREN		(1 << 15)
> +#define SYSCON1_ADCKSEL(x)	(((x) & 3) << 16)
> +#define SYSCON1_ADCKSEL_MASK	(3 << 16)
> +#define SYSCON1_EXCKEN		(1 << 18)
> +#define SYSCON1_WAKEDIS		(1 << 19)
> +#define SYSCON1_IRTXM		(1 << 20)
> +
> +/* common bits: SYSFLG1 / SYSFLG2 */
> +#define SYSFLG_UBUSY		(1 << 11)
> +#define SYSFLG_URXFE		(1 << 22)
> +#define SYSFLG_UTXFF		(1 << 23)
> +
> +#define SYSFLG1_MCDR		(1 << 0)
> +#define SYSFLG1_DCDET		(1 << 1)
> +#define SYSFLG1_WUDR		(1 << 2)
> +#define SYSFLG1_WUON		(1 << 3)
> +#define SYSFLG1_CTS		(1 << 8)
> +#define SYSFLG1_DSR		(1 << 9)
> +#define SYSFLG1_DCD		(1 << 10)
> +#define SYSFLG1_UBUSY		SYSFLG_UBUSY
> +#define SYSFLG1_NBFLG		(1 << 12)
> +#define SYSFLG1_RSTFLG		(1 << 13)
> +#define SYSFLG1_PFFLG		(1 << 14)
> +#define SYSFLG1_CLDFLG		(1 << 15)
> +#define SYSFLG1_URXFE		SYSFLG_URXFE
> +#define SYSFLG1_UTXFF		SYSFLG_UTXFF
> +#define SYSFLG1_CRXFE		(1 << 24)
> +#define SYSFLG1_CTXFF		(1 << 25)
> +#define SYSFLG1_SSIBUSY		(1 << 26)
> +#define SYSFLG1_ID		(1 << 29)
> +#define SYSFLG1_VERID(x)	(((x) >> 30) & 3)
> +#define SYSFLG1_VERID_MASK	(3 << 30)
> +
> +#define SYSFLG2_SSRXOF		(1 << 0)
> +#define SYSFLG2_RESVAL		(1 << 1)
> +#define SYSFLG2_RESFRM		(1 << 2)
> +#define SYSFLG2_SS2RXFE		(1 << 3)
> +#define SYSFLG2_SS2TXFF		(1 << 4)
> +#define SYSFLG2_SS2TXUF		(1 << 5)
> +#define SYSFLG2_CKMODE		(1 << 6)
> +#define SYSFLG2_UBUSY		SYSFLG_UBUSY
> +#define SYSFLG2_URXFE		SYSFLG_URXFE
> +#define SYSFLG2_UTXFF		SYSFLG_UTXFF
> +
> +#define LCDCON_GSEN		(1 << 30)
> +#define LCDCON_GSMD		(1 << 31)
> +
> +#define SYSCON2_SERSEL		(1 << 0)
> +#define SYSCON2_KBD6		(1 << 1)
> +#define SYSCON2_DRAMZ		(1 << 2)
> +#define SYSCON2_KBWEN		(1 << 3)
> +#define SYSCON2_SS2TXEN		(1 << 4)
> +#define SYSCON2_PCCARD1		(1 << 5)
> +#define SYSCON2_PCCARD2		(1 << 6)
> +#define SYSCON2_SS2RXEN		(1 << 7)
> +#define SYSCON2_UART2EN		SYSCON_UARTEN
> +#define SYSCON2_SS2MAEN		(1 << 9)
> +#define SYSCON2_OSTB		(1 << 12)
> +#define SYSCON2_CLKENSL		(1 << 13)
> +#define SYSCON2_BUZFREQ		(1 << 14)
> +
> +/* common bits: UARTDR1 / UARTDR2 */
> +#define UARTDR_FRMERR		(1 << 8)
> +#define UARTDR_PARERR		(1 << 9)
> +#define UARTDR_OVERR		(1 << 10)
> +
> +/* common bits: UBRLCR1 / UBRLCR2 */
> +#define UBRLCR_BAUD_MASK	((1 << 12) - 1)
> +#define UBRLCR_BREAK		(1 << 12)
> +#define UBRLCR_PRTEN		(1 << 13)
> +#define UBRLCR_EVENPRT		(1 << 14)
> +#define UBRLCR_XSTOP		(1 << 15)
> +#define UBRLCR_FIFOEN		(1 << 16)
> +#define UBRLCR_WRDLEN5		(0 << 17)
> +#define UBRLCR_WRDLEN6		(1 << 17)
> +#define UBRLCR_WRDLEN7		(2 << 17)
> +#define UBRLCR_WRDLEN8		(3 << 17)
> +#define UBRLCR_WRDLEN_MASK	(3 << 17)
> +
> +#define SYNCIO_FRMLEN(x)	(((x) & 0x1f) << 8)
> +#define SYNCIO_SMCKEN		(1 << 13)
> +#define SYNCIO_TXFRMEN		(1 << 14)
> +
> +#define DAIR_RESERVED		(0x0404)
> +#define DAIR_DAIEN		(1 << 16)
> +#define DAIR_ECS		(1 << 17)
> +#define DAIR_LCTM		(1 << 19)
> +#define DAIR_LCRM		(1 << 20)
> +#define DAIR_RCTM		(1 << 21)
> +#define DAIR_RCRM		(1 << 22)
> +#define DAIR_LBM		(1 << 23)
> +
> +#define DAIDR2_FIFOEN		(1 << 15)
> +#define DAIDR2_FIFOLEFT		(0x0d << 16)
> +#define DAIDR2_FIFORIGHT	(0x11 << 16)
> +
> +#define DAISR_RCTS		(1 << 0)
> +#define DAISR_RCRS		(1 << 1)
> +#define DAISR_LCTS		(1 << 2)
> +#define DAISR_LCRS		(1 << 3)
> +#define DAISR_RCTU		(1 << 4)
> +#define DAISR_RCRO		(1 << 5)
> +#define DAISR_LCTU		(1 << 6)
> +#define DAISR_LCRO		(1 << 7)
> +#define DAISR_RCNF		(1 << 8)
> +#define DAISR_RCNE		(1 << 9)
> +#define DAISR_LCNF		(1 << 10)
> +#define DAISR_LCNE		(1 << 11)
> +#define DAISR_FIFO		(1 << 12)
> +
> +#define DAI64FS_I2SF64		(1 << 0)
> +#define DAI64FS_AUDIOCLKEN	(1 << 1)
> +#define DAI64FS_AUDIOCLKSRC	(1 << 2)
> +#define DAI64FS_MCLK256EN	(1 << 3)
> +#define DAI64FS_LOOPBACK	(1 << 5)
> +#define DAI64FS_AUDIV_MASK	(0x7f)
> +#define DAI64FS_AUDIV(x)	(((x) & DAI64FS_AUDIV_MASK) << 8)
> +
> +#define SYSCON3_ADCCON		(1 << 0)
> +#define SYSCON3_CLKCTL0		(1 << 1)
> +#define SYSCON3_CLKCTL1		(1 << 2)
> +#define SYSCON3_DAISEL		(1 << 3)
> +#define SYSCON3_ADCCKNSEN	(1 << 4)
> +#define SYSCON3_VERSN(x)	(((x) >> 5) & 7)
> +#define SYSCON3_VERSN_MASK	(7 << 5)
> +#define SYSCON3_FASTWAKE	(1 << 8)
> +#define SYSCON3_DAIEN		(1 << 9)
> +#define SYSCON3_128FS		SYSCON3_DAIEN
> +#define SYSCON3_ENPD67		(1 << 10)
> +
> +#define SDCONF_ACTIVE		(1 << 10)
> +#define SDCONF_CLKCTL		(1 << 9)
> +#define SDCONF_WIDTH_4		(0 << 7)
> +#define SDCONF_WIDTH_8		(1 << 7)
> +#define SDCONF_WIDTH_16		(2 << 7)
> +#define SDCONF_WIDTH_32		(3 << 7)
> +#define SDCONF_SIZE_16		(0 << 5)
> +#define SDCONF_SIZE_64		(1 << 5)
> +#define SDCONF_SIZE_128		(2 << 5)
> +#define SDCONF_SIZE_256		(3 << 5)
> +#define SDCONF_CASLAT_2		(2)
> +#define SDCONF_CASLAT_3		(3)
> +
> +#define MEMCFG_BUS_WIDTH_32	(1)
> +#define MEMCFG_BUS_WIDTH_16	(0)
> +#define MEMCFG_BUS_WIDTH_8	(3)
> +
> +#define MEMCFG_SQAEN		(1 << 6)
> +#define MEMCFG_CLKENB		(1 << 7)
> +
> +#define MEMCFG_WAITSTATE_8_3	(0 << 2)
> +#define MEMCFG_WAITSTATE_7_3	(1 << 2)
> +#define MEMCFG_WAITSTATE_6_3	(2 << 2)
> +#define MEMCFG_WAITSTATE_5_3	(3 << 2)
> +#define MEMCFG_WAITSTATE_4_2	(4 << 2)
> +#define MEMCFG_WAITSTATE_3_2	(5 << 2)
> +#define MEMCFG_WAITSTATE_2_2	(6 << 2)
> +#define MEMCFG_WAITSTATE_1_2	(7 << 2)
> +#define MEMCFG_WAITSTATE_8_1	(8 << 2)
> +#define MEMCFG_WAITSTATE_7_1	(9 << 2)
> +#define MEMCFG_WAITSTATE_6_1	(10 << 2)
> +#define MEMCFG_WAITSTATE_5_1	(11 << 2)
> +#define MEMCFG_WAITSTATE_4_0	(12 << 2)
> +#define MEMCFG_WAITSTATE_3_0	(13 << 2)
> +#define MEMCFG_WAITSTATE_2_0	(14 << 2)
> +#define MEMCFG_WAITSTATE_1_0	(15 << 2)
> +
> +#endif
> diff --git a/arch/arm/mach-clps711x/include/mach/devices.h b/arch/arm/mach-clps711x/include/mach/devices.h
> new file mode 100644
> index 0000000..76680d8
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/include/mach/devices.h
> @@ -0,0 +1,7 @@
> +#ifndef __MACH_DEVICES_H
> +#define __MACH_DEVICES_H
> +
> +void setup_memcfg(int bank, u32 val);
> +void register_uart(unsigned int id);
> +
> +#endif
> diff --git a/arch/arm/mach-clps711x/lowlevel_init.c b/arch/arm/mach-clps711x/lowlevel_init.c
> new file mode 100644
> index 0000000..ad70769
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/lowlevel_init.c
> @@ -0,0 +1,61 @@
> +/*
> + * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +
> +#include <asm/io.h>
> +#include <asm/barebox-arm.h>
> +
> +#include <mach/clps711x.h>
> +
> +#define MAIN_CLOCK		3686400
> +#define CPU_SPEED		92160000
> +#define BUS_SPEED		(CPU_SPEED / 2)
> +
> +#define PLL_VALUE		(((CPU_SPEED * 2) / MAIN_CLOCK) << 24)
> +#define SDRAM_REFRESH_RATE	(64 * (BUS_SPEED / (8192 * 1000)))
> +
> +void __noreturn reset_cpu(unsigned long addr)
> +{
> +	for (;;)
no cpu reset?
> +		;
> +
> +	unreachable();
> +}
> +
> +void __naked __bare_init board_init_lowlevel(void)
> +{
> +	u32 tmp;
> +
> +	/* Setup base clock */
> +	writel(SYSCON3_CLKCTL0 | SYSCON3_CLKCTL1, SYSCON3);
> +	asm("nop");
> +
> +	/* Setup PLL */
> +	writel(PLL_VALUE, PLLW);
> +	asm("nop");
> +
> +	/* CLKEN select, SDRAM width=32 */
> +	writel(SYSCON2_CLKENSL, SYSCON2);
> +
> +	/* Enable SDQM pins */
> +	tmp = readl(SYSCON3);
> +	tmp &= ~SYSCON3_ENPD67;
> +	writel(tmp, SYSCON3);
> +
> +	/* Setup Refresh Rate (64ms 8K Blocks) */
> +	writel(SDRAM_REFRESH_RATE, SDRFPR);
> +
> +	/* Setup SDRAM (32MB, 16Bit*2, CAS=3) */
> +	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
> +	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
> +
> +	board_init_lowlevel_return();
> +}
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index 7eb96ed..02bc8bf 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -43,6 +43,11 @@ config DRIVER_SERIAL_BLACKFIN
>  	default y
>  	bool "Blackfin serial driver"
>  
> +config DRIVER_SERIAL_CLPS711X
> +	depends on ARCH_CLPS711X
> +	default y
> +	bool "CLPS711X serial driver"
please spilt drivers in an other patch
> +
>  config DRIVER_SERIAL_ALTERA
>  	depends on NIOS2
>  	default y
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index e2d56b9..e6f1e22 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -13,6 +13,7 @@ obj-$(CONFIG_DRIVER_SERIAL_NETX)		+= serial_netx.o
>  obj-$(CONFIG_DRIVER_SERIAL_LINUX_CONSOLE)	+= linux_console.o
>  obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)		+= serial_mpc5xxx.o
>  obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)		+= serial_blackfin.o
> +obj-$(CONFIG_DRIVER_SERIAL_CLPS711X)		+= serial_clps711x.o
>  obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
>  obj-$(CONFIG_DRIVER_SERIAL_PL010)		+= serial_pl010.o
>  obj-$(CONFIG_DRIVER_SERIAL_S3C)			+= serial_s3c.o
> diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
> new file mode 100644
> index 0000000..babb189
> --- /dev/null
> +++ b/drivers/serial/serial_clps711x.c
> @@ -0,0 +1,119 @@
> +/*
> + * Simple CLPS711X serial driver
> + *
> + * (C) Copyright 2012 Alexander Shiyan <shc_work@mail.ru>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <io.h>
> +#include <linux/clk.h>
> +
> +#include <mach/clps711x.h>
> +
> +static int clps711x_setbaudrate(struct console_device *cdev, int baudrate)
> +{
> +	int divisor;
> +	u32 tmp, ubrlcr = cdev->dev->id ? UBRLCR2 : UBRLCR1;
> +
 this is supposed to be pass via resources
> +	divisor = (clk_get_rate(cdev->dev->priv) / 16) / baudrate;
> +
> +	tmp = readl(ubrlcr) & ~UBRLCR_BAUD_MASK;
> +	tmp |= divisor - 1;
> +	writel(tmp, ubrlcr);
> +
> +	return 0;
> +}
> +
> +static int clps711x_init_port(struct console_device *cdev)
> +{
> +	u32 syscon = cdev->dev->id ? SYSCON2 : SYSCON1;
> +	u32 ubrlcr = cdev->dev->id ? UBRLCR2 : UBRLCR1;
> +	u32 tmp;
> +
> +	/* Disable the UART */
> +	writel(readl(syscon) & ~SYSCON_UARTEN, syscon);
> +
> +	/* Setup Line Control Register */
> +	tmp = readl(ubrlcr) & UBRLCR_BAUD_MASK;
> +	tmp |= UBRLCR_FIFOEN | UBRLCR_WRDLEN8; /* FIFO on, 8N1 mode */
> +	writel(tmp, ubrlcr);
> +
> +	/* Enable the UART */
> +	writel(readl(syscon) | SYSCON_UARTEN, syscon);
> +
> +	return 0;
> +}
> +
> +static void clps711x_putc(struct console_device *cdev, char c)
> +{
> +	u32 sysflg = cdev->dev->id ? SYSFLG2 : SYSFLG1;
> +	u32 uartdr = cdev->dev->id ? UARTDR2 : UARTDR1;
> +
> +	/* Wait until there is space in the FIFO */
> +	while (readl(sysflg) & SYSFLG_UTXFF)
> +		;
> +
> +	/* Send the character */
> +	writew(c, uartdr);
> +}
> +
> +static int clps711x_getc(struct console_device *cdev)
> +{
> +	u32 sysflg = cdev->dev->id ? SYSFLG2 : SYSFLG1;
> +	u32 uartdr = cdev->dev->id ? UARTDR2 : UARTDR1;
> +	u16 data;
> +
> +	/* Wait until there is data in the FIFO */
> +	while (readl(sysflg) & SYSFLG_URXFE)
> +		;
> +
> +	data = readw(uartdr);
> +
> +	/* Check for an error flag */
> +	if (data & (UARTDR_FRMERR | UARTDR_PARERR | UARTDR_OVERR))
> +		return -1;
> +
> +	return (int)data;
> +}
> +
> +static int clps711x_tstc(struct console_device *cdev)
> +{
> +	u32 sysflg = cdev->dev->id ? SYSFLG2 : SYSFLG1;
> +
> +	return !(readl(sysflg) & SYSFLG_URXFE);
> +}
> +
> +static int clps711x_probe(struct device_d *dev)
> +{
> +	struct console_device *cdev = xzalloc(sizeof(struct console_device));
> +
> +	dev->priv	= clk_get(NULL, "uart");
no check?

put a BUG_ON at least
> +
> +	cdev->dev	= dev;
> +	cdev->f_caps	= CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
> +	cdev->tstc	= clps711x_tstc;
> +	cdev->putc	= clps711x_putc;
> +	cdev->getc	= clps711x_getc;
> +	cdev->setbrg	= clps711x_setbaudrate;
> +	clps711x_setbaudrate(cdev, CONFIG_BAUDRATE);
> +	clps711x_init_port(cdev);
> +
> +	return console_register(cdev);
> +}
> +
> +static struct driver_d clps711x_driver = {
> +	.name	= "clps711x_serial",
> +	.probe	= clps711x_probe,
> +};
> +
> +static int clps711x_init(void)
> +{
> +	return register_driver(&clps711x_driver);
will not work on next use platfrom_driver

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

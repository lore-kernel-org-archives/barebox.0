Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK7Wl-0004R4-9u
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 13:01:16 +0000
Date: Fri, 5 Oct 2012 15:00:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121005130051.GS1322@pengutronix.de>
References: <CAOQ7t2audMLVExJ6tWKWtadwPcsWfxK03L68RE0EbSBd0Dcjgg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOQ7t2audMLVExJ6tWKWtadwPcsWfxK03L68RE0EbSBd0Dcjgg@mail.gmail.com>
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
Subject: Re: [PATCH 3/4] Add support for BCM2835
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 05, 2012 at 10:47:50AM +0200, Carlo Caione wrote:
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
> ---
>  arch/arm/Kconfig                              |   7 +
>  arch/arm/Makefile                             |   1 +
>  arch/arm/mach-bcm2835/Kconfig                 |  22 +++
>  arch/arm/mach-bcm2835/Makefile                |   3 +
>  arch/arm/mach-bcm2835/clock.c                 |  59 ++++++++
>  arch/arm/mach-bcm2835/core.c                  | 108 ++++++++++++++
>  arch/arm/mach-bcm2835/gpio.c                  | 145 ++++++++++++++++++
>  arch/arm/mach-bcm2835/include/mach/clkdev.h   |   7 +
>  arch/arm/mach-bcm2835/include/mach/clock.h    |  10 ++
>  arch/arm/mach-bcm2835/include/mach/core.h     |  27 ++++
>  arch/arm/mach-bcm2835/include/mach/gpio.h     |   9 ++
>  arch/arm/mach-bcm2835/include/mach/platform.h | 207 ++++++++++++++++++++++++++
>  12 files changed, 605 insertions(+)
>  create mode 100644 arch/arm/mach-bcm2835/Kconfig
>  create mode 100644 arch/arm/mach-bcm2835/Makefile
>  create mode 100644 arch/arm/mach-bcm2835/clock.c
>  create mode 100644 arch/arm/mach-bcm2835/core.c
>  create mode 100644 arch/arm/mach-bcm2835/gpio.c
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/clkdev.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/clock.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/core.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
>  create mode 100644 arch/arm/mach-bcm2835/include/mach/platform.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 8278c82..5029c50 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -31,6 +31,12 @@ config ARCH_AT91
>  	select HAS_DEBUG_LL
>  	select HAVE_MACH_ARM_HEAD
> 
> +config ARCH_BCM2835
> +	bool "Broadcom BCM2835 boards"
> +	select GENERIC_GPIO
> +	select GPIOLIB
> +	select CPU_ARM1176
> +
>  config ARCH_EP93XX
>  	bool "Cirrus Logic EP93xx"
>  	select CPU_ARM920T
> @@ -99,6 +105,7 @@ endchoice
> 
>  source arch/arm/cpu/Kconfig
>  source arch/arm/mach-at91/Kconfig
> +source arch/arm/mach-bcm2835/Kconfig
>  source arch/arm/mach-ep93xx/Kconfig
>  source arch/arm/mach-imx/Kconfig
>  source arch/arm/mach-mxs/Kconfig
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 855043a..2ea11d6 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -52,6 +52,7 @@ AFLAGS   += -include asm/unified.h -msoft-float
> $(AFLAGS_THUMB2)
>  # Machine directory name.  This list is sorted alphanumerically
>  # by CONFIG_* macro name.
>  machine-$(CONFIG_ARCH_AT91)		:= at91
> +machine-$(CONFIG_ARCH_BCM2835)		:= bcm2835
>  machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
>  machine-$(CONFIG_ARCH_IMX)		:= imx
>  machine-$(CONFIG_ARCH_MXS)		:= mxs
> diff --git a/arch/arm/mach-bcm2835/Kconfig b/arch/arm/mach-bcm2835/Kconfig
> new file mode 100644
> index 0000000..9591004
> --- /dev/null
> +++ b/arch/arm/mach-bcm2835/Kconfig
> @@ -0,0 +1,22 @@
> +if ARCH_BCM2835
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x04000000 if MACH_RPI
> +
> +
> +config BOARDINFO
> +	default "RaspberryPi (BCM2835/ARM1176JZF-S)" if MACH_RPI
> +
> +choice
> +	prompt "Broadcom Board type"
> +
> +config MACH_RPI
> +	bool "RaspberryPi (BCM2835/ARM1176JZF-S)"
> +	select ARM_AMBA
> +	select CLKDEV_LOOKUP
> +
> +endchoice
> +
> +
> +endif
> diff --git a/arch/arm/mach-bcm2835/Makefile b/arch/arm/mach-bcm2835/Makefile
> new file mode 100644
> index 0000000..04e6470
> --- /dev/null
> +++ b/arch/arm/mach-bcm2835/Makefile
> @@ -0,0 +1,3 @@
> +obj-y += core.o
> +obj-y += clock.o
> +obj-y += gpio.o
> diff --git a/arch/arm/mach-bcm2835/clock.c b/arch/arm/mach-bcm2835/clock.c
> new file mode 100644
> index 0000000..1d9b24a
> --- /dev/null
> +++ b/arch/arm/mach-bcm2835/clock.c
> @@ -0,0 +1,59 @@
> +/*
> + * Copyright (C) 2009 Alessandro Rubini
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <clock.h>
> +#include <debug_ll.h>
> +
> +#include <linux/clkdev.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +
> +#include <io.h>
> +#include <asm/hardware/arm_timer.h>
> +#include <asm/armlinux.h>
> +
> +#include <mach/platform.h>
> +#include <mach/clock.h>
> +
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
> +unsigned long clk_get_rate(struct clk *clk)
> +{
> +	return clk->rate;
> +}
> +EXPORT_SYMBOL(clk_get_rate);
> +
> +long clk_round_rate(struct clk *clk, unsigned long rate)
> +{
> +	return clk->rate;
> +}
> +EXPORT_SYMBOL(clk_round_rate);
> +
> +int clk_set_rate(struct clk *clk, unsigned long rate)
> +{
> +	return -EIO;
> +}
> +EXPORT_SYMBOL(clk_set_rate);
> +
> +int bcm2835_clk_create(struct clk *clk, const char *dev_id)
> +{
> +	struct clk_lookup *clkdev;
> +
> +	clkdev = clkdev_alloc(clk, NULL, dev_id);
> +	if (!clkdev)
> +		return -ENOMEM;
> +	clkdev_add(clkdev);
> +	return 0;
> +}
> diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
> new file mode 100644
> index 0000000..2c41c86
> --- /dev/null
> +++ b/arch/arm/mach-bcm2835/core.c
> @@ -0,0 +1,108 @@
> +/*
> + * Author: Carlo Caione <carlo@carlocaione.org>
> + *
> + * Based on mach-nomadik
> + * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
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
> + *
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <clock.h>
> +#include <debug_ll.h>
> +
> +#include <linux/clkdev.h>
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +
> +#include <io.h>
> +#include <asm/hardware/arm_timer.h>
> +#include <asm/armlinux.h>
> +
> +#include <mach/platform.h>
> +#include <mach/core.h>
> +#include <mach/clock.h>
> +#include <linux/amba/bus.h>
> +
> +static struct clk ref30_clk = {
> +	.rate = 3000000,
> +};
> +
> +static struct clk bcm2835_dummy;
> +
> +void bcm2835_add_device_sdram(u32 size)
> +{
> +	arm_add_mem_device("ram0", 0x00000000, size);
> +}
> +
> +static struct clk_lookup clocks_lookups[] = {
> +	CLKDEV_CON_ID("apb_pclk", &bcm2835_dummy),
> +	CLKDEV_DEV_ID("uart-pl0110", &ref30_clk),
> +};
> +
> +#define STC_FREQ_HZ 1000000
> +
> +static uint64_t stc_read_cycles(void)
> +{
> +	return (uint64_t) readl(ST_BASE + 0x04);
> +}
> +
> +static struct clocksource bcm2835_cs = {
> +	.read = stc_read_cycles,
> +	.mask = CLOCKSOURCE_MASK(32),
> +};
> +
> +static int bcm2835_gpio_init(void)
> +{
> +    add_generic_device("bcm2835-gpio", 0, NULL, 0x20200000, 0xB0,
> IORESOURCE_MEM, NULL);
> +	return 0;
> +}
> +coredevice_initcall(bcm2835_gpio_init);
> +
> +static int bcm2835_clocksource_init(void)
> +{
> +	clocks_calc_mult_shift(&bcm2835_cs.mult, &bcm2835_cs.shift,
> STC_FREQ_HZ, NSEC_PER_SEC, 60);
> +	return init_clock(&bcm2835_cs);
> +}
> +core_initcall(bcm2835_clocksource_init);
> +
> +static int bcm2835_clkdev_init(void)
> +{
> +	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
> +	return 0;
> +}
> +postcore_initcall(bcm2835_clkdev_init);
> +
> +void bcm2835_register_uart(void)
> +{
> +	amba_apb_device_add(NULL, "uart-pl011", 0, UART0_BASE, 4096, NULL, 0);
> +}

Since this SoC has multiple uarts please the uart number to the function
name.

> +void __noreturn reset_cpu (unsigned long addr)
> +{
> +	uint32_t rstc;
> +
> +    rstc = readl(PM_RSTC);
> +    rstc &= ~PM_RSTC_WRCFG_SET;
> +    rstc |= PM_RSTC_WRCFG_FULL_RESET;
> +    writel(PM_PASSWORD | RESET_TIMEOUT, PM_WDOG);
> +    writel(PM_PASSWORD | rstc, PM_RSTC);

Whitespaces instead of tabs here.

> +++ b/arch/arm/mach-bcm2835/include/mach/platform.h
> @@ -0,0 +1,207 @@
> +/*
> + * arch/arm/mach-bcm2708/include/mach/platform.h
> + *
> + * Copyright (C) 2010 Broadcom
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation; either version 2 of the License, or
> + * (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
> + */
> +
> +#ifndef _BCM2708_PLATFORM_H
> +#define _BCM2708_PLATFORM_H
> +
> +
> +
> +/*
> + *  SDRAM
> + */
> +#define BCM2708_SDRAM_BASE           0x00000000
> +
> +/*
> + *  Logic expansion modules
> + *
> + */
> +
> +
> +/*
> + * Definitions and addresses for the ARM CONTROL logic
> + * This file is manually generated.
> + */
> +
> +#define BCM2708_PERI_BASE        0x20000000
> +#define ST_BASE                  (BCM2708_PERI_BASE + 0x3000)   /*

I think you are doing yourself a favout when you add SoC prefixes to the
register defines.

> +
> +/*
> + * Interrupt assignments
> + */
> +
> +#define ARM_IRQ1_BASE                  0
> +#define INTERRUPT_TIMER0               (ARM_IRQ1_BASE + 0)

You can drop these. We won't need them.

> +
> +#define MAX_TIMER                       2
> +#define MAX_PERIOD                      699050
> +#define TICKS_PER_uSEC                  1
> +
> +/*
> + *  These are useconds NOT ticks.
> + *
> + */
> +#define mSEC_1                          1000
> +#define mSEC_5                          (mSEC_1 * 5)
> +#define mSEC_10                         (mSEC_1 * 10)
> +#define mSEC_25                         (mSEC_1 * 25)
> +#define SEC_1                           (mSEC_1 * 1000)

Are these needed?

> +
> +/*
> + * Watchdog
> + */
> +#define PM_RSTC			       (PM_BASE+0x1c)
> +#define PM_RSTS			       (PM_BASE+0x20)
> +#define PM_WDOG			       (PM_BASE+0x24)

Please do not add unit specific defines to the SoC register file. Add
them next to the user instead. This will scale better when another SoC
with the same unit but a different base address comes up.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

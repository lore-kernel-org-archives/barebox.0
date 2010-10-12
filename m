Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5XwD-00005U-UY
	for barebox@lists.infradead.org; Tue, 12 Oct 2010 06:02:15 +0000
Date: Tue, 12 Oct 2010 08:00:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101012060000.GH7412@game.jcrosoft.org>
References: <20101011162832.14102.69708.stgit@zaytsev.su>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101011162832.14102.69708.stgit@zaytsev.su>
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
Subject: Re: [PATCH v3] Add basic support from ARM Versatile/PB
To: Alexey Zaytsev <alexey.zaytsev@gmail.com>
Cc: barebox@lists.infradead.org, Bahadir Balban <bbalban@b-labs.com>

> +if MACH_VERSATILEPB
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0
sure?
> +
> +config BOARDINFO
> +	default "ARM Versatile/PB (ARM926EJ-S)"
> +endif
> diff --git a/arch/arm/boards/versatile/Makefile b/arch/arm/boards/versatile/Makefile
> new file mode 100644
> index 0000000..a17aed3
> --- /dev/null
> +++ b/arch/arm/boards/versatile/Makefile
> @@ -0,0 +1,2 @@
> +
> +obj-$(CONFIG_MACH_VERSATILEPB) += versatilepb.o
> diff --git a/arch/arm/boards/versatile/config.h b/arch/arm/boards/versatile/config.h
> new file mode 100644
> index 0000000..25bb18f
> --- /dev/null
> +++ b/arch/arm/boards/versatile/config.h
> @@ -0,0 +1,5 @@
> +
> +#ifndef __CONFIG_H
> +#define __CONFIG_H
> +
> +#endif	/* __CONFIG_H */
> diff --git a/arch/arm/boards/versatile/env/bin/init b/arch/arm/boards/versatile/env/bin/init
> new file mode 100644
> index 0000000..224a6b4
> --- /dev/null
> +++ b/arch/arm/boards/versatile/env/bin/init
> @@ -0,0 +1 @@
> +# Dummy Init environment script
use defaultenv it will be better

> +static struct device_d smc911x_dev = {
> +	.id		= -1,
> +	.name		= "smc91c111",
> +	.map_base	= VERSATILE_ETH_BASE,
> +	.size		= 64 * 1024
it will be good to have a comma here
> +};
> +
> +static int vpb_devices_init(void)
> +{
> +	versatile_add_sdram(64 * 1024 *1024);
> +
> +	register_device(&smc911x_dev);
> +
> +	armlinux_set_architecture(MACH_TYPE_VERSATILE_PB);
> +	armlinux_set_bootparams((void *)(0x00000100));
> +
> +	return 0;
> +}
> +device_initcall(vpb_devices_init);
> +++ b/arch/arm/include/asm/arm_timer.h
> @@ -0,0 +1,33 @@
> +#ifndef __ASM_ARM_HARDWARE_ARM_TIMER_H
> +#define __ASM_ARM_HARDWARE_ARM_TIMER_H
> +
> +/*
> + * From Linux v2.6.35
> + * arch/arm/include/asm/hardware/arm_timer.h
please keep the header at the same location
to simplify code sharing
> + *
> + * ARM timer implementation, found in Integrator, Versatile and Realview
> + * platforms.  Not all platforms support all registers and bits in these
> + * registers, so we mark them with A for Integrator AP, C for Integrator
> + * CP, V for Versatile and R for Realview.
> + *
> + * Integrator AP has 16-bit timers, Integrator CP, Versatile and Realview
> + * can have 16-bit or 32-bit selectable via a bit in the control register.
> + */
> +#define TIMER_LOAD	0x00			/* ACVR rw */
> +#define TIMER_VALUE	0x04			/* ACVR ro */
> +#define TIMER_CTRL	0x08			/* ACVR rw */
> +#define TIMER_CTRL_ONESHOT	(1 << 0)	/*  CVR */
> +#define TIMER_CTRL_32BIT	(1 << 1)	/*  CVR */
> +#define TIMER_CTRL_DIV1		(0 << 2)	/* ACVR */
> +#define TIMER_CTRL_DIV16	(1 << 2)	/* ACVR */
> +#define TIMER_CTRL_DIV256	(2 << 2)	/* ACVR */
> +#define TIMER_CTRL_IE		(1 << 5)	/*   VR */
> +#define TIMER_CTRL_PERIODIC	(1 << 6)	/* ACVR */
> +#define TIMER_CTRL_ENABLE	(1 << 7)	/* ACVR */
> +
> +#define TIMER_INTCLR	0x0c			/* ACVR wo */
> +#define TIMER_RIS	0x10			/*  CVR ro */
> +#define TIMER_MIS	0x14			/*  CVR ro */
> +#define TIMER_BGLOAD	0x18			/*  CVR rw */
> +
> +#endif
...
> +obj-y += core.o
> diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
> new file mode 100644
> index 0000000..94543c6
> --- /dev/null
> +++ b/arch/arm/mach-versatile/core.c
> @@ -0,0 +1,212 @@
> +/*
> + * Copyright (C) 2010 B Labs Ltd,
> + * http://l4dev.org
> + * Author: Alexey Zaytsev <alexey.zaytsev@gmail.com>
> + *
> + * Based on mach-nomadik
> + * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; version 2 of
> + * the License.
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
> +#include <asm/io.h>
> +#include <asm/arm_timer.h>
> +#include <asm/armlinux.h>
> +
> +#include <mach/platform.h>
> +#include <mach/init.h>
> +
> +static struct memory_platform_data ram_pdata = {
> +	.name = "ram0",
> +	.flags = DEVFS_RDWR,
> +};
> +
> +static struct device_d sdram_dev = {
> +	.id = -1,
> +	.name = "mem",
> +	.map_base = 0x00000000,
> +	.platform_data = &ram_pdata,
> +};
> +
> +void versatile_add_sdram(u32 size)
> +{
> +	sdram_dev.size = size;
> +	register_device(&sdram_dev);
> +	armlinux_add_dram(&sdram_dev);
> +}
> +
> +static struct device_d uart0_serial_device = {
> +	.id = 0,
> +	.name = "uart-pl011",
> +	.map_base = VERSATILE_UART0_BASE,
> +	.size = 4096,
> +};
> +
> +static struct device_d uart1_serial_device = {
> +	.id = 1,
> +	.name = "uart-pl011",
> +	.map_base = VERSATILE_UART1_BASE,
> +	.size = 4096,
> +};
> +
> +static struct device_d uart2_serial_device = {
> +	.id = 2,
> +	.name = "uart-pl011",
> +	.map_base = VERSATILE_UART2_BASE,
> +	.size = 4096,
> +};
> +static struct device_d uart3_serial_device = {
> +	.id = 3,
> +	.name = "uart-pl011",
> +	.map_base = VERSATILE_UART3_BASE,
> +	.size = 4096,
> +};
> +
> +struct clk {
> +	unsigned long rate;
> +};
> +
> +static struct clk ref_clk_24 = {
> +	.rate = 24000000,
> +};
> +
> +unsigned long clk_get_rate(struct clk *clk)
> +{
> +	return clk->rate;
> +}
> +EXPORT_SYMBOL(clk_get_rate);
> +
> +/* enable and disable do nothing */
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
> +/* Create a clock structure with the given name */
> +int vpb_clk_create(struct clk *clk, const char *dev_id)
> +{
> +	struct clk_lookup *clkdev;
> +
> +	clkdev = clkdev_alloc(clk, NULL, dev_id);
> +	if (!clkdev)
> +		return -ENOMEM;
> +
> +	clkdev_add(clkdev);
> +	return 0;
> +}
> +
> +/* 1Mhz / 256 */
> +#define TIMER_FREQ (1000000/256)
> +
> +#define TIMER0_BASE (VERSATILE_TIMER0_1_BASE)
> +#define TIMER1_BASE ((VERSATILE_TIMER0_1_BASE) + 0x20)
> +#define TIMER2_BASE (VERSATILE_TIMER2_3_BASE)
> +#define TIMER3_BASE ((VERSATILE_TIMER2_3_BASE) + 0x20)
> +
> +static uint64_t vpb_clocksource_read(void)
> +{
> +	return ~readl(TIMER0_BASE + TIMER_VALUE);
> +}
> +
> +static struct clocksource vpb_cs = {
> +	.read = vpb_clocksource_read,
> +	.mask = 0xffffffff,
> +	.shift = 10,
> +};
> +
> +/* From Linux v2.6.35
> + * arch/arm/mach-versatile/core.c */
please add the copyright 

Copyright (C) 1999 - 2003 ARM Limited
Copyright (C) 2000 Deep Blue Solutions Ltd

too
> +static void versatile_timer_init (void)
> +{
> +	u32 val;
> +
> +	/*
> +	 * set clock frequency:
> +	 *      VERSATILE_REFCLK is 32KHz
> +	 *      VERSATILE_TIMCLK is 1MHz
> +	 */
> +
> +	val = readl(VERSATILE_SCTL_BASE);
> +	val |= (VERSATILE_TIMCLK << VERSATILE_TIMER1_EnSel);
> +	writel(val, VERSATILE_SCTL_BASE);
> +
> +	/*
> +	 * Disable all timers, just to be sure.
> +	 */
> +
> +	writel(0, TIMER0_BASE + TIMER_CTRL);
> +	writel(0, TIMER1_BASE + TIMER_CTRL);
> +	writel(0, TIMER2_BASE + TIMER_CTRL);
> +	writel(0, TIMER3_BASE + TIMER_CTRL);
> +
> +        writel(TIMER_CTRL_32BIT | TIMER_CTRL_ENABLE | TIMER_CTRL_DIV256,
> +			                TIMER0_BASE + TIMER_CTRL);
> +}
> +
> 
there is still a lots of whitespace

please use checkpatch.pl

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

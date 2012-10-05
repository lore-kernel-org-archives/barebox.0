Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK6lY-0007AO-CI
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 12:12:29 +0000
Date: Fri, 5 Oct 2012 14:12:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121005121204.GP1322@pengutronix.de>
References: <1349354221-28409-3-git-send-email-shc_work@mail.ru>
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

On Thu, Oct 04, 2012 at 04:37:01PM +0400, Alexander Shiyan wrote:
> This patch adds new architecture (CLPS711X) into barebox.
> The core-logic functionality of the device is built around an ARM720T
> processor running at clock speeds up to 90 MHz and 74 MHz.
> Patch also adds a generic board support (CLEP7212, Linux ARM ID=91) and
> serial driver for this CPU.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
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

This seems wrong. Not every ARM720T is a EP7312. I just saw we have
similar in the tree already with the ARM920T.

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
> +	}
> +
> +	writel(tmp, addr);
> +}
> +
> +void setup_memcfg(int bank, u32 val)

Please add a proper prefix to such functions (clps711x_ or similar)

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

Ditto.

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
> +		;
> +
> +	unreachable();
> +}

Use hang() instead. It will basically do the same but also print an
error message.


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

This is board specific, right? Then this should be done in a board file.
BTW board_init_lowlevel no longer exists. Rename this function to reset
and call common_reset() on entry.

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

Please drop this include and specify the registers as offsets to the
base address here.

> +
> +static int clps711x_probe(struct device_d *dev)
> +{
> +	struct console_device *cdev = xzalloc(sizeof(struct console_device));
> +
> +	dev->priv	= clk_get(NULL, "uart");

should be clk_get(dev, NULL);

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

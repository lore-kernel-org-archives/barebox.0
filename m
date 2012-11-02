Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUESX-0005JV-49
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 10:26:42 +0000
Received: from mail247.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 2CCDD104F29F
 for <barebox@lists.infradead.org>; Fri,  2 Nov 2012 11:33:50 +0100 (CET)
Date: Fri, 2 Nov 2012 11:24:29 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121102102429.GR29599@game.jcrosoft.org>
References: <1351847836-8221-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351847836-8221-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH v4 1/3] ARM: Add initial support for CLPS711X architecture
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 13:17 Fri 02 Nov     , Alexander Shiyan wrote:
> This patch adds new architecture (CLPS711X) into barebox.
> The core-logic functionality of the device is built around an ARM720T
> processor running at clock speeds up to 90 MHz.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/Kconfig                               |    6 +
>  arch/arm/Makefile                              |    1 +
>  arch/arm/mach-clps711x/Kconfig                 |    8 +
>  arch/arm/mach-clps711x/Makefile                |    1 +
>  arch/arm/mach-clps711x/clock.c                 |  113 ++++++++++
>  arch/arm/mach-clps711x/devices.c               |   37 +++
>  arch/arm/mach-clps711x/include/mach/clkdev.h   |    7 +
>  arch/arm/mach-clps711x/include/mach/clps711x.h |  284 ++++++++++++++++++++++++
>  arch/arm/mach-clps711x/include/mach/devices.h  |    6 +
>  arch/arm/mach-clps711x/reset.c                 |   21 ++
>  10 files changed, 484 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/mach-clps711x/Kconfig
>  create mode 100644 arch/arm/mach-clps711x/Makefile
>  create mode 100644 arch/arm/mach-clps711x/clock.c
>  create mode 100644 arch/arm/mach-clps711x/devices.c
>  create mode 100644 arch/arm/mach-clps711x/include/mach/clkdev.h
>  create mode 100644 arch/arm/mach-clps711x/include/mach/clps711x.h
>  create mode 100644 arch/arm/mach-clps711x/include/mach/devices.h
>  create mode 100644 arch/arm/mach-clps711x/reset.c
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 57b3ca7..28071a5 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -31,6 +31,11 @@ config ARCH_AT91
>  	select HAS_DEBUG_LL
>  	select HAVE_MACH_ARM_HEAD
>  
> +config ARCH_CLPS711X
> +	bool "Cirrus Logic EP711x/EP721x/EP731x"
> +	select CLKDEV_LOOKUP
> +	select CPU_32v4T
> +
>  config ARCH_EP93XX
>  	bool "Cirrus Logic EP93xx"
>  	select CPU_ARM920T
> @@ -97,6 +102,7 @@ endchoice
>  
>  source arch/arm/cpu/Kconfig
>  source arch/arm/mach-at91/Kconfig
> +source arch/arm/mach-clps711x/Kconfig
>  source arch/arm/mach-ep93xx/Kconfig
>  source arch/arm/mach-imx/Kconfig
>  source arch/arm/mach-mxs/Kconfig
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 855043a..da80e00 100644
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
> diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
> new file mode 100644
> index 0000000..56ca2ca
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/Kconfig
> @@ -0,0 +1,8 @@
> +if ARCH_CLPS711X
> +
> +choice
> +	prompt "Cirrus Logic EP711x/EP721x/EP731x Board Type"
> +
> +endchoice
> +
> +endif
> diff --git a/arch/arm/mach-clps711x/Makefile b/arch/arm/mach-clps711x/Makefile
> new file mode 100644
> index 0000000..41012bc
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/Makefile
> @@ -0,0 +1 @@
> +obj-y += clock.o devices.o reset.o
> diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
> new file mode 100644
> index 0000000..5cafba9
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/clock.c
> @@ -0,0 +1,113 @@
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
> +	return ~readw(TC2D);
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
> +int clk_enable(struct clk *clk)
> +{
> +	/* Do nothing */
> +	return 0;
> +}
> +EXPORT_SYMBOL(clk_enable);
> +
> +void clk_disable(struct clk *clk)
> +{
> +	/* Do nothing */
> +}
> +EXPORT_SYMBOL(clk_disable);
> +
> +static int clocks_init(void)
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
this wrong split clocksource driver and clocks init

the clock driver will have to go to drivers/clocksource
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
> +	CLKDEV_DEV_ID("clps711x_serial0", &uart_clk),
> +	CLKDEV_DEV_ID("clps711x_serial1", &uart_clk),
> +};
> +
> +static int clkdev_init(void)
> +{
> +	clkdev_add_table(clocks_lookups, ARRAY_SIZE(clocks_lookups));
> +
> +	return 0;
> +}
> +postcore_initcall(clkdev_init);
Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

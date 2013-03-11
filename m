Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF0Yd-0004KM-6t
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 11:06:20 +0000
Received: from mail247.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id EFE42104E465
 for <barebox@lists.infradead.org>; Mon, 11 Mar 2013 12:17:30 +0100 (CET)
Date: Mon, 11 Mar 2013 12:01:58 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130311110158.GE11170@game.jcrosoft.org>
References: <1362994003-22653-1-git-send-email-shc_work@mail.ru>
 <1362994003-22653-4-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362994003-22653-4-git-send-email-shc_work@mail.ru>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 04/13] ARM: clps711x: Add clocksource driver
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 13:26 Mon 11 Mar     , Alexander Shiyan wrote:
> This patch adds clocksource driver for CLPS711X targets and adds
> support to platform to use this new driver.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/Kconfig               |    1 +
>  arch/arm/mach-clps711x/clock.c |   51 ++++++++++++++++-----------------
>  drivers/clocksource/Kconfig    |    4 ++
>  drivers/clocksource/Makefile   |    1 +
>  drivers/clocksource/clps711x.c |   61 ++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 92 insertions(+), 26 deletions(-)
>  create mode 100644 drivers/clocksource/clps711x.c
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 7ac134e..c608454 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -39,6 +39,7 @@ config ARCH_BCM2835
>  config ARCH_CLPS711X
>  	bool "Cirrus Logic EP711x/EP721x/EP731x"
>  	select CLKDEV_LOOKUP
> +	select CLOCKSOURCE_CLPS711X
>  	select CPU_32v4T
>  
>  config ARCH_EP93XX
> diff --git a/arch/arm/mach-clps711x/clock.c b/arch/arm/mach-clps711x/clock.c
> index 09cbaf9..e957662 100644
> --- a/arch/arm/mach-clps711x/clock.c
> +++ b/arch/arm/mach-clps711x/clock.c
> @@ -9,25 +9,18 @@
>  
>  #include <common.h>
>  #include <init.h>
> -#include <clock.h>
> +#include <sizes.h>
>  #include <asm/io.h>
>  #include <linux/clkdev.h>
>  
>  #include <mach/clps711x.h>
>  
> +#define CLPS711X_OSC_FREQ	3686400
> +#define CLPS711X_EXT_FREQ	13000000
> +
>  static struct clk {
>  	unsigned long	rate;
> -} uart_clk, bus_clk;
> -
> -static uint64_t clocksource_read(void)
> -{
> -	return ~readw(TC2D);
> -}
> -
> -static struct clocksource cs = {
> -	.read	= clocksource_read,
> -	.mask	= CLOCKSOURCE_MASK(16),
> -};
> +} uart_clk, bus_clk, timer_clk;
>  
>  unsigned long clk_get_rate(struct clk *clk)
>  {
> @@ -50,22 +43,19 @@ EXPORT_SYMBOL(clk_disable);
>  
>  static int clocks_init(void)
>  {
> -	int osc, ext, pll, cpu, timer;
> +	int pll, cpu;
>  	u32 tmp;
>  
> -	osc = 3686400;
> -	ext = 13000000;
> -
>  	tmp = readl(PLLR) >> 24;
>  	if (tmp)
> -		pll = (osc * tmp) / 2;
> +		pll = (CLPS711X_OSC_FREQ * tmp) / 2;
>  	else
>  		pll = 73728000; /* Default value for old CPUs */
>  
>  	tmp = readl(SYSFLG2);
>  	if (tmp & SYSFLG2_CKMODE) {
> -		cpu = ext;
> -		bus_clk.rate = cpu;
> +		cpu = CLPS711X_EXT_FREQ;
> +		bus_clk.rate = CLPS711X_EXT_FREQ;
>  	} else {
>  		cpu = pll;
>  		if (cpu >= 36864000)
> @@ -74,25 +64,23 @@ static int clocks_init(void)
>  			bus_clk.rate = 36864000 / 2;
>  	}
>  
> -	uart_clk.rate = bus_clk.rate / 10;
> +	uart_clk.rate = DIV_ROUND_CLOSEST(bus_clk.rate, 10);
>  
>  	if (tmp & SYSFLG2_CKMODE) {
>  		tmp = readw(SYSCON2);
>  		if (tmp & SYSCON2_OSTB)
> -			timer = ext / 26;
> +			timer_clk.rate = DIV_ROUND_CLOSEST(CLPS711X_EXT_FREQ, 26);
>  		else
> -			timer = 541440;
> +			timer_clk.rate = DIV_ROUND_CLOSEST(CLPS711X_EXT_FREQ, 24);
>  	} else
> -		timer = cpu / 144;
> +		timer_clk.rate = DIV_ROUND_CLOSEST(cpu, 144);
>  
>  	tmp = readl(SYSCON1);
>  	tmp &= ~SYSCON1_TC2M;	/* Free running mode */
>  	tmp |= SYSCON1_TC2S;	/* High frequency source */
>  	writel(tmp, SYSCON1);
>  
> -	clocks_calc_mult_shift(&cs.mult, &cs.shift, timer, NSEC_PER_SEC, 10);
> -
> -	return init_clock(&cs);
> +	return 0;
>  }
>  core_initcall(clocks_init);
>  
> @@ -100,6 +88,7 @@ static struct clk_lookup clocks_lookups[] = {
>  	CLKDEV_CON_ID("bus", &bus_clk),
>  	CLKDEV_DEV_ID("clps711x_serial0", &uart_clk),
>  	CLKDEV_DEV_ID("clps711x_serial1", &uart_clk),
> +	CLKDEV_DEV_ID("clps711x-cs", &timer_clk),
>  };
>  
>  static int clkdev_init(void)
> @@ -109,3 +98,13 @@ static int clkdev_init(void)
>  	return 0;
>  }
>  postcore_initcall(clkdev_init);
> +
> +static const char *clps711x_clocksrc_name = "clps711x-cs";
> +
> +static __init int clps711x_core_init(void)
> +{
> +	add_generic_device(clps711x_clocksrc_name, DEVICE_ID_SINGLE, NULL,
> +			   TC2D, SZ_2, IORESOURCE_MEM, NULL);
> +	return 0;
> +}
> +coredevice_initcall(clps711x_core_init);
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 3f27cf2..9f3558b 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -10,6 +10,10 @@ config CLOCKSOURCE_BCM2835
>  	bool
>  	depends on ARCH_BCM2835
>  
> +config CLOCKSOURCE_CLPS711X
> +	bool
> +	depends on ARCH_CLPS711X
> +
>  config CLOCKSOURCE_NOMADIK
>  	bool
>  	depends on ARM
> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
> index b0bc8bd..d919881 100644
> --- a/drivers/clocksource/Makefile
> +++ b/drivers/clocksource/Makefile
> @@ -1,4 +1,5 @@
>  obj-$(CONFIG_AMBA_SP804) += amba-sp804.o
>  obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
>  obj-$(CONFIG_CLOCKSOURCE_BCM2835) += bcm2835.o
> +obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
>  obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
> diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
> new file mode 100644
> index 0000000..8c379d3
> --- /dev/null
> +++ b/drivers/clocksource/clps711x.c
> @@ -0,0 +1,61 @@
> +/*
> + * Copyright (C) 2013 Alexander Shiyan <shc_work@mail.ru>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + */
> +
> +#include <common.h>
> +#include <clock.h>
> +#include <io.h>
> +#include <init.h>
> +
> +#include <linux/clk.h>
> +#include <linux/err.h>
> +
> +static __iomem void *clps711x_timer_base;
> +
> +static uint64_t clps711x_cs_read(void)
> +{
> +	return ~readw(clps711x_timer_base);
> +}
> +
> +static struct clocksource clps711x_cs = {
> +	.read = clps711x_cs_read,
> +	.mask = CLOCKSOURCE_MASK(16),
> +};
> +
> +static int clps711x_cs_probe(struct device_d *dev)
> +{
> +	u32 rate;
> +	struct clk *timer_clk;
> +
> +	timer_clk = clk_get(dev, NULL);
> +	if (IS_ERR(timer_clk))
> +		return PTR_ERR(timer_clk);
> +
> +	rate = clk_get_rate(timer_clk);
> +	clps711x_timer_base = dev_request_mem_region(dev, 0);
> +	if (!clps711x_timer_base) {
> +		clk_put(timer_clk);
> +		return -ENOENT;
> +	}
this deserve a nice crash
> +
> +	clocks_calc_mult_shift(&clps711x_cs.mult, &clps711x_cs.shift, rate,
> +			       NSEC_PER_SEC, 10);
> +
> +	return init_clock(&clps711x_cs);
> +}
> +
> +static struct driver_d clps711x_cs_driver = {
> +	.name = "clps711x-cs",
> +	.probe = clps711x_cs_probe,
> +};
> +
> +static __init int clps711x_cs_init(void)
> +{
> +	return platform_driver_register(&clps711x_cs_driver);
> +}
> +coredevice_initcall(clps711x_cs_init);
> -- 
> 1.7.3.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

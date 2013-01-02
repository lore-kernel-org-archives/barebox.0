Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TqM2e-0007kt-Pj
 for barebox@lists.infradead.org; Wed, 02 Jan 2013 10:59:26 +0000
Date: Wed, 2 Jan 2013 11:59:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130102105923.GT24458@pengutronix.de>
References: <20121228191327.GC7216@game.jcrosoft.org>
 <1356722174-22598-1-git-send-email-plagnioj@jcrosoft.com>
 <1356722174-22598-8-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1356722174-22598-8-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 08/13] at91: PIT: switch to platfrom_driver
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org


subject: s/platfrom_driver/platform_driver/

Sascha

On Fri, Dec 28, 2012 at 08:16:09PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/at91sam9260.c              |    1 +
>  arch/arm/mach-at91/at91sam9261.c              |    1 +
>  arch/arm/mach-at91/at91sam9263.c              |    1 +
>  arch/arm/mach-at91/at91sam926x_time.c         |   47 +++++++++++++++++++++----
>  arch/arm/mach-at91/at91sam9g45.c              |    1 +
>  arch/arm/mach-at91/at91sam9n12.c              |    1 +
>  arch/arm/mach-at91/at91sam9x5.c               |    1 +
>  arch/arm/mach-at91/generic.h                  |    6 ++++
>  arch/arm/mach-at91/include/mach/at91_pit.h    |    8 ++---
>  arch/arm/mach-at91/include/mach/at91sam9260.h |    1 -
>  arch/arm/mach-at91/include/mach/at91sam9261.h |    1 -
>  arch/arm/mach-at91/include/mach/at91sam9263.h |    1 -
>  arch/arm/mach-at91/include/mach/at91sam9g45.h |    1 -
>  arch/arm/mach-at91/include/mach/at91sam9n12.h |    1 -
>  arch/arm/mach-at91/include/mach/at91sam9x5.h  |    1 -
>  15 files changed, 56 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/at91sam9260.c b/arch/arm/mach-at91/at91sam9260.c
> index fdda9c6..b76bfb2 100644
> --- a/arch/arm/mach-at91/at91sam9260.c
> +++ b/arch/arm/mach-at91/at91sam9260.c
> @@ -239,6 +239,7 @@ static int at91sam9260_gpio_init(void)
>  	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
>  	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
>  	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
> +	at91_add_pit(AT91SAM9260_BASE_PIT);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-at91/at91sam9261.c b/arch/arm/mach-at91/at91sam9261.c
> index ac635d7..b449236 100644
> --- a/arch/arm/mach-at91/at91sam9261.c
> +++ b/arch/arm/mach-at91/at91sam9261.c
> @@ -231,6 +231,7 @@ static int at91sam9261_gpio_init(void)
>  	at91_add_rm9200_gpio(0, AT91_BASE_PIOA);
>  	at91_add_rm9200_gpio(1, AT91_BASE_PIOB);
>  	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
> +	at91_add_pit(AT91SAM9261_BASE_PIT);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-at91/at91sam9263.c b/arch/arm/mach-at91/at91sam9263.c
> index 84c986f..b1522ba 100644
> --- a/arch/arm/mach-at91/at91sam9263.c
> +++ b/arch/arm/mach-at91/at91sam9263.c
> @@ -250,6 +250,7 @@ static int at91sam9263_gpio_init(void)
>  	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
>  	at91_add_rm9200_gpio(3, AT91_BASE_PIOD);
>  	at91_add_rm9200_gpio(4, AT91_BASE_PIOE);
> +	at91_add_pit(AT91SAM9263_BASE_PIT);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-at91/at91sam926x_time.c b/arch/arm/mach-at91/at91sam926x_time.c
> index 1ce8d30..e18458a 100644
> --- a/arch/arm/mach-at91/at91sam926x_time.c
> +++ b/arch/arm/mach-at91/at91sam926x_time.c
> @@ -30,15 +30,20 @@
>  #include <clock.h>
>  #include <asm/hardware.h>
>  #include <mach/at91_pit.h>
> -#include <mach/at91_rstc.h>
>  #include <mach/io.h>
>  #include <io.h>
>  #include <linux/clk.h>
>  #include <linux/err.h>
>  
> +#define PIT_CPIV(x)	((x) & AT91_PIT_CPIV)
> +#define pit_write(reg, val)	__raw_writel(val, pit_base + reg)
> +#define pit_read(reg)		__raw_readl(pit_base + reg)
> +
> +static __iomem void *pit_base;
> +
>  uint64_t at91sam9_clocksource_read(void)
>  {
> -	return at91_sys_read(AT91_PIT_PIIR);
> +	return pit_read(AT91_PIT_PIIR);
>  }
>  
>  static struct clocksource cs = {
> @@ -47,12 +52,30 @@ static struct clocksource cs = {
>  	.shift	= 10,
>  };
>  
> -static int clocksource_init (void)
> +static void at91_pit_stop(void)
> +{
> +	/* Disable timer and irqs */
> +	pit_write(AT91_PIT_MR, 0);
> +
> +	/* Clear any pending interrupts, wait for PIT to stop counting */
> +	while (PIT_CPIV(pit_read(AT91_PIT_PIVR)) != 0);
> +}
> +
> +static void at91sam926x_pit_reset(void)
> +{
> +	at91_pit_stop();
> +
> +	/* Start PIT but don't enable IRQ */
> +	pit_write(AT91_PIT_MR, 0xfffff | AT91_PIT_PITEN);
> +}
> +
> +static int at91_pit_probe(struct device_d *dev)
>  {
>  	struct clk *clk;
>  	u32 pit_rate;
> +	int ret;
>  
> -	clk = clk_get(NULL, "mck");
> +	clk = clk_get(dev, NULL);
>  	if (IS_ERR(clk)) {
>  		ret = PTR_ERR(clk);
>  		dev_err(dev, "clock not found: %d\n", ret);
> @@ -66,10 +89,11 @@ static int clocksource_init (void)
>  		return ret;
>  	}
>  
> +	pit_base = dev_request_mem_region(dev, 0);
> +
>  	pit_rate = clk_get_rate(clk) / 16;
>  
> -	/* Enable PITC */
> -	at91_sys_write(AT91_PIT_MR, 0xfffff | AT91_PIT_PITEN);
> +	at91sam926x_pit_reset();
>  
>  	cs.mult = clocksource_hz2mult(pit_rate, cs.shift);
>  
> @@ -78,4 +102,13 @@ static int clocksource_init (void)
>  	return 0;
>  }
>  
> -core_initcall(clocksource_init);
> +static struct driver_d at91_pit_driver = {
> +	.name = "at91-pit",
> +	.probe = at91_pit_probe,
> +};
> +
> +static int at91_pit_init(void)
> +{
> +	return platform_driver_register(&at91_pit_driver);
> +}
> +postcore_initcall(at91_pit_init);
> diff --git a/arch/arm/mach-at91/at91sam9g45.c b/arch/arm/mach-at91/at91sam9g45.c
> index 0affc67..7dcf93e 100644
> --- a/arch/arm/mach-at91/at91sam9g45.c
> +++ b/arch/arm/mach-at91/at91sam9g45.c
> @@ -263,6 +263,7 @@ static int at91sam9g45_gpio_init(void)
>  	at91_add_rm9200_gpio(2, AT91_BASE_PIOC);
>  	at91_add_rm9200_gpio(3, AT91_BASE_PIOD);
>  	at91_add_rm9200_gpio(4, AT91_BASE_PIOE);
> +	at91_add_pit(AT91SAM9G45_BASE_PIT);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-at91/at91sam9n12.c b/arch/arm/mach-at91/at91sam9n12.c
> index f4a981e..3777f70 100644
> --- a/arch/arm/mach-at91/at91sam9n12.c
> +++ b/arch/arm/mach-at91/at91sam9n12.c
> @@ -222,6 +222,7 @@ static int at91sam9n12_gpio_init(void)
>  	at91_add_sam9x5_gpio(1, AT91_BASE_PIOB);
>  	at91_add_sam9x5_gpio(2, AT91_BASE_PIOC);
>  	at91_add_sam9x5_gpio(3, AT91_BASE_PIOD);
> +	at91_add_pit(AT91SAM9N12_BASE_PIT);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-at91/at91sam9x5.c b/arch/arm/mach-at91/at91sam9x5.c
> index a6d2b9d..306d3f3 100644
> --- a/arch/arm/mach-at91/at91sam9x5.c
> +++ b/arch/arm/mach-at91/at91sam9x5.c
> @@ -307,6 +307,7 @@ static int at91sam9x5_gpio_init(void)
>  	at91_add_sam9x5_gpio(1, AT91_BASE_PIOB);
>  	at91_add_sam9x5_gpio(2, AT91_BASE_PIOC);
>  	at91_add_sam9x5_gpio(3, AT91_BASE_PIOD);
> +	at91_add_pit(AT91SAM9X5_BASE_PIT);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
> index 57f2a84..490cf3c 100644
> --- a/arch/arm/mach-at91/generic.h
> +++ b/arch/arm/mach-at91/generic.h
> @@ -22,3 +22,9 @@ static inline struct device_d *at91_add_sam9x5_gpio(int id, resource_size_t star
>  	return add_generic_device("at91sam9x5-gpio", id, NULL, start, 512,
>  				  IORESOURCE_MEM, NULL);
>  }
> +
> +static inline struct device_d *at91_add_pit(resource_size_t start)
> +{
> +	return add_generic_device("at91-pit", DEVICE_ID_SINGLE, NULL, start, 16,
> +				  IORESOURCE_MEM, NULL);
> +}
> diff --git a/arch/arm/mach-at91/include/mach/at91_pit.h b/arch/arm/mach-at91/include/mach/at91_pit.h
> index 94dd242..8581efa 100644
> --- a/arch/arm/mach-at91/include/mach/at91_pit.h
> +++ b/arch/arm/mach-at91/include/mach/at91_pit.h
> @@ -16,16 +16,16 @@
>  #ifndef AT91_PIT_H
>  #define AT91_PIT_H
>  
> -#define AT91_PIT_MR		(AT91_PIT + 0x00)	/* Mode Register */
> +#define AT91_PIT_MR		0x00			/* Mode Register */
>  #define		AT91_PIT_PITIEN		(1 << 25)		/* Timer Interrupt Enable */
>  #define		AT91_PIT_PITEN		(1 << 24)		/* Timer Enabled */
>  #define		AT91_PIT_PIV		(0xfffff)		/* Periodic Interval Value */
>  
> -#define AT91_PIT_SR		(AT91_PIT + 0x04)	/* Status Register */
> +#define AT91_PIT_SR		0x04			/* Status Register */
>  #define		AT91_PIT_PITS		(1 << 0)		/* Timer Status */
>  
> -#define AT91_PIT_PIVR		(AT91_PIT + 0x08)	/* Periodic Interval Value Register */
> -#define AT91_PIT_PIIR		(AT91_PIT + 0x0c)	/* Periodic Interval Image Register */
> +#define AT91_PIT_PIVR		0x08			/* Periodic Interval Value Register */
> +#define AT91_PIT_PIIR		0x0c			/* Periodic Interval Image Register */
>  #define		AT91_PIT_PICNT		(0xfff << 20)		/* Interval Counter */
>  #define		AT91_PIT_CPIV		(0xfffff)		/* Inverval Value */
>  
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9260.h b/arch/arm/mach-at91/include/mach/at91sam9260.h
> index 3dad806..5d1b376 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9260.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9260.h
> @@ -105,7 +105,6 @@
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
> -#define AT91_PIT	(0xfffffd30 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
>  
>  #define AT91_BASE_PIOA	AT91SAM9260_BASE_PIOA
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9261.h b/arch/arm/mach-at91/include/mach/at91sam9261.h
> index 591ae29..1469f7e 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9261.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9261.h
> @@ -91,7 +91,6 @@
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
> -#define AT91_PIT	(0xfffffd30 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
>  
>  #define AT91_BASE_PIOA	AT91SAM9261_BASE_PIOA
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9263.h b/arch/arm/mach-at91/include/mach/at91sam9263.h
> index a0ed231..a8c067a 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9263.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9263.h
> @@ -109,7 +109,6 @@
>  #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
> -#define AT91_PIT	(0xfffffd30 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
>  
>  #define AT91_BASE_PIOA	AT91SAM9263_BASE_PIOA
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
> index 961a70f..85ed129 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
> @@ -120,7 +120,6 @@
>  #define AT91_DBGU	(0xffffee00 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffd00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffd10 - AT91_BASE_SYS)
> -#define AT91_PIT	(0xfffffd30 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffd40 - AT91_BASE_SYS)
>  
>  #define AT91_BASE_PIOA	AT91SAM9G45_BASE_PIOA
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
> index 706005c..59d7030 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
> @@ -116,7 +116,6 @@
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
> -#define AT91_PIT	(0xfffffe30 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffe40 - AT91_BASE_SYS)
>  
>  #define AT91_BASE_PIOA	AT91SAM9N12_BASE_PIOA
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
> index b47e3cb..63a5138 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
> @@ -123,7 +123,6 @@
>  #define AT91_DBGU	(0xfffff200 - AT91_BASE_SYS)
>  #define AT91_RSTC	(0xfffffe00 - AT91_BASE_SYS)
>  #define AT91_SHDWC	(0xfffffe10 - AT91_BASE_SYS)
> -#define AT91_PIT	(0xfffffe30 - AT91_BASE_SYS)
>  #define AT91_WDT	(0xfffffe40 - AT91_BASE_SYS)
>  
>  #define AT91_BASE_PIOA	AT91SAM9X5_BASE_PIOA
> -- 
> 1.7.10.4
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

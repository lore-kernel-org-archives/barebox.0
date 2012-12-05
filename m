Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgK7x-00075u-SP
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 18:55:26 +0000
Date: Wed, 5 Dec 2012 19:55:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205185524.GQ10369@pengutronix.de>
References: <alpine.DEB.2.02.1212050932001.13598@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1212050932001.13598@oneiric>
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
Subject: Re: [PATCH] Define and use OMAP4 GPIO macros rather than magic
 constants.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Wed, Dec 05, 2012 at 09:34:12AM -0500, Robert P. J. Day wrote:
> 
> Add and use meaningful macro names for OMAP4 GPIO addresses, and add a
> comment to explain the 0x100 offset for OMAP4.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Applied, thanks

Sascha

> 
> ---
> 
> diff --git a/arch/arm/mach-omap/include/mach/omap4-silicon.h b/arch/arm/mach-omap/include/mach/omap4-silicon.h
> index 71ffe39..008eafb 100644
> --- a/arch/arm/mach-omap/include/mach/omap4-silicon.h
> +++ b/arch/arm/mach-omap/include/mach/omap4-silicon.h
> @@ -101,6 +101,21 @@
>  #define OMAP44XX_MMC4_BASE		(OMAP44XX_L4_PER_BASE + 0x0D1100)
>  #define OMAP44XX_MMC5_BASE		(OMAP44XX_L4_PER_BASE + 0x0D5100)
> 
> +/* GPIO
> + *
> + *  Note that, while the GPIO controller is the same as on an OMAP3,
> + * the base address has an additional offset of 0x100, which you can
> + * see being added here so that the OMAP_GPIO_* macros you see in
> + * mach-omap/gpio.c don't need to be adjusted based on the platform.
> + */
> +
> +#define OMAP44XX_GPIO1_BASE		(OMAP44XX_L4_WKUP_BASE + 0x10100)
> +#define OMAP44XX_GPIO2_BASE		(OMAP44XX_L4_PER_BASE  + 0x55100)
> +#define OMAP44XX_GPIO3_BASE		(OMAP44XX_L4_PER_BASE  + 0x57100)
> +#define OMAP44XX_GPIO4_BASE		(OMAP44XX_L4_PER_BASE  + 0x59100)
> +#define OMAP44XX_GPIO5_BASE		(OMAP44XX_L4_PER_BASE  + 0x5B100)
> +#define OMAP44XX_GPIO6_BASE		(OMAP44XX_L4_PER_BASE  + 0x5D100)
> +
>  /* GPMC */
>  #define OMAP_GPMC_BASE		0x50000000
> 
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index c756664..dc1dbae 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -611,17 +611,17 @@ const struct gpmc_config omap4_nand_cfg = {
> 
>  static int omap4_gpio_init(void)
>  {
> -	add_generic_device("omap-gpio", 0, NULL, 0x4a310100,
> +	add_generic_device("omap-gpio", 0, NULL, OMAP44XX_GPIO1_BASE,
>  				0xf00, IORESOURCE_MEM, NULL);
> -	add_generic_device("omap-gpio", 1, NULL, 0x48055100,
> +	add_generic_device("omap-gpio", 1, NULL, OMAP44XX_GPIO2_BASE,
>  				0xf00, IORESOURCE_MEM, NULL);
> -	add_generic_device("omap-gpio", 2, NULL, 0x48057100,
> +	add_generic_device("omap-gpio", 2, NULL, OMAP44XX_GPIO3_BASE,
>  				0xf00, IORESOURCE_MEM, NULL);
> -	add_generic_device("omap-gpio", 3, NULL, 0x48059100,
> +	add_generic_device("omap-gpio", 3, NULL, OMAP44XX_GPIO4_BASE,
>  				0xf00, IORESOURCE_MEM, NULL);
> -	add_generic_device("omap-gpio", 4, NULL, 0x4805b100,
> +	add_generic_device("omap-gpio", 4, NULL, OMAP44XX_GPIO5_BASE,
>  				0xf00, IORESOURCE_MEM, NULL);
> -	add_generic_device("omap-gpio", 5, NULL, 0x4805d100,
> +	add_generic_device("omap-gpio", 5, NULL, OMAP44XX_GPIO6_BASE,
>  				0xf00, IORESOURCE_MEM, NULL);
> 
>  	return 0;
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
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

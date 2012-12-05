Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgBQP-0005YV-Ld
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 09:37:54 +0000
Date: Wed, 5 Dec 2012 10:37:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205093750.GA10369@pengutronix.de>
References: <alpine.DEB.2.02.1212041251330.7280@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1212041251330.7280@oneiric>
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
Subject: Re: [PATCH] OMAP3: Replace magic GPIO numbers in omap3_generic.c
 with macros.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Tue, Dec 04, 2012 at 12:54:22PM -0500, Robert P. J. Day wrote:
> 
> Based on following lines in omap3-silicon.h:

Applied, thanks

Sascha

> 
> #define OMAP_L4_WKUP_BASE       0x48300000
> #define OMAP_L4_PER_BASE        0x49000000
> ... snip ...
> #define OMAP_GPIO1_BASE         (OMAP_L4_WKUP_BASE + 0x10000)
> #define OMAP_GPIO2_BASE         (OMAP_L4_PER_BASE + 0x50000)
> #define OMAP_GPIO3_BASE         (OMAP_L4_PER_BASE + 0x52000)
> #define OMAP_GPIO4_BASE         (OMAP_L4_PER_BASE + 0x54000)
> #define OMAP_GPIO5_BASE         (OMAP_L4_PER_BASE + 0x56000)
> #define OMAP_GPIO6_BASE         (OMAP_L4_PER_BASE + 0x58000)
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
> diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
> index 1e1308e..7b6f1f9 100644
> --- a/arch/arm/mach-omap/omap3_generic.c
> +++ b/arch/arm/mach-omap/omap3_generic.c
> @@ -515,17 +515,17 @@ const struct gpmc_config omap3_nand_cfg = {
>  #ifndef __PBL__
>  static int omap3_gpio_init(void)
>  {
> -	add_generic_device("omap-gpio", 0, NULL, 0x48310000,
> +	add_generic_device("omap-gpio", 0, NULL, OMAP_GPIO1_BASE,
>  					0xf00, IORESOURCE_MEM, NULL);
> -	add_generic_device("omap-gpio", 1, NULL, 0x49050000,
> +	add_generic_device("omap-gpio", 1, NULL, OMAP_GPIO2_BASE,
>  					0xf00, IORESOURCE_MEM, NULL);
> -	add_generic_device("omap-gpio", 2, NULL, 0x49052000,
> +	add_generic_device("omap-gpio", 2, NULL, OMAP_GPIO3_BASE,
>  					0xf00, IORESOURCE_MEM, NULL);
> -	add_generic_device("omap-gpio", 3, NULL, 0x49054000,
> +	add_generic_device("omap-gpio", 3, NULL, OMAP_GPIO4_BASE,
>  					0xf00, IORESOURCE_MEM, NULL);
> -	add_generic_device("omap-gpio", 4, NULL, 0x49056000,
> +	add_generic_device("omap-gpio", 4, NULL, OMAP_GPIO5_BASE,
>  					0xf00, IORESOURCE_MEM, NULL);
> -	add_generic_device("omap-gpio", 5, NULL, 0x49058000,
> +	add_generic_device("omap-gpio", 5, NULL, OMAP_GPIO6_BASE,
>  					0xf00, IORESOURCE_MEM, NULL);
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

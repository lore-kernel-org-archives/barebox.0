Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKnpe-000364-C3
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 10:11:35 +0000
Date: Sun, 7 Oct 2012 12:11:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121007101130.GC1322@pengutronix.de>
References: <1349476393-25520-1-git-send-email-vicencb@gmail.com>
 <1349476393-25520-6-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349476393-25520-6-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 05/11] omap: revert gpiolib
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 06, 2012 at 12:33:07AM +0200, vj wrote:
> This patch reverts 29e4031b460d1c84c1a8fc276199d40680b354d4.
> This is not meant to revert the gpiolib, this is only a temporal
> workaround because it breaks support for ArchosG9 tablet.
> Please, can anybody check if using gpiolib works for other omap4460
> based boards?

Teresa, have you tested this on OMAP4?


I can't find anything obviously wrong int this patch.
>  
> -static int omap_gpio_probe(struct device_d *dev)
> -{
> -	struct omap_gpio_chip *omapgpio;
> +	gpio_set_value(gpio, value);
>  
> -	omapgpio = xzalloc(sizeof(*omapgpio));
> -	omapgpio->base = dev_request_mem_region(dev, 0);
> -	omapgpio->chip.ops = &omap_gpio_ops;
> -	omapgpio->chip.base = -1;

base should be calculated as dev->id * 32. Otherwise the gpio numbering
gets depended on the probe order.

> -	omapgpio->chip.ngpio = 32;
> -	omapgpio->chip.dev = dev;
> -	gpiochip_add(&omapgpio->chip);
> +	reg += OMAP_GPIO_OE;
>  
> -	dev_dbg(dev, "probed gpiochip%d with base %d\n",
> -				dev->id, omapgpio->chip.base);
> +	val = __raw_readl(reg);
> +	val &= ~(1 << get_gpio_index(gpio));
> +	__raw_writel(val, reg);
>  
>  	return 0;
>  }

[...]

>  
> -coredevice_initcall(omap3_gpio_init);
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index 584d724..6562268 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -574,22 +574,3 @@ const struct gpmc_config omap4_nand_cfg = {
>  	.base = 0x28000000,
>  	.size = GPMC_SIZE_16M,
>  };
> -
> -static int omap4_gpio_init(void)
> -{
> -	add_generic_device("omap-gpio", 0, NULL, 0x4a310100,
> -				0x1000, IORESOURCE_MEM, NULL);

It seems on OMAP4 the register addresses are at an additional 0x100
offset compared to OMAP3. This little trick here to compensate that
will lead to problems should we add devicetree support for omap. For
now it's ok, but the region size should be reduced to 0x0f00 so that
there's no risk that it overlaps with the next region.

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

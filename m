Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THbf4-0006ZE-J7
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 14:35:30 +0000
Date: Fri, 28 Sep 2012 16:35:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120928143525.GH1322@pengutronix.de>
References: <1348837021-18424-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348837021-18424-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] gpio: reduce verbosity while probing
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 28, 2012 at 02:57:01PM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-imx/gpio.c  |    2 +-
>  arch/arm/mach-omap/gpio.c |    2 +-
>  drivers/gpio/gpio-stmpe.c |    2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/gpio.c b/arch/arm/mach-imx/gpio.c
> index e661cc1..268e598 100644
> --- a/arch/arm/mach-imx/gpio.c
> +++ b/arch/arm/mach-imx/gpio.c
> @@ -145,7 +145,7 @@ static int imx_gpio_probe(struct device_d *dev)
>  	imxgpio->regs = regs;
>  	gpiochip_add(&imxgpio->chip);
>  
> -	dev_info(dev, "probed gpiochip%d with base %d\n", dev->id, imxgpio->chip.base);
> +	dev_dbg(dev, "probed gpiochip%d with base %d\n", dev->id, imxgpio->chip.base);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-omap/gpio.c b/arch/arm/mach-omap/gpio.c
> index 422831b..ff49708 100644
> --- a/arch/arm/mach-omap/gpio.c
> +++ b/arch/arm/mach-omap/gpio.c
> @@ -138,7 +138,7 @@ static int omap_gpio_probe(struct device_d *dev)
>  	omapgpio->chip.dev = dev;
>  	gpiochip_add(&omapgpio->chip);
>  
> -	dev_info(dev, "probed gpiochip%d with base %d\n",
> +	dev_dbg(dev, "probed gpiochip%d with base %d\n",
>  				dev->id, omapgpio->chip.base);
>  
>  	return 0;
> diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
> index fa3b041..1181351 100644
> --- a/drivers/gpio/gpio-stmpe.c
> +++ b/drivers/gpio/gpio-stmpe.c
> @@ -145,7 +145,7 @@ static int stmpe_gpio_probe(struct device_d *dev)
>  		return ret;
>  	}
>  
> -	dev_info(dev, "probed stmpe gpiochip%d with base %d\n", dev->id, stmpegpio->chip.base);
> +	dev_dbg(dev, "probed stmpe gpiochip%d with base %d\n", dev->id, stmpegpio->chip.base);
>  	return 0;
>  }
>  
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

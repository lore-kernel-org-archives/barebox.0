Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eYrhY-00020U-UA
 for barebox@lists.infradead.org; Tue, 09 Jan 2018 11:04:19 +0000
Date: Tue, 9 Jan 2018 12:04:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180109110404.r7i2tb6tilbl5wzx@pengutronix.de>
References: <20180106211938.GA25955@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180106211938.GA25955@ravnborg.org>
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
Subject: Re: [PATCH] atmel_lcdfb: introduce driver data
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Sat, Jan 06, 2018 at 10:19:38PM +0100, Sam Ravnborg wrote:
> From b1cb4bbebbe8f2ef7049cdc8604f516bb0108403 Mon Sep 17 00:00:00 2001
> From: Sam Ravnborg <sam@ravnborg.org>
> Date: Sat, 6 Jan 2018 14:33:53 +0100
> Subject: [PATCH] atmel_lcdfb: introduce driver data
> 
> Introduce driver data like known from the kernel.
> This allows us to get rid of the hack where the
> intensity bit support was included in the lcd wiring mode.
> (No longer any support for IBGR, IRBG)
> 
> It has the nice side-effect that all places where we test
> for hacks can now use flags and not a set of cpu's.
> So we keep all the configuration in one place.
> 
> The configuration is included for non-DT users.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
> 
> When using this for a proprietary board I realized that
> using IBGR & friends was not a good idea.
> So drop it and introduce the same concept as used in the kernel.
> This has the side effect that some parts in the
> driver got a little cleaner.
> 
> Tested on my at91sam9263ek board.
> 
> As we have many boards that are not yet DT enabled I made
> sure to keep this in sync too - but not tested.
> 
> 	Sam
> 
> 
>  drivers/video/atmel_lcdfb.c      | 48 ++++++++++++++++++++++++++++++----------
>  drivers/video/atmel_lcdfb.h      |  8 +++++++
>  drivers/video/atmel_lcdfb_core.c | 32 ++++++++++++++++-----------
>  3 files changed, 63 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
> index 7c05e857b..d343c5c05 100644
> --- a/drivers/video/atmel_lcdfb.c
> +++ b/drivers/video/atmel_lcdfb.c
> @@ -23,7 +23,6 @@
>  #include <init.h>
>  #include <mach/hardware.h>
>  #include <mach/io.h>
> -#include <mach/cpu.h>
>  #include <errno.h>
>  #include <linux/clk.h>
>  
> @@ -34,12 +33,12 @@
>  #define ATMEL_LCDC_DMA_BURST_LEN	8	/* words */
>  #define ATMEL_LCDC_FIFO_SIZE		512	/* words */
>  
> -static unsigned long compute_hozval(unsigned long xres, unsigned long lcdcon2)
> +static unsigned long compute_hozval(struct atmel_lcdfb_info *sinfo,
> +				    unsigned long xres, unsigned long lcdcon2)
>  {
>  	unsigned long value;
>  
> -	if (!(cpu_is_at91sam9261() || cpu_is_at91sam9g10()
> -		|| cpu_is_at32ap7000()))
> +	if (!sinfo->have_hozval)
>  		return xres;
>  
>  	value = xres;
> @@ -133,7 +132,7 @@ static void atmel_lcdfb_setup_core(struct fb_info *info)
>  	lcdc_writel(sinfo, ATMEL_LCDC_DMAFRMCFG, value);
>  
>  	/* Set pixel clock */
> -	if (cpu_is_at91sam9g45() && !cpu_is_at91sam9g45es())
> +	if (sinfo->have_alt_pixclock)
>  		pix_factor = 1;
>  
>  	clk_value_khz = clk_get_rate(sinfo->lcdc_clk) / 1000;
> @@ -191,7 +190,7 @@ static void atmel_lcdfb_setup_core(struct fb_info *info)
>  	lcdc_writel(sinfo, ATMEL_LCDC_TIM2, value);
>  
>  	/* Horizontal value (aka line size) */
> -	hozval_linesz = compute_hozval(mode->xres,
> +	hozval_linesz = compute_hozval(sinfo, mode->xres,
>  					lcdc_readl(sinfo, ATMEL_LCDC_LCDCON2));
>  
>  	/* Display size */
> @@ -243,14 +242,39 @@ static int atmel_lcdc_probe(struct device_d *dev)
>  	return atmel_lcdc_register(dev, &atmel_lcdfb_data);
>  }
>  
> +static struct atmel_lcdfb_config at91sam9261_config = {
> +	.have_hozval		= true,
> +	.have_intensity_bit	= true,
> +};
> +
> +static struct atmel_lcdfb_config at91sam9263_config = {
> +	.have_intensity_bit	= true,
> +};
> +
> +static struct atmel_lcdfb_config at91sam9g10_config = {
> +	.have_hozval		= true,
> +};
> +
> +static struct atmel_lcdfb_config at91sam9g45_config = {
> +	.have_alt_pixclock	= true,
> +};
> +
> +static struct atmel_lcdfb_config at91sam9rl_config = {
> +	.have_intensity_bit	= true,
> +};
> +
> +static struct atmel_lcdfb_config at32ap_config = {
> +	.have_hozval		= true,
> +};
> +
>  static __maybe_unused struct of_device_id atmel_lcdfb_compatible[] = {
> -	{ .compatible = "atmel,at91sam9261-lcdc", },
> -	{ .compatible = "atmel,at91sam9263-lcdc", },
> -	{ .compatible = "atmel,at91sam9g10-lcdc", },
> -	{ .compatible = "atmel,at91sam9g45-lcdc", },
> +	{ .compatible = "atmel,at91sam9261-lcdc",	.data = &at91sam9261_config, },
> +	{ .compatible = "atmel,at91sam9263-lcdc",	.data = &at91sam9263_config, },
> +	{ .compatible = "atmel,at91sam9g10-lcdc",	.data = &at91sam9g10_config, },
> +	{ .compatible = "atmel,at91sam9g45-lcdc",	.data = &at91sam9g45_config, },
>  	{ .compatible = "atmel,at91sam9g45es-lcdc", },
> -	{ .compatible = "atmel,at91sam9rl-lcdc", },
> -	{ .compatible = "atmel,at32ap-lcdc", },
> +	{ .compatible = "atmel,at91sam9rl-lcdc",	.data = &at91sam9rl_config, },
> +	{ .compatible = "atmel,at32ap-lcdc",		.data = &at32ap_config, },
>  	{ /* sentinel */ }
>  };

Note that we can match on different platform_device_ids aswell, so you
could also attach driver_data to platform devices aswell. For an example
see drivers/serial/serial_imx.c.

I leave it up to you if you change this patch accordingly, I can also
apply it as is.

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QMOc3-0001b8-Jq
	for barebox@lists.infradead.org; Tue, 17 May 2011 18:03:20 +0000
Date: Tue, 17 May 2011 20:03:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110517180316.GH30963@pengutronix.de>
References: <1305650641-15125-1-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1305650641-15125-1-git-send-email-agalakhov@gmail.com>
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
Subject: Re: [PATCH 1/2] Add support for Samsung S3C24x0 framebuffer.
To: Alex Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Alex,

On Tue, May 17, 2011 at 10:44:00PM +0600, Alex Galakhov wrote:
> Heavily based on original Juergen Beisert's code.
> 
> Signed-off-by: Alex Galakhov <agalakhov@gmail.com>
> ---
>  arch/arm/mach-s3c24xx/include/mach/fb.h |   59 ++++
>  drivers/video/Kconfig                   |   13 +
>  drivers/video/Makefile                  |    1 +
>  drivers/video/s3c.c                     |  451 +++++++++++++++++++++++++++++++
>  4 files changed, 524 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/mach-s3c24xx/include/mach/fb.h
>  create mode 100644 drivers/video/s3c.c

The patch looks mostly fine, only small nitpicks follow.


> 
> diff --git a/arch/arm/mach-s3c24xx/include/mach/fb.h b/arch/arm/mach-s3c24xx/include/mach/fb.h
> new file mode 100644
> index 0000000..05e013a
> --- /dev/null
> +++ b/arch/arm/mach-s3c24xx/include/mach/fb.h
> +
> +/**
> + * @param fb_info Framebuffer information
> + */
> +static void s3cfb_enable_controller(struct fb_info *fb_info)
> +{
> +	struct s3cfb_info *fbi = fb_info->priv;
> +	uint32_t con1;
> +
> +	con1 = readl(fbi->base + LCDCON1);
> +
> +	con1 |= ENVID;
> +
> +	writel(con1, fbi->base + LCDCON1);
> +
> +	if (fbi->enable)
> +		(fbi->enable)(1);

unneeded brackets.

> +}
> +
> +/**
> + * @param fb_info Framebuffer information
> + */
> +static void s3cfb_disable_controller(struct fb_info *fb_info)
> +{
> +	struct s3cfb_info *fbi = fb_info->priv;
> +	uint32_t con1;
> +
> +	if (fbi->enable)
> +		(fbi->enable)(0);

ditto

> +
> +	con1 = readl(fbi->base + LCDCON1);
> +
> +	con1 &= ~ENVID;
> +
> +	writel(con1, fbi->base + LCDCON1);
> +}
> +
> +/**
> + * Prepare the video hardware for a specified video mode
> + * @param fb_info Framebuffer information
> + * @param mode The video mode description to initialize
> + * @return 0 on success
> + */
> +static int s3cfb_activate_var(struct fb_info *fb_info)
> +{
> +	struct s3cfb_info *fbi = fb_info->priv;
> +	struct fb_videomode *mode = fb_info->mode;
> +	unsigned size, hclk, div;
> +	uint32_t con1, con2, con3, con4, con5 = 0;
> +
> +	if (fbi->passive_display != 0) {
> +		pr_err("Passive displays are currently not supported\n");

dev_err please (some more follow).

> +
> +	switch (fb_info->bits_per_pixel) {
> +#if 0
> +	/* TODO add CLUT based modes */
> +	case 1:
> +		con1 |= BPPMODE(8);
> +		break;
> +	case 2:
> +		con1 |= BPPMODE(9);
> +		break;
> +	case 4:
> +		con1 |= BPPMODE(10);
> +		break;
> +	case 8:
> +		con1 |= BPPMODE(11);
> +		break;
> +#endif

I think we can remove this dead code. I see no reason to add clut
support. If someone needs it, I think this missing snippet is the least
of his problems.

> +
> +/**
> + * The S3C244x LCD controller supports passive (CSTN/STN) and active (TFT) LC displays
> + *
> + * The driver itself currently supports only active TFT LC displays in the follwing manner:
> + *
> + *  * Palletized colours
> + *    - 1 bpp
> + *    - 2 bpp
> + *    - 4 bpp
> + *    - 8 bpp

This doesn't seem to be true, right?

> + *  * True colours
> + *    - 16 bpp
> + *    - 24 bpp
> + */
> -- 
> 1.7.4.1
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1ODwRS-00055k-5H
	for barebox@lists.infradead.org; Mon, 17 May 2010 09:16:54 +0000
Date: Mon, 17 May 2010 11:16:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100517091652.GM31199@pengutronix.de>
References: <1273754207-7763-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1273754207-7763-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 1/3] i.MX25 : add Framebuffer support
To: Eric Benard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, May 13, 2010 at 02:36:45PM +0200, Eric Benard wrote:
> Signed-off-by: Eric Benard <eric@eukrea.com>

Ok, applied to -next.

Sascha

> ---
>  drivers/video/Kconfig |    4 ++--
>  drivers/video/imx.c   |   19 ++++++++++++++++++-
>  2 files changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index dbdc7e2..7a89a3f 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -7,11 +7,11 @@ if VIDEO
>  
>  config DRIVER_VIDEO_IMX
>  	bool "i.MX framebuffer driver"
> -	depends on ARCH_IMX1 || ARCH_IMX21 || ARCH_IMX27
> +	depends on ARCH_IMX1 || ARCH_IMX21 || ARCH_IMX25 || ARCH_IMX27
>  
>  config IMXFB_DRIVER_VIDEO_IMX_OVERLAY
>  	bool "i.MX framebuffer overlay support"
> -	depends on DRIVER_VIDEO_IMX && (ARCH_IMX27 || ARCH_IMX21)
> +	depends on DRIVER_VIDEO_IMX && (ARCH_IMX27 || ARCH_IMX25 || ARCH_IMX21)
>  
>  config DRIVER_VIDEO_IMX_IPU
>  	bool "i.MX31/35 framebuffer driver"
> diff --git a/drivers/video/imx.c b/drivers/video/imx.c
> index 87c08d3..67cae34 100644
> --- a/drivers/video/imx.c
> +++ b/drivers/video/imx.c
> @@ -258,7 +258,12 @@ static void imxfb_enable_controller(struct fb_info *info)
>  	PCCR0 |= PCCR0_LCDC_EN;
>  	PCCR1 |= PCCR1_HCLK_LCDC;
>  #endif
> -
> +#ifdef CONFIG_ARCH_IMX25
> +	writel(readl(IMX_CCM_BASE + CCM_CGCR0) | (1 << 24) | (1 << 7),
> +		IMX_CCM_BASE + CCM_CGCR0);
> +	writel(readl(IMX_CCM_BASE + CCM_CGCR1) | (1 << 29),
> +		IMX_CCM_BASE + CCM_CGCR1);
> +#endif
>  }
>  
>  static void imxfb_disable_controller(struct fb_info *info)
> @@ -273,6 +278,12 @@ static void imxfb_disable_controller(struct fb_info *info)
>  	PCCR0 &= ~PCCR0_LCDC_EN;
>  	PCCR1 &= ~PCCR1_HCLK_LCDC;
>  #endif
> +#ifdef CONFIG_ARCH_IMX25
> +	writel(readl(IMX_CCM_BASE + CCM_CGCR0) & ~((1 << 24) | (1 << 7)),
> +		IMX_CCM_BASE + CCM_CGCR0);
> +	writel(readl(IMX_CCM_BASE + CCM_CGCR1) & ~(1 << 29),
> +		IMX_CCM_BASE + CCM_CGCR1);
> +#endif
>  }
>  
>  /*
> @@ -518,6 +529,12 @@ static int imxfb_probe(struct device_d *dev)
>  	PCCR0 &= ~PCCR0_LCDC_EN;
>  	PCCR1 &= ~PCCR1_HCLK_LCDC;
>  #endif
> +#ifdef CONFIG_ARCH_IMX25
> +	writel(readl(IMX_CCM_BASE + CCM_CGCR0) & ~((1 << 24) | (1 << 7)),
> +		IMX_CCM_BASE + CCM_CGCR0);
> +	writel(readl(IMX_CCM_BASE + CCM_CGCR1) & ~(1 << 29),
> +		IMX_CCM_BASE + CCM_CGCR1);
> +#endif
>  
>  	fbi = xzalloc(sizeof(*fbi));
>  	info = &fbi->info;
> -- 
> 1.6.3.3
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

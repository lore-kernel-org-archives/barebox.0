Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9HnM-0007dA-OQ
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 15:13:21 +0000
Date: Sun, 18 Mar 2012 16:13:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120318151315.GQ3852@pengutronix.de>
References: <1332052813-2880-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332052813-2880-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] i.MX27: Use resigter name in imx27_add_fb
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Mar 18, 2012 at 10:40:13AM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks.

Sascha

> ---
>  arch/arm/mach-imx/include/mach/devices-imx27.h |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
> index 3141d96..acef9c2 100644
> --- a/arch/arm/mach-imx/include/mach/devices-imx27.h
> +++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
> @@ -48,7 +48,7 @@ static inline struct device_d *imx27_add_nand(struct imx_nand_platform_data *pda
>  
>  static inline struct device_d *imx27_add_fb(struct imx_fb_platform_data *pdata)
>  {
> -	return imx_add_fb((void *)0x10021000, pdata);
> +	return imx_add_fb((void *)IMX_FB_BASE, pdata);
>  }
>  
>  static inline struct device_d *imx27_add_fec(struct fec_platform_data *pdata)
> -- 
> 1.7.3.4
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

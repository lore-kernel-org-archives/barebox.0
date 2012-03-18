Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S9Hmp-0007cW-Qa
 for barebox@lists.infradead.org; Sun, 18 Mar 2012 15:12:48 +0000
Date: Sun, 18 Mar 2012 16:12:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120318151242.GP3852@pengutronix.de>
References: <1332052180-2707-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332052180-2707-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 2/2] i.MX27: Add support for SDHC1
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Mar 18, 2012 at 10:29:40AM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

This deserves a bit more explanation, like:

imx27_add_mmc0 really registered IMX_SDHC2. Fix this by adding a
imx27_add_mmc1 and use this in the pca100 board file.

Sascha

> ---
>  arch/arm/boards/phycard-i.MX27/pca100.c        |    2 +-
>  arch/arm/mach-imx/include/mach/devices-imx27.h |    7 +++++--
>  2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
> index 1b43951..f934a9b 100644
> --- a/arch/arm/boards/phycard-i.MX27/pca100.c
> +++ b/arch/arm/boards/phycard-i.MX27/pca100.c
> @@ -292,7 +292,7 @@ static int pca100_devices_init(void)
>  
>  	imx27_add_nand(&nand_info);
>  	imx27_add_fec(&fec_info);
> -	imx27_add_mmc0(NULL);
> +	imx27_add_mmc1(NULL);
>  	imx27_add_fb(&pca100_fb_data);
>  
>  	PCCR1 |= PCCR1_PERCLK2_EN;
> diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
> index 3141d96..4d30200 100644
> --- a/arch/arm/mach-imx/include/mach/devices-imx27.h
> +++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
> @@ -58,7 +58,10 @@ static inline struct device_d *imx27_add_fec(struct fec_platform_data *pdata)
>  
>  static inline struct device_d *imx27_add_mmc0(void *pdata)
>  {
> -	return imx_add_mmc((void *)0x10014000, 0, pdata);
> +	return imx_add_mmc((void *)IMX_SDHC1_BASE, 0, pdata);
>  }
>  
> -
> +static inline struct device_d *imx27_add_mmc1(void *pdata)
> +{
> +	return imx_add_mmc((void *)IMX_SDHC2_BASE, 1, pdata);
> +}
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

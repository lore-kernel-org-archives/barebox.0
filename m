Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEcJW-0005c2-K8
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 08:08:35 +0000
Date: Mon, 2 Apr 2012 10:08:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402080830.GF3852@pengutronix.de>
References: <1332695716-6959-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332695716-6959-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] i.MX27: Export boot source to magic variables
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Mar 25, 2012 at 09:15:16PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/boot.c |   27 ++++++++++++++++++++++++++-
>  1 files changed, 26 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index 8b82655..9f2def6 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -86,9 +86,34 @@ static int imx_25_35_boot_save_loc(void)
>  
>  	return 0;
>  }
> -
>  coredevice_initcall(imx_25_35_boot_save_loc);
>  
>  BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
> +#endif
> +
> +#if defined(CONFIG_ARCH_IMX27)
> +static int imx_27_boot_save_loc(void)
> +{
> +	switch ((GPCR & GPCR_BOOT_MASK) >> GPCR_BOOT_SHIFT) {
> +	case GPCR_BOOT_UART_USB:
> +		setenv("barebox_loc", "serial");
> +		break;
> +	case GPCR_BOOT_8BIT_NAND_2k:
> +	case GPCR_BOOT_16BIT_NAND_2k:
> +	case GPCR_BOOT_16BIT_NAND_512:
> +	case GPCR_BOOT_8BIT_NAND_512:
> +		setenv("barebox_loc", "nand");
> +		break;
> +	default:
> +		setenv("barebox_loc", "nor");
> +		break;
> +	}
>  
> +	export("barebox_loc");
> +
> +	return 0;
> +}
> +coredevice_initcall(imx_27_boot_save_loc);
> +
> +BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
>  #endif
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

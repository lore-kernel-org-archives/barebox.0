Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4kcy-0000yi-NM
 for barebox@lists.infradead.org; Mon, 23 May 2016 07:50:17 +0000
Date: Mon, 23 May 2016 09:49:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160523074954.GP11148@pengutronix.de>
References: <1463812524-24463-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1463812524-24463-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: imx51: Remove stale comment
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sat, May 21, 2016 at 09:35:24AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-imx/imx51.c | 19 -------------------
>  1 file changed, 19 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
> index 70e8971..a6784d0 100644
> --- a/arch/arm/mach-imx/imx51.c
> +++ b/arch/arm/mach-imx/imx51.c
> @@ -83,25 +83,6 @@ int imx51_devices_init(void)
>  	return 0;
>  }
>  
> -/*
> - * Saves the boot source media into the $bootsource environment variable
> - *
> - * This information is useful for barebox init scripts as we can then easily
> - * use a kernel image stored on the same media that we launch barebox with
> - * (for example).
> - *
> - * imx25 and imx35 can boot into barebox from several media such as
> - * nand, nor, mmc/sd cards, serial roms. "mmc" is used to represent several
> - * sources as its impossible to distinguish between them.
> - *
> - * Some sources such as serial roms can themselves have 3 different boot
> - * possibilities (i2c1, i2c2 etc). It is assumed that any board will
> - * only be using one of these at any one time.
> - *
> - * Note also that I suspect that the boot source pins are only sampled at
> - * power up.
> - */
> -
>  #define DP_MFN_800_DIT 60 /* PL Dither mode */
>  
>  /*
> -- 
> 2.4.9
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

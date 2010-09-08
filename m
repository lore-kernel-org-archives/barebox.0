Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OtGMg-0001Hy-Oq
	for barebox@lists.infradead.org; Wed, 08 Sep 2010 08:50:49 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 8 Sep 2010 10:49:20 +0200
References: <AANLkTinY-pU+97DMxkFddz6qj+ayQh=5nC1Or++A1qfh@mail.gmail.com>
In-Reply-To: <AANLkTinY-pU+97DMxkFddz6qj+ayQh=5nC1Or++A1qfh@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201009081049.20304.jbe@pengutronix.de>
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
Subject: Re: [PATCH] mach-s3c24xx: Fix compilation problem when make a9m2410
	or a9m2440 defconfig.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Marek Belisko wrote:
> Following steps lead to compilation error (barebox v2010.09.0):
>
> 1. make a9m2440_defconfig (or a9m2410) ARCH=arm
> 2. make CROSS_COMPILE=arm-linux- ARCH=arm
>
> This patch should fix problems.
>
> Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
> ---
>  arch/arm/mach-s3c24xx/Kconfig |    4 +++-
>  1 files changed, 3 insertions(+), 1 deletions(-)
>
> diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-s3c24xx/Kconfig
> index 37ccf2f..297fdbb 100644
> --- a/arch/arm/mach-s3c24xx/Kconfig
> +++ b/arch/arm/mach-s3c24xx/Kconfig
> @@ -81,7 +81,9 @@ config S3C24XX_SDRAM_INIT
>  config S3C24XX_NAND_BOOT
>  	bool
>  	prompt "Booting from NAND"
> -	select NAND_S3C24X0
> +	select MTD
> +	select NAND
> +	select NAND_S3C24X0
>  	help
>  	  Add generic support to boot from NAND flash. Image loading will be
>  	  skipped if the code is running from NOR or already from SDRAM.

Acked-by: Juergen Beisert <jbe@pengutronix.de>

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

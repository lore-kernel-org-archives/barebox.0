Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OtHG4-0003JW-MU
	for barebox@lists.infradead.org; Wed, 08 Sep 2010 09:48:06 +0000
Date: Wed, 8 Sep 2010 11:47:06 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100908094706.GA2847@game.jcrosoft.org>
References: <AANLkTinY-pU+97DMxkFddz6qj+ayQh=5nC1Or++A1qfh@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTinY-pU+97DMxkFddz6qj+ayQh=5nC1Or++A1qfh@mail.gmail.com>
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
Subject: Re: [PATCH] mach-s3c24xx: Fix compilation problem when make
	a9m2410 or a9m2440 defconfig.
To: Marek Belisko <marek.belisko@open-nandra.com>
Cc: barebox@lists.infradead.org

On 20:52 Tue 07 Sep     , Marek Belisko wrote:
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

you should be able to boot from nand only if you enable the NAND and not the
invert

so it's a depends on

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

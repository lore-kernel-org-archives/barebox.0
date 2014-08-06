Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo4.mail-out.ovh.net ([188.165.33.112]
 helo=mo4.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEsTB-00061q-Dd
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 04:04:58 +0000
Received: from mail186.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id AFEF0FF8F72
 for <barebox@lists.infradead.org>; Wed,  6 Aug 2014 06:04:34 +0200 (CEST)
Date: Wed, 6 Aug 2014 06:08:53 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140806040853.GH19147@ns203013.ovh.net>
References: <1407230089-26948-1-git-send-email-poggi.raph@gmail.com>
 <1407230089-26948-2-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1407230089-26948-2-git-send-email-poggi.raph@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/5] mtd: nand: remove NAND_ATMEL_PMECC
To: Rapha??l Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On 11:14 Tue 05 Aug     , Rapha??l Poggi wrote:
> By removing this CONFIG_, we can use a structure member to retrieve the c=
onfig,
> either through the plateform data or through the device tree. So we can h=
andle cases
> when the driver is probed using device tree or not.
NACK

this is use to reduce barebox size

keep the NAND_ATMEL_PMECC

so we choose to enable it or not

Best Regards,
J.
> =

> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm/mach-at91/include/mach/board.h |    1 +
>  drivers/mtd/nand/Kconfig                |    8 --------
>  drivers/mtd/nand/atmel_nand.c           |    2 +-
>  3 files changed, 2 insertions(+), 9 deletions(-)
> =

> diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91=
/include/mach/board.h
> index aa0fdae..e2307ed 100644
> --- a/arch/arm/mach-at91/include/mach/board.h
> +++ b/arch/arm/mach-at91/include/mach/board.h
> @@ -63,6 +63,7 @@ struct atmel_nand_data {
>  	u8		bus_width_16;	/* buswidth is 16 bit */
>  	u8		ecc_mode;	/* NAND_ECC_* */
>  	u8		on_flash_bbt;	/* Use flash based bbt */
> +	u8		has_pmecc;	/* Use PMECC */
>  	u8		bus_on_d0;
>  =

>  	u8		pmecc_corr_cap;
> diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> index 04fe3c8..d49eae3 100644
> --- a/drivers/mtd/nand/Kconfig
> +++ b/drivers/mtd/nand/Kconfig
> @@ -95,14 +95,6 @@ config NAND_ATMEL
>  	prompt "Atmel (AT91SAM9xxx) NAND driver"
>  	depends on ARCH_AT91
>  =

> -config NAND_ATMEL_PMECC
> -	bool
> -	prompt "PMECC support"
> -	depends on NAND_ATMEL
> -	select NAND_ECC_HW
> -	help
> -	  Support for PMECC present on the SoC sam9x5 and sam9n12
> -
>  config NAND_S3C24XX
>  	bool
>  	prompt "Samsung S3C24XX NAND driver"
> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index 337e225..3ec6450 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -1219,7 +1219,7 @@ static int __init atmel_nand_probe(struct device_d =
*dev)
>  =

>  	if (IS_ENABLED(CONFIG_NAND_ECC_HW) &&
>  	    nand_chip->ecc.mode =3D=3D NAND_ECC_HW) {
> -		if (IS_ENABLED(CONFIG_NAND_ATMEL_PMECC))
> +		if (pdata->has_pmecc)
>  			res =3D atmel_pmecc_nand_init_params(dev, host);
>  		else
>  			res =3D atmel_hw_nand_init_params(dev, host);
> -- =

> 1.7.9.5
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

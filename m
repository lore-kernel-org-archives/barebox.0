Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vq0uc-0005We-4V
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 13:30:14 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9CEE0FF8CE8
 for <barebox@lists.infradead.org>; Mon,  9 Dec 2013 14:29:52 +0100 (CET)
Date: Mon, 9 Dec 2013 14:30:01 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131209133001.GI27628@ns203013.ovh.net>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <1386409020-11914-5-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386409020-11914-5-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 5/7] atmel_nand: make chip_delay configurable
To: Eric B??nard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 10:36 Sat 07 Dec     , Eric B??nard wrote:
> this is usefull for custom boards with different NAND flashs
> (for informations u-boot defaults chip_delay to 75)
drop this comment on u-boot as in barebox we use the kernel driver
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/mach-at91/include/mach/board.h | 1 +
>  drivers/mtd/nand/atmel_nand.c           | 5 ++++-
>  2 files changed, 5 insertions(+), 1 deletion(-)
> =

> diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91=
/include/mach/board.h
> index aa0fdae..4e6fa8b 100644
> --- a/arch/arm/mach-at91/include/mach/board.h
> +++ b/arch/arm/mach-at91/include/mach/board.h
> @@ -64,6 +64,7 @@ struct atmel_nand_data {
>  	u8		ecc_mode;	/* NAND_ECC_* */
>  	u8		on_flash_bbt;	/* Use flash based bbt */
>  	u8		bus_on_d0;
> +	int		chip_delay;
>  =

>  	u8		pmecc_corr_cap;
>  	u16		pmecc_sector_size;
> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index 658ae52..2ff7427 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -1161,7 +1161,10 @@ static int __init atmel_nand_probe(struct device_d=
 *dev)
>  		nand_chip->ecc.mode =3D NAND_ECC_HW;
>  	}
>  =

> -	nand_chip->chip_delay =3D 20;		/* 20us command delay time */
> +	if (host->board->chip_delay > 0)
> +		nand_chip->chip_delay =3D host->board->chip_delay;
> +	else
> +		nand_chip->chip_delay =3D 20;		/* 20us command delay time */
>  =

>  	if (host->board->bus_width_16) {	/* 16-bit bus width */
>  		nand_chip->options |=3D NAND_BUSWIDTH_16;
> -- =

> 1.8.3.1
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

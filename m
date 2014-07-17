Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X7eHi-0003iH-BW
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 05:31:14 +0000
Date: Thu, 17 Jul 2014 07:30:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140717053050.GH23235@pengutronix.de>
References: <1405415800-7846-1-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1405415800-7846-1-git-send-email-poggi.raph@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: atmel_nand: add SOFT_BCH support
To: Raphael Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 15, 2014 at 11:16:40AM +0200, Raphael Poggi wrote:
> To use soft ecc with nand with 8k page, we need the BCH support.
> This commit adds the possibilty for atmel_nand to enable SOFT_BCH.
> =

> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> ---
>  drivers/mtd/nand/atmel_nand.c |    5 +++++
>  1 file changed, 5 insertions(+)
> =

> diff --git a/drivers/mtd/nand/atmel_nand.c b/drivers/mtd/nand/atmel_nand.c
> index e9b2af7..d542a83 100644
> --- a/drivers/mtd/nand/atmel_nand.c
> +++ b/drivers/mtd/nand/atmel_nand.c
> @@ -1164,6 +1164,11 @@ static int __init atmel_nand_probe(struct device_d=
 *dev)
>  		nand_chip->ecc.mode =3D NAND_ECC_HW;
>  	}
>  =

> +	if (IS_ENABLED(CONFIG_NAND_ECC_BCH) &&
> +		pdata->ecc_mode =3D=3D NAND_ECC_SOFT_BCH) {
> +		nand_chip->ecc.mode =3D NAND_ECC_SOFT_BCH;
> +	}
> +
>  	nand_chip->chip_delay =3D 40;		/* 40us command delay time */

The mainline code has 20us here. Do you need that change?

Anyway, applied this patch.

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

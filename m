Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFxw4-0008VQ-91
 for barebox@lists.infradead.org; Thu, 23 Jun 2016 06:16:21 +0000
Date: Thu, 23 Jun 2016 08:15:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160623061558.GE4750@pengutronix.de>
References: <1466411417-25636-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466411417-25636-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mtd: nand: simplify nand_block_checkbad
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 20, 2016 at 10:30:17AM +0200, Uwe Kleine-K=F6nig wrote:
> 	if (A) {
> 		if (!B)
> 			return C;
> 		return D;
> 	}
> =

> 	return C;
> =

> can be simplified to:
> =

> 	if (A && B)
> 		return D;
> =

> 	return C;
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_base.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> =


Applied, thanks

Sascha

> diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
> index 670720a28447..426ad9bf8b30 100644
> --- a/drivers/mtd/nand/nand_base.c
> +++ b/drivers/mtd/nand/nand_base.c
> @@ -445,10 +445,7 @@ static int nand_block_checkbad(struct mtd_info *mtd,=
 loff_t ofs, int getchip,
>  {
>  	struct nand_chip *chip =3D mtd->priv;
>  =

> -	if (IS_ENABLED(CONFIG_NAND_BBT)) {
> -		if (!chip->bbt)
> -			return chip->block_bad(mtd, ofs, getchip);
> -
> +	if (IS_ENABLED(CONFIG_NAND_BBT) && chip->bbt) {
>  		/* Return info from the table */
>  		return nand_isbad_bbt(mtd, ofs, allowbbt);
>  	}
> -- =

> 2.8.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

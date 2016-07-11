Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bMU5k-0005Ov-Uc
 for barebox@lists.infradead.org; Mon, 11 Jul 2016 05:49:18 +0000
Date: Mon, 11 Jul 2016 07:48:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160711054853.GT20657@pengutronix.de>
References: <1467962743-15587-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467962743-15587-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH v2] mtd: nand: imx-bbm: use raw reading when checking for
 factory BBM
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 08, 2016 at 09:25:43AM +0200, Uwe Kleine-K=F6nig wrote:
> This is necessary to prevent the imx_nand_bbm command to bail out
> on ECC errors which leaves the device without BBT.
> =

> Also simplify buffer management: Use on-stack buffer instead of malloc.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Changes since (implicit) v1 sent with Message-Id: 1467884923-24060-1-git-=
send-email-u.kleine-koenig@pengutronix.de:
> =

>  - drop two now unused variables fixing two compiler warnings
> =

>  drivers/mtd/nand/nand_imx_bbm.c | 33 ++++++++++++++++-----------------
>  1 file changed, 16 insertions(+), 17 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mtd/nand/nand_imx_bbm.c b/drivers/mtd/nand/nand_imx_=
bbm.c
> index 251dfe5d3f12..23722a906473 100644
> --- a/drivers/mtd/nand/nand_imx_bbm.c
> +++ b/drivers/mtd/nand/nand_imx_bbm.c
> @@ -52,12 +52,20 @@
>   * on the flash BBT.
>   *
>   */
> -static int checkbad(struct mtd_info *mtd, loff_t ofs, void *__buf)
> +static int checkbad(struct mtd_info *mtd, loff_t ofs)
>  {
> -	int ret, retlen;
> -	uint8_t *buf =3D __buf;
> -
> -	ret =3D mtd->read(mtd, ofs, mtd->writesize, &retlen, buf);
> +	int ret;
> +	uint8_t buf[mtd->writesize + mtd->oobsize];
> +	struct mtd_oob_ops ops;
> +
> +	ops.mode =3D MTD_OPS_RAW;
> +	ops.ooboffs =3D 0;
> +	ops.datbuf =3D buf;
> +	ops.len =3D mtd->writesize;
> +	ops.oobbuf =3D buf + mtd->writesize;
> +	ops.ooblen =3D mtd->oobsize;
> +
> +	ret =3D mtd_read_oob(mtd, ofs, &ops);
>  	if (ret < 0)
>  		return ret;
>  =

> @@ -72,7 +80,6 @@ static void *create_bbt(struct mtd_info *mtd)
>  	struct nand_chip *chip =3D mtd->priv;
>  	int len, i, numblocks, ret;
>  	loff_t from =3D 0;
> -	void *buf;
>  	uint8_t *bbt;
>  =

>  	if ((chip->bbt_td && chip->bbt_td->pages[0] !=3D -1) ||
> @@ -88,18 +95,12 @@ static void *create_bbt(struct mtd_info *mtd)
>  	if (!bbt)
>  		return ERR_PTR(-ENOMEM);
>  =

> -	buf =3D malloc(mtd->writesize);
> -	if (!buf) {
> -		ret =3D -ENOMEM;
> -		goto out2;
> -	}
> -
>  	numblocks =3D mtd->size >> (chip->bbt_erase_shift - 1);
>  =

>  	for (i =3D 0; i < numblocks;) {
> -		ret =3D checkbad(mtd, from, buf);
> +		ret =3D checkbad(mtd, from);
>  		if (ret < 0)
> -			goto out1;
> +			goto out;
>  =

>  		if (ret) {
>  			bbt[i >> 3] |=3D 0x03 << (i & 0x6);
> @@ -113,9 +114,7 @@ static void *create_bbt(struct mtd_info *mtd)
>  =

>  	return bbt;
>  =

> -out1:
> -	free(buf);
> -out2:
> +out:
>  	free(bbt);
>  =

>  	return ERR_PTR(ret);
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

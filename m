Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UQhma-0000af-D1
 for barebox@lists.infradead.org; Fri, 12 Apr 2013 17:29:04 +0000
Date: Fri, 12 Apr 2013 19:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130412172902.GV1906@pengutronix.de>
References: <1365681891-9135-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365681891-9135-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] mtdraw: fix oob read and write
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 11, 2013 at 02:04:51PM +0200, Eric B=E9nard wrote:
> actually ops.ooboffs is not defaulted so when its value gets
> added to chip->oob_poi in nand_fill_oob or nand_transfer_oob
> the respective memcpy is using a wrong address.
> =

> With this patch, both md -s /dev/nandraw0 and cp xyz /dev/nandraw0.sb
> are working fine on an i.MX28 target (instead of crashing the board).
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied, thanks

Sascha

> ---
>  drivers/mtd/mtdraw.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
> index 384104e..c289e8d 100644
> --- a/drivers/mtd/mtdraw.c
> +++ b/drivers/mtd/mtdraw.c
> @@ -98,6 +98,7 @@ static ssize_t mtdraw_read_unaligned(struct mtd_info *m=
td, void *dst,
>  	if (!tmp)
>  		return -ENOMEM;
>  	ops.mode =3D MTD_OOB_RAW;
> +	ops.ooboffs =3D 0;
>  	ops.datbuf =3D tmp;
>  	ops.len =3D mtd->writesize;
>  	ops.oobbuf =3D tmp + mtd->writesize;
> @@ -152,6 +153,7 @@ static ssize_t mtdraw_blkwrite(struct mtd_info *mtd, =
const void *buf,
>  	int ret;
>  =

>  	ops.mode =3D MTD_OOB_RAW;
> +	ops.ooboffs =3D 0;
>  	ops.datbuf =3D (void *)buf;
>  	ops.len =3D mtd->writesize;
>  	ops.oobbuf =3D (void *)buf + mtd->writesize;
> -- =

> 1.7.11.7
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

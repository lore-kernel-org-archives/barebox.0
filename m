Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjLNc-0005Wm-VQ
 for barebox@lists.infradead.org; Thu, 02 Mar 2017 07:42:30 +0000
Date: Thu, 2 Mar 2017 08:42:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170302074207.gghsarv356bmbhg6@pengutronix.de>
References: <20170301155703.10374-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170301155703.10374-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] nand-bb: fix writing to the end of a .bb device
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Mar 01, 2017 at 04:57:03PM +0100, Uwe Kleine-K=F6nig wrote:
> As nand_bb_write_buf calls mtd_write(bb->mtd, cur_ofs, now, ...) the
> limit that now should be checked against is bb->mtd->size - cur_ofs.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mtd/nand/nand-bb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
> index 015f8dc524f3..a1523c3c8992 100644
> --- a/drivers/mtd/nand/nand-bb.c
> +++ b/drivers/mtd/nand/nand-bb.c
> @@ -99,7 +99,7 @@ static int nand_bb_write_buf(struct nand_bb *bb, size_t=
 count)
>  	loff_t cur_ofs =3D bb->offset & ~(BB_WRITEBUF_SIZE - 1);
>  =

>  	while (count) {
> -		loff_t max =3D bb->mtd->size - bb->offset;
> +		loff_t max =3D bb->mtd->size - cur_ofs;
>  =

>  		if (max <=3D 0)
>  			return -ENOSPC;
> -- =

> 2.11.0
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

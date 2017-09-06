Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpYxT-0003Hi-Qr
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 11:57:30 +0000
Date: Wed, 6 Sep 2017 13:57:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170906115702.dqf3qadozluwvzh6@pengutronix.de>
References: <20170824144714.11716-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170824144714.11716-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mtd: nand-mxs: improve error messages
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 24, 2017 at 04:47:14PM +0200, Uwe Kleine-K=F6nig wrote:
> This commit adds the return value of the failing function to one message
> and makes the other unique.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_mxs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
> index bac5c4a47798..837bb23a606b 100644
> --- a/drivers/mtd/nand/nand_mxs.c
> +++ b/drivers/mtd/nand/nand_mxs.c
> @@ -459,7 +459,7 @@ static void mxs_nand_cmd_ctrl(struct mtd_info *mtd, i=
nt data, unsigned int ctrl)
>  	/* Execute the DMA chain. */
>  	ret =3D mxs_dma_go(channel);
>  	if (ret)
> -		printf("MXS NAND: Error sending command\n");
> +		printf("MXS NAND: Error sending command (%d)\n", ret);
>  =

>  	mxs_nand_return_dma_descs(nand_info);
>  =

> @@ -777,7 +777,7 @@ static int mxs_nand_ecc_read_page(struct mtd_info *mt=
d, struct nand_chip *nand,
>  	/* Execute the DMA chain. */
>  	ret =3D mxs_dma_go(channel);
>  	if (ret) {
> -		printf("MXS NAND: DMA read error\n");
> +		printf("MXS NAND: DMA read error (ecc)\n");
>  		goto rtn;
>  	}
>  =

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVr8V-0008OA-5Z
 for barebox@lists.infradead.org; Fri, 23 Oct 2020 07:05:16 +0000
Date: Fri, 23 Oct 2020 09:05:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201023070511.GP26805@pengutronix.de>
References: <20201022122522.3303-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022122522.3303-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] mtd: nand-imx: repair reading the oob area
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 22, 2020 at 02:25:22PM +0200, Uwe Kleine-K=F6nig wrote:
> After sending the READOOB command the core (in nand_read_oob_std()) uses
> the read_buf callback to fetch the result. So in the imx driver it is
> necessary to emit the NFC_OUTPUT command to make the controller actually
> read the requested data into the internal buffer and then copy the data
> to the location where read_buf expects it.
> =

> This fixes reading from /dev/nand0.oob and also (somewhat) reading bad
> block markers in the absence of a bad block table.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
> =

> I failed to find the commit that broke reading from /dev/nand0.oob but
> failed to identify it. I think this bug is quite old. I didn't test, but
> I think this was already broken in 2010.09.0 where the nand support was
> moved from drivers/nand to drivers/mtd/nand. (This is where gitk output
> ended :-)
> =

> Best regards
> Uwe

Tested on i.MX27 and applied, thanks

Sascha

> =

>  drivers/mtd/nand/nand_imx.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
> index d69a012f017b..f9d3c2e34a99 100644
> --- a/drivers/mtd/nand/nand_imx.c
> +++ b/drivers/mtd/nand/nand_imx.c
> @@ -996,14 +996,23 @@ static void imx_nand_command(struct mtd_info *mtd, =
unsigned command,
>  		else
>  			host->buf_start =3D column + mtd->writesize;
>  =

> -		command =3D NAND_CMD_READ0;
> -
> -		host->send_cmd(host, command);
> +		host->send_cmd(host, NAND_CMD_READ0);
>  		mxc_do_addr_cycle(mtd, column, page_addr);
>  =

>  		if (host->pagesize_2k)
>  			/* send read confirm command */
>  			host->send_cmd(host, NAND_CMD_READSTART);
> +
> +		/*
> +		 * After the core issued READOOB the result is read using
> +		 * .read_buf, so we have to make sure the data is actually
> +		 * there.
> +		 */
> +		if (command =3D=3D NAND_CMD_READOOB) {
> +			host->send_page(host, NFC_OUTPUT);
> +			copy_spare(mtd, 1, host->data_buf + mtd->writesize);
> +		}
> +
>  		break;
>  =

>  	case NAND_CMD_SEQIN:
> -- =

> 2.28.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

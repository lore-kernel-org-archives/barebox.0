Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YG140-0004kK-V0
 for barebox@lists.infradead.org; Tue, 27 Jan 2015 07:59:57 +0000
Date: Tue, 27 Jan 2015 08:59:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150127075933.GS12209@pengutronix.de>
References: <1422290748-10078-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422290748-10078-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] trivial: s/flasg/flash/
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 26, 2015 at 05:45:48PM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/mtd/nand/nand_imx_bbm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/mtd/nand/nand_imx_bbm.c b/drivers/mtd/nand/nand_imx_=
bbm.c
> index f419759b1877..5caa0a26c34b 100644
> --- a/drivers/mtd/nand/nand_imx_bbm.c
> +++ b/drivers/mtd/nand/nand_imx_bbm.c
> @@ -43,7 +43,7 @@
>   * To preserve the factory bad block information we take the following
>   * strategy:
>   *
> - * - If the NAND driver detects that no flasg BBT is present on 2k NAND
> + * - If the NAND driver detects that no flash BBT is present on 2k NAND
>   *   chips it will not create one because it would do so based on the wr=
ong
>   *   BBM position
>   * - This command is used to create a flash BBT then.
> -- =

> 2.1.4
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

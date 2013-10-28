Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VamkZ-00057x-BE
 for barebox@lists.infradead.org; Mon, 28 Oct 2013 13:20:56 +0000
Date: Mon, 28 Oct 2013 14:20:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131028132029.GM30088@pengutronix.de>
References: <1382621212-28611-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382621212-28611-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] bcb: fix compilation
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 24, 2013 at 03:26:52PM +0200, Eric B=E9nard wrote:
> this fix :
> arch/arm/mach-mxs/bcb.c:268: error: too few arguments to function 'chip->=
ecc.read_page_raw'
> arch/arm/mach-mxs/bcb.c:309: error: too few arguments to function 'chip->=
write_page'
> =

> caution : this is NOT runtime tested.
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-mxs/bcb.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm/mach-mxs/bcb.c b/arch/arm/mach-mxs/bcb.c
> index af51d24..b5d793e 100644
> --- a/arch/arm/mach-mxs/bcb.c
> +++ b/arch/arm/mach-mxs/bcb.c
> @@ -265,7 +265,7 @@ static int find_fcb(struct mtd_info *mtd, void *ref, =
int page)
>  =

>  	chip->select_chip(mtd, 0);
>  	chip->cmdfunc(mtd, NAND_CMD_READ0, 0x00, page);
> -	ret =3D chip->ecc.read_page_raw(mtd, chip, buf);
> +	ret =3D chip->ecc.read_page_raw(mtd, chip, buf, 1, page);
>  	if (ret) {
>  		printf("Failed to read FCB from page %u: %d\n", page, ret);
>  		return ret;
> @@ -306,7 +306,7 @@ static int write_fcb(struct mtd_info *mtd, void *buf,=
 int block)
>  =

>  	printf("Writing FCB to block %08x\n", block);
>  	chip->select_chip(mtd, 0);
> -	ret =3D chip->write_page(mtd, chip, buf, page, 0, 1);
> +	ret =3D chip->write_page(mtd, chip, 0, mtd->erasesize, buf, 1, page, 0,=
 1);
>  	if (ret) {
>  		printf("Failed to write FCB to block %08x: %d\n", block, ret);
>  	}
> -- =

> 1.8.3.1
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

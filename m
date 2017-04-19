Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0kh8-0003SA-RO
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 08:10:36 +0000
Date: Wed, 19 Apr 2017 10:10:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419081008.i6unqcli7fhmq5xd@pengutronix.de>
References: <20170414183205.62794-1-mreimer@sdgsystems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170414183205.62794-1-mreimer@sdgsystems.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand_omap_gpmc: fix BCH error correction
To: Matt Reimer <mreimer@sdgsystems.com>
Cc: barebox@lists.infradead.org

Hi Matt,

On Fri, Apr 14, 2017 at 11:32:05AM -0700, Matt Reimer wrote:
> BCH error detection and correction was only looking at the first
> of four syndrome polynomials, which meant it was failing to detect
> and correct bitflips in the last 3/4 of the data. In effect, only
> the first 512 bytes of a 2048 byte page were being protected by ECC.
> 
> The syndrome polynomials (BCH error codes) are stored in the NAND's
> OOB, each of which protects 512 bytes of data. The driver used
> eccsteps = 1 which effectively made it only use the first polynomial,
> and therefore was only protecting the first 512 bytes of the page.
> 
> The fix is to pull over a bit of code from the kernel's
> omap_correct_data() that sets eccsteps = 4 when the page size is 2048
> bytes and hardware ECC is being used.
> 
> Signed-off-by: Matt Reimer <mreimer@sdgsystems.com>
> ---
>  drivers/mtd/nand/nand_omap_gpmc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
> index 9d9d27e..2fe6a10 100644
> --- a/drivers/mtd/nand/nand_omap_gpmc.c
> +++ b/drivers/mtd/nand/nand_omap_gpmc.c
> @@ -302,7 +302,8 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
>  	unsigned int err_loc[8];
>  	int select_4_8;
>  
> -	int eccsteps = oinfo->nand.ecc.steps;
> +        int eccsteps = (nand->ecc.mode == NAND_ECC_HW) &&
> +                (nand->ecc.size == 2048) ? 4 : 1;

Fixed up indention and applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

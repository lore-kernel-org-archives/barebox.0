Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dIUig-0004YM-9N
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 06:45:32 +0000
Date: Wed, 7 Jun 2017 08:45:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170607064508.lau5rlqb5k6hslf3@pengutronix.de>
References: <1496765425-9702-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1496765425-9702-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH] mtd: nand: omap: Fix BCH bit correction
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org, Matt Reimer <mreimer@sdgsystems.com>

+Cc Matt Reimer <mreimer@sdgsystems.com>

On Tue, Jun 06, 2017 at 06:10:25PM +0200, Daniel Schultz wrote:
> After commit dec7b4d2bf9 was applied our barebox only corrected the
> first 512 Bytes of NAND pages.
> 
> This patch separates between Hamming and BCH when finding out the
> eccsteps, because BCH always works with 2kB pages.
> 
> Before this patch:
> 
> barebox@Phytec phyCORE AM335x:/ nand_bitflip -r -n 5 /dev/nand0.barebox
> nand0.barebox: Flipping bit 5 @ 1796
> nand0.barebox: Flipping bit 6 @ 1258
> nand0.barebox: Flipping bit 5 @ 1062
> nand0.barebox: Flipping bit 2 @ 1399
> nand0.barebox: Flipping bit 6 @ 1243
> No bitflips found on block 0, offset 0x00000000
> barebox@Phytec phyCORE AM335x:/ nand_bitflip -r -n 5 /dev/nand0.barebox
> nand0.barebox: Flipping bit 2 @ 872
> nand0.barebox: Flipping bit 4 @ 252
> nand0.barebox: Flipping bit 3 @ 568
> nand0.barebox: Flipping bit 2 @ 247
> nand0.barebox: Flipping bit 5 @ 401
> page at block 0, offset 0x00000000 has 3 bitflips
> 
> After this patch:
> 
> barebox@Phytec phyCORE AM335x:/ nand_bitflip -r -n 5 /dev/nand0.barebox
> nand0.barebox: Flipping bit 2 @ 1962
> nand0.barebox: Flipping bit 0 @ 1563
> nand0.barebox: Flipping bit 0 @ 1808
> nand0.barebox: Flipping bit 6 @ 1460
> nand0.barebox: Flipping bit 7 @ 2034
> page at block 0, offset 0x00000000 has 5 bitflips
> barebox@Phytec phyCORE AM335x:/ nand_bitflip -r -n 5 /dev/nand0.barebox
> nand0.barebox: Flipping bit 1 @ 1352
> nand0.barebox: Flipping bit 7 @ 1542
> nand0.barebox: Flipping bit 2 @ 1021
> nand0.barebox: Flipping bit 7 @ 691
> nand0.barebox: Flipping bit 6 @ 1196
> page at block 0, offset 0x00000000 has 10 bitflips, needs cleanup
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  drivers/mtd/nand/nand_omap_gpmc.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
> index 05c8486..61220da 100644
> --- a/drivers/mtd/nand/nand_omap_gpmc.c
> +++ b/drivers/mtd/nand/nand_omap_gpmc.c
> @@ -302,10 +302,17 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
>  	unsigned int err_loc[8];
>  	int bitflip_count;
>  	int bch_max_err;
> +	int eccsteps;
>  
> -	int eccsteps = (nand->ecc.mode == NAND_ECC_HW) &&
> -			(nand->ecc.size == 2048) ? 4 : 1;
>  	int eccsize = oinfo->nand.ecc.bytes;
> +	if (oinfo->ecc_mode == OMAP_ECC_HAMMING_CODE_HW_ROMCODE)

This is wrong. When in Hamming ECC mode you shouldn't get into this
function. The test should always fail.

> +		if ((nand->ecc.mode == NAND_ECC_HW) &&
> +				(nand->ecc.size == 2048))
> +			eccsteps = 4;
> +		else
> +			eccsteps = 1;

The question is why ecc.size is set to the wrong value in the first
place:

	case OMAP_ECC_BCH8_CODE_HW:
		...
		oinfo->nand.ecc.size     = 512 * 4;

This seems to be wrong. The BCH controller works in 512 Byte chunks, so
ecc.size should be 512. This would make the special cases in
omap_correct_bch() unnecessary.

In dec7b4d2bf9 Matt said:

|  The fix is to pull over a bit of code from the kernel's
|  omap_correct_data() that sets eccsteps = 4 when the page size is 2048
|  bytes and hardware ECC is being used.

In fact, this piece is in the kernel code:

	/* Ex NAND_ECC_HW12_2048 */
	if ((info->nand.ecc.mode == NAND_ECC_HW) &&
			(info->nand.ecc.size  == 2048))
		blockCnt = 4;
	else
		blockCnt = 1;

I just suspect this is never used, because ecc.size is correctly set to 512 in
all cases. Then ecc.steps results in 4 for 2k page sizes and the framework correctly
iterates over the ecc steps.

Please give the attached test a try. It's completely untested.

Sascha

-------------------------------------8<---------------------------------

From 34bbcd911513e9031786a3c0f12e83ee9e904b42 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 7 Jun 2017 08:42:06 +0200
Subject: [PATCH] mtd: nand_omap_gpmc: Fix ecc size

The ECC size for BCH correction is always 512 byte. Correct the ecc.size
for the OMAP_ECC_BCH8_CODE_HW mode from 2048 to 512. This change will
let the framework iterate over the 4 ecc steps and we no longer need
special cases in omap_correct_bch().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index e18ce6358a..a35ed1f093 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -303,8 +303,7 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	int bitflip_count;
 	int bch_max_err;
 
-	int eccsteps = (nand->ecc.mode == NAND_ECC_HW) &&
-			(nand->ecc.size == 2048) ? 4 : 1;
+	int eccsteps = nand->ecc.steps;
 	int eccsize = oinfo->nand.ecc.bytes;
 
 	switch (oinfo->ecc_mode) {
@@ -765,8 +764,8 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 					offset - omap_oobinfo.eccbytes;
 		break;
 	case OMAP_ECC_BCH8_CODE_HW:
-		oinfo->nand.ecc.bytes    = 13 * 4;
-		oinfo->nand.ecc.size     = 512 * 4;
+		oinfo->nand.ecc.bytes    = 13;
+		oinfo->nand.ecc.size     = 512;
 		oinfo->nand.ecc.strength = BCH8_MAX_ERROR;
 		omap_oobinfo.oobfree->offset = offset;
 		omap_oobinfo.oobfree->length = minfo->oobsize -
-- 
2.11.0


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

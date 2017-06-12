Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKPbp-0004dt-9D
 for barebox@lists.infradead.org; Mon, 12 Jun 2017 13:42:30 +0000
Date: Mon, 12 Jun 2017 15:41:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170612134156.wahywpnmtwecgofc@pengutronix.de>
References: <1496765425-9702-1-git-send-email-d.schultz@phytec.de>
 <20170607064508.lau5rlqb5k6hslf3@pengutronix.de>
 <20170607064909.rw2aa6atbrb37xmt@pengutronix.de>
 <20170607065336.utyv5z72fivph2ha@pengutronix.de>
 <23fe6b1a-f4af-40e0-a796-51464027b251@phytec.de>
 <20170609090830.cgid2zfz2cufjqq5@pengutronix.de>
 <8697fc1c-f5dc-c29a-3c22-320cacc77ede@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8697fc1c-f5dc-c29a-3c22-320cacc77ede@phytec.de>
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
Cc: barebox@lists.infradead.org

Hi Daniel,

On Fri, Jun 09, 2017 at 03:28:59PM +0200, Daniel Schultz wrote:
> Hi,
> 
> Am 09.06.2017 um 11:08 schrieb Sascha Hauer:
> > On Fri, Jun 09, 2017 at 10:17:55AM +0200, Daniel Schultz wrote:
> > > Hi Sascha,
> > > 
> > > > > 
> > > > > And can not work. Additionally eccsteps must be set to 1 in
> > > > > omap_correct_bch(). This effectively makes the loop in this function
> > > > > unnecessary which can then removed.
> > > > 
> > > > Which then means omap_gpmc_read_page_bch_rom_mode() has to iterate over
> > > > ecc.steps itself, just like the other read_page implementations in the
> > > > framework do.
> > > > 
> > > So, the previous assignment of eccsteps was fine?
> > 
> > I just sent an updated patch(-series). Could you give it a try?
> > 
> It works, but the current version only changes the local copy of the
> pointer. As a result of that it will only check the first 512 Bytes.
> I appended a double pointer workaround for this problem :)

The pointer should be incremented by the caller, not by
omap_correct_bch().

> 
> 
> omap_correct_data() also calls omap_correct_bch(). Does Barebox correct NAND
> partitions? I have never seen this. Maybe we need here also a loop.

The core already loops around eccsteps when calling ecc.correct.

I digged a bit further and this is what I can come up with. Anyway, I am
getting less and less confident that the patch can work.

Please give it a try and see if it works. If it doesn't and we can't
find out what's wrong I tend to take your original patch, although I
still think this is the wrong solution.

Sascha

--------------------8<------------------------------

From 2c65a009dbcf2136e037f009b50306aa080e2920 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 9 Jun 2017 10:45:21 +0200
Subject: [PATCH] mtd: nand_omap_gpmc: Fix ecc size

The ECC size for BCH correction is always 512 byte. Correct the ecc.size
for the OMAP_ECC_BCH8_CODE_HW mode from 2048 to 512. This change will
let the framework iterate over the 4 ecc steps and we no longer	need
special cases in omap_correct_bch().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 130 +++++++++++++++++---------------------
 1 file changed, 57 insertions(+), 73 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index e18ce6358a..2e130bfd9a 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -297,85 +297,59 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	int i, j, eccflag, totalcount, actual_eccsize;
+	int j, eccflag;
 	const uint8_t *erased_ecc_vec;
 	unsigned int err_loc[8];
 	int bitflip_count;
 	int bch_max_err;
-
-	int eccsteps = (nand->ecc.mode == NAND_ECC_HW) &&
-			(nand->ecc.size == 2048) ? 4 : 1;
 	int eccsize = oinfo->nand.ecc.bytes;
+	bool is_error_reported = false;
 
-	switch (oinfo->ecc_mode) {
-	case OMAP_ECC_BCH8_CODE_HW:
-		eccsize /= eccsteps;
-		actual_eccsize = eccsize;
-		erased_ecc_vec = bch8_vector;
-		bch_max_err = BCH8_MAX_ERROR;
-		break;
-	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
-		actual_eccsize = eccsize - 1;
-		erased_ecc_vec = bch8_vector;
-		bch_max_err = BCH8_MAX_ERROR;
-		break;
-	default:
-		dev_err(oinfo->pdev, "invalid driver configuration\n");
-		return -EINVAL;
-	}
-
-	totalcount = 0;
+	erased_ecc_vec = bch8_vector;
+	bch_max_err = BCH8_MAX_ERROR;
 
-	for (i = 0; i < eccsteps; i++) {
-		bool is_error_reported = false;
-		bitflip_count = 0;
-		eccflag = 0;
+	bitflip_count = 0;
+	eccflag = 0;
 
-		/* check for any ecc error */
-		for (j = 0; (j < actual_eccsize) && (eccflag == 0); j++) {
-			if (calc_ecc[j] != 0) {
-				eccflag = 1;
-				break;
-			}
-		}
-
-		if (eccflag == 1) {
-			if (memcmp(calc_ecc, erased_ecc_vec, actual_eccsize) == 0) {
-				/*
-				 * calc_ecc[] matches pattern for ECC
-				 * (all 0xff) so this is definitely
-				 * an erased-page
-				 */
-			} else {
-				bitflip_count = nand_check_erased_ecc_chunk(
-						dat, oinfo->nand.ecc.size, read_ecc,
-						eccsize, NULL, 0, bch_max_err);
-				if (bitflip_count < 0)
-					is_error_reported = true;
-			}
+	/* check for any ecc error */
+	for (j = 0; (j < eccsize) && (eccflag == 0); j++) {
+		if (calc_ecc[j] != 0) {
+			eccflag = 1;
+			break;
 		}
+	}
 
-		if (is_error_reported) {
-			bitflip_count = omap_gpmc_decode_bch(1,
-					calc_ecc, err_loc);
+	if (eccflag == 1) {
+		if (memcmp(calc_ecc, erased_ecc_vec, eccsize) == 0) {
+			/*
+			 * calc_ecc[] matches pattern for ECC
+			 * (all 0xff) so this is definitely
+			 * an erased-page
+			 */
+		} else {
+			bitflip_count = nand_check_erased_ecc_chunk(
+					dat, oinfo->nand.ecc.size, read_ecc,
+					eccsize, NULL, 0, bch_max_err);
 			if (bitflip_count < 0)
-				return bitflip_count;
-
-			for (j = 0; j < bitflip_count; j++) {
-				if (err_loc[j] < 4096)
-					dat[err_loc[j] >> 3] ^=
-						1 << (err_loc[j] & 7);
-				/* else, not interested to correct ecc */
-			}
+				is_error_reported = true;
 		}
+	}
 
-		totalcount += bitflip_count;
-		calc_ecc = calc_ecc + actual_eccsize;
-		read_ecc = read_ecc + eccsize;
-		dat += 512;
+	if (is_error_reported) {
+		bitflip_count = omap_gpmc_decode_bch(1,
+				calc_ecc, err_loc);
+		if (bitflip_count < 0)
+			return bitflip_count;
+
+		for (j = 0; j < bitflip_count; j++) {
+			if (err_loc[j] < 4096)
+				dat[err_loc[j] >> 3] ^=
+					1 << (err_loc[j] & 7);
+			/* else, not interested to correct ecc */
+		}
 	}
 
-	return totalcount;
+	return bitflip_count;
 }
 
 static int omap_correct_hamming(struct mtd_info *mtd, uint8_t *dat,
@@ -667,6 +641,10 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 	uint8_t *ecc_code = chip->buffers->ecccode;
 	uint32_t *eccpos = chip->ecc.layout->eccpos;
 	int stat, i;
+	unsigned int max_bitflips = 0;
+	int eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
 
 	writel(GPMC_ECC_SIZE_CONFIG_ECCSIZE1(0) |
 			GPMC_ECC_SIZE_CONFIG_ECCSIZE0(64),
@@ -706,13 +684,19 @@ static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
 
 	__omap_calculate_ecc(mtd, buf, ecc_calc, 1);
 
-	stat = omap_correct_bch(mtd, buf, ecc_code, ecc_calc);
-	if (stat < 0)
-		mtd->ecc_stats.failed++;
-	else
-		mtd->ecc_stats.corrected += stat;
+	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		stat = omap_correct_bch(mtd, p, ecc_code, ecc_calc);
+		ecc_code += eccsize + 1;
+		ecc_calc += eccsize;
+		if (stat < 0) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += stat;
+			max_bitflips = max_t(unsigned int, max_bitflips, stat);
+		}
+	}
 
-	return 0;
+	return max_bitflips;
 }
 
 static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
@@ -765,8 +749,8 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
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
@@ -776,7 +760,7 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 			omap_oobinfo.eccpos[i] = i + offset;
 		break;
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
-		oinfo->nand.ecc.bytes    = 13 + 1;
+		oinfo->nand.ecc.bytes    = 13;
 		oinfo->nand.ecc.size     = 512;
 		oinfo->nand.ecc.strength = BCH8_MAX_ERROR;
 		nand->ecc.read_page = omap_gpmc_read_page_bch_rom_mode;
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJFnN-0001Cj-6E
 for barebox@lists.infradead.org; Fri, 09 Jun 2017 09:01:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Jun 2017 11:01:06 +0200
Message-Id: <20170609090106.10933-2-s.hauer@pengutronix.de>
In-Reply-To: <20170609090106.10933-1-s.hauer@pengutronix.de>
References: <20170609090106.10933-1-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] mtd: nand_omap_gpmc: remove unnecessary loop
To: Barebox List <barebox@lists.infradead.org>

With eccsteps always being one the loop in omap_correct_bch() is
iterated over exactly once, so it can be optimized away.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 85 ++++++++++++++++++---------------------
 1 file changed, 40 insertions(+), 45 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index fa838f39a4..334014a895 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -297,18 +297,16 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 {
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	int i, j, eccflag, totalcount, actual_eccsize;
+	int j, eccflag, totalcount, actual_eccsize;
 	const uint8_t *erased_ecc_vec;
 	unsigned int err_loc[8];
 	int bitflip_count;
 	int bch_max_err;
-
-	int eccsteps = 1;
 	int eccsize = oinfo->nand.ecc.bytes;
+	bool is_error_reported = false;
 
 	switch (oinfo->ecc_mode) {
 	case OMAP_ECC_BCH8_CODE_HW:
-		eccsize /= eccsteps;
 		actual_eccsize = eccsize;
 		erased_ecc_vec = bch8_vector;
 		bch_max_err = BCH8_MAX_ERROR;
@@ -325,55 +323,52 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 
 	totalcount = 0;
 
-	for (i = 0; i < eccsteps; i++) {
-		bool is_error_reported = false;
-		bitflip_count = 0;
-		eccflag = 0;
-
-		/* check for any ecc error */
-		for (j = 0; (j < actual_eccsize) && (eccflag == 0); j++) {
-			if (calc_ecc[j] != 0) {
-				eccflag = 1;
-				break;
-			}
-		}
+	bitflip_count = 0;
+	eccflag = 0;
 
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
+	for (j = 0; (j < actual_eccsize) && (eccflag == 0); j++) {
+		if (calc_ecc[j] != 0) {
+			eccflag = 1;
+			break;
 		}
+	}
 
-		if (is_error_reported) {
-			bitflip_count = omap_gpmc_decode_bch(1,
-					calc_ecc, err_loc);
+	if (eccflag == 1) {
+		if (memcmp(calc_ecc, erased_ecc_vec, actual_eccsize) == 0) {
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
 
+	totalcount += bitflip_count;
+	calc_ecc = calc_ecc + actual_eccsize;
+	read_ecc = read_ecc + eccsize;
+	dat += 512;
+
 	return totalcount;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

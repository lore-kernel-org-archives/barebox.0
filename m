Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNlJV-0005Di-R1
 for barebox@lists.infradead.org; Tue, 08 Nov 2011 13:02:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2011 14:01:45 +0100
Message-Id: <1320757313-12568-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1320757313-12568-1-git-send-email-s.hauer@pengutronix.de>
References: <1320757313-12568-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/10] mtd nand omap: factor out bch correct function
To: barebox@lists.infradead.org

We need the bch correct algorithm in the next patches, so
factor out a seperate function for this and also safe an
indention level.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |  114 ++++++++++++++++++++-----------------
 1 files changed, 62 insertions(+), 52 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index f1074bb..1b5bfaf 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -337,6 +337,66 @@ static int omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
 	return 0;
 }
 
+static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
+			     uint8_t *read_ecc, uint8_t *calc_ecc)
+{
+	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
+	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
+	int i, j, eccsize, eccflag, count;
+	unsigned int err_loc[8];
+	int blocks = 0;
+	int select_4_8;
+
+	if (oinfo->ecc_mode == OMAP_ECC_BCH4_CODE_HW) {
+		eccsize = 7;
+		select_4_8 = 0;
+	} else {
+		eccsize = 13;
+		select_4_8 = 1;
+	}
+
+	if (nand->ecc.size  == 2048)
+		blocks = 4;
+	else
+		blocks = 1;
+
+	omap_calculate_ecc(mtd, dat, calc_ecc);
+
+	for (i = 0; i < blocks; i++) {
+		/* check if any ecc error */
+		eccflag = 0;
+		for (j = 0; (j < eccsize) && (eccflag == 0); j++) {
+			if (calc_ecc[j] != 0)
+				eccflag = 1;
+		}
+
+		if (eccflag == 1) {
+			eccflag = 0;
+			for (j = 0; (j < eccsize) &&
+					(eccflag == 0); j++)
+				if (read_ecc[j] != 0xFF)
+					eccflag = 1;
+		}
+
+		count = 0;
+		if (eccflag == 1)
+			count = decode_bch(select_4_8, calc_ecc, err_loc);
+
+		for (j = 0; j < count; j++) {
+			if (err_loc[j] < 4096)
+				dat[err_loc[j] >> 3] ^=
+						1 << (err_loc[j] & 7);
+			/* else, not interested to correct ecc */
+		}
+
+		calc_ecc = calc_ecc + eccsize;
+		read_ecc = read_ecc + eccsize;
+		dat += 512;
+	}
+
+	return 0;
+}
+
 /**
  * @brief Compares the ecc read from nand spare area with ECC
  * registers values and corrects one bit error if it has occured
@@ -359,11 +419,6 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	unsigned char bit;
 	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
-	int ecc_type = OMAP_ECC_BCH8_CODE_HW;
-	int i, j, eccsize, eccflag, count;
-	unsigned int err_loc[8];
-	int blocks = 0;
-	int select_4_8;
 
 	debug("mtd=%x dat=%x read_ecc=%x calc_ecc=%x", (unsigned int)mtd,
 		  (unsigned int)dat, (unsigned int)read_ecc,
@@ -403,55 +458,10 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 			}
 		}
 		break;
+	case OMAP_ECC_BCH4_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
-		eccsize = 13;
-		select_4_8 = 1;
-		/* fall through */
-	case OMAP_ECC_BCH4_CODE_HW:
-
-		if (nand->ecc.size  == 2048)
-			blocks = 4;
-		else
-			blocks = 1;
-
-		if (ecc_type == OMAP_ECC_BCH4_CODE_HW) {
-			eccsize = 7;
-			select_4_8 = 0;
-		}
-
-		omap_calculate_ecc(mtd, dat, calc_ecc);
-		for (i = 0; i < blockCnt; i++) {
-			/* check if any ecc error */
-			eccflag = 0;
-			for (j = 0; (j < eccsize) && (eccflag == 0); j++)
-				if (calc_ecc[j] != 0)
-					eccflag = 1;
-
-			if (eccflag == 1) {
-				eccflag = 0;
-				for (j = 0; (j < eccsize) &&
-						(eccflag == 0); j++)
-					if (read_ecc[j] != 0xFF)
-						eccflag = 1;
-			}
-
-			count = 0;
-			if (eccflag == 1)
-				count = decode_bch(select_4_8, calc_ecc, err_loc);
-
-			for (j = 0; j < count; j++) {
-				if (err_loc[j] < 4096)
-					dat[err_loc[j] >> 3] ^=
-							1 << (err_loc[j] & 7);
-				/* else, not interested to correct ecc */
-			}
-
-			calc_ecc = calc_ecc + eccsize;
-			read_ecc = read_ecc + eccsize;
-			dat += 512;
-		}
-		break;
+		return omap_correct_bch(mtd, dat, read_ecc, calc_ecc);
 	default:
 		return -EINVAL;
 	}
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

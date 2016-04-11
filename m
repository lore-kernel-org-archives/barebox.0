Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1apXHs-0004vK-N9
 for barebox@lists.infradead.org; Mon, 11 Apr 2016 08:33:37 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id F0EDBA00323
 for <barebox@lists.infradead.org>; Mon, 11 Apr 2016 10:33:05 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 11 Apr 2016 10:28:23 +0200
Message-Id: <1460363304-1505-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 1/2] mtd: nand: omap_gpmc: Remove BCH4 support
To: barebox@lists.infradead.org

This has no users and seems to be untested. Removed it.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/mach-omap/include/mach/gpmc_nand.h |  1 -
 drivers/bus/omap-gpmc.c                     |  3 ---
 drivers/mtd/nand/nand_omap_gpmc.c           | 36 +----------------------------
 3 files changed, 1 insertion(+), 39 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/gpmc_nand.h b/arch/arm/mach-omap/include/mach/gpmc_nand.h
index 8839486..c9730a9 100644
--- a/arch/arm/mach-omap/include/mach/gpmc_nand.h
+++ b/arch/arm/mach-omap/include/mach/gpmc_nand.h
@@ -32,7 +32,6 @@
 enum gpmc_ecc_mode {
 	OMAP_ECC_SOFT,
 	OMAP_ECC_HAMMING_CODE_HW_ROMCODE,
-	OMAP_ECC_BCH4_CODE_HW,
 	OMAP_ECC_BCH8_CODE_HW,
 	OMAP_ECC_BCH8_CODE_HW_ROMCODE,
 };
diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index 8ae909a..be9ef92 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -446,9 +446,6 @@ static struct dt_eccmode modes[] = {
 		.name = "hw-romcode",
 		.mode = OMAP_ECC_HAMMING_CODE_HW_ROMCODE,
 	}, {
-		.name = "bch4",
-		.mode = OMAP_ECC_BCH4_CODE_HW,
-	}, {
 		.name = "bch8",
 		.mode = OMAP_ECC_BCH8_CODE_HW_ROMCODE,
 	},
diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index a920522..1d1de5b 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -86,7 +86,6 @@
 #define GPMC_ECC_SIZE_CONFIG_ECCSIZE1(x)	((x) << 22)
 
 #define BCH8_MAX_ERROR	8	/* upto 8 bit correctable */
-#define BCH4_MAX_ERROR	4	/* upto 4 bit correctable */
 
 int omap_gpmc_decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
 
@@ -239,9 +238,6 @@ static int __omap_calculate_ecc(struct mtd_info *mtd, const uint8_t *dat,
 	int ecc_size = 8;
 
 	switch (oinfo->ecc_mode) {
-	case OMAP_ECC_BCH4_CODE_HW:
-		ecc_size = 4;
-		/* fall through */
 	case OMAP_ECC_BCH8_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
 		for (i = 0; i < 4; i++) {
@@ -300,24 +296,17 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 	int i, j, eccflag, count, totalcount, actual_eccsize;
 	unsigned int err_loc[8];
-	int select_4_8;
 
 	int eccsteps = oinfo->nand.ecc.steps;
 	int eccsize = oinfo->nand.ecc.bytes;
 
 	switch (oinfo->ecc_mode) {
-	case OMAP_ECC_BCH4_CODE_HW:
-		actual_eccsize = eccsize;
-		select_4_8 = 0;
-		break;
 	case OMAP_ECC_BCH8_CODE_HW:
 		eccsize /= eccsteps;
 		actual_eccsize = eccsize;
-		select_4_8 = 1;
 		break;
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
 		actual_eccsize = eccsize - 1;
-		select_4_8 = 1;
 		break;
 	default:
 		dev_err(oinfo->pdev, "invalid driver configuration\n");
@@ -344,7 +333,7 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 
 		count = 0;
 		if (eccflag == 1) {
-			count = omap_gpmc_decode_bch(select_4_8, calc_ecc, err_loc);
+			count = omap_gpmc_decode_bch(1, calc_ecc, err_loc);
 			if (count < 0)
 				return count;
 			else
@@ -435,7 +424,6 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	switch (oinfo->ecc_mode) {
 	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
 		return omap_correct_hamming(mtd, dat, read_ecc, calc_ecc);
-	case OMAP_ECC_BCH4_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
 		/*
@@ -463,17 +451,6 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 	int cs = 0;
 
 	switch (oinfo->ecc_mode) {
-	case OMAP_ECC_BCH4_CODE_HW:
-		if (mode == NAND_ECC_READ) {
-			eccsize1 = 0xD; eccsize0 = 0x48;
-			bch_mod = 0;
-			bch_wrapmode = 0x09;
-		} else {
-			eccsize1 = 0x20; eccsize0 = 0x00;
-			bch_mod = 0;
-			bch_wrapmode = 0x06;
-		}
-		break;
 	case OMAP_ECC_BCH8_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
 		if (mode == NAND_ECC_READ) {
@@ -764,17 +741,6 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		omap_oobinfo.oobfree->length = minfo->oobsize -
 					offset - omap_oobinfo.eccbytes;
 		break;
-	case OMAP_ECC_BCH4_CODE_HW:
-		oinfo->nand.ecc.bytes    = 7;
-		oinfo->nand.ecc.size     = 512;
-		oinfo->nand.ecc.strength = BCH4_MAX_ERROR;
-		omap_oobinfo.oobfree->offset = offset;
-		omap_oobinfo.oobfree->length = minfo->oobsize -
-					offset - omap_oobinfo.eccbytes;
-		offset = minfo->oobsize - oinfo->nand.ecc.bytes;
-		for (i = 0; i < oinfo->nand.ecc.bytes; i++)
-			omap_oobinfo.eccpos[i] = i + offset;
-		break;
 	case OMAP_ECC_BCH8_CODE_HW:
 		oinfo->nand.ecc.bytes    = 13 * 4;
 		oinfo->nand.ecc.size     = 512 * 4;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

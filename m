Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGPc7-0004rY-04
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 10:12:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id DC4F7A00244
 for <barebox@lists.infradead.org>; Wed, 28 Jan 2015 11:13:00 +0100 (CET)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 28 Jan 2015 11:11:15 +0100
Message-Id: <1422439875-21347-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH v2] ARM: i.MX6: use generic calculation in nand bbu handler
To: barebox@lists.infradead.org

The parameters ECC Strength, BadBlockMarkerByte and BadBlockMarkerStartBit in
the FCB structure depends on the nand chip's pagesize and oobsize. Instead of
hardcoding these values into the imx6 bbu handler calculate these values on the
fly. Therefore we export the necessary functions from the nand_mxs driver to
use them in the bbu handler.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
v2: use depends instead of select
v2: move header file nand_mxs.c to include/linux/mtd/
---
 arch/arm/mach-imx/Kconfig         |  1 +
 arch/arm/mach-imx/imx6-bbu-nand.c | 28 ++++++----------------------
 drivers/mtd/nand/nand_mxs.c       |  7 ++++---
 include/linux/mtd/nand_mxs.h      | 37 +++++++++++++++++++++++++++++++++++++
 4 files changed, 48 insertions(+), 25 deletions(-)
 create mode 100644 include/linux/mtd/nand_mxs.h

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 9ac36e1..477207e 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -119,6 +119,7 @@ config BAREBOX_UPDATE_IMX6_NAND
 	depends on BAREBOX_UPDATE
 	depends on MTD
 	depends on MTD_WRITE
+	depends on NAND_MXS
 	default y
 
 comment "Freescale i.MX System-on-Chip"
diff --git a/arch/arm/mach-imx/imx6-bbu-nand.c b/arch/arm/mach-imx/imx6-bbu-nand.c
index 2a54979..d2bfedb 100644
--- a/arch/arm/mach-imx/imx6-bbu-nand.c
+++ b/arch/arm/mach-imx/imx6-bbu-nand.c
@@ -30,6 +30,7 @@
 #include <fs.h>
 #include <mach/bbu.h>
 #include <linux/mtd/mtd-abi.h>
+#include <linux/mtd/nand_mxs.h>
 #include <linux/mtd/mtd.h>
 #include <linux/stat.h>
 
@@ -235,22 +236,9 @@ static int fcb_create(struct fcb_block *fcb, struct mtd_info *mtd)
 	fcb->TotalPageSize = mtd->writesize + mtd->oobsize;
 	fcb->SectorsPerBlock = mtd->erasesize / mtd->writesize;
 
-	if (mtd->writesize == 2048) {
-		fcb->EccBlock0EccType = 4;
-	} else if (mtd->writesize == 4096) {
-		if (mtd->oobsize == 218) {
-			fcb->EccBlock0EccType = 8;
-		} else if (mtd->oobsize == 128) {
-			fcb->EccBlock0EccType = 4;
-		} else {
-			pr_err("Illegal oobsize %d\n", mtd->oobsize);
-			return -EINVAL;
-		}
-	} else {
-		pr_err("Illegal writesize %d\n", mtd->writesize);
-		return -EINVAL;
-	}
-
+	/* Divide ECC strength by two and save the value into FCB structure. */
+	fcb->EccBlock0EccType =
+		mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize) >> 1;
 	fcb->EccBlockNEccType = fcb->EccBlock0EccType;
 
 	/* Also hardcoded in kobs-ng */
@@ -267,12 +255,8 @@ static int fcb_create(struct fcb_block *fcb, struct mtd_info *mtd)
 	/* DBBT search area starts at third block */
 	fcb->DBBTSearchAreaStartAddress = mtd->erasesize / mtd->writesize * 2;
 
-	if (mtd->writesize == 2048) {
-		fcb->BadBlockMarkerByte = 0x000007cf;
-	} else {
-		pr_err("BadBlockMarkerByte unknown for writesize %d\n", mtd->writesize);
-		return -EINVAL;
-	}
+	fcb->BadBlockMarkerByte = mxs_nand_mark_byte_offset(mtd);
+	fcb->BadBlockMarkerStartBit = mxs_nand_mark_bit_offset(mtd);
 
 	fcb->BBMarkerPhysicalOffset = mtd->writesize;
 
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 94101a3..4e38e09 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -20,6 +20,7 @@
 
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
+#include <linux/mtd/nand_mxs.h>
 #include <linux/types.h>
 #include <linux/clk.h>
 #include <linux/err.h>
@@ -231,7 +232,7 @@ static uint32_t mxs_nand_aux_status_offset(void)
 	return (MXS_NAND_METADATA_SIZE + 0x3) & ~0x3;
 }
 
-static inline uint32_t mxs_nand_get_ecc_strength(uint32_t page_data_size,
+uint32_t mxs_nand_get_ecc_strength(uint32_t page_data_size,
 						uint32_t page_oob_size)
 {
 	int ecc_chunk_count = mxs_nand_ecc_chunk_cnt(page_data_size);
@@ -294,14 +295,14 @@ static inline uint32_t mxs_nand_get_mark_offset(uint32_t page_data_size,
 	return block_mark_bit_offset;
 }
 
-static uint32_t mxs_nand_mark_byte_offset(struct mtd_info *mtd)
+uint32_t mxs_nand_mark_byte_offset(struct mtd_info *mtd)
 {
 	uint32_t ecc_strength;
 	ecc_strength = mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize);
 	return mxs_nand_get_mark_offset(mtd->writesize, ecc_strength) >> 3;
 }
 
-static uint32_t mxs_nand_mark_bit_offset(struct mtd_info *mtd)
+uint32_t mxs_nand_mark_bit_offset(struct mtd_info *mtd)
 {
 	uint32_t ecc_strength;
 	ecc_strength = mxs_nand_get_ecc_strength(mtd->writesize, mtd->oobsize);
diff --git a/include/linux/mtd/nand_mxs.h b/include/linux/mtd/nand_mxs.h
new file mode 100644
index 0000000..eca3177
--- /dev/null
+++ b/include/linux/mtd/nand_mxs.h
@@ -0,0 +1,37 @@
+/*
+ * Copyright (C) 2015 PHYTEC Messtechnik GmbH,
+ * Author: Stefan Christ <s.christ@phytec.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __NAND_MXS_H
+#define __NAND_MXS_H
+
+/*
+ * Functions are definied in drivers/mtd/nand/nand_mxs.c.  They are used to
+ * calculate the ECC Strength, BadBlockMarkerByte and BadBlockMarkerStartBit
+ * which are placed into the FCB structure. The i.MX6 ROM needs these
+ * parameters to read the firmware from NAND.
+ *
+ * The parameters depends on the pagesize and oobsize of NAND chips and are
+ * different for each combination. To avoid placing hardcoded values in the bbu
+ * update handler code, the generic calculation from the driver code is used.
+ */
+
+uint32_t mxs_nand_get_ecc_strength(uint32_t page_data_size,
+						uint32_t page_oob_size);
+
+uint32_t mxs_nand_mark_byte_offset(struct mtd_info *mtd);
+
+uint32_t mxs_nand_mark_bit_offset(struct mtd_info *mtd);
+
+#endif /* __NAND_MXS_H */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

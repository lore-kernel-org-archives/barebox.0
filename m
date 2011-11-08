Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNlJV-0005Dj-Sf
 for barebox@lists.infradead.org; Tue, 08 Nov 2011 13:02:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2011 14:01:49 +0100
Message-Id: <1320757313-12568-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] mtd nand omap: use register defines for ecc registers
To: barebox@lists.infradead.org

We need this register bits later in another function, so
use register bit defines now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   51 +++++++++++++++++++++++++++++--------
 1 files changed, 40 insertions(+), 11 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 9097dde..50e0544 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -76,6 +76,20 @@
 #include <mach/gpmc.h>
 #include <mach/gpmc_nand.h>
 
+#define GPMC_ECC_CONFIG_ECCENABLE		(1 << 0)
+#define GPMC_ECC_CONFIG_ECCCS(x)		(((x) & 0x7) << 1)
+#define GPMC_ECC_CONFIG_ECCTOPSECTOR(x)		(((x) & 0x7) << 4)
+#define GPMC_ECC_CONFIG_ECC16B			(1 << 7)
+#define GPMC_ECC_CONFIG_ECCWRAPMODE(x)		(((x) & 0xf) << 8)
+#define GPMC_ECC_CONFIG_ECCBCHTSEL(x)		(((x) & 0x3) << 12)
+#define GPMC_ECC_CONFIG_ECCALGORITHM		(1 << 16)
+
+#define GPMC_ECC_CONTROL_ECCPOINTER(x)		((x) & 0xf)
+#define GPMC_ECC_CONTROL_ECCCLEAR		(1 << 8)
+
+#define GPMC_ECC_SIZE_CONFIG_ECCSIZE0(x)	((x) << 12)
+#define GPMC_ECC_SIZE_CONFIG_ECCSIZE1(x)	((x) << 22)
+
 int decode_bch(int select_4_8, unsigned char *ecc, unsigned int *err_loc);
 
 static char *ecc_mode_strings[] = {
@@ -492,7 +506,7 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 	unsigned int bch_mod = 0, bch_wrapmode = 0, eccsize1 = 0, eccsize0 = 0;
 	unsigned int ecc_conf_val = 0, ecc_size_conf_val = 0;
-	int dev_width = nand->options & NAND_BUSWIDTH_16 ? 1 : 0;
+	int dev_width = nand->options & NAND_BUSWIDTH_16 ? GPMC_ECC_CONFIG_ECC16B : 0;
 	int ecc_size = nand->ecc.size;
 	int cs = 0;
 
@@ -529,24 +543,39 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 
 	/* clear ecc and enable bits */
 	if (oinfo->ecc_mode == OMAP_ECC_HAMMING_CODE_HW_ROMCODE) {
-		writel(0x00000101, oinfo->gpmc_base + GPMC_ECC_CONTROL);
-		/* Size 0 = 0xFF, Size1 is 0xFF - both are 512 bytes
+		writel(GPMC_ECC_CONTROL_ECCCLEAR |
+				GPMC_ECC_CONTROL_ECCPOINTER(1),
+				oinfo->gpmc_base + GPMC_ECC_CONTROL);
+
+		/*
+		 * Size 0 = 0xFF, Size1 is 0xFF - both are 512 bytes
 		 * tell all regs to generate size0 sized regs
 		 * we just have a single ECC engine for all CS
 		 */
-		ecc_size_conf_val = 0x3FCFF000;
-		ecc_conf_val = (dev_width << 7) | (cs << 1) | (0x1);
+		ecc_size_conf_val = GPMC_ECC_SIZE_CONFIG_ECCSIZE1(0xff) |
+			GPMC_ECC_SIZE_CONFIG_ECCSIZE0(0xff);
+		ecc_conf_val = dev_width | GPMC_ECC_CONFIG_ECCCS(cs) |
+			GPMC_ECC_CONFIG_ECCENABLE;
 	} else {
-		writel(0x1, oinfo->gpmc_base + GPMC_ECC_CONTROL);
-		ecc_size_conf_val = (eccsize1 << 22) | (eccsize0 << 12);
-		ecc_conf_val = ((0x01 << 16) | (bch_mod << 12)
-			| (bch_wrapmode << 8) | (dev_width << 7)
-			| (0x03 << 4) | (cs << 1) | (0x1));
+		writel(GPMC_ECC_CONTROL_ECCPOINTER(1),
+				oinfo->gpmc_base + GPMC_ECC_CONTROL);
+
+		ecc_size_conf_val = GPMC_ECC_SIZE_CONFIG_ECCSIZE1(eccsize1) |
+			GPMC_ECC_SIZE_CONFIG_ECCSIZE0(eccsize0);
+
+		ecc_conf_val = (GPMC_ECC_CONFIG_ECCALGORITHM |
+				GPMC_ECC_CONFIG_ECCBCHTSEL(bch_mod) |
+				GPMC_ECC_CONFIG_ECCWRAPMODE(bch_wrapmode) |
+				dev_width |
+				GPMC_ECC_CONFIG_ECCTOPSECTOR(3) |
+				GPMC_ECC_CONFIG_ECCCS(cs) |
+				GPMC_ECC_CONFIG_ECCENABLE);
 	}
 
 	writel(ecc_size_conf_val, oinfo->gpmc_base + GPMC_ECC_SIZE_CONFIG);
 	writel(ecc_conf_val, oinfo->gpmc_base + GPMC_ECC_CONFIG);
-	writel(0x00000101, oinfo->gpmc_base + GPMC_ECC_CONTROL);
+	writel(GPMC_ECC_CONTROL_ECCCLEAR | GPMC_ECC_CONTROL_ECCPOINTER(1),
+			oinfo->gpmc_base + GPMC_ECC_CONTROL);
 }
 
 static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

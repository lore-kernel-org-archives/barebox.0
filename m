Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNlJY-0007Lp-MV
 for barebox@lists.infradead.org; Tue, 08 Nov 2011 13:02:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2011 14:01:52 +0100
Message-Id: <1320757313-12568-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] mtd nand omap: add read function for the OMAP4 romcode
 ecc mode
To: barebox@lists.infradead.org

The OMAP4 romcode expects some unusual ecc layout which we could
write but not read. This patch adds a function which uses the
manual mode to read a page written with this ecc layout.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   99 ++++++++++++++++++++++++++++++++++---
 1 files changed, 91 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index e6555bb..765a0d6 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -582,6 +582,96 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 			oinfo->gpmc_base + GPMC_ECC_CONTROL);
 }
 
+static int omap_gpmc_read_buf_manual(struct mtd_info *mtd, struct nand_chip *chip,
+		void *buf, int bytes, int result_reg)
+{
+	struct gpmc_nand_info *oinfo = chip->priv;
+
+	writel(GPMC_ECC_SIZE_CONFIG_ECCSIZE1(0) |
+			GPMC_ECC_SIZE_CONFIG_ECCSIZE0(bytes * 2),
+			oinfo->gpmc_base + GPMC_ECC_SIZE_CONFIG);
+
+	writel(GPMC_ECC_CONTROL_ECCPOINTER(result_reg),
+			oinfo->gpmc_base + GPMC_ECC_CONTROL);
+
+	chip->read_buf(mtd, buf, bytes);
+
+	return bytes;
+}
+
+/*
+ * read a page with the ecc layout used by the OMAP4 romcode. The
+ * romcode expects an unusual ecc layout (f = free, e = ecc):
+ *
+ * 2f, 13e, 1f, 13e, 1f, 13e, 1f, 13e, 7f
+ *
+ * This can't be accomplished with the predefined ecc modes, so
+ * we have to use the manual mode here.
+ *
+ * For the manual mode we can't use the ECC_RESULTx_0 register set
+ * because it would disable ecc generation completeley. Also, the
+ * hardware seems to ignore eccsize1 (which should bypass ecc
+ * generation), so we use the otherwise unused ECC_RESULTx_5 to
+ * generate dummy eccs for the unprotected oob area.
+ */
+static int omap_gpmc_read_page_bch_rom_mode(struct mtd_info *mtd,
+		struct nand_chip *chip, uint8_t *buf)
+{
+	struct gpmc_nand_info *oinfo = chip->priv;
+	int dev_width = chip->options & NAND_BUSWIDTH_16 ? GPMC_ECC_CONFIG_ECC16B : 0;
+	uint8_t *p = buf;
+	uint8_t *ecc_calc = chip->buffers->ecccalc;
+	uint8_t *ecc_code = chip->buffers->ecccode;
+	uint32_t *eccpos = chip->ecc.layout->eccpos;
+	int stat, i;
+
+	writel(GPMC_ECC_SIZE_CONFIG_ECCSIZE1(0) |
+			GPMC_ECC_SIZE_CONFIG_ECCSIZE0(64),
+				oinfo->gpmc_base + GPMC_ECC_SIZE_CONFIG);
+
+	writel(GPMC_ECC_CONTROL_ECCPOINTER(1),
+			oinfo->gpmc_base + GPMC_ECC_CONTROL);
+
+	writel(GPMC_ECC_CONFIG_ECCALGORITHM |
+			GPMC_ECC_CONFIG_ECCBCHTSEL(1) |
+			GPMC_ECC_CONFIG_ECCWRAPMODE(0) |
+			dev_width | GPMC_ECC_CONFIG_ECCTOPSECTOR(3) |
+			GPMC_ECC_CONFIG_ECCCS(0) |
+			GPMC_ECC_CONFIG_ECCENABLE,
+			oinfo->gpmc_base + GPMC_ECC_CONFIG);
+
+	writel(GPMC_ECC_CONTROL_ECCCLEAR |
+			GPMC_ECC_CONTROL_ECCPOINTER(1),
+			oinfo->gpmc_base + GPMC_ECC_CONTROL);
+
+	for (i = 0; i < 32; i++)
+		p += omap_gpmc_read_buf_manual(mtd, chip, p, 64, (i >> 3) + 1);
+
+	p = chip->oob_poi;
+
+	p += omap_gpmc_read_buf_manual(mtd, chip, p, 2, 5);
+
+	for (i = 0; i < 4; i++) {
+		p += omap_gpmc_read_buf_manual(mtd, chip, p, 13, i + 1);
+		p += omap_gpmc_read_buf_manual(mtd, chip, p, 1, 5);
+	}
+
+	p += omap_gpmc_read_buf_manual(mtd, chip, p, 6, 5);
+
+	for (i = 0; i < chip->ecc.total; i++)
+		ecc_code[i] = chip->oob_poi[eccpos[i]];
+
+	__omap_calculate_ecc(mtd, buf, ecc_calc, 1);
+
+	stat = omap_correct_bch(mtd, buf, ecc_code, ecc_calc);
+	if (stat < 0)
+		mtd->ecc_stats.failed++;
+	else
+		mtd->ecc_stats.corrected += stat;
+
+	return 0;
+}
+
 static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		enum gpmc_ecc_mode mode)
 {
@@ -651,16 +741,9 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 			omap_oobinfo.eccpos[i] = i + offset;
 		break;
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
-		/*
-		 * Contradicting the datasheet the ecc checksum has to start
-		 * at byte 2 in oob. I have no idea how the rom code can
-		 * read this but it does.
-		 */
-		dev_warn(oinfo->pdev, "using rom loader ecc mode. "
-				"You can write properly but not read it back\n");
-
 		oinfo->nand.ecc.bytes    = 4 * 13;
 		oinfo->nand.ecc.size     = 4 * 512;
+		nand->ecc.read_page = omap_gpmc_read_page_bch_rom_mode;
 		omap_oobinfo.oobfree->length = 0;
 		j = 0;
 		for (i = 2; i < 15; i++)
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

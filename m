Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9HpA-0005wL-9m
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:10:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:10:32 +0200
Message-Id: <1302531036-27906-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531036-27906-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531036-27906-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] nand omap: fix hamming romcode ecc code
To: barebox@lists.infradead.org

This got broken in commit:

6943635 mtd nand omap: make ecc mode runtime configurable

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   18 ++++++++++++++----
 1 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 1599603..74ef1ac 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -470,7 +470,7 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
 	unsigned int bch_mod = 0, bch_wrapmode = 0, eccsize1 = 0, eccsize0 = 0;
 	unsigned int ecc_conf_val = 0, ecc_size_conf_val = 0;
-	int dev_width = 0;
+	int dev_width = nand->options & NAND_BUSWIDTH_16 ? 0 : 1;
 	int ecc_size = nand->ecc.size;
 	int cs = 0;
 
@@ -508,7 +508,11 @@ static void omap_enable_hwecc(struct mtd_info *mtd, int mode)
 	/* clear ecc and enable bits */
 	if (oinfo->ecc_mode == OMAP_ECC_HAMMING_CODE_HW_ROMCODE) {
 		writel(0x00000101, oinfo->gpmc_base + GPMC_ECC_CONTROL);
-		ecc_size_conf_val = (eccsize1 << 22) | 0x0000000F;
+		/* Size 0 = 0xFF, Size1 is 0xFF - both are 512 bytes
+		 * tell all regs to generate size0 sized regs
+		 * we just have a single ECC engine for all CS
+		 */
+		ecc_size_conf_val = 0x3FCFF000;
 		ecc_conf_val = (dev_width << 7) | (cs << 1) | (0x1);
 	} else {
 		writel(0x1, oinfo->gpmc_base + GPMC_ECC_CONTROL);
@@ -557,6 +561,14 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
 		oinfo->nand.ecc.bytes    = 3;
 		oinfo->nand.ecc.size     = 512;
+		oinfo->ecc_parity_pairs  = 12;
+		if (oinfo->nand.options & NAND_BUSWIDTH_16) {
+			offset = 2;
+		} else {
+			offset = 1;
+			oinfo->nand.badblock_pattern = &bb_descrip_flashbased;
+		}
+		omap_oobinfo.eccbytes = 3 * (minfo->oobsize / 16);
 		for (i = 0; i < omap_oobinfo.eccbytes; i++)
 			omap_oobinfo.eccpos[i] = i + offset;
 		omap_oobinfo.oobfree->offset = offset + omap_oobinfo.eccbytes;
@@ -613,8 +625,6 @@ static int omap_gpmc_eccmode(struct gpmc_nand_info *oinfo,
 		return -EINVAL;
 	}
 
-	omap_oobinfo.eccbytes = oinfo->nand.ecc.bytes;
-
 	oinfo->ecc_mode = mode;
 
 	if (nand->buffers)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

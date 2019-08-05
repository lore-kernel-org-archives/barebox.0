Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubyN-0005VC-JY
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 12:20:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Aug 2019 14:20:15 +0200
Message-Id: <20190805122015.19220-9-s.hauer@pengutronix.de>
In-Reply-To: <20190805122015.19220-1-s.hauer@pengutronix.de>
References: <20190805122015.19220-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 8/8] mtd: nand-mxs: Make ecc strength configurable via device
 tree
To: Barebox List <barebox@lists.infradead.org>

According to the binding doc the mxs NAND driver supports the
"nand-ecc-strength" and "nand-ecc-step-size" options. This adds support
for these options to the driver. The "nand-ecc-step-size" is not
really configurable, the only accepted value is 512 so this is merely
to sanity check that there's nothing specified that we can't yet
support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 7555b1013d..b016c5bff0 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -336,14 +336,31 @@ static int mxs_nand_calc_geo(struct mtd_info *mtd)
 	struct nand_chip *chip = mtd->priv;
 	struct mxs_nand_info *nand_info = chip->priv;
 	int ecc_chunk_count = mxs_nand_ecc_chunk_cnt(mtd->writesize);
-	int ecc_strength;
 	int gf_len = 13;  /* length of Galois Field for non-DDR nand */
+	int max_ecc_strength;
 
-	ecc_strength = ((mtd->oobsize - MXS_NAND_METADATA_SIZE) * 8)
-		/ (gf_len * ecc_chunk_count);
+	nand_of_parse_node(mtd, mtd->parent->device_node);
 
+	max_ecc_strength = ((mtd->oobsize - MXS_NAND_METADATA_SIZE) * 8)
+			   / (gf_len * ecc_chunk_count);
 	/* We need the minor even number. */
-	chip->ecc.strength = rounddown(ecc_strength, 2);
+	max_ecc_strength = rounddown(max_ecc_strength, 2);
+
+	if (chip->ecc.strength) {
+		if (chip->ecc.strength > max_ecc_strength) {
+			dev_err(nand_info->dev, "invalid ecc strength %d (maximum %d)\n",
+				chip->ecc.strength, max_ecc_strength);
+			return -EINVAL;
+		}
+	} else {
+		chip->ecc.strength = max_ecc_strength;
+	}
+
+	if (chip->ecc.size && chip->ecc.size != MXS_NAND_CHUNK_DATA_CHUNK_SIZE) {
+		dev_err(nand_info->dev, "invalid ecc size %d, this driver only supports %d\n",
+			chip->ecc.size, MXS_NAND_CHUNK_DATA_CHUNK_SIZE);
+		return -EINVAL;
+	}
 
 	chip->ecc.bytes = DIV_ROUND_UP(13 * chip->ecc.strength, 8);
 	chip->ecc.size = MXS_NAND_CHUNK_DATA_CHUNK_SIZE;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

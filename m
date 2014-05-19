Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmNq3-0008Kj-Ri
 for barebox@lists.infradead.org; Mon, 19 May 2014 13:42:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 May 2014 15:42:25 +0200
Message-Id: <1400506945-32568-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: nand: mxs: Fix 2k nand with oob size of 224 bytes
To: barebox@lists.infradead.org

The mxs nand driver has a calculation for the ecc strength.
This calculation was not used for some common nands and it
was assumed that 2k page nands always have a ecc strength
of 8. This is not true since there are devices with 224 bytes
of oob instread of 64 bytes. These allow for a greater ecc
strength. Since the kernel relies on the calculation and
we have to be consistent with the kernel use the calculcation
in barebox aswell and just remove our assumptions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_mxs.c | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index d5428bc..5a4449d 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -238,22 +238,6 @@ static inline uint32_t mxs_nand_get_ecc_strength(uint32_t page_data_size,
 	int ecc_strength = 0;
 	int gf_len = 13;  /* length of Galois Field for non-DDR nand */
 
-	/*
-	 * Possibly this if-else calculation may be removed since
-	 * ecc_strength calculated after it is taken from kernel driver
-	 * and therefore should work for all cases. But it was tested only
-	 * on devices with {data_size = 2046, oob_size = 64} and
-	 * {data_size = 4096, oob_size = 224} configuration.
-	 */
-	if (page_data_size == 2048)
-		return 8;
-	else if (page_data_size == 4096) {
-		if (page_oob_size == 128)
-			return 8;
-		if (page_oob_size == 218)
-			return 16;
-	}
-
 	ecc_strength = ((page_oob_size - MXS_NAND_METADATA_SIZE) * 8)
 		/ (gf_len * ecc_chunk_count);
 
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

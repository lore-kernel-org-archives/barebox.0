Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bn5HF-0004VW-Nt
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 14:47:07 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 22 Sep 2016 16:46:39 +0200
Message-Id: <20160922144639.28305-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20160922144639.28305-1-s.trumtrar@pengutronix.de>
References: <20160922144639.28305-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/3] nand: denali: get rid of compile-time debug information
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Remove dev_dbgs containing __FILE__ and __LINE__ and no other
interesting debug informations.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mtd/nand/nand_denali.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index 6a6c0e462514..8b09b3722fd9 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -174,9 +174,6 @@ static uint16_t denali_nand_reset(struct denali_nand_info *denali)
 {
 	int i;
 
-	dev_dbg(denali->dev, "%s, Line %d, Function: %s\n",
-		__FILE__, __LINE__, __func__);
-
 	for (i = 0; i < denali->max_banks; i++)
 		iowrite32(INTR_STATUS__RST_COMP | INTR_STATUS__TIME_OUT,
 		denali->flash_reg + INTR_STATUS(i));
@@ -227,9 +224,6 @@ static void nand_onfi_timing_set(struct denali_nand_info *denali,
 	uint16_t acc_clks;
 	uint16_t addr_2_data, re_2_we, re_2_re, we_2_re, cs_cnt;
 
-	dev_dbg(denali->dev, "%s, Line %d, Function: %s\n",
-		__FILE__, __LINE__, __func__);
-
 	en_lo = CEIL_DIV(Trp[mode], CLK_X);
 	en_hi = CEIL_DIV(Treh[mode], CLK_X);
 #if ONFI_BLOOM_TIME
@@ -492,9 +486,6 @@ static uint16_t denali_nand_timing_set(struct denali_nand_info *denali)
 	uint8_t maf_id, device_id;
 	int i;
 
-	dev_dbg(denali->dev, "%s, Line %d, Function: %s\n",
-			__FILE__, __LINE__, __func__);
-
 	/*
 	 * Use read id method to get device ID and other params.
 	 * For some NAND chips, controller can't report the correct
@@ -551,9 +542,6 @@ static uint16_t denali_nand_timing_set(struct denali_nand_info *denali)
 static void denali_set_intr_modes(struct denali_nand_info *denali,
 					uint16_t INT_ENABLE)
 {
-	dev_dbg(denali->dev, "%s, Line %d, Function: %s\n",
-		__FILE__, __LINE__, __func__);
-
 	if (INT_ENABLE)
 		iowrite32(1, denali->flash_reg + GLOBAL_INT_ENABLE);
 	else
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

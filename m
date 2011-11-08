Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNlJY-0007Lm-7J
 for barebox@lists.infradead.org; Tue, 08 Nov 2011 13:02:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2011 14:01:44 +0100
Message-Id: <1320757313-12568-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] mtd nand omap: use blocknum calculation to where it's
 used
To: barebox@lists.infradead.org

Just some refactoring to make the next patches better readable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |   14 +++++++-------
 1 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index a012c03..f1074bb 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -362,19 +362,13 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	int ecc_type = OMAP_ECC_BCH8_CODE_HW;
 	int i, j, eccsize, eccflag, count;
 	unsigned int err_loc[8];
-	int blockCnt = 0;
+	int blocks = 0;
 	int select_4_8;
 
 	debug("mtd=%x dat=%x read_ecc=%x calc_ecc=%x", (unsigned int)mtd,
 		  (unsigned int)dat, (unsigned int)read_ecc,
 		  (unsigned int)calc_ecc);
 
-	if ((nand->ecc.mode == NAND_ECC_HW) &&
-			(nand->ecc.size  == 2048))
-		blockCnt = 4;
-	else
-		blockCnt = 1;
-
 	switch (oinfo->ecc_mode) {
 	case OMAP_ECC_HAMMING_CODE_HW_ROMCODE:
 		if (read_ecc[0] == 0xff && read_ecc[1] == 0xff &&
@@ -415,6 +409,12 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 		select_4_8 = 1;
 		/* fall through */
 	case OMAP_ECC_BCH4_CODE_HW:
+
+		if (nand->ecc.size  == 2048)
+			blocks = 4;
+		else
+			blocks = 1;
+
 		if (ecc_type == OMAP_ECC_BCH4_CODE_HW) {
 			eccsize = 7;
 			select_4_8 = 0;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

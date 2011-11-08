Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RNlJY-0007Lk-5y
 for barebox@lists.infradead.org; Tue, 08 Nov 2011 13:02:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Nov 2011 14:01:47 +0100
Message-Id: <1320757313-12568-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] mtd nand omap: call ecc calculate function outside
 omap_correct_bch
To: barebox@lists.infradead.org

Move omap_calculate_ecc outside omap_correct_bch. When implementing
the romcode bch read page we have to call omap_calculate_ecc with
different arguments than in the standard case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c |    8 ++++++--
 1 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index 0713b64..8dd6b8c 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -360,8 +360,6 @@ static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
 	else
 		blocks = 1;
 
-	omap_calculate_ecc(mtd, dat, calc_ecc);
-
 	for (i = 0; i < blocks; i++) {
 		/* check if any ecc error */
 		eccflag = 0;
@@ -471,6 +469,12 @@ static int omap_correct_data(struct mtd_info *mtd, uint8_t *dat,
 	case OMAP_ECC_BCH4_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW:
 	case OMAP_ECC_BCH8_CODE_HW_ROMCODE:
+		/*
+		 * The nand layer already called omap_calculate_ecc,
+		 * but before it has read the oob data. Do it again,
+		 * this time with oob data.
+		 */
+		omap_calculate_ecc(mtd, dat, calc_ecc);
 		return omap_correct_bch(mtd, dat, read_ecc, calc_ecc);
 	default:
 		return -EINVAL;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

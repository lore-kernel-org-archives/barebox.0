Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1agVna-0000S8-7h
 for barebox@lists.infradead.org; Thu, 17 Mar 2016 11:09:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Mar 2016 12:08:35 +0100
Message-Id: <1458212919-30507-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458212919-30507-1-git-send-email-s.hauer@pengutronix.de>
References: <1458212919-30507-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] mtd: nand-imx: Fix correct_data return value for v2/v3
 controllers
To: Barebox List <barebox@lists.infradead.org>

The correct return value for a uncorrectable page is -EBADMSG, not -1
(which is -EPERM). Also the max_bitflips returned shall be the bitflips
per ecc step, not per page.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index f0b4afb..fd80c72 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -521,8 +521,7 @@ static int imx_nand_correct_data_v2_v3(struct mtd_info *mtd, u_char *dat,
 	struct imx_nand_host *host = nand_chip->priv;
 	u32 ecc_stat, err;
 	int no_subpages;
-	int ret = 0;
-	u8 ecc_bit_mask, err_limit;
+	u8 ecc_bit_mask, err_limit, max_bitflips = 0;
 
 	ecc_bit_mask = (host->eccsize == 4) ? 0x7 : 0xf;
 	err_limit = (host->eccsize == 4) ? 0x4 : 0x8;
@@ -536,19 +535,14 @@ static int imx_nand_correct_data_v2_v3(struct mtd_info *mtd, u_char *dat,
 
 	do {
 		err = ecc_stat & ecc_bit_mask;
-		if (err > err_limit) {
-			printk(KERN_WARNING "UnCorrectable RS-ECC Error\n");
-			return -1;
-		} else {
-			ret += err;
-		}
+		if (err > err_limit)
+			return -EBADMSG;
 		ecc_stat >>= 4;
+		max_bitflips = max_t(unsigned int, max_bitflips, err);
+		mtd->ecc_stats.corrected += err;
 	} while (--no_subpages);
 
-	mtd->ecc_stats.corrected += ret;
-	pr_debug("%d Symbol Correctable RS-ECC Error\n", ret);
-
-	return ret;
+	return max_bitflips;
 }
 
 static int imx_nand_calculate_ecc(struct mtd_info *mtd, const u_char * dat,
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

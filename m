Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V2HAc-0002aq-88
 for barebox@lists.infradead.org; Thu, 25 Jul 2013 08:45:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Jul 2013 10:44:44 +0200
Message-Id: <1374741884-25011-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: Turn 'bad block at' message into pr_debug
To: barebox@lists.infradead.org

As bad blocks get more and more on modern nand flashes this message
starts getting annoying.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_bbt.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index 11f7a8b..b0548a3 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -218,11 +218,7 @@ static int read_bbt(struct mtd_info *mtd, uint8_t *buf, int page, int num,
 					mtd->ecc_stats.bbtblocks++;
 					continue;
 				}
-				/*
-				 * Leave it for now, if it's matured we can
-				 * move this message to pr_debug.
-				 */
-				pr_info("nand_read_bbt: bad block at 0x%012llx\n",
+				pr_debug("nand_read_bbt: bad block at 0x%012llx\n",
 					 (loff_t)((offs << 2) + (act >> 1)) << this->bbt_erase_shift);
 				/* Factory marked bad or worn out? */
 				if (tmp == 0)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6l3F-0003Tn-3P
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 14:46:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 16:46:34 +0200
Message-Id: <1301928401-13571-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301928401-13571-1-git-send-email-s.hauer@pengutronix.de>
References: <1301928401-13571-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] nand: remove unused suspend/resume functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c |   28 ----------------------------
 include/linux/mtd/mtd.h      |    4 ----
 2 files changed, 0 insertions(+), 32 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 22d2127..899f19e 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -2133,32 +2133,6 @@ static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
 	return chip->block_markbad(mtd, ofs);
 }
 
-/**
- * nand_suspend - [MTD Interface] Suspend the NAND flash
- * @mtd:	MTD device structure
- */
-static int nand_suspend(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-
-	return nand_get_device(chip, mtd, FL_PM_SUSPENDED);
-}
-
-/**
- * nand_resume - [MTD Interface] Resume the NAND flash
- * @mtd:	MTD device structure
- */
-static void nand_resume(struct mtd_info *mtd)
-{
-	struct nand_chip *chip = mtd->priv;
-
-	if (chip->state == FL_PM_SUSPENDED)
-		nand_release_device(mtd);
-	else
-		printk(KERN_ERR "nand_resume() called for a chip which is not "
-		       "in suspended state\n");
-}
-
 /*
  * Set default functions
  */
@@ -2591,8 +2565,6 @@ int nand_scan_tail(struct mtd_info *mtd)
 	mtd->sync = nand_sync;
 	mtd->lock = NULL;
 	mtd->unlock = NULL;
-	mtd->suspend = nand_suspend;
-	mtd->resume = nand_resume;
 	mtd->block_isbad = nand_block_isbad;
 	mtd->block_markbad = nand_block_markbad;
 
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 01980f3..29591e2 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -178,10 +178,6 @@ struct mtd_info {
 	int (*lock) (struct mtd_info *mtd, loff_t ofs, size_t len);
 	int (*unlock) (struct mtd_info *mtd, loff_t ofs, size_t len);
 
-	/* Power Management functions */
-	int (*suspend) (struct mtd_info *mtd);
-	void (*resume) (struct mtd_info *mtd);
-
 	/* Bad block management functions */
 	int (*block_isbad) (struct mtd_info *mtd, loff_t ofs);
 	int (*block_markbad) (struct mtd_info *mtd, loff_t ofs);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

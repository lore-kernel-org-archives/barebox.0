Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9HqM-0005zY-9G
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:11:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:11:48 +0200
Message-Id: <1302531111-29244-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302531111-29244-1-git-send-email-s.hauer@pengutronix.de>
References: <1302531111-29244-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] nand: nand_block_markbad is only used with nand write
	support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand.c      |    2 ++
 drivers/mtd/nand/nand.h      |    1 +
 drivers/mtd/nand/nand_base.c |   23 ++---------------------
 3 files changed, 5 insertions(+), 21 deletions(-)

diff --git a/drivers/mtd/nand/nand.c b/drivers/mtd/nand/nand.c
index deb9400..9423ac8 100644
--- a/drivers/mtd/nand/nand.c
+++ b/drivers/mtd/nand/nand.c
@@ -116,9 +116,11 @@ static int nand_ioctl(struct cdev *cdev, int request, void *buf)
 	case MEMGETBADBLOCK:
 		debug("MEMGETBADBLOCK: 0x%08lx\n", (off_t)buf);
 		return info->block_isbad(info, (off_t)buf);
+#ifdef CONFIG_NAND_WRITE
 	case MEMSETBADBLOCK:
 		debug("MEMSETBADBLOCK: 0x%08lx\n", (off_t)buf);
 		return info->block_markbad(info, (off_t)buf);
+#endif
 	case MEMGETINFO:
 		user->type	= info->type;
 		user->flags	= info->flags;
diff --git a/drivers/mtd/nand/nand.h b/drivers/mtd/nand/nand.h
index 15bed4e..123258d 100644
--- a/drivers/mtd/nand/nand.h
+++ b/drivers/mtd/nand/nand.h
@@ -9,6 +9,7 @@ int nand_default_block_markbad(struct mtd_info *mtd, loff_t ofs);
 int nand_block_checkbad(struct mtd_info *mtd, loff_t ofs, int getchip,
 			       int allowbbt);
 int nand_block_isbad(struct mtd_info *mtd, loff_t offs);
+int nand_block_markbad(struct mtd_info *mtd, loff_t ofs);
 void nand_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len);
 void nand_write_buf16(struct mtd_info *mtd, const uint8_t *buf, int len);
 void single_erase_cmd(struct mtd_info *mtd, int page);
diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index d627f16..5e122a1 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -981,26 +981,6 @@ int nand_block_isbad(struct mtd_info *mtd, loff_t offs)
 	return nand_block_checkbad(mtd, offs, 1, 0);
 }
 
-/**
- * nand_block_markbad - [MTD Interface] Mark block at the given offset as bad
- * @mtd:	MTD device structure
- * @ofs:	offset relative to mtd start
- */
-static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
-{
-	struct nand_chip *chip = mtd->priv;
-	int ret;
-
-	if ((ret = nand_block_isbad(mtd, ofs))) {
-		/* If it was bad already, return success and do nothing. */
-		if (ret > 0)
-			return 0;
-		return ret;
-	}
-
-	return chip->block_markbad(mtd, ofs);
-}
-
 /*
  * Set default functions
  */
@@ -1431,8 +1411,9 @@ int nand_scan_tail(struct mtd_info *mtd)
 	mtd->lock = NULL;
 	mtd->unlock = NULL;
 	mtd->block_isbad = nand_block_isbad;
+#ifdef CONFIG_NAND_WRITE
 	mtd->block_markbad = nand_block_markbad;
-
+#endif
 	/* propagate ecc.layout to mtd_info */
 	mtd->ecclayout = chip->ecc.layout;
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

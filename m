Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YJJOE-0001EF-OF
 for barebox@lists.infradead.org; Thu, 05 Feb 2015 10:10:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Feb 2015 11:09:58 +0100
Message-Id: <1423130998-21853-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423130998-21853-1-git-send-email-s.hauer@pengutronix.de>
References: <1423130998-21853-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] mtd: nand: bb: fix erasing bb devices with bad blocks
To: Barebox List <barebox@lists.infradead.org>

mtd_erase does not skip bad blocks, we must skip them in nand_bb_erase
instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand-bb.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index e38517d..853c617 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -159,16 +159,34 @@ static int nand_bb_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct nand_bb *bb = cdev->priv;
 	struct erase_info erase = {};
+	int ret;
 
 	if (offset != 0) {
 		printf("can only erase from beginning of device\n");
 		return -EINVAL;
 	}
 
-	erase.addr = 0;
-	erase.len = bb->mtd->size;
+	while (count) {
+		if (offset + bb->mtd->erasesize >= bb->mtd->size)
+			return 0;
+
+		if (mtd_block_isbad(bb->mtd, offset)) {
+			offset += bb->mtd->erasesize;
+			continue;
+		}
 
-	return mtd_erase(bb->mtd, &erase);
+		erase.addr = offset;
+		erase.len = bb->mtd->erasesize;
+
+		ret = mtd_erase(bb->mtd, &erase);
+		if (ret)
+			return ret;
+
+		offset += bb->mtd->erasesize;
+		count -= bb->mtd->erasesize;
+	}
+
+	return 0;
 }
 #endif
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

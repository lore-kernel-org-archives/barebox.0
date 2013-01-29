Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U07x2-0005A1-1p
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 09:58:00 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 29 Jan 2013 10:58:01 +0100
Message-Id: <1359453482-6583-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 1/2] nand_write: initialize OOB buffer for each page
To: barebox@lists.infradead.org

Previously, during a multi-page write, chip->oob_poi would not be
reinitialized.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/mtd/nand/nand_write.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 9997127..f4f2fed 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -296,15 +296,15 @@ int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 	    (chip->pagebuf << chip->page_shift) < (to + ops->len))
 		chip->pagebuf = -1;
 
-	/* Initialize to all 0xFF, to avoid the possibility of
-	   left over OOB data from a previous OOB read. */
-	memset(chip->oob_poi, 0xff, mtd->oobsize);
-
 	while(1) {
 		int bytes = mtd->writesize;
 		int cached = writelen > bytes && page != blockmask;
 		uint8_t *wbuf = buf;
 
+		/* Initialize to all 0xFF, to avoid the possibility of
+		   left over OOB data from a previous OOB read or write. */
+		memset(chip->oob_poi, 0xff, mtd->oobsize);
+
 		/* Partial page write ? */
 		if (unlikely(column || writelen < (mtd->writesize - 1))) {
 			cached = 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

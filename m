Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmrrU-0006bP-D8
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 19:37:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 21:36:59 +0200
Message-Id: <1341517020-5581-29-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
References: <1341517020-5581-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 29/30] mtd: scan_write_bbt is only needed with mtd write
 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_bbt.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/nand/nand_bbt.c b/drivers/mtd/nand/nand_bbt.c
index c1696ee..3cbf886 100644
--- a/drivers/mtd/nand/nand_bbt.c
+++ b/drivers/mtd/nand/nand_bbt.c
@@ -254,6 +254,7 @@ static int scan_read_raw(struct mtd_info *mtd, uint8_t *buf, loff_t offs,
 /*
  * Scan write data with oob to flash
  */
+#ifdef CONFIG_MTD_WRITE
 static int scan_write_bbt(struct mtd_info *mtd, loff_t offs, size_t len,
 			  uint8_t *buf, uint8_t *oob)
 {
@@ -268,6 +269,7 @@ static int scan_write_bbt(struct mtd_info *mtd, loff_t offs, size_t len,
 
 	return mtd->write_oob(mtd, offs, &ops);
 }
+#endif
 
 /**
  * read_abs_bbts - [GENERIC] Read the bad block table(s) for all chips starting at a given page
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

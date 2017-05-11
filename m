Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8kbC-0000Wx-Ko
 for barebox@lists.infradead.org; Thu, 11 May 2017 09:41:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1d8kar-0007wD-4Y
 for barebox@lists.infradead.org; Thu, 11 May 2017 11:41:09 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 11 May 2017 11:41:08 +0200
Message-Id: <20170511094108.17088-3-l.stach@pengutronix.de>
In-Reply-To: <20170511094108.17088-1-l.stach@pengutronix.de>
References: <20170511094108.17088-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] mtd: only build mtdraw_raw_to_mtd_offset when write
 support is enabled
To: barebox@lists.infradead.org

mtdraw_raw_to_mtd_offset() is only used from mtdraw_erase(), so will
only be referenced when MTD write support is enabled. This fixes a
harmless warning.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mtd/mtdraw.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index d0b5f759263d..ab360b78623a 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -92,11 +92,6 @@ static unsigned int mtdraw_offset_to_block(struct mtd_info *mtd, loff_t offset)
 	return ofs64;
 }
 
-static loff_t mtdraw_raw_to_mtd_offset(struct mtd_info *mtd, loff_t offset)
-{
-	return (loff_t)mtdraw_offset_to_block(mtd, offset) * mtd->writesize;
-}
-
 static ssize_t mtdraw_read_unaligned(struct mtd_info *mtd, void *dst,
 				     size_t count, int skip, ulong offset)
 {
@@ -159,6 +154,11 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
 }
 
 #ifdef CONFIG_MTD_WRITE
+static loff_t mtdraw_raw_to_mtd_offset(struct mtd_info *mtd, loff_t offset)
+{
+	return (loff_t)mtdraw_offset_to_block(mtd, offset) * mtd->writesize;
+}
+
 static ssize_t mtdraw_blkwrite(struct mtd_info *mtd, const void *buf,
 			       ulong offset)
 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

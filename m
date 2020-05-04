Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVb2d-0005Fl-Q8
 for barebox@lists.infradead.org; Mon, 04 May 2020 13:21:53 +0000
From: Yunus Bas <y.bas@phytec.de>
Date: Mon, 4 May 2020 15:21:48 +0200
Message-Id: <1588598508-448914-1-git-send-email-y.bas@phytec.de>
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
Subject: [PATCH] mtd: mtdraw: Fix cdev size calculation for large NANDs
To: barebox@lists.infradead.org

From: Stefan Riedmueller <s.riedmueller@phytec.de>

Raw size for large NAND devices (> 4 GB) can exceed 32 bits, so we need
64 bit types as factors. Both factors are of 32 bit types, as such is
the return value. At least one factor needs to be 64 bit type when
calculating the size.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Yunus Bas <y.bas@phytec.de>
---
 drivers/mtd/mtdraw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index f63da7b..b716192 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -306,7 +306,7 @@ static int add_mtdraw_device(struct mtd_info *mtd, const char *devname, void **p
 	mtdraw->mtd = mtd;
 
 	mtdraw->cdev.ops = (struct cdev_operations *)&mtd_raw_fops;
-	mtdraw->cdev.size = mtd_div_by_wb(mtd->size, mtd) * mtdraw->rps;
+	mtdraw->cdev.size = (loff_t)mtd_div_by_wb(mtd->size, mtd) * mtdraw->rps;
 	mtdraw->cdev.name = basprintf("%s.raw", mtd->cdev.name);
 	mtdraw->cdev.priv = mtdraw;
 	mtdraw->cdev.dev = &mtd->class_dev;
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

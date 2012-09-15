Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCtmv-0007YG-Rn
 for barebox@lists.infradead.org; Sat, 15 Sep 2012 14:56:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 15 Sep 2012 16:56:02 +0200
Message-Id: <1347720962-32574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd mtdraw: Fix partial page read
To: barebox@lists.infradead.org

When reading parts of a page we have to limit the maximum bytes copied
the the remaining bytes of a page.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/mtdraw.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index d28ae07..29f6a8c 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -129,6 +129,7 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
 
 	while (ret > 0 && count > 0) {
 		toread = min_t(int, count, mtd->writesize + mtd->oobsize);
+		toread = min_t(int, toread, mtd->writesize + mtd->oobsize - skip);
 		ret = mtdraw_read_unaligned(mtd, buf, toread,
 					    skip, numpage++ * mtd->writesize);
 		buf += ret;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

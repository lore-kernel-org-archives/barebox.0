Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RqVQ9-0000d3-TR
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 19:55:47 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 26 Jan 2012 20:55:24 +0100
Message-Id: <1327607728-2788-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] drivers/mtd: fix mtdraw write support
To: barebox@lists.infradead.org

When unaligned writes are used, typically doing a cp file /dev/mtdraw0.foo,
the alignement correction code was incorrectly handling such cases, and
didn't return the expected number of written bytes.

This was tested on a 528 block size.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

---
This fix applies to branch master and next.
---
 drivers/mtd/mtdraw.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index b1cce3d..7abe235 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -191,8 +191,9 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 	}
 
 	if (mtdraw->write_fill == bsz) {
-		ret = mtdraw_blkwrite(mtd, mtdraw->writebuf, mtdraw->write_ofs);
-		retlen += ret;
+		numpage = mtdraw->write_ofs / (mtd->writesize + mtd->oobsize);
+		ret = mtdraw_blkwrite(mtd, mtdraw->writebuf,
+				      mtd->writesize * numpage);
 		mtdraw->write_fill = 0;
 	}
 
@@ -208,6 +209,7 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 	if (ret >= 0 && count) {
 		mtdraw->write_ofs = offset - mtdraw->write_fill;
 		mtdraw_fillbuf(mtdraw, buf + retlen, count);
+		retlen += count;
 	}
 
 	if (ret < 0) {
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

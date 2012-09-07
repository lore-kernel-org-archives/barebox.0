Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9tyb-000726-TE
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 08:31:46 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Fri,  7 Sep 2012 10:31:40 +0200
Message-Id: <1347006700-9053-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] mtd: use correct format specifier
To: barebox@lists.infradead.org

For the size_t type the format specifier %zu or %zx must be used.
See Documentation/printk-formats.txt in the kernel for details.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/mtd/core.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index a6132e8..68ab70d 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -79,7 +79,7 @@ static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
 		return -EINVAL;
 	}
 
-	dev_dbg(cdev->dev, "write: 0x%08lx 0x%08lx\n", offset, count);
+	dev_dbg(cdev->dev, "write: offset: 0x%08lx count: 0x%zx\n", offset, count);
 	while (count) {
 		now = count > mtd->writesize ? mtd->writesize : count;
 
@@ -100,7 +100,7 @@ static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
 				ret = mtd->write(mtd, offset, now, &retlen,
 						  buf);
 			dev_dbg(cdev->dev,
-				"offset: 0x%08lx now: 0x%08lx retlen: 0x%08lx\n",
+				"offset: 0x%08lx now: 0x%zx retlen: 0x%zx\n",
 				offset, now, retlen);
 		}
 		if (ret)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

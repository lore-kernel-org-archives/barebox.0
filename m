Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Pes-0007uX-Od
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 05:57:15 +0000
Received: by wibhn17 with SMTP id hn17so2523333wib.0
 for <barebox@lists.infradead.org>; Sun, 02 Sep 2012 22:57:12 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon,  3 Sep 2012 07:58:00 +0200
Message-Id: <1346651881-3765-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/2] mtd: fix compiler warnings
To: barebox@lists.infradead.org

Fix some compiler warnings.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/mtd/core.c   | 6 +++---
 drivers/mtd/mtdraw.c | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 5510439..3dcc908 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -79,7 +79,7 @@ static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
 		return -EINVAL;
 	}
 
-	dev_dbg(cdev->dev, "write: 0x%08lx 0x%08x\n", offset, count);
+	dev_dbg(cdev->dev, "write: 0x%08lx 0x%08lx\n", offset, count);
 	while (count) {
 		now = count > mtd->writesize ? mtd->writesize : count;
 
@@ -100,7 +100,7 @@ static ssize_t mtd_write(struct cdev* cdev, const void *buf, size_t _count,
 				ret = mtd->write(mtd, offset, now, &retlen,
 						  buf);
 			dev_dbg(cdev->dev,
-				"offset: 0x%08lx now: 0x%08x retlen: 0x%08x\n",
+				"offset: 0x%08lx now: 0x%08lx retlen: 0x%08lx\n",
 				offset, now, retlen);
 		}
 		if (ret)
@@ -174,7 +174,7 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 }
 
 #ifdef CONFIG_MTD_WRITE
-static ssize_t mtd_erase(struct cdev *cdev, size_t count, loff_t offset)
+static int mtd_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	struct mtd_info *mtd = cdev->priv;
 	struct erase_info erase;
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 24f7358..9961a75 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -137,7 +137,7 @@ static ssize_t mtdraw_read(struct cdev *cdev, void *buf, size_t count,
 		retlen += ret;
 	}
 	if (ret < 0)
-		printf("err %d\n", ret);
+		printf("err %lu\n", ret);
 	else
 		ret = retlen;
 	return ret;
@@ -222,7 +222,7 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 	}
 }
 
-static ssize_t mtdraw_erase(struct cdev *cdev, size_t count, loff_t _offset)
+static int mtdraw_erase(struct cdev *cdev, size_t count, loff_t _offset)
 {
 	struct mtd_info *mtd = to_mtd(cdev);
 	struct erase_info erase;
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

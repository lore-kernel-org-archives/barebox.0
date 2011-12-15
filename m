Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8sp-0001vi-M9
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:49:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:49:38 +0100
Message-Id: <1323946179-9883-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
References: <1323946179-9883-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] cdev: pass flags to open function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand-bb.c |    2 +-
 drivers/mtd/ubi/cdev.c     |    2 +-
 fs/devfs-core.c            |    2 +-
 fs/devfs.c                 |    2 +-
 include/driver.h           |    2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index dbfb8e3..ae84ce1 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -164,7 +164,7 @@ static int nand_bb_erase(struct cdev *cdev, size_t count, unsigned long offset)
 }
 #endif
 
-static int nand_bb_open(struct cdev *cdev)
+static int nand_bb_open(struct cdev *cdev, unsigned long flags)
 {
 	struct nand_bb *bb = cdev->priv;
 
diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index 96ae16e..95bef1f 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -81,7 +81,7 @@ static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
 	return err;
 }
 
-static int ubi_volume_cdev_open(struct cdev *cdev)
+static int ubi_volume_cdev_open(struct cdev *cdev, unsigned long flags)
 {
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 9bc3126..5f22ce7 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -63,7 +63,7 @@ struct cdev *cdev_open(const char *name, unsigned long flags)
 		return NULL;
 
 	if (cdev->ops->open) {
-		ret = cdev->ops->open(cdev);
+		ret = cdev->ops->open(cdev, flags);
 		if (ret)
 			return NULL;
 	}
diff --git a/fs/devfs.c b/fs/devfs.c
index 66f7ca4..2e70cc5 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -116,7 +116,7 @@ static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
 	f->inode = cdev;
 
 	if (cdev->ops->open) {
-		ret = cdev->ops->open(cdev);
+		ret = cdev->ops->open(cdev, f->flags);
 		if (ret)
 			return ret;
 	}
diff --git a/include/driver.h b/include/driver.h
index bbe7248..bc60bdc 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -366,7 +366,7 @@ struct file_operations {
 
 	int (*ioctl)(struct cdev*, int, void *);
 	off_t (*lseek)(struct cdev*, off_t);
-	int (*open)(struct cdev*);
+	int (*open)(struct cdev*, unsigned long flags);
 	int (*close)(struct cdev*);
 	int (*flush)(struct cdev*);
 	int (*erase)(struct cdev*, size_t count, unsigned long offset);
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

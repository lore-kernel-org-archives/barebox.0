Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co6-0000rp-G4
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:36:50 +0200
Message-Id: <1302273422-6987-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/16] devfs: remove unused struct filep* argument from
	open/close
To: barebox@lists.infradead.org

the cdev layer is under the file layer, so it should not use
struct filep*.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/nand.c        |    4 ++--
 drivers/mtd/ubi/cdev.c |    4 ++--
 fs/devfs.c             |    4 ++--
 include/driver.h       |    4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index 70e83aa..dc8fd9b 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -163,7 +163,7 @@ static int nand_bb_erase(struct cdev *cdev, size_t count, unsigned long offset)
 }
 #endif
 
-static int nand_bb_open(struct cdev *cdev, struct filep *f)
+static int nand_bb_open(struct cdev *cdev)
 {
 	struct nand_bb *bb = cdev->priv;
 
@@ -178,7 +178,7 @@ static int nand_bb_open(struct cdev *cdev, struct filep *f)
 	return 0;
 }
 
-static int nand_bb_close(struct cdev *cdev, struct filep *f)
+static int nand_bb_close(struct cdev *cdev)
 {
 	struct nand_bb *bb = cdev->priv;
 
diff --git a/drivers/mtd/ubi/cdev.c b/drivers/mtd/ubi/cdev.c
index 46e1cb5..96ae16e 100644
--- a/drivers/mtd/ubi/cdev.c
+++ b/drivers/mtd/ubi/cdev.c
@@ -81,7 +81,7 @@ static ssize_t ubi_volume_cdev_write(struct cdev* cdev, const void *buf,
 	return err;
 }
 
-static int ubi_volume_cdev_open(struct cdev *cdev, struct filep *f)
+static int ubi_volume_cdev_open(struct cdev *cdev)
 {
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 
@@ -90,7 +90,7 @@ static int ubi_volume_cdev_open(struct cdev *cdev, struct filep *f)
 	return 0;
 }
 
-static int ubi_volume_cdev_close(struct cdev *cdev, struct filep *f)
+static int ubi_volume_cdev_close(struct cdev *cdev)
 {
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 	struct ubi_volume *vol = priv->vol;
diff --git a/fs/devfs.c b/fs/devfs.c
index d40bf90..ddb3447 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -143,7 +143,7 @@ static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
 	f->inode = cdev;
 
 	if (cdev->ops->open) {
-		ret = cdev->ops->open(cdev, f);
+		ret = cdev->ops->open(cdev);
 		if (ret)
 			return ret;
 	}
@@ -159,7 +159,7 @@ static int devfs_close(struct device_d *_dev, FILE *f)
 	int ret;
 
 	if (cdev->ops->close) {
-		ret = cdev->ops->close(cdev, f);
+		ret = cdev->ops->close(cdev);
 		if (ret)
 			return ret;
 	}
diff --git a/include/driver.h b/include/driver.h
index b9edca0..bd00069 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -290,8 +290,8 @@ struct file_operations {
 
 	int (*ioctl)(struct cdev*, int, void *);
 	off_t (*lseek)(struct cdev*, off_t);
-	int (*open)(struct cdev*, struct filep*);
-	int (*close)(struct cdev*, struct filep*);
+	int (*open)(struct cdev*);
+	int (*close)(struct cdev*);
 	int (*erase)(struct cdev*, size_t count, unsigned long offset);
 	int (*protect)(struct cdev*, size_t count, unsigned long offset, int prot);
 	int (*memmap)(struct cdev*, void **map, int flags);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

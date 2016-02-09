Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aT51s-0004fB-GO
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 09:56:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Feb 2016 10:55:47 +0100
Message-Id: <1455011748-5538-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1455011748-5538-1-git-send-email-s.hauer@pengutronix.de>
References: <1455011748-5538-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] mtd: Fix erasing of devices >4GiB
To: Barebox List <barebox@lists.infradead.org>

When a device >4GiB is erased, not only the offset can be bigger
than 4GiB, but also the size. This happens with the simplest command
to erase a device: erase /dev/nand0. Make the size argument a 64bit
type to make this work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/core.c         | 6 +++---
 drivers/mtd/mtdraw.c       | 2 +-
 drivers/mtd/nand/nand-bb.c | 2 +-
 fs/devfs-core.c            | 2 +-
 fs/devfs.c                 | 2 +-
 fs/fs.c                    | 2 +-
 include/driver.h           | 4 ++--
 include/fs.h               | 4 ++--
 8 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index 0bc9fed..9234525 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -114,13 +114,13 @@ static struct mtd_erase_region_info *mtd_find_erase_region(struct mtd_info *mtd,
 	return NULL;
 }
 
-static int mtd_erase_align(struct mtd_info *mtd, size_t *count, loff_t *offset)
+static int mtd_erase_align(struct mtd_info *mtd, loff_t *count, loff_t *offset)
 {
 	struct mtd_erase_region_info *e;
 	loff_t ofs;
 
 	if (mtd->numeraseregions == 0) {
-		ofs = *offset & ~(mtd->erasesize - 1);
+		ofs = *offset & ~(loff_t)(mtd->erasesize - 1);
 		*count += (*offset - ofs);
 		*count = ALIGN(*count, mtd->erasesize);
 		*offset = ofs;
@@ -144,7 +144,7 @@ static int mtd_erase_align(struct mtd_info *mtd, size_t *count, loff_t *offset)
 	return 0;
 }
 
-static int mtd_op_erase(struct cdev *cdev, size_t count, loff_t offset)
+static int mtd_op_erase(struct cdev *cdev, loff_t count, loff_t offset)
 {
 	struct mtd_info *mtd = cdev->priv;
 	struct erase_info erase;
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 837dcd1..4d6ac72 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -239,7 +239,7 @@ static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
 	}
 }
 
-static int mtdraw_erase(struct cdev *cdev, size_t count, loff_t offset)
+static int mtdraw_erase(struct cdev *cdev, loff_t count, loff_t offset)
 {
 	struct mtd_info *mtd = to_mtd(cdev);
 	struct erase_info erase;
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index 5a2fd10..e6d4277 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -157,7 +157,7 @@ static ssize_t nand_bb_write(struct cdev *cdev, const void *buf, size_t count,
 	return bytes;
 }
 
-static int nand_bb_erase(struct cdev *cdev, size_t count, loff_t offset)
+static int nand_bb_erase(struct cdev *cdev, loff_t count, loff_t offset)
 {
 	struct nand_bb *bb = cdev->priv;
 	struct erase_info erase = {};
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 88a7e3a..deacaaa 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -259,7 +259,7 @@ int cdev_ioctl(struct cdev *cdev, int request, void *buf)
 	return cdev->ops->ioctl(cdev, request, buf);
 }
 
-int cdev_erase(struct cdev *cdev, size_t count, loff_t offset)
+int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset)
 {
 	if (!cdev->ops->erase)
 		return -ENOSYS;
diff --git a/fs/devfs.c b/fs/devfs.c
index 0b8d4fd..6fabcf8 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -66,7 +66,7 @@ static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 	return ret - cdev->offset;
 }
 
-static int devfs_erase(struct device_d *_dev, FILE *f, size_t count, loff_t offset)
+static int devfs_erase(struct device_d *_dev, FILE *f, loff_t count, loff_t offset)
 {
 	struct cdev *cdev = f->priv;
 
diff --git a/fs/fs.c b/fs/fs.c
index ace72f7..c4b3583 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -924,7 +924,7 @@ out:
 }
 EXPORT_SYMBOL(lseek);
 
-int erase(int fd, size_t count, loff_t offset)
+int erase(int fd, loff_t count, loff_t offset)
 {
 	struct fs_driver_d *fsdrv;
 	FILE *f;
diff --git a/include/driver.h b/include/driver.h
index 31c6734..ce8c966 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -425,7 +425,7 @@ struct file_operations {
 	int (*open)(struct cdev*, unsigned long flags);
 	int (*close)(struct cdev*);
 	int (*flush)(struct cdev*);
-	int (*erase)(struct cdev*, size_t count, loff_t offset);
+	int (*erase)(struct cdev*, loff_t count, loff_t offset);
 	int (*protect)(struct cdev*, size_t count, loff_t offset, int prot);
 	int (*memmap)(struct cdev*, void **map, int flags);
 };
@@ -470,7 +470,7 @@ int cdev_flush(struct cdev *cdev);
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
 int cdev_ioctl(struct cdev *cdev, int cmd, void *buf);
-int cdev_erase(struct cdev *cdev, size_t count, loff_t offset);
+int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
 
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
diff --git a/include/fs.h b/include/fs.h
index 23156ea..9f4164e 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -70,7 +70,7 @@ struct fs_driver_d {
 	int (*stat)(struct device_d *dev, const char *file, struct stat *stat);
 
 	int (*ioctl)(struct device_d *dev, FILE *f, int request, void *buf);
-	int (*erase)(struct device_d *dev, FILE *f, size_t count,
+	int (*erase)(struct device_d *dev, FILE *f, loff_t count,
 			loff_t offset);
 	int (*protect)(struct device_d *dev, FILE *f, size_t count,
 			loff_t offset, int prot);
@@ -145,7 +145,7 @@ int mount (const char *device, const char *fsname, const char *path,
 int umount(const char *pathname);
 
 /* not-so-standard functions */
-int erase(int fd, size_t count, loff_t offset);
+int erase(int fd, loff_t count, loff_t offset);
 int protect(int fd, size_t count, loff_t offset, int prot);
 int protect_file(const char *file, int prot);
 void *memmap(int fd, int flags);
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjbr1-0006PF-Qk
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:55:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Jun 2012 21:55:01 +0200
Message-Id: <1340740503-7003-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
References: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] make cdev 64bit capable
To: barebox@lists.infradead.org

Next step to 64bit support: Make cdev size a 64bit type.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/block.c        |    2 +-
 drivers/base/driver.c |    2 +-
 fs/devfs-core.c       |    9 +++++----
 fs/devfs.c            |    4 ++--
 fs/fs.c               |    2 +-
 include/driver.h      |   10 +++++-----
 6 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/common/block.c b/common/block.c
index 1db06cc..e40374f 100644
--- a/common/block.c
+++ b/common/block.c
@@ -338,7 +338,7 @@ static struct file_operations block_ops = {
 
 int blockdevice_register(struct block_device *blk)
 {
-	size_t size = blk->num_blocks * BLOCKSIZE(blk);
+	loff_t size = (loff_t)blk->num_blocks * BLOCKSIZE(blk);
 	int ret;
 	int i;
 
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 547d684..29b0010 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -337,7 +337,7 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 		list_for_each_entry(cdev, &dev->cdevs, devices_list) {
 			for (i = 0; i < depth + 1; i++)
 				printf("     ");
-			printf("`---- 0x%08lx-0x%08lx: /dev/%s\n",
+			printf("`---- 0x%08llx-0x%08llx: /dev/%s\n",
 					cdev->offset,
 					cdev->offset + cdev->size - 1,
 					cdev->name);
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 6a56d34..b66965e 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -96,7 +96,7 @@ void cdev_close(struct cdev *cdev)
 		cdev->ops->close(cdev);
 }
 
-ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
+ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
 {
 	if (!cdev->ops->read)
 		return -ENOSYS;
@@ -104,7 +104,7 @@ ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulon
 	return cdev->ops->read(cdev, buf, count, cdev->offset +offset, flags);
 }
 
-ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags)
+ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
 {
 	if (!cdev->ops->write)
 		return -ENOSYS;
@@ -165,10 +165,11 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 	case MEMGETREGIONINFO:
 		if (cdev->mtd) {
 			struct region_info_user *reg = buf;
+			int erasesize_shift = ffs(cdev->mtd->erasesize) - 1;
 
 			reg->offset = cdev->offset;
 			reg->erasesize = cdev->mtd->erasesize;
-			reg->numblocks = cdev->size/reg->erasesize;
+			reg->numblocks = cdev->size >> erasesize_shift;
 			reg->regionindex = cdev->mtd->index;
 		}
 	break;
@@ -191,7 +192,7 @@ int cdev_ioctl(struct cdev *cdev, int request, void *buf)
 	return cdev->ops->ioctl(cdev, request, buf);
 }
 
-int cdev_erase(struct cdev *cdev, size_t count, unsigned long offset)
+int cdev_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	if (!cdev->ops->erase)
 		return -ENOSYS;
diff --git a/fs/devfs.c b/fs/devfs.c
index 863f4ec..5aace36 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -55,7 +55,7 @@ static int devfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t s
 static loff_t devfs_lseek(struct device_d *_dev, FILE *f, loff_t pos)
 {
 	struct cdev *cdev = f->inode;
-	off_t ret = -1;
+	loff_t ret = -1;
 
 	if (cdev->ops->lseek)
 		ret = cdev->ops->lseek(cdev, pos + cdev->offset);
@@ -100,7 +100,7 @@ static int devfs_memmap(struct device_d *_dev, FILE *f, void **map, int flags)
 	ret = cdev->ops->memmap(cdev, map, flags);
 
 	if (!ret)
-		*map = (void *)((unsigned long)*map + cdev->offset);
+		*map = (void *)((unsigned long)*map + (unsigned long)cdev->offset);
 
 	return ret;
 }
diff --git a/fs/fs.c b/fs/fs.c
index 6d1d703..7dd6c03 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -697,7 +697,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fildes];
-	off_t pos;
+	loff_t pos;
 	int ret;
 
 	if (check_fd(fildes))
diff --git a/include/driver.h b/include/driver.h
index 4a8d48a..0b6d1b3 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -395,8 +395,8 @@ struct cdev {
 	struct list_head list;
 	struct list_head devices_list;
 	char *name;
-	unsigned long offset;
-	size_t size;
+	loff_t offset;
+	loff_t size;
 	unsigned int flags;
 	int open;
 	struct mtd_info *mtd;
@@ -409,10 +409,10 @@ struct cdev *cdev_by_name(const char *filename);
 struct cdev *cdev_open(const char *name, unsigned long flags);
 void cdev_close(struct cdev *cdev);
 int cdev_flush(struct cdev *cdev);
-ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags);
-ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags);
+ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
+ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
 int cdev_ioctl(struct cdev *cdev, int cmd, void *buf);
-int cdev_erase(struct cdev *cdev, size_t count, unsigned long offset);
+int cdev_erase(struct cdev *cdev, size_t count, loff_t offset);
 
 #define DEVFS_PARTITION_FIXED		(1 << 0)
 #define DEVFS_PARTITION_READONLY	(1 << 1)
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

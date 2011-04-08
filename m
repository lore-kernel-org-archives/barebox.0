Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co6-0000rr-Gs
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:36:52 +0200
Message-Id: <1302273422-6987-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/16] devfs: factor out core devfs functionality
To: barebox@lists.infradead.org

This makes it possible to compile without devfs. devfs_create/devfs_remove
is used by drivers and thus must still be present even without devfs support.
Also, this patch adds cdev_open/cdev_close/cdev_flush/cdev_ioctl calls to
work with devices without using the file api.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/Makefile      |    1 +
 fs/devfs-core.c  |  236 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 fs/devfs.c       |  167 +-------------------------------------
 include/driver.h |    5 +
 4 files changed, 244 insertions(+), 165 deletions(-)
 create mode 100644 fs/devfs-core.c

diff --git a/fs/Makefile b/fs/Makefile
index 228af6e..4aa92ef 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_FS_CRAMFS)	+= cramfs/
 obj-$(CONFIG_FS_RAMFS)	+= ramfs.o
+obj-y			+= devfs-core.o
 obj-$(CONFIG_FS_DEVFS)	+= devfs.o
 obj-y	+= fs.o
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
new file mode 100644
index 0000000..519e18e
--- /dev/null
+++ b/fs/devfs-core.c
@@ -0,0 +1,236 @@
+/*
+ * devfs.c - a device file system for barebox
+ *
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <malloc.h>
+#include <ioctl.h>
+#include <linux/err.h>
+#include <linux/mtd/mtd.h>
+
+LIST_HEAD(cdev_list);
+
+struct cdev *cdev_by_name(const char *filename)
+{
+	struct cdev *cdev;
+
+	list_for_each_entry(cdev, &cdev_list, list) {
+		if (!strcmp(cdev->name, filename))
+			return cdev;
+	}
+	return NULL;
+}
+
+struct cdev *cdev_open(const char *name, unsigned long flags)
+{
+	struct cdev *cdev = cdev_by_name(name);
+	int ret;
+
+	if (!cdev)
+		return NULL;
+
+	if (cdev->ops->open) {
+		ret = cdev->ops->open(cdev);
+		if (ret)
+			return NULL;
+	}
+
+	return cdev;
+}
+
+void cdev_close(struct cdev *cdev)
+{
+	if (cdev->ops->close)
+		cdev->ops->close(cdev);
+}
+
+ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
+{
+	if (!cdev->ops->read)
+		return -ENOSYS;
+
+	return cdev->ops->read(cdev, buf, count, cdev->offset +offset, flags);
+}
+
+ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags)
+{
+	if (!cdev->ops->write)
+		return -ENOSYS;
+
+	return cdev->ops->write(cdev, buf, count, cdev->offset + offset, flags);
+}
+
+int cdev_flush(struct cdev *cdev)
+{
+	if (!cdev->ops->flush)
+		return 0;
+
+	return cdev->ops->flush(cdev);
+}
+
+static int partition_ioctl(struct cdev *cdev, int request, void *buf)
+{
+	size_t offset;
+	struct mtd_info_user *user = buf;
+
+	switch (request) {
+	case MEMSETBADBLOCK:
+	case MEMGETBADBLOCK:
+		offset = (off_t)buf;
+		offset += cdev->offset;
+		return cdev->ops->ioctl(cdev, request, (void *)offset);
+	case MEMGETINFO:
+		if (cdev->mtd) {
+			user->type	= cdev->mtd->type;
+			user->flags	= cdev->mtd->flags;
+			user->size	= cdev->mtd->size;
+			user->erasesize	= cdev->mtd->erasesize;
+			user->oobsize	= cdev->mtd->oobsize;
+			user->mtd	= cdev->mtd;
+			/* The below fields are obsolete */
+			user->ecctype	= -1;
+			user->eccsize	= 0;
+			return 0;
+		}
+		if (!cdev->ops->ioctl)
+			return -EINVAL;
+		return cdev->ops->ioctl(cdev, request, buf);
+	default:
+		return -EINVAL;
+	}
+}
+
+int cdev_ioctl(struct cdev *cdev, int request, void *buf)
+{
+	if (cdev->flags & DEVFS_IS_PARTITION)
+		return partition_ioctl(cdev, request, buf);
+
+	if (!cdev->ops->ioctl)
+		return -EINVAL;
+
+	return cdev->ops->ioctl(cdev, request, buf);
+}
+
+int cdev_erase(struct cdev *cdev, size_t count, unsigned long offset)
+{
+	if (!cdev->ops->erase)
+		return -ENOSYS;
+
+	return cdev->ops->erase(cdev, count, cdev->offset + offset);
+}
+
+int devfs_create(struct cdev *new)
+{
+	struct cdev *cdev;
+
+	cdev = cdev_by_name(new->name);
+	if (cdev)
+		return -EEXIST;
+
+	list_add_tail(&new->list, &cdev_list);
+	if (new->dev)
+		list_add_tail(&new->devices_list, &new->dev->cdevs);
+
+	return 0;
+}
+
+int devfs_remove(struct cdev *cdev)
+{
+	if (cdev->open)
+		return -EBUSY;
+
+	list_del(&cdev->list);
+	if (cdev->dev)
+		list_del(&cdev->devices_list);
+
+	return 0;
+}
+
+int devfs_add_partition(const char *devname, unsigned long offset, size_t size,
+		int flags, const char *name)
+{
+	struct cdev *cdev, *new;
+
+	cdev = cdev_by_name(name);
+	if (cdev)
+		return -EEXIST;
+
+	cdev = cdev_by_name(devname);
+	if (!cdev)
+		return -ENOENT;
+
+	if (offset + size > cdev->size)
+		return -EINVAL;
+
+	new = xzalloc(sizeof (*new));
+	new->name = strdup(name);
+	new->ops = cdev->ops;
+	new->priv = cdev->priv;
+	new->size = size;
+	new->offset = offset + cdev->offset;
+	new->dev = cdev->dev;
+	new->flags = flags | DEVFS_IS_PARTITION;
+
+#ifdef CONFIG_PARTITION_NEED_MTD
+	if (cdev->mtd) {
+		new->mtd = mtd_add_partition(cdev->mtd, offset, size, flags, name);
+		if (IS_ERR(new->mtd)) {
+			int ret = PTR_ERR(new->mtd);
+			free(new);
+			return ret;
+		}
+	}
+#endif
+
+	devfs_create(new);
+
+	return 0;
+}
+
+int devfs_del_partition(const char *name)
+{
+	struct cdev *cdev;
+	int ret;
+
+	cdev = cdev_by_name(name);
+	if (!cdev)
+		return -ENOENT;
+
+	if (!(cdev->flags & DEVFS_IS_PARTITION))
+		return -EINVAL;
+	if (cdev->flags & DEVFS_PARTITION_FIXED)
+		return -EPERM;
+
+#ifdef CONFIG_PARTITION_NEED_MTD
+	if (cdev->mtd)
+		mtd_del_partition(cdev->mtd);
+#endif
+
+	ret = devfs_remove(cdev);
+	if (ret)
+		return ret;
+
+	free(cdev->name);
+	free(cdev);
+
+	return 0;
+}
diff --git a/fs/devfs.c b/fs/devfs.c
index f82fddd..07ca16c 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -36,34 +36,7 @@
 #include <linux/mtd/mtd-abi.h>
 #include <partition.h>
 
-static LIST_HEAD(cdev_list);
-
-struct cdev *cdev_by_name(const char *filename)
-{
-	struct cdev *cdev;
-
-	list_for_each_entry(cdev, &cdev_list, list) {
-		if (!strcmp(cdev->name, filename))
-			return cdev;
-	}
-	return NULL;
-}
-
-ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags)
-{
-	if (!cdev->ops->read)
-		return -ENOSYS;
-
-	return cdev->ops->read(cdev, buf, count, cdev->offset +offset, flags);
-}
-
-ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags)
-{
-	if (!cdev->ops->write)
-		return -ENOSYS;
-
-	return cdev->ops->write(cdev, buf, count, cdev->offset + offset, flags);
-}
+extern struct list_head cdev_list;
 
 static int devfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
 {
@@ -179,49 +152,11 @@ static int devfs_flush(struct device_d *_dev, FILE *f)
 	return 0;
 }
 
-static int partition_ioctl(struct cdev *cdev, int request, void *buf)
-{
-	size_t offset;
-	struct mtd_info_user *user = buf;
-
-	switch (request) {
-	case MEMSETBADBLOCK:
-	case MEMGETBADBLOCK:
-		offset = (off_t)buf;
-		offset += cdev->offset;
-		return cdev->ops->ioctl(cdev, request, (void *)offset);
-	case MEMGETINFO:
-		if (cdev->mtd) {
-			user->type	= cdev->mtd->type;
-			user->flags	= cdev->mtd->flags;
-			user->size	= cdev->mtd->size;
-			user->erasesize	= cdev->mtd->erasesize;
-			user->oobsize	= cdev->mtd->oobsize;
-			user->mtd	= cdev->mtd;
-			/* The below fields are obsolete */
-			user->ecctype	= -1;
-			user->eccsize	= 0;
-			return 0;
-		}
-		if (!cdev->ops->ioctl)
-			return -EINVAL;
-		return cdev->ops->ioctl(cdev, request, buf);
-	default:
-		return -EINVAL;
-	}
-}
-
 static int devfs_ioctl(struct device_d *_dev, FILE *f, int request, void *buf)
 {
 	struct cdev *cdev = f->inode;
 
-	if (cdev->flags & DEVFS_IS_PARTITION)
-		return partition_ioctl(cdev, request, buf);
-
-	if (!cdev->ops->ioctl)
-		return -EINVAL;
-
-	return cdev->ops->ioctl(cdev, request, buf);
+	return cdev_ioctl(cdev, request, buf);
 }
 
 static int devfs_truncate(struct device_d *dev, FILE *f, ulong size)
@@ -322,101 +257,3 @@ static int devfs_init(void)
 }
 
 coredevice_initcall(devfs_init);
-
-int devfs_create(struct cdev *new)
-{
-	struct cdev *cdev;
-
-	cdev = cdev_by_name(new->name);
-	if (cdev)
-		return -EEXIST;
-
-	list_add_tail(&new->list, &cdev_list);
-	if (new->dev)
-		list_add_tail(&new->devices_list, &new->dev->cdevs);
-
-	return 0;
-}
-
-int devfs_remove(struct cdev *cdev)
-{
-	if (cdev->open)
-		return -EBUSY;
-
-	list_del(&cdev->list);
-	if (cdev->dev)
-		list_del(&cdev->devices_list);
-
-	return 0;
-}
-
-int devfs_add_partition(const char *devname, unsigned long offset, size_t size,
-		int flags, const char *name)
-{
-	struct cdev *cdev, *new;
-
-	cdev = cdev_by_name(name);
-	if (cdev)
-		return -EEXIST;
-
-	cdev = cdev_by_name(devname);
-	if (!cdev)
-		return -ENOENT;
-
-	if (offset + size > cdev->size)
-		return -EINVAL;
-
-	new = xzalloc(sizeof (*new));
-	new->name = strdup(name);
-	new->ops = cdev->ops;
-	new->priv = cdev->priv;
-	new->size = size;
-	new->offset = offset + cdev->offset;
-	new->dev = cdev->dev;
-	new->flags = flags | DEVFS_IS_PARTITION;
-
-#ifdef CONFIG_PARTITION_NEED_MTD
-	if (cdev->mtd) {
-		new->mtd = mtd_add_partition(cdev->mtd, offset, size, flags, name);
-		if (IS_ERR(new->mtd)) {
-			int ret = PTR_ERR(new->mtd);
-			free(new);
-			return ret;
-		}
-	}
-#endif
-
-	devfs_create(new);
-
-	return 0;
-}
-
-int devfs_del_partition(const char *name)
-{
-	struct cdev *cdev;
-	int ret;
-
-	cdev = cdev_by_name(name);
-	if (!cdev)
-		return -ENOENT;
-
-	if (!(cdev->flags & DEVFS_IS_PARTITION))
-		return -EINVAL;
-	if (cdev->flags & DEVFS_PARTITION_FIXED)
-		return -EPERM;
-
-#ifdef CONFIG_PARTITION_NEED_MTD
-	if (cdev->mtd)
-		mtd_del_partition(cdev->mtd);
-#endif
-
-	ret = devfs_remove(cdev);
-	if (ret)
-		return ret;
-
-	free(cdev->name);
-	free(cdev);
-
-	return 0;
-}
-
diff --git a/include/driver.h b/include/driver.h
index 14ccc6d..6a4d45e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -315,8 +315,13 @@ struct cdev {
 int devfs_create(struct cdev *);
 int devfs_remove(struct cdev *);
 struct cdev *cdev_by_name(const char *filename);
+struct cdev *cdev_open(const char *name, unsigned long flags);
+void cdev_close(struct cdev *cdev);
+int cdev_flush(struct cdev *cdev);
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags);
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags);
+int cdev_ioctl(struct cdev *cdev, int cmd, void *buf);
+int cdev_erase(struct cdev *cdev, size_t count, unsigned long offset);
 
 #define DEVFS_PARTITION_FIXED		(1 << 0)
 #define DEVFS_PARTITION_READONLY	(1 << 1)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFhqj-0004Yj-S5
 for barebox@lists.infradead.org; Tue, 30 May 2017 14:10:22 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 30 May 2017 16:09:46 +0200
Message-Id: <20170530140947.3988-4-p.zabel@pengutronix.de>
In-Reply-To: <20170530140947.3988-1-p.zabel@pengutronix.de>
References: <20170530140947.3988-1-p.zabel@pengutronix.de>
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
Subject: [PATCH 4/5] fs: add cdev_create_from_file for loop mount option
To: barebox@lists.infradead.org

Allow to create a loopback cdev from a file.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 fs/devfs-core.c  | 81 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 fs/fs.c          | 21 ++++++++++++---
 include/driver.h |  1 +
 3 files changed, 99 insertions(+), 4 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 382606f1cf..7ffa1e4327 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -20,11 +20,14 @@
 #include <complete.h>
 #include <driver.h>
 #include <errno.h>
+#include <fcntl.h>
 #include <malloc.h>
 #include <ioctl.h>
 #include <nand.h>
 #include <linux/err.h>
+#include <linux/fs.h>
 #include <linux/mtd/mtd.h>
+#include <unistd.h>
 
 LIST_HEAD(cdev_list);
 
@@ -407,3 +410,81 @@ int devfs_create_partitions(const char *devname,
 
 	return 0;
 }
+
+struct loop_priv {
+	int fd;
+};
+
+static ssize_t loop_read(struct cdev *cdev, void *buf, size_t count,
+		loff_t offset, ulong flags)
+{
+	struct loop_priv *priv = cdev->priv;
+	loff_t ofs;
+
+	ofs = lseek(priv->fd, offset, SEEK_SET);
+	if (ofs < 0)
+		return ofs;
+
+	return read(priv->fd, buf, count);
+}
+
+static ssize_t loop_write(struct cdev *cdev, const void *buf, size_t count,
+		loff_t offset, ulong flags)
+{
+	struct loop_priv *priv = cdev->priv;
+	loff_t ofs;
+
+	ofs = lseek(priv->fd, offset, SEEK_SET);
+	if (ofs < 0)
+		return ofs;
+
+	return write(priv->fd, buf, count);
+}
+
+static const struct file_operations loop_ops = {
+	.read = loop_read,
+	.write = loop_write,
+	.memmap = generic_memmap_rw,
+	.lseek = dev_lseek_default,
+};
+
+struct cdev *cdev_create_from_file(const char *path, ulong flags)
+{
+	struct cdev *new;
+	struct loop_priv *priv;
+	static int loopno;
+	loff_t ofs;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->fd = open(path, flags);
+	if (priv->fd < 0) {
+		free(priv);
+		return NULL;
+	}
+
+	new = xzalloc(sizeof(*new));
+
+	new->name = strdup(path);
+
+	new->ops = &loop_ops;
+	new->name = basprintf("loop%u", loopno);
+	new->priv = priv;
+
+	ofs = lseek(priv->fd, 0, SEEK_END);
+	if (ofs < 0) {
+		free(new);
+		free(priv);
+		return NULL;
+	}
+	lseek(priv->fd, 0, SEEK_SET);
+
+	new->size = ofs;
+	new->offset = 0;
+	new->dev = NULL;
+	new->flags = 0;
+
+	devfs_create(new);
+
+	return new;
+}
diff --git a/fs/fs.c b/fs/fs.c
index 1901c94ad1..621ea19749 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -36,6 +36,8 @@
 #include <block.h>
 #include <libfile.h>
 
+#include "parseopt.h"
+
 char *mkmodestr(unsigned long mode, char *str)
 {
 	static const char *l = "xwr";
@@ -1222,13 +1224,18 @@ int register_fs_driver(struct fs_driver_d *fsdrv)
 }
 EXPORT_SYMBOL(register_fs_driver);
 
-static const char *detect_fs(const char *filename)
+static const char *detect_fs(const char *filename, const char *fsoptions)
 {
 	enum filetype type;
 	struct driver_d *drv;
 	struct fs_driver_d *fdrv;
+	bool loop;
 
-	type = cdev_detect_type(filename);
+	parseopt_b(fsoptions, "loop", &loop);
+	if (loop)
+		type = file_name_detect_type(filename);
+	else
+		type = cdev_detect_type(filename);
 
 	if (type == filetype_unknown)
 		return NULL;
@@ -1245,7 +1252,13 @@ static const char *detect_fs(const char *filename)
 
 int fsdev_open_cdev(struct fs_device_d *fsdev)
 {
-	fsdev->cdev = cdev_open(fsdev->backingstore, O_RDWR);
+	bool loop;
+
+	parseopt_b(fsdev->options, "loop", &loop);
+	if (loop)
+		fsdev->cdev = cdev_create_from_file(fsdev->backingstore, O_RDWR);
+	else
+		fsdev->cdev = cdev_open(fsdev->backingstore, O_RDWR);
 	if (!fsdev->cdev)
 		return -EINVAL;
 
@@ -1292,7 +1305,7 @@ int mount(const char *device, const char *fsname, const char *_path,
 	}
 
 	if (!fsname)
-		fsname = detect_fs(device);
+		fsname = detect_fs(device, fsoptions);
 
 	if (!fsname)
 		return -ENOENT;
diff --git a/include/driver.h b/include/driver.h
index 086e44636b..daa9453a3b 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -473,6 +473,7 @@ struct cdev *lcdev_by_name(const char *filename);
 struct cdev *cdev_readlink(struct cdev *cdev);
 struct cdev *cdev_by_device_node(struct device_node *node);
 struct cdev *cdev_open(const char *name, unsigned long flags);
+struct cdev *cdev_create_from_file(const char *path, ulong flags);
 int cdev_do_open(struct cdev *, unsigned long flags);
 void cdev_close(struct cdev *cdev);
 int cdev_flush(struct cdev *cdev);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

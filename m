Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggv-00021v-8s
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:46 +0200
Message-Id: <20180403074851.5411-15-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/19] fs: devfs: Switch to dcache implementation
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/Kconfig |   1 -
 fs/devfs.c | 150 ++++++++++++++++++++++++++++++++++---------------------------
 2 files changed, 85 insertions(+), 66 deletions(-)

diff --git a/fs/Kconfig b/fs/Kconfig
index 9638e27dbd..e3460e4443 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -25,7 +25,6 @@ config FS_RAMFS
 config FS_DEVFS
 	bool
 	default y
-	depends on BROKEN
 	prompt "devfs support"
 
 config FS_TFTP
diff --git a/fs/devfs.c b/fs/devfs.c
index 2a7b1b3466..5d0bb2c674 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -33,6 +33,11 @@
 #include <linux/mtd/mtd-abi.h>
 #include <partition.h>
 
+struct devfs_inode {
+	struct inode inode;
+	struct cdev *cdev;
+};
+
 extern struct list_head cdev_list;
 
 static int devfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
@@ -110,14 +115,11 @@ static int devfs_memmap(struct device_d *_dev, FILE *f, void **map, int flags)
 
 static int devfs_open(struct device_d *_dev, FILE *f, const char *filename)
 {
-	struct cdev *cdev;
+	struct inode *inode = f->f_inode;
+	struct devfs_inode *node = container_of(inode, struct devfs_inode, inode);
+	struct cdev *cdev = node->cdev;
 	int ret;
 
-	cdev = cdev_by_name(filename + 1);
-
-	if (!cdev)
-		return -ENOENT;
-
 	f->size = cdev->flags & DEVFS_IS_CHARACTER_DEV ?
 			FILE_SIZE_STREAM : cdev->size;
 	f->priv = cdev;
@@ -180,71 +182,112 @@ static int devfs_truncate(struct device_d *dev, FILE *f, ulong size)
 	return 0;
 }
 
-static DIR* devfs_opendir(struct device_d *dev, const char *pathname)
+static struct inode *devfs_alloc_inode(struct super_block *sb)
 {
-	DIR *dir;
-
-	dir = xzalloc(sizeof(DIR));
+	struct devfs_inode *node;
 
-	if (!list_empty(&cdev_list))
-		dir->priv = list_first_entry(&cdev_list, struct cdev, list);
+	node = xzalloc(sizeof(*node));
+	if (!node)
+		return NULL;
 
-	return dir;
+	return &node->inode;
 }
 
-static struct dirent* devfs_readdir(struct device_d *_dev, DIR *dir)
+int devfs_iterate(struct file *file, struct dir_context *ctx)
 {
-	struct cdev *cdev = dir->priv;
+	struct cdev *cdev;
 
-	if (!cdev)
-		return NULL;
+	dir_emit_dots(file, ctx);
 
-	list_for_each_entry_from(cdev, &cdev_list, list) {
-		strcpy(dir->d.d_name, cdev->name);
-		dir->priv = list_entry(cdev->list.next, struct cdev, list);
-		return &dir->d;
+	list_for_each_entry(cdev, &cdev_list, list) {
+		dir_emit(ctx, cdev->name, strlen(cdev->name),
+				1 /* FIXME */, DT_REG);
 	}
-	return NULL;
+
+        return 0;
 }
 
-static int devfs_closedir(struct device_d *dev, DIR *dir)
+static const struct inode_operations devfs_file_inode_operations;
+static const struct file_operations devfs_dir_operations;
+static const struct inode_operations devfs_dir_inode_operations;
+static const struct file_operations devfs_file_operations;
+
+static struct inode *devfs_get_inode(struct super_block *sb, const struct inode *dir,
+                                     umode_t mode)
 {
-	free(dir);
-	return 0;
+	struct inode *inode = new_inode(sb);
+
+	if (!inode)
+		return NULL;
+
+	inode->i_ino = get_next_ino();
+	inode->i_mode = mode;
+
+	switch (mode & S_IFMT) {
+	default:
+		return NULL;
+	case S_IFREG:
+		inode->i_op = &devfs_file_inode_operations;
+		inode->i_fop = &devfs_file_operations;
+		break;
+	case S_IFDIR:
+		inode->i_op = &devfs_dir_inode_operations;
+		inode->i_fop = &devfs_dir_operations;
+		inc_nlink(inode);
+		break;
+	}
+
+	return inode;
 }
 
-static int devfs_stat(struct device_d *_dev, const char *filename, struct stat *s)
+static struct dentry *devfs_lookup(struct inode *dir, struct dentry *dentry,
+				   unsigned int flags)
 {
+	struct devfs_inode *dinode;
+	struct inode *inode;
 	struct cdev *cdev;
 
-	cdev = lcdev_by_name(filename + 1);
+	cdev = cdev_by_name(dentry->name);
 	if (!cdev)
-		return -ENOENT;
+		return ERR_PTR(-ENOENT);
 
-	s->st_mode = S_IFCHR;
-	s->st_size = cdev->size;
+	inode = devfs_get_inode(dir->i_sb, dir, S_IFREG | S_IRWXUGO);
+	if (!inode)
+		return ERR_PTR(-ENOMEM);
 
-	if (cdev->link)
-		s->st_mode |= S_IFLNK;
+	dinode = container_of(inode, struct devfs_inode, inode);
 
-	cdev = cdev_readlink(cdev);
+	inode->i_size = cdev->size;
+	dinode->cdev = cdev;
 
-	if (cdev->ops->write)
-		s->st_mode |= S_IWUSR;
-	if (cdev->ops->read)
-		s->st_mode |= S_IRUSR;
+	d_add(dentry, inode);
 
-	return 0;
+	return NULL;
 }
 
+static const struct file_operations devfs_dir_operations = {
+	.iterate = devfs_iterate,
+};
+
+static const struct inode_operations devfs_dir_inode_operations =
+{
+	.lookup = devfs_lookup,
+};
+
+static const struct super_operations devfs_ops = {
+	.alloc_inode = devfs_alloc_inode,
+};
+
 static int devfs_probe(struct device_d *dev)
 {
+	struct inode *inode;
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct super_block *sb = &fsdev->sb;
 
-	if (strcmp(fsdev->path, "/dev")) {
-		dev_err(dev, "devfs can only be mounted on /dev/\n");
-		return -EINVAL;
-	}
+	sb->s_op = &devfs_ops;
+
+	inode = devfs_get_inode(sb, NULL, S_IFDIR);
+	sb->s_root = d_make_root(inode);
 
 	return 0;
 }
@@ -253,24 +296,6 @@ static void devfs_delete(struct device_d *dev)
 {
 }
 
-static int devfs_readlink(struct device_d *dev, const char *pathname,
-			  char *buf, size_t bufsz)
-{
-	struct cdev *cdev;
-
-	cdev = cdev_by_name(pathname + 1);
-	if (!cdev)
-		return -ENOENT;
-
-	while (cdev->link)
-		cdev = cdev->link;
-
-	bufsz = min(bufsz, strlen(cdev->name));
-	memcpy(buf, cdev->name, bufsz);
-
-	return 0;
-}
-
 static struct fs_driver_d devfs_driver = {
 	.read      = devfs_read,
 	.write     = devfs_write,
@@ -279,15 +304,10 @@ static struct fs_driver_d devfs_driver = {
 	.close     = devfs_close,
 	.flush     = devfs_flush,
 	.ioctl     = devfs_ioctl,
-	.opendir   = devfs_opendir,
-	.readdir   = devfs_readdir,
 	.truncate  = devfs_truncate,
-	.closedir  = devfs_closedir,
-	.stat      = devfs_stat,
 	.erase     = devfs_erase,
 	.protect   = devfs_protect,
 	.memmap    = devfs_memmap,
-	.readlink  = devfs_readlink,
 	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
 		.probe  = devfs_probe,
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

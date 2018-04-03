Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Gh0-00024H-29
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:47 +0200
Message-Id: <20180403074851.5411-16-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/19] fs: ext4: Switch to dcache implementation
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ext4/Kconfig       |   1 -
 fs/ext4/ext_barebox.c | 280 ++++++++++++++++++++++++++++----------------------
 fs/ext4/ext_common.h  |   3 +
 3 files changed, 161 insertions(+), 123 deletions(-)

diff --git a/fs/ext4/Kconfig b/fs/ext4/Kconfig
index ad1bf58536..f36043d9a7 100644
--- a/fs/ext4/Kconfig
+++ b/fs/ext4/Kconfig
@@ -1,4 +1,3 @@
 config FS_EXT4
 	bool
-	depends on BROKEN
 	prompt "ext4 filesystem support"
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index e40278a5bd..8406b1d6a4 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -36,6 +36,7 @@ int ext4fs_devread(struct ext_filesystem *fs, int __sector, int byte_offset,
 	ssize_t size;
 	uint64_t sector = __sector;
 
+//	printf("%s: sec: %5d, ofs: %d len: %d\n", __func__, __sector, byte_offset, byte_len);
 	size = cdev_read(fs->cdev, buf, byte_len, sector * SECTOR_SIZE + byte_offset, 0);
 	if (size < 0) {
 		dev_err(fs->dev, "read error at sector %d: %s\n", __sector,
@@ -46,34 +47,17 @@ int ext4fs_devread(struct ext_filesystem *fs, int __sector, int byte_offset,
 	return 0;
 }
 
-static int ext_open(struct device_d *dev, FILE *file, const char *filename)
+static inline struct ext2fs_node *to_ext2_node(struct inode *inode)
 {
-	struct ext_filesystem *fs = dev->priv;
-	struct ext2fs_node *inode;
-	int ret;
-
-	ret = ext4fs_open(fs->data, filename, &inode);
-	if (ret)
-		return ret;
-
-	file->size = le32_to_cpu(inode->inode.size);
-	file->priv = inode;
-
-	return 0;
-}
-
-static int ext_close(struct device_d *dev, FILE *f)
-{
-	struct ext_filesystem *fs = dev->priv;
-
-	ext4fs_free_node(f->priv, &fs->data->diropen);
-
-	return 0;
+	return container_of(inode, struct ext2fs_node, i);
 }
 
 static int ext_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 {
-	return ext4fs_read_file(f->priv, f->pos, insize, buf);
+	struct inode *inode = f->f_inode;
+	struct ext2fs_node *node = to_ext2_node(inode);
+
+	return ext4fs_read_file(node, f->pos, insize, buf);
 }
 
 static loff_t ext_lseek(struct device_d *dev, FILE *f, loff_t pos)
@@ -83,143 +67,195 @@ static loff_t ext_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	return f->pos;
 }
 
-struct ext4fs_dir {
-	struct ext2fs_node *dirnode;
-	int fpos;
-	DIR dir;
-};
-
-static DIR *ext_opendir(struct device_d *dev, const char *pathname)
+struct inode *ext_alloc_inode(struct super_block *sb)
 {
-	struct ext_filesystem *fs = dev->priv;
-	struct ext4fs_dir *ext4_dir;
-	int type, ret;
-
-	ext4_dir = xzalloc(sizeof(*ext4_dir));
-
-	ret = ext4fs_find_file(pathname, &fs->data->diropen, &ext4_dir->dirnode,
-				  &type);
-	if (ret) {
-		free(ext4_dir);
-		return NULL;
-	}
+	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct ext_filesystem *fs = fsdev->dev.priv;
+	struct ext2fs_node *node;
 
-	if (type != FILETYPE_DIRECTORY)
+	node = xzalloc(sizeof(*node));
+	if (!node)
 		return NULL;
 
-	ext4_dir->dir.priv = ext4_dir;
+	node->data = fs->data;
 
-	ret = ext4fs_read_inode(ext4_dir->dirnode->data, ext4_dir->dirnode->ino,
-			&ext4_dir->dirnode->inode);
-	if (ret) {
-		ext4fs_free_node(ext4_dir->dirnode, &fs->data->diropen);
-		free(ext4_dir);
+	return &node->i;
+}
 
-		return NULL;
-	}
+static const struct super_operations ext_ops = {
+	.alloc_inode = ext_alloc_inode,
+};
 
-	return &ext4_dir->dir;
-}
+struct inode *ext_get_inode(struct super_block *sb, int ino);
 
-static struct dirent *ext_readdir(struct device_d *dev, DIR *dir)
+static int ext4fs_get_ino(struct ext2fs_node *dir, struct qstr *name, int *inum)
 {
-	struct ext4fs_dir *ext4_dir = dir->priv;
-	struct ext2_dirent dirent;
-	struct ext2fs_node *diro = ext4_dir->dirnode;
+	unsigned int fpos = 0;
 	int ret;
-	char *filename;
 
-	if (ext4_dir->fpos >= le32_to_cpu(diro->inode.size))
-		return NULL;
+	while (fpos < le32_to_cpu(dir->inode.size)) {
+		struct ext2_dirent dirent;
 
-	ret = ext4fs_read_file(diro, ext4_dir->fpos, sizeof(struct ext2_dirent),
-			(char *) &dirent);
-	if (ret < 0)
-		return NULL;
+		ret = ext4fs_read_file(dir, fpos, sizeof(dirent), (char *)&dirent);
+		if (ret < 1)
+			return -EINVAL;
 
-	if (dirent.namelen == 0)
-		return NULL;
+		if (dirent.namelen != 0) {
+			char filename[dirent.namelen];
+			int ino;
 
-	filename = xzalloc(dirent.namelen + 1);
+			ret = ext4fs_read_file(dir, fpos + sizeof(dirent),
+						  dirent.namelen, filename);
+			if (ret < 1)
+				return -EINVAL;
 
-	ret = ext4fs_read_file(diro, ext4_dir->fpos + sizeof(struct ext2_dirent),
-			dirent.namelen, filename);
-	if (ret < 0) {
-		free(filename);
-		return NULL;
+			ino = le32_to_cpu(dirent.inode);
+
+			if (name->len == dirent.namelen &&
+			    !strncmp(name->name, filename, name->len)) {
+				*inum = ino;
+				return 0;
+			}
+		}
+		fpos += le16_to_cpu(dirent.direntlen);
 	}
 
-	filename[dirent.namelen] = '\0';
+	*inum = 0;
 
-	ext4_dir->fpos += le16_to_cpu(dirent.direntlen);
+	return 0;
+}
 
-	strcpy(dir->d.d_name, filename);
+static struct dentry *ext_lookup(struct inode *dir, struct dentry *dentry,
+				 unsigned int flags)
+{
+	struct ext2fs_node *e2dir = to_ext2_node(dir);
+	int ret, ino;
+	struct inode *inode;
 
-	free(filename);
+	ret = ext4fs_get_ino(e2dir, &dentry->d_name, &ino);
+	if (ret)
+		return ERR_PTR(ret);
 
-	return &dir->d;
+	if (ino) {
+		inode = ext_get_inode(dir->i_sb, ino);
+
+		d_add(dentry, inode);
+	}
+
+	return NULL;
 }
 
-static int ext_closedir(struct device_d *dev, DIR *dir)
+static const struct inode_operations ext_inode_operations = {
+	.lookup = ext_lookup,
+};
+
+static int ext_iterate(struct file *file, struct dir_context *ctx)
 {
-	struct ext_filesystem *fs = dev->priv;
-	struct ext4fs_dir *ext4_dir = dir->priv;
+	struct dentry *dentry = file->f_path.dentry;
+	struct inode *dir = d_inode(dentry);
+	unsigned int fpos = 0;
+	int status, ret;
+	struct ext2fs_node *diro = to_ext2_node(dir);
+	void *buf;
 
-	ext4fs_free_node(ext4_dir->dirnode, &fs->data->diropen);
+	buf = malloc(dir->i_size);
+	if (!buf)
+		return -ENOMEM;
 
-	free(ext4_dir);
+	status = ext4fs_read_file(diro, 0, dir->i_size, buf);
+	if (status < 1) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	while (fpos < dir->i_size) {
+		const struct ext2_dirent *dirent = buf + fpos;
+		const char *filename = buf + fpos + sizeof(*dirent);
+
+		if (dirent->namelen != 0)
+			dir_emit(ctx, filename, dirent->namelen,
+				 le32_to_cpu(dirent->inode), DT_UNKNOWN);
+
+		fpos += le16_to_cpu(dirent->direntlen);
+	}
+	ret = 0;
+out:
+	free(buf);
+
+	return ret;
 
-	return 0;
 }
 
-static int ext_stat(struct device_d *dev, const char *filename, struct stat *s)
+const struct file_operations ext_dir_operations = {
+	.iterate = ext_iterate,
+};
+
+static const char *ext_get_link(struct dentry *dentry, struct inode *inode)
 {
-	struct ext_filesystem *fs = dev->priv;
-	struct ext2fs_node *node;
-	int status, ret;
+	struct ext2fs_node *node = to_ext2_node(inode);
+	int ret;
 
-	status = ext4fs_find_file(filename, &fs->data->diropen, &node, NULL);
-	if (status)
-		return -ENOENT;
+	if (inode->i_size < sizeof(node->inode.b.symlink))
+		return inode->i_link;
 
-	ret = ext4fs_read_inode(node->data, node->ino, &node->inode);
-	if (ret)
-		return ret;
+	BUG_ON(inode->i_link);
 
-	s->st_size = le32_to_cpu(node->inode.size);
-	s->st_mode = le16_to_cpu(node->inode.mode);
+	inode->i_link = zalloc(inode->i_size + 1);
 
-	ext4fs_free_node(node, &fs->data->diropen);
+	ret = ext4fs_read_file(node, 0, inode->i_size, inode->i_link);
+	if (ret == 0) {
+		free(inode->i_link);
+		inode->i_link = NULL;
+	}
 
-	return 0;
+	return inode->i_link;
 }
 
-static int ext_readlink(struct device_d *dev, const char *pathname,
-		char *buf, size_t bufsiz)
+static const struct inode_operations ext_symlink_inode_operations =
 {
-	struct ext_filesystem *fs = dev->priv;
-	struct ext2fs_node *node;
-	char *symlink;
-	int ret, len, type;
+	.get_link = ext_get_link,
+};
 
-	ret = ext4fs_find_file(pathname, &fs->data->diropen, &node, &type);
-	if (ret)
-		return ret;
+struct inode *ext_get_inode(struct super_block *sb, int ino)
+{
+	struct inode *inode;
+	struct ext2fs_node *node;
+	struct fs_device_d *fsdev = container_of(sb, struct fs_device_d, sb);
+	struct ext_filesystem *fs = fsdev->dev.priv;
+	int ret;
 
-	if (type != FILETYPE_SYMLINK)
-		return -EINVAL;
+	inode = new_inode(sb);
 
-	symlink = ext4fs_read_symlink(node);
-	if (!symlink)
-		return -ENOENT;
+	node = container_of(inode, struct ext2fs_node, i);
 
-	len = min(bufsiz, strlen(symlink));
+	ret = ext4fs_read_inode(fs->data, ino, &node->inode);
 
-	memcpy(buf, symlink, len);
+	inode->i_ino = ino;
+	inode->i_mode = le16_to_cpu(node->inode.mode);
+	inode->i_size = le32_to_cpu(node->inode.size);
 
-	free(symlink);
+	switch (inode->i_mode & S_IFMT) {
+	default:
+		return NULL;
+	case S_IFREG:
+		inode->i_op = &ext_inode_operations;
+		break;
+	case S_IFDIR:
+		inode->i_op = &ext_inode_operations;
+		inode->i_fop = &ext_dir_operations;
+		inc_nlink(inode);
+		break;
+	case S_IFLNK:
+		inode->i_op = &ext_symlink_inode_operations;
+		if (inode->i_size < sizeof(node->inode.b.symlink)) {
+			inode->i_link = zalloc(inode->i_size + 1);
+			strncpy(inode->i_link, node->inode.b.symlink,
+				inode->i_size);
+		}
+		break;
+	}
 
-	return 0;
+	return inode;
 }
 
 static int ext_probe(struct device_d *dev)
@@ -227,6 +263,8 @@ static int ext_probe(struct device_d *dev)
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	int ret;
 	struct ext_filesystem *fs;
+	struct super_block *sb = &fsdev->sb;
+	struct inode *inode;
 
 	fs = xzalloc(sizeof(*fs));
 
@@ -243,6 +281,11 @@ static int ext_probe(struct device_d *dev)
 	if (ret)
 		goto err_mount;
 
+	sb->s_op = &ext_ops;
+
+	inode = ext_get_inode(sb, 2);
+	sb->s_root = d_make_root(inode);
+
 	return 0;
 
 err_mount:
@@ -261,15 +304,8 @@ static void ext_remove(struct device_d *dev)
 }
 
 static struct fs_driver_d ext_driver = {
-	.open      = ext_open,
-	.close     = ext_close,
 	.read      = ext_read,
 	.lseek     = ext_lseek,
-	.opendir   = ext_opendir,
-	.readdir   = ext_readdir,
-	.closedir  = ext_closedir,
-	.stat      = ext_stat,
-	.readlink  = ext_readlink,
 	.type      = filetype_ext,
 	.flags     = 0,
 	.drv = {
diff --git a/fs/ext4/ext_common.h b/fs/ext4/ext_common.h
index e82b56b86a..c084cf9a32 100644
--- a/fs/ext4/ext_common.h
+++ b/fs/ext4/ext_common.h
@@ -30,6 +30,8 @@
 #ifndef __EXT_COMMON__
 #define __EXT_COMMON__
 
+#include <linux/fs.h>
+
 #define SECTOR_SIZE		0x200
 #define SECTOR_BITS		9
 
@@ -208,6 +210,7 @@ struct ext2_dirent {
 };
 
 struct ext2fs_node {
+	struct inode i;
 	struct ext2_data *data;
 	struct ext2_inode inode;
 	int ino;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

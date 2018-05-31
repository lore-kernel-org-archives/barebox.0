Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOP8O-0000Z2-DE
 for barebox@lists.infradead.org; Thu, 31 May 2018 15:05:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 31 May 2018 17:04:41 +0200
Message-Id: <20180531150442.16208-10-s.hauer@pengutronix.de>
In-Reply-To: <20180531150442.16208-1-s.hauer@pengutronix.de>
References: <20180531150442.16208-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] fs: squashfs: Switch to dentry cache implementation
To: Barebox List <barebox@lists.infradead.org>

While at it implement symlink support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/squashfs/Kconfig    |   1 -
 fs/squashfs/Makefile   |   2 +
 fs/squashfs/dir.c      | 232 +++++++++++++++++++++++++++++++++++++++++
 fs/squashfs/inode.c    |   9 ++
 fs/squashfs/namei.c    |  17 +--
 fs/squashfs/squashfs.c | 186 +++++----------------------------
 fs/squashfs/squashfs.h |   9 +-
 fs/squashfs/super.c    |   4 +-
 fs/squashfs/symlink.c  |  82 +++++++++++++++
 9 files changed, 365 insertions(+), 177 deletions(-)
 create mode 100644 fs/squashfs/dir.c
 create mode 100644 fs/squashfs/symlink.c

diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
index fce05c5730..19b8297af6 100644
--- a/fs/squashfs/Kconfig
+++ b/fs/squashfs/Kconfig
@@ -1,7 +1,6 @@
 menuconfig FS_SQUASHFS
 	bool
 	prompt "squashfs support"
-	select FS_LEGACY
 	help
 	  Saying Y here includes support for SquashFS 4.0 (a Compressed
 	  Read-Only File System).  Squashfs is a highly compressed read-only
diff --git a/fs/squashfs/Makefile b/fs/squashfs/Makefile
index 077114c49c..81fc7e570d 100644
--- a/fs/squashfs/Makefile
+++ b/fs/squashfs/Makefile
@@ -10,6 +10,8 @@ obj-y	+= id.o
 obj-y	+= inode.o
 obj-y	+= namei.o
 obj-y	+= super.o
+obj-y	+= symlink.o
+obj-y	+= dir.o
 obj-$(CONFIG_SQUASHFS_XZ) += xz_wrapper.o
 obj-$(CONFIG_SQUASHFS_LZO) += lzo_wrapper.o
 obj-$(CONFIG_SQUASHFS_LZ4) += lz4_wrapper.o
diff --git a/fs/squashfs/dir.c b/fs/squashfs/dir.c
new file mode 100644
index 0000000000..6275857136
--- /dev/null
+++ b/fs/squashfs/dir.c
@@ -0,0 +1,232 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
+ *
+ * dir.c
+ */
+
+/*
+ * This file implements code to read directories from disk.
+ *
+ * See namei.c for a description of directory organisation on disk.
+ */
+
+#include <linux/fs.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs_fs_i.h"
+#include "squashfs.h"
+
+static const unsigned char squashfs_filetype_table[] = {
+	DT_UNKNOWN, DT_DIR, DT_REG, DT_LNK, DT_BLK, DT_CHR, DT_FIFO, DT_SOCK
+};
+
+/*
+ * Lookup offset (f_pos) in the directory index, returning the
+ * metadata block containing it.
+ *
+ * If we get an error reading the index then return the part of the index
+ * (if any) we have managed to read - the index isn't essential, just
+ * quicker.
+ */
+static int get_dir_index_using_offset(struct super_block *sb,
+	u64 *next_block, int *next_offset, u64 index_start, int index_offset,
+	int i_count, u64 f_pos)
+{
+	struct squashfs_sb_info *msblk = sb->s_fs_info;
+	int err, i, index, length = 0;
+	unsigned int size;
+	struct squashfs_dir_index dir_index;
+
+	TRACE("Entered get_dir_index_using_offset, i_count %d, f_pos %lld\n",
+					i_count, f_pos);
+
+	/*
+	 * Translate from external f_pos to the internal f_pos.  This
+	 * is offset by 3 because we invent "." and ".." entries which are
+	 * not actually stored in the directory.
+	 */
+	if (f_pos <= 3)
+		return f_pos;
+	f_pos -= 3;
+
+	for (i = 0; i < i_count; i++) {
+		err = squashfs_read_metadata(sb, &dir_index, &index_start,
+				&index_offset, sizeof(dir_index));
+		if (err < 0)
+			break;
+
+		index = le32_to_cpu(dir_index.index);
+		if (index > f_pos)
+			/*
+			 * Found the index we're looking for.
+			 */
+			break;
+
+		size = le32_to_cpu(dir_index.size) + 1;
+
+		/* size should never be larger than SQUASHFS_NAME_LEN */
+		if (size > SQUASHFS_NAME_LEN)
+			break;
+
+		err = squashfs_read_metadata(sb, NULL, &index_start,
+				&index_offset, size);
+		if (err < 0)
+			break;
+
+		length = index;
+		*next_block = le32_to_cpu(dir_index.start_block) +
+					msblk->directory_table;
+	}
+
+	*next_offset = (length + *next_offset) % SQUASHFS_METADATA_SIZE;
+
+	/*
+	 * Translate back from internal f_pos to external f_pos.
+	 */
+	return length + 3;
+}
+
+
+static int squashfs_readdir(struct file *file, struct dir_context *ctx)
+{
+	struct dentry *dentry = file->f_path.dentry;
+	struct inode *inode = d_inode(dentry);
+	struct squashfs_sb_info *msblk = inode->i_sb->s_fs_info;
+	u64 block = squashfs_i(inode)->start + msblk->directory_table;
+	int offset = squashfs_i(inode)->offset, length, err;
+	unsigned int inode_number, dir_count, size, type;
+	struct squashfs_dir_header dirh;
+	struct squashfs_dir_entry *dire;
+
+	TRACE("Entered squashfs_readdir [%llx:%x]\n", block, offset);
+
+	dire = kmalloc(sizeof(*dire) + SQUASHFS_NAME_LEN + 1, GFP_KERNEL);
+	if (dire == NULL) {
+		ERROR("Failed to allocate squashfs_dir_entry\n");
+		goto finish;
+	}
+
+	/*
+	 * Return "." and  ".." entries as the first two filenames in the
+	 * directory.  To maximise compression these two entries are not
+	 * stored in the directory, and so we invent them here.
+	 *
+	 * It also means that the external f_pos is offset by 3 from the
+	 * on-disk directory f_pos.
+	 */
+	while (ctx->pos < 3) {
+		char *name;
+		int i_ino;
+
+		if (ctx->pos == 0) {
+			name = ".";
+			size = 1;
+			i_ino = inode->i_ino;
+		} else {
+			name = "..";
+			size = 2;
+			i_ino = squashfs_i(inode)->parent;
+		}
+
+		if (!dir_emit(ctx, name, size, i_ino,
+				squashfs_filetype_table[1]))
+			goto finish;
+
+		ctx->pos += size;
+	}
+
+	length = get_dir_index_using_offset(inode->i_sb, &block, &offset,
+				squashfs_i(inode)->dir_idx_start,
+				squashfs_i(inode)->dir_idx_offset,
+				squashfs_i(inode)->dir_idx_cnt,
+				ctx->pos);
+
+	while (length < i_size_read(inode)) {
+		/*
+		 * Read directory header
+		 */
+		err = squashfs_read_metadata(inode->i_sb, &dirh, &block,
+					&offset, sizeof(dirh));
+		if (err < 0)
+			goto failed_read;
+
+		length += sizeof(dirh);
+
+		dir_count = le32_to_cpu(dirh.count) + 1;
+
+		if (dir_count > SQUASHFS_DIR_COUNT)
+			goto failed_read;
+
+		while (dir_count--) {
+			/*
+			 * Read directory entry.
+			 */
+			err = squashfs_read_metadata(inode->i_sb, dire, &block,
+					&offset, sizeof(*dire));
+			if (err < 0)
+				goto failed_read;
+
+			size = le16_to_cpu(dire->size) + 1;
+
+			/* size should never be larger than SQUASHFS_NAME_LEN */
+			if (size > SQUASHFS_NAME_LEN)
+				goto failed_read;
+
+			err = squashfs_read_metadata(inode->i_sb, dire->name,
+					&block, &offset, size);
+			if (err < 0)
+				goto failed_read;
+
+			length += sizeof(*dire) + size;
+
+			if (ctx->pos >= length)
+				continue;
+
+			dire->name[size] = '\0';
+			inode_number = le32_to_cpu(dirh.inode_number) +
+				((short) le16_to_cpu(dire->inode_number));
+			type = le16_to_cpu(dire->type);
+
+			if (type > SQUASHFS_MAX_DIR_TYPE)
+				goto failed_read;
+
+			if (!dir_emit(ctx, dire->name, size,
+					inode_number,
+					squashfs_filetype_table[type]))
+				goto finish;
+
+			ctx->pos = length;
+		}
+	}
+
+finish:
+	kfree(dire);
+	return 0;
+
+failed_read:
+	ERROR("Unable to read directory block [%llx:%x]\n", block, offset);
+	kfree(dire);
+	return 0;
+}
+
+const struct file_operations squashfs_dir_ops = {
+	.iterate = squashfs_readdir,
+};
diff --git a/fs/squashfs/inode.c b/fs/squashfs/inode.c
index 923c397fa8..470536e589 100644
--- a/fs/squashfs/inode.c
+++ b/fs/squashfs/inode.c
@@ -172,6 +172,7 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 		}
 
 		inode->i_size = le32_to_cpu(sqsh_ino->file_size);
+		inode->i_op = &squashfs_inode_ops;
 		inode->i_mode |= S_IFREG;
 		inode->i_blocks = ((inode->i_size - 1) >> 9) + 1;
 		squashfs_i(inode)->fragment_block = frag_blk;
@@ -214,6 +215,7 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 
 		xattr_id = le32_to_cpu(sqsh_ino->xattr);
 		inode->i_size = le64_to_cpu(sqsh_ino->file_size);
+		inode->i_op = &squashfs_inode_ops;
 		inode->i_mode |= S_IFREG;
 		inode->i_blocks = (inode->i_size -
 				le64_to_cpu(sqsh_ino->sparse) + 511) >> 9;
@@ -240,6 +242,8 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 			goto failed_read;
 
 		inode->i_size = le16_to_cpu(sqsh_ino->file_size);
+		inode->i_op = &squashfs_dir_inode_ops;
+		inode->i_fop = &squashfs_dir_ops;
 		inode->i_mode |= S_IFDIR;
 		squashfs_i(inode)->start = le32_to_cpu(sqsh_ino->start_block);
 		squashfs_i(inode)->offset = le16_to_cpu(sqsh_ino->offset);
@@ -263,6 +267,8 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 
 		xattr_id = le32_to_cpu(sqsh_ino->xattr);
 		inode->i_size = le32_to_cpu(sqsh_ino->file_size);
+		inode->i_op = &squashfs_dir_inode_ops;
+		inode->i_fop = &squashfs_dir_ops;
 		inode->i_mode |= S_IFDIR;
 		squashfs_i(inode)->start = le32_to_cpu(sqsh_ino->start_block);
 		squashfs_i(inode)->offset = le16_to_cpu(sqsh_ino->offset);
@@ -288,6 +294,7 @@ int squashfs_read_inode(struct inode *inode, long long ino)
 			goto failed_read;
 
 		inode->i_size = le32_to_cpu(sqsh_ino->symlink_size);
+		inode->i_op = &squashfs_symlink_inode_ops;
 		inode->i_mode |= S_IFLNK;
 		squashfs_i(inode)->start = block;
 		squashfs_i(inode)->offset = offset;
@@ -400,3 +407,5 @@ failed_read:
 	ERROR("Unable to read inode 0x%llx\n", ino);
 	return err;
 }
+
+const struct inode_operations squashfs_inode_ops;
diff --git a/fs/squashfs/namei.c b/fs/squashfs/namei.c
index 482fda5a11..baf1e8b646 100644
--- a/fs/squashfs/namei.c
+++ b/fs/squashfs/namei.c
@@ -48,11 +48,11 @@
  * and doesn't require much extra storage on disk.
  */
 
+#include <common.h>
 #include <linux/fs.h>
 #include <malloc.h>
 #include <linux/string.h>
 #include <linux/dcache.h>
-#include <common.h>
 
 #include "squashfs_fs.h"
 #include "squashfs_fs_sb.h"
@@ -130,11 +130,11 @@ out:
 }
 
 
-struct inode *squashfs_lookup(struct inode *dir, const char *cur_name,
-				 unsigned int flags)
+static struct dentry *squashfs_lookup(struct inode *dir, struct dentry *dentry,
+				     unsigned int flags)
 {
-	const unsigned char *name = cur_name;
-	int len = strlen(cur_name);
+	const unsigned char *name = dentry->d_name.name;
+	int len = dentry->d_name.len;
 	struct inode *inode = NULL;
 	struct squashfs_sb_info *msblk = dir->i_sb->s_fs_info;
 	struct squashfs_dir_header dirh;
@@ -223,7 +223,8 @@ struct inode *squashfs_lookup(struct inode *dir, const char *cur_name,
 
 exit_lookup:
 	kfree(dire);
-	return inode;
+	d_add(dentry, inode);
+	return NULL;
 
 data_error:
 	err = -EIO;
@@ -344,3 +345,7 @@ failed:
 	kfree(dire);
 	return 1;
 }
+
+const struct inode_operations squashfs_dir_inode_ops = {
+	.lookup = squashfs_lookup,
+};
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index cf7431ee04..d9049b7523 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -39,81 +39,7 @@ char *squashfs_devread(struct squashfs_sb_info *fs, int byte_offset,
 	return buf;
 }
 
-static struct inode *duplicate_inode(struct inode *inode)
-{
-	struct squashfs_inode_info *ei;
-	ei = malloc(sizeof(struct squashfs_inode_info));
-	if (ei == NULL) {
-		ERROR("Error allocating memory for inode\n");
-		return NULL;
-	}
-	memcpy(ei, squashfs_i(inode),
-		sizeof(struct squashfs_inode_info));
-
-	return &ei->vfs_inode;
-}
-
-static struct inode *squashfs_findfile(struct super_block *sb,
-		const char *filename, char *buf)
-{
-	char *next;
-	char fpath[128];
-	char *name = fpath;
-	struct inode *inode;
-	struct inode *t_inode = NULL;
-
-	strcpy(fpath, filename);
-
-	/* Remove all leading slashes */
-	while (*name == '/')
-		name++;
-
-	inode = duplicate_inode(sb->s_root->d_inode);
-
-	/*
-	 * Handle root-directory ('/')
-	 */
-	if (!name || *name == '\0')
-		return inode;
-
-	for (;;) {
-		/* Extract the actual part from the pathname.  */
-		next = strchr(name, '/');
-		if (next) {
-			/* Remove all leading slashes.  */
-			while (*next == '/')
-				*(next++) = '\0';
-		}
-
-		t_inode = squashfs_lookup(inode, name, 0);
-		if (t_inode == NULL)
-			break;
-
-		/*
-		 * Check if directory with this name exists
-		 */
-
-		/* Found the node!  */
-		if (!next || *next == '\0') {
-			if (buf != NULL)
-				sprintf(buf, "%s", name);
-
-			free(squashfs_i(inode));
-			return t_inode;
-		}
-
-		name = next;
-
-		free(squashfs_i(inode));
-		inode = t_inode;
-	}
-
-	free(squashfs_i(inode));
-	return NULL;
-}
-
-static void squashfs_set_rootarg(struct squashfs_priv *priv,
-					struct fs_device_d *fsdev)
+static void squashfs_set_rootarg(struct fs_device_d *fsdev)
 {
 	struct ubi_volume_desc *ubi_vol;
 	struct ubi_volume_info vi = {};
@@ -141,16 +67,27 @@ static void squashfs_set_rootarg(struct squashfs_priv *priv,
 	free(str);
 }
 
+static struct inode *squashfs_alloc_inode(struct super_block *sb)
+{
+	struct squashfs_inode_info *node;
+
+	node = xzalloc(sizeof(*node));
+
+	return &node->vfs_inode;
+}
+
+static const struct super_operations squashfs_super_ops = {
+        .alloc_inode = squashfs_alloc_inode,
+};
+
 static int squashfs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev;
-	struct squashfs_priv *priv;
 	int ret;
+	struct super_block *sb;
 
 	fsdev = dev_to_fs_device(dev);
-
-	priv = xzalloc(sizeof(struct squashfs_priv));
-	dev->priv = priv;
+	sb = &fsdev->sb;
 
 	ret = fsdev_open_cdev(fsdev);
 	if (ret)
@@ -163,35 +100,34 @@ static int squashfs_probe(struct device_d *dev)
 		goto err_out;
 	}
 
-	squashfs_set_rootarg(priv, fsdev);
+	squashfs_set_rootarg(fsdev);
+
+	sb->s_op = &squashfs_super_ops;
 
 	return 0;
 
 err_out:
-	free(priv);
 
 	return ret;
 }
 
 static void squashfs_remove(struct device_d *dev)
 {
-	struct squashfs_priv *priv = dev->priv;
+	struct fs_device_d *fsdev;
+	struct super_block *sb;
+
+	fsdev = dev_to_fs_device(dev);
+	sb = &fsdev->sb;
 
-	squashfs_put_super(&priv->sb);
-	free(priv);
+	squashfs_put_super(sb);
 }
 
 static int squashfs_open(struct device_d *dev, FILE *file, const char *filename)
 {
-	struct squashfs_priv *priv = dev->priv;
-	struct inode *inode;
+	struct inode *inode = file->f_inode;
 	struct squashfs_page *page;
 	int i;
 
-	inode = squashfs_findfile(&priv->sb, filename, NULL);
-	if (!inode)
-		return -ENOENT;
-
 	page = malloc(sizeof(struct squashfs_page));
 	page->buf = calloc(32, sizeof(*page->buf));
 	for (i = 0; i < 32; i++) {
@@ -229,7 +165,6 @@ static int squashfs_close(struct device_d *dev, FILE *f)
 		free(page->buf[i]);
 
 	free(page->buf);
-	free(squashfs_i(page->real_page.inode));
 	free(page);
 
 	return 0;
@@ -314,80 +249,11 @@ struct squashfs_dir {
 	char root_d_name[256];
 };
 
-static DIR *squashfs_opendir(struct device_d *dev, const char *pathname)
-{
-	struct squashfs_priv *priv = dev->priv;
-	struct inode *inode;
-	struct squashfs_dir *dir;
-	char buf[256];
-
-	inode = squashfs_findfile(&priv->sb, pathname, buf);
-	if (!inode)
-		return NULL;
-
-	dir = xzalloc(sizeof(struct squashfs_dir));
-	dir->dir.priv = dir;
-
-	dir->root_dentry.d_inode = inode;
-
-	sprintf(dir->d_name, "%s", buf);
-	sprintf(dir->root_d_name, "%s", buf);
-
-	return &dir->dir;
-}
-
-static struct dirent *squashfs_readdir(struct device_d *dev, DIR *_dir)
-{
-	struct squashfs_dir *dir = _dir->priv;
-	struct dentry *root_dentry = &dir->root_dentry;
-
-	if (squashfs_lookup_next(root_dentry->d_inode,
-				 dir->root_d_name,
-				 dir->d_name))
-		return NULL;
-
-	strcpy(_dir->d.d_name, dir->d_name);
-
-	return &_dir->d;
-}
-
-static int squashfs_closedir(struct device_d *dev, DIR *_dir)
-{
-	struct squashfs_dir *dir = _dir->priv;
-
-	free(squashfs_i(dir->root_dentry.d_inode));
-	free(dir);
-
-	return 0;
-}
-
-static int squashfs_stat(struct device_d *dev, const char *filename,
-		struct stat *s)
-{
-	struct squashfs_priv *priv = dev->priv;
-	struct inode *inode;
-
-	inode = squashfs_findfile(&priv->sb, filename, NULL);
-	if (!inode)
-		return -ENOENT;
-
-	s->st_size = inode->i_size;
-	s->st_mode = inode->i_mode;
-
-	free(squashfs_i(inode));
-
-	return 0;
-}
-
 static struct fs_driver_d squashfs_driver = {
 	.open		= squashfs_open,
 	.close		= squashfs_close,
 	.read		= squashfs_read,
 	.lseek		= squashfs_lseek,
-	.opendir	= squashfs_opendir,
-	.readdir	= squashfs_readdir,
-	.closedir	= squashfs_closedir,
-	.stat		= squashfs_stat,
 	.type		= filetype_squashfs,
 	.drv = {
 		.probe = squashfs_probe,
diff --git a/fs/squashfs/squashfs.h b/fs/squashfs/squashfs.h
index 9ad6534e46..31c9bc454e 100644
--- a/fs/squashfs/squashfs.h
+++ b/fs/squashfs/squashfs.h
@@ -25,10 +25,6 @@
 #define DEBUG
 #define pgoff_t		unsigned long
 
-struct squashfs_priv {
-	struct super_block sb;
-};
-
 /*
  * We "simulate" the Linux page struct much simpler here
  */
@@ -132,10 +128,7 @@ extern const struct address_space_operations squashfs_aops;
 extern const struct inode_operations squashfs_inode_ops;
 
 /* namei.c */
-extern struct inode *squashfs_lookup(struct inode *dir, const char *cur_name,
-				 unsigned int flags);
-extern int squashfs_lookup_next(struct inode *dir,
-		char *root_name, char *cur_name);
+extern const struct inode_operations squashfs_dir_inode_ops;
 
 /* symlink.c */
 extern const struct address_space_operations squashfs_symlink_aops;
diff --git a/fs/squashfs/super.c b/fs/squashfs/super.c
index 34e92e3c1d..e2b7b8d5a1 100644
--- a/fs/squashfs/super.c
+++ b/fs/squashfs/super.c
@@ -324,11 +324,11 @@ failed_mount:
 
 int squashfs_mount(struct fs_device_d *fsdev, int silent)
 {
-	struct squashfs_priv *priv = fsdev->dev.priv;
+	struct super_block *sb = &fsdev->sb;
 
 	dev_dbg(&fsdev->dev, "squashfs_mount\n");
 
-	if (squashfs_fill_super(&priv->sb, fsdev, silent))
+	if (squashfs_fill_super(sb, fsdev, silent))
 		return -EINVAL;
 
 	return 0;
diff --git a/fs/squashfs/symlink.c b/fs/squashfs/symlink.c
new file mode 100644
index 0000000000..40b9bdcc8b
--- /dev/null
+++ b/fs/squashfs/symlink.c
@@ -0,0 +1,82 @@
+/*
+ * Squashfs - a compressed read only filesystem for Linux
+ *
+ * Copyright (c) 2002, 2003, 2004, 2005, 2006, 2007, 2008
+ * Phillip Lougher <phillip@squashfs.org.uk>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2,
+ * or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
+ *
+ * symlink.c
+ */
+
+/*
+ * This file implements code to handle symbolic links.
+ *
+ * The data contents of symbolic links are stored inside the symbolic
+ * link inode within the inode table.  This allows the normally small symbolic
+ * link to be compressed as part of the inode table, achieving much greater
+ * compression than if the symbolic link was compressed individually.
+ */
+
+#include <malloc.h>
+#include <linux/fs.h>
+#include <linux/stat.h>
+#include <linux/pagemap.h>
+
+#include "squashfs_fs.h"
+#include "squashfs_fs_sb.h"
+#include "squashfs_fs_i.h"
+#include "squashfs.h"
+
+static const char *squashfs_get_link(struct dentry *dentry, struct inode *inode)
+{
+	struct super_block *sb = inode->i_sb;
+	int index = 0;
+	u64 block = squashfs_i(inode)->start;
+	int offset = squashfs_i(inode)->offset;
+	int length = min_t(int, i_size_read(inode) - index, PAGE_SIZE);
+	int bytes;
+	unsigned char *symlink;
+
+	TRACE("Entered squashfs_symlink_readpage, start block "
+			"%llx, offset %x\n", block, offset);
+
+	symlink = malloc(length + 1);
+	if (!symlink)
+		return NULL;
+
+	symlink[length] = 0;
+
+	bytes = squashfs_read_metadata(sb, symlink, &block, &offset, length);
+	if (bytes < 0) {
+		ERROR("Unable to read symlink [%llx:%x]\n",
+			squashfs_i(inode)->start,
+			squashfs_i(inode)->offset);
+		goto error_out;
+	}
+
+	inode->i_link = symlink;
+
+	return inode->i_link;
+
+error_out:
+	free(symlink);
+
+	return NULL;
+}
+
+const struct inode_operations squashfs_symlink_inode_ops = {
+	.get_link = squashfs_get_link,
+};
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

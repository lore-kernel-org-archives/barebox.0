Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfaRq-0004t5-9f
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 18:08:59 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Dec 2012 18:08:21 +0000
Message-Id: <1354558114-28799-6-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
References: <1354558114-28799-1-git-send-email-renaud.barbier@ge.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1095612561464708517=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/18] UBIFS: file operations
To: barebox@lists.infradead.org

--===============1095612561464708517==
Content-Type: text/plain

This file defines all the files/directories operations.
It also initializes the driver.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 fs/ubifs/ubifs.c |  942 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 942 insertions(+), 0 deletions(-)
 create mode 100644 fs/ubifs/ubifs.c

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
new file mode 100644
index 0000000..bd9ac84
--- /dev/null
+++ b/fs/ubifs/ubifs.c
@@ -0,0 +1,942 @@
+/*
+ * This file is part of UBIFS.
+ *
+ * Copyright (C) 2006-2008 Nokia Corporation.
+ *
+ * (C) Copyright 2008-2010
+ * Stefan Roese, DENX Software Engineering, sr@denx.de.
+ *
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License version 2 as published by
+ * the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program; if not, write to the Free Software Foundation, Inc., 51
+ * Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
+ *
+ * Authors: Artem Bityutskiy (���������������� ����������)
+ *          Adrian Hunter
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <fs.h>
+#include <lzo.h>
+#include <errno.h>
+#include <xfuncs.h>
+/*#include <zlib.h>*/
+#include <asm/byteorder.h>
+#include <linux/types.h>
+#include <linux/stat.h>
+
+#include "ubifs.h"
+
+static int do_readpage(struct ubifs_info *c, struct inode *inode,
+			struct page *page, int last_block_size);
+
+static int ubifs_probe(struct device_d *dev);
+static void ubifs_remove(struct device_d *dev);
+
+/* compress.c */
+
+/*
+ * We need a wrapper for zunzip() because the parameters are
+ * incompatible with the lzo decompressor.
+ */
+/*
+static int gzip_decompress(const unsigned char *in, size_t in_len,
+			   unsigned char *out, size_t *out_len)
+{
+	unsigned long len = in_len;
+	return zunzip(out, *out_len, (unsigned char *)in, &len, 0, 0);
+}
+*/
+
+/* Fake description object for the "none" compressor */
+static struct ubifs_compressor none_compr = {
+	.compr_type = UBIFS_COMPR_NONE,
+	.name = "no compression",
+	.capi_name = "",
+	.decompress = NULL,
+};
+
+static struct ubifs_compressor lzo_compr = {
+	.compr_type = UBIFS_COMPR_LZO,
+	.name = "LZO",
+	.capi_name = "lzo",
+	.decompress = lzo1x_decompress_safe,
+};
+
+/*
+static struct ubifs_compressor zlib_compr = {
+	.compr_type = UBIFS_COMPR_ZLIB,
+	.name = "zlib",
+	.capi_name = "deflate",
+	.decompress = gzip_decompress,
+};
+*/
+
+/* All UBIFS compressors */
+struct ubifs_compressor *ubifs_compressors[UBIFS_COMPR_TYPES_CNT];
+
+/**
+ * ubifs_decompress - decompress data.
+ * @in_buf: data to decompress
+ * @in_len: length of the data to decompress
+ * @out_buf: output buffer where decompressed data should
+ * @out_len: output length is returned here
+ * @compr_type: type of compression
+ *
+ * This function decompresses data from buffer @in_buf into buffer @out_buf.
+ * The length of the uncompressed data is returned in @out_len. This functions
+ * returns %0 on success or a negative error code on failure.
+ */
+int ubifs_decompress(const void *in_buf, int in_len, void *out_buf,
+		     int *out_len, int compr_type)
+{
+	int err;
+	struct ubifs_compressor *compr;
+
+	if (unlikely(compr_type < 0 || compr_type >= UBIFS_COMPR_TYPES_CNT)) {
+		ubifs_err("invalid compression type %d", compr_type);
+		return -EINVAL;
+	}
+
+	compr = ubifs_compressors[compr_type];
+
+	if (unlikely(!compr->capi_name)) {
+		ubifs_err("%s compression is not compiled in", compr->name);
+		return -EINVAL;
+	}
+
+	if (compr_type == UBIFS_COMPR_NONE) {
+		memcpy(out_buf, in_buf, in_len);
+		*out_len = in_len;
+		return 0;
+	}
+
+	err = compr->decompress(in_buf, in_len, out_buf, (size_t *)out_len);
+	if (err)
+		ubifs_err("cannot decompress %d bytes, compressor %s, "
+			  "error %d", in_len, compr->name, err);
+
+	return err;
+}
+
+/**
+ * compr_init - initialize a compressor.
+ * @compr: compressor description object
+ *
+ * This function initializes the requested compressor and returns zero in case
+ * of success or a negative error code in case of failure.
+ */
+static int __init compr_init(struct ubifs_compressor *compr)
+{
+	ubifs_compressors[compr->compr_type] = compr;
+
+	return 0;
+}
+
+/**
+ * ubifs_compressors_init - initialize UBIFS compressors.
+ *
+ * This function initializes the compressor which were compiled in. Returns
+ * zero in case of success and a negative error code in case of failure.
+ */
+int __init ubifs_compressors_init(void)
+{
+	int err;
+
+	err = compr_init(&lzo_compr);
+	if (err)
+		return err;
+
+/*	err = compr_init(&zlib_compr);
+	if (err)
+		return err;
+		*/
+
+	err = compr_init(&none_compr);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+/*
+ * ubifsls...
+ */
+static int filldir(struct ubifs_info *c, const char *name, int namlen,
+		   u64 ino, unsigned int d_type)
+{
+	struct inode *inode;
+
+	inode = ubifs_iget(c->vfs_sb, ino);
+	if (IS_ERR(inode)) {
+		printf("%s: Error in ubifs_iget(), ino=%lld ret=%p!\n",
+		       __func__, ino, inode);
+		return -1;
+	}
+	/*ctime_r((time_t *)&inode->i_mtime, filetime);
+	printf("%9lld  %24.24s  ", inode->i_size, filetime); */
+	ubifs_iput(inode);
+
+
+	return 0;
+}
+
+
+
+static int ubifs_doreaddir(struct file *file, struct dirent *dirent)
+{
+	int err, over = 0;
+	struct qstr nm;
+	union ubifs_key key;
+	struct ubifs_dent_node *dent;
+
+	struct inode *dir = file->f_path.dentry->d_inode;
+
+	struct ubifs_info *c = dir->i_sb->s_fs_info;
+
+	dbg_gen("dir ino %lu, f_pos %#llx", dir->i_ino, file->f_pos);
+
+	memset(dirent->d_name, 0, sizeof(dirent->d_name));
+
+	if (file->f_pos > UBIFS_S_KEY_HASH_MASK || file->f_pos == 2) {
+		/*
+		 * The directory was seek'ed to a senseless position or there
+		 * are no more entries.
+		 */
+		return 0;
+	}
+
+
+	if (file->f_pos == 1) {
+		/* Find the first entry in TNC and save it */
+		lowest_dent_key(c, &key, dir->i_ino);
+		nm.name = NULL;
+		dent = ubifs_tnc_next_ent(c, &key, &nm);
+		if (IS_ERR(dent)) {
+			err = PTR_ERR(dent);
+			goto out;
+		}
+
+		file->f_pos = key_hash_flash(c, &dent->key);
+		file->private_data = dent;
+	}
+
+	dent = file->private_data;
+	if (!dent) {
+		/*
+		 * The directory was seek'ed to and is now readdir'ed.
+		 * Find the entry corresponding to @file->f_pos or the
+		 * closest one.
+		 */
+		dent_key_init_hash(c, &key, dir->i_ino, file->f_pos);
+		nm.name = NULL;
+		dent = ubifs_tnc_next_ent(c, &key, &nm);
+		if (IS_ERR(dent)) {
+			err = PTR_ERR(dent);
+			goto out;
+		}
+		file->f_pos = key_hash_flash(c, &dent->key);
+		file->private_data = dent;
+	}
+
+	while (1) {
+		dbg_gen("feed '%s', ino %llu, new f_pos %#x",
+			dent->name, (unsigned long long)le64_to_cpu(dent->inum),
+			 key_hash_flash(c, &dent->key));
+		ubifs_assert(le64_to_cpu(dent->ch.sqnum) > ubifs_inode(dir)->creat_sqnum);
+
+		nm.len = le16_to_cpu(dent->nlen);
+		/* Need to remove this */
+		over = filldir(c, (char *)dent->name, nm.len,
+			       le64_to_cpu(dent->inum), dent->type);
+		if (over) {
+			return 0;
+		} else {
+			memcpy(dirent, dent->name, strlen(dent->name));
+
+			/* Switch to the next entry */
+			key_read(c, &dent->key, &key);
+			nm.name = (char *)dent->name;
+			dent = ubifs_tnc_next_ent(c, &key, &nm);
+			if (IS_ERR(dent)) {
+				err = PTR_ERR(dent);
+				goto out;
+			}
+
+			kfree(file->private_data);
+			file->f_pos = key_hash_flash(c, &dent->key);
+			file->private_data = dent;
+			cond_resched();
+			return 1;
+		}
+	}
+
+out:
+	if (err != -ENOENT) {
+		ubifs_err("cannot find next direntry, error %d", err);
+		return 0;
+	}
+
+	kfree(file->private_data);
+	file->private_data = NULL;
+	file->f_pos = 2;
+	return 1;
+}
+
+static struct dirent *ubifs_readdir(struct device_d *dev, DIR *dir)
+{
+	struct ubifs_priv *priv = (struct ubifs_priv *)dev->priv;
+	struct file *file;
+	int ret;
+
+	file = priv->file;
+	ret = ubifs_doreaddir(file, &dir->d);
+
+	if (ret)
+		return &dir->d;
+	else
+		return NULL;
+
+
+}
+
+static int ubifs_finddir(struct super_block *sb, char *dirname,
+			 unsigned long root_inum, unsigned long *inum)
+{
+	int err;
+	struct qstr nm;
+	union ubifs_key key;
+	struct ubifs_dent_node *dent;
+	struct ubifs_info *c;
+	struct file *file;
+	struct dentry *dentry;
+	struct inode *dir;
+
+	file = kzalloc(sizeof(struct file), 0);
+	dentry = kzalloc(sizeof(struct dentry), 0);
+	dir = kzalloc(sizeof(struct inode), 0);
+	if (!file || !dentry || !dir) {
+		printf("%s: Error, no memory for malloc!\n", __func__);
+		err = -ENOMEM;
+		goto out;
+	}
+
+	dir->i_sb = sb;
+	file->f_path.dentry = dentry;
+	file->f_path.dentry->d_parent = dentry;
+	file->f_path.dentry->d_inode = dir;
+	file->f_path.dentry->d_inode->i_ino = root_inum;
+	c = sb->s_fs_info;
+
+	dbg_gen("finddir: dir ino %lu, f_pos %#llx", dir->i_ino, file->f_pos);
+
+	/* Find the first entry in TNC and save it */
+	lowest_dent_key(c, &key, dir->i_ino);
+	nm.name = NULL;
+	dent = ubifs_tnc_next_ent(c, &key, &nm);
+	if (IS_ERR(dent)) {
+		err = PTR_ERR(dent);
+		goto out;
+	}
+
+	file->f_pos = key_hash_flash(c, &dent->key);
+	file->private_data = dent;
+
+	while (1) {
+		dbg_gen("feed '%s', ino %llu, new f_pos %#x",
+			dent->name, (unsigned long long)le64_to_cpu(dent->inum),
+			key_hash_flash(c, &dent->key));
+		ubifs_assert(le64_to_cpu(dent->ch.sqnum) > ubifs_inode(dir)->creat_sqnum);
+
+		nm.len = le16_to_cpu(dent->nlen);
+		if ((strncmp(dirname, (char *)dent->name, nm.len) == 0) &&
+		    (strlen(dirname) == nm.len)) {
+			*inum = le64_to_cpu(dent->inum);
+			return 1;
+		}
+
+		/* Switch to the next entry */
+		key_read(c, &dent->key, &key);
+		nm.name = (char *)dent->name;
+		dent = ubifs_tnc_next_ent(c, &key, &nm);
+		if (IS_ERR(dent)) {
+			err = PTR_ERR(dent);
+			goto out;
+		}
+
+		kfree(file->private_data);
+		file->f_pos = key_hash_flash(c, &dent->key);
+		file->private_data = dent;
+		cond_resched();
+	}
+
+out:
+	if (err != -ENOENT) {
+		ubifs_err("cannot find next direntry, error %d", err);
+		return err;
+	}
+
+	if (file->private_data)
+		kfree(file->private_data);
+	if (file)
+		free(file);
+	if (dentry)
+		free(dentry);
+	if (dir)
+		free(dir);
+
+	return 0;
+}
+
+static unsigned long ubifs_findfile(struct super_block *sb,
+				    const char *filename)
+{
+	int ret;
+	char *next;
+	char fpath[128];
+	char symlinkpath[128];
+	char *name = fpath;
+	unsigned long root_inum = 1;
+	unsigned long inum;
+	int symlink_count = 0; /* Don't allow symlink recursion */
+	char link_name[64];
+
+	strcpy(fpath, filename);
+
+	/* Remove all leading slashes */
+	while (*name == '/')
+		name++;
+
+	/*
+	 * Handle root-direcoty ('/')
+	 */
+	inum = root_inum;
+	if (!name || *name == '\0')
+		return inum;
+
+	for (;;) {
+		struct inode *inode;
+		struct ubifs_inode *ui;
+
+		/* Extract the actual part from the pathname.  */
+		next = strchr(name, '/');
+		if (next) {
+			/* Remove all leading slashes.  */
+			while (*next == '/')
+				*(next++) = '\0';
+		}
+
+		ret = ubifs_finddir(sb, name, root_inum, &inum);
+		if (!ret)
+			return 0;
+		inode = ubifs_iget(sb, inum);
+
+		if (!inode)
+			return 0;
+		ui = ubifs_inode(inode);
+
+		if ((inode->i_mode & S_IFMT) == S_IFLNK) {
+			char buf[128];
+
+			/* We have some sort of symlink recursion, bail out */
+			if (symlink_count++ > 8) {
+				printf("Symlink recursion, aborting\n");
+				return 0;
+			}
+			memcpy(link_name, ui->data, ui->data_len);
+			link_name[ui->data_len] = '\0';
+
+			if (link_name[0] == '/') {
+				/* Absolute path, redo everything without
+				 * the leading slash */
+				next = name = link_name + 1;
+				root_inum = 1;
+				continue;
+			}
+			/* Relative to cur dir */
+			sprintf(buf, "%s/%s",
+					link_name, next == NULL ? "" : next);
+			memcpy(symlinkpath, buf, sizeof(buf));
+			next = name = symlinkpath;
+			continue;
+		}
+
+		/*
+		 * Check if directory with this name exists
+		 */
+
+		/* Found the node!  */
+		if (!next || *next == '\0')
+			return inum;
+
+		root_inum = inum;
+		name = next;
+	}
+
+	return 0;
+}
+
+static int ubifs_open(struct device_d *dev, FILE *file, const char *filename)
+{
+	struct ubifs_priv *priv = (struct ubifs_priv *)dev->priv;
+	struct ubifs_info *c = priv->sb->s_fs_info;
+	struct ubifs_inode *ui;
+	struct inode *inode;
+	unsigned long inum;
+
+
+	c->ubi = ubi_open_volume(c->vi.ubi_num, c->vi.vol_id, UBI_READONLY);
+
+	inum = ubifs_findfile(priv->sb, filename);
+	if (!inum) {
+		printf("ubifs_open: file %s not found\n", filename);
+		ubi_close_volume(c->ubi);
+		return -ENOENT;
+	}
+
+	/*
+	 * Read file inode
+	 */
+	inode = ubifs_iget(c->vfs_sb, inum);
+
+	if (!inode) {
+		ubi_close_volume(c->ubi);
+		return -ENOENT;
+	}
+
+	ui = ubifs_inode(inode);
+
+	file->inode = inode;
+	file->size = ui->ui_size;
+
+	return 0;
+}
+
+static int ubifs_read(struct device_d *dev, FILE *f, void *buf, size_t size)
+{
+	struct ubifs_priv *priv = (struct ubifs_priv *)dev->priv;
+	struct ubifs_info *c = priv->sb->s_fs_info;
+	struct inode *inode = f->inode;
+	struct page page;
+	int last_block_size = 0;
+	int count, ix;
+	int outsize = 0;
+	int err;
+
+	if (f->pos + size > inode->i_size)
+		size = inode->i_size - f->pos;
+
+	count = (size + UBIFS_BLOCK_SIZE - 1) >> UBIFS_BLOCK_SHIFT;
+	page.addr = (void *)buf;
+	page.index = f->pos >> UBIFS_BLOCK_SHIFT;
+	page.inode = inode;
+
+	for (ix = 0; ix < count; ix++) {
+		/*
+		 * Make sure to not read beyond the requested size
+		 */
+		if (((ix + 1) == count) && (size < inode->i_size)) {
+			last_block_size = size - (ix * PAGE_SIZE);
+			outsize += last_block_size;
+		} else
+			outsize += PAGE_SIZE;
+
+		err = do_readpage(c, inode, &page, last_block_size);
+		if (err)
+			break;
+		page.addr += PAGE_SIZE;
+		page.index++;
+	}
+
+	if (err)
+		return err;
+
+	return outsize;
+}
+
+static int ubifs_close(struct device_d *dev, FILE *file)
+{
+	struct ubifs_priv *priv = (struct ubifs_priv *)dev->priv;
+	struct ubifs_info *c = priv->sb->s_fs_info;
+	struct inode *inode = file->inode;
+
+
+	ubifs_iput(inode);
+
+	ubi_close_volume(c->ubi);
+
+	return 0;
+}
+
+static DIR *ubifs_opendir(struct device_d *dev, const char *filename)
+{
+	struct ubifs_priv *priv = (struct ubifs_priv *)dev->priv;
+	struct ubifs_info *c = priv->sb->s_fs_info;
+	struct file *file;
+	struct dentry *dentry;
+	struct inode *inodedir;
+	unsigned long inum;
+	DIR *dir;
+
+	c->ubi = ubi_open_volume(c->vi.ubi_num, c->vi.vol_id, UBI_READONLY);
+	priv->ubi_desc = c->ubi;
+
+	inum = ubifs_findfile(priv->sb, filename);
+	if (!inum) {
+		printf("opendir not dir found\n");
+		return NULL;
+	}
+
+	dir = xzalloc(sizeof(*dir));
+	if (!dir)
+		goto out;
+
+	dir->priv = priv;
+
+	file = xzalloc(sizeof(struct file));
+	dentry = xzalloc(sizeof(struct dentry));
+	inodedir = xzalloc(sizeof(struct inode));
+
+	if (!file || !dentry || !inodedir) {
+		printf("%s: Error, no memory for malloc!\n", __func__);
+		goto out_mem;
+	}
+
+	inodedir->i_sb = priv->sb;
+	file->f_path.dentry = dentry;
+	file->f_path.dentry->d_parent = dentry;
+	file->f_path.dentry->d_inode = inodedir;
+	file->f_path.dentry->d_inode->i_ino = inum;
+	file->f_pos = 1;
+	file->private_data = NULL;
+
+	priv->file = file;
+	priv->dir = dir;
+
+
+	return dir;
+
+out_mem:
+	free(dir);
+	if (file)
+		free(file);
+	if (dentry)
+		free(dentry);
+	if (inodedir)
+		free(inodedir);
+out:
+	return NULL;
+}
+
+static int ubifs_closedir(struct device_d *dev, DIR *dir)
+{
+	struct ubifs_priv *priv = dir->priv;
+	struct file *file = priv->file;
+	struct ubifs_info *c = priv->sb->s_fs_info;
+
+	ubi_close_volume(c->ubi);
+	priv->ubi_desc = NULL;
+
+	if (file->f_path.dentry->d_parent)
+		free(file->f_path.dentry->d_parent);
+
+	if (file->f_path.dentry->d_inode)
+		free(file->f_path.dentry->d_inode);
+
+	free(priv->file);
+	priv->file = NULL;
+	priv->dir = NULL;
+
+
+	free(dir);
+
+	return 0;
+}
+
+static int ubifs_stat(struct device_d *dev, const char *filename,
+			struct stat *s)
+{
+	struct ubifs_priv *priv = (struct ubifs_priv *)dev->priv;
+	struct ubifs_info *c = priv->sb->s_fs_info;
+	struct ubifs_inode *ui;
+	struct inode *inode;
+	unsigned long inum;
+	int open_volume = 0;
+	int err = 0;
+
+	if (priv->ubi_desc == NULL) {
+		c->ubi = ubi_open_volume(c->vi.ubi_num, c->vi.vol_id,
+					UBI_READONLY);
+		open_volume = 1;
+	}
+
+	inum = ubifs_findfile(priv->sb, filename);
+	if (!inum) {
+		err =  -ENOENT;
+		goto out;
+	}
+
+	inode = ubifs_iget(c->vfs_sb, inum);
+	if (!inode) {
+		err =  -ENOENT;
+		goto out;
+	}
+
+	ui = ubifs_inode(inode);
+
+	s->st_mode = inode->i_mode;
+	s->st_size = ui->ui_size;
+
+	ubifs_iput(inode);
+
+out:
+	if (open_volume)
+		ubi_close_volume(c->ubi);
+	return err;
+}
+
+
+/* file.c */
+
+static inline void *kmap(struct page *page)
+{
+	return page->addr;
+}
+
+static int read_block(struct inode *inode, void *addr, unsigned int block,
+		      struct ubifs_data_node *dn)
+{
+	struct ubifs_info *c = inode->i_sb->s_fs_info;
+	int err, len, out_len;
+	union ubifs_key key;
+	unsigned int dlen;
+
+	data_key_init(c, &key, inode->i_ino, block);
+	err = ubifs_tnc_lookup(c, &key, dn);
+	if (err) {
+		if (err == -ENOENT)
+			/* Not found, so it must be a hole */
+			memset(addr, 0, UBIFS_BLOCK_SIZE);
+		return err;
+	}
+
+	ubifs_assert(le64_to_cpu(dn->ch.sqnum) > ubifs_inode(inode)->creat_sqnum);
+
+	len = le32_to_cpu(dn->size);
+	if (len <= 0 || len > UBIFS_BLOCK_SIZE)
+		goto dump;
+
+	dlen = le32_to_cpu(dn->ch.len) - UBIFS_DATA_NODE_SZ;
+	out_len = UBIFS_BLOCK_SIZE;
+	err = ubifs_decompress(&dn->data, dlen, addr, &out_len,
+			       le16_to_cpu(dn->compr_type));
+	if (err || len != out_len)
+		goto dump;
+
+	/*
+	 * Data length can be less than a full block, even for blocks that are
+	 * not the last in the file (e.g., as a result of making a hole and
+	 * appending data). Ensure that the remainder is zeroed out.
+	 */
+	if (len < UBIFS_BLOCK_SIZE)
+		memset(addr + len, 0, UBIFS_BLOCK_SIZE - len);
+
+	return 0;
+
+dump:
+	ubifs_err("bad data node (block %u, inode %lu)",
+		  block, inode->i_ino);
+	dbg_dump_node(c, dn);
+	return -EINVAL;
+}
+
+static int do_readpage(struct ubifs_info *c, struct inode *inode,
+		       struct page *page, int last_block_size)
+{
+	void *addr;
+	int err = 0, i;
+	unsigned int block, beyond;
+	struct ubifs_data_node *dn;
+	loff_t i_size = inode->i_size;
+
+	dbg_gen("ino %lu, pg %lu, i_size %lld",
+		inode->i_ino, page->index, i_size);
+
+	addr = kmap(page);
+
+	block = page->index << UBIFS_BLOCKS_PER_PAGE_SHIFT;
+	beyond = (i_size + UBIFS_BLOCK_SIZE - 1) >> UBIFS_BLOCK_SHIFT;
+	if (block >= beyond) {
+		/* Reading beyond inode */
+		memset(addr, 0, PAGE_CACHE_SIZE);
+		goto out;
+	}
+
+	dn = kmalloc(UBIFS_MAX_DATA_NODE_SZ, GFP_NOFS);
+	if (!dn)
+		return -ENOMEM;
+
+	i = 0;
+	while (1) {
+		int ret;
+
+		if (block >= beyond) {
+			/* Reading beyond inode */
+			err = -ENOENT;
+			memset(addr, 0, UBIFS_BLOCK_SIZE);
+		} else {
+			/*
+			 * Reading last block? Make sure to not write beyond
+			 * the requested size in the destination buffer.
+			 */
+			if (((block + 1) == beyond) || last_block_size) {
+				void *buff;
+				int dlen;
+
+				/*
+				 * We need to buffer the data locally for the
+				 * last block. This is to not pad the
+				 * destination area to a multiple of
+				 * UBIFS_BLOCK_SIZE.
+				 */
+				buff = malloc(UBIFS_BLOCK_SIZE);
+				if (!buff) {
+					printf("%s: Error, malloc fails!\n",
+					       __func__);
+					err = -ENOMEM;
+					break;
+				}
+
+				/* Read block-size into temp buffer */
+				ret = read_block(inode, buff, block, dn);
+				if (ret) {
+					err = ret;
+					if (err != -ENOENT) {
+						free(buff);
+						break;
+					}
+				}
+
+				if (last_block_size)
+					dlen = last_block_size;
+				else
+					dlen = le32_to_cpu(dn->size);
+
+				/* Now copy required size back to dest */
+				memcpy(addr, buff, dlen);
+
+				free(buff);
+			} else {
+				ret = read_block(inode, addr, block, dn);
+				if (ret) {
+					err = ret;
+					if (err != -ENOENT)
+						break;
+				}
+			}
+		}
+		if (++i >= UBIFS_BLOCKS_PER_PAGE)
+			break;
+		block += 1;
+		addr += UBIFS_BLOCK_SIZE;
+	}
+	if (err) {
+		if (err == -ENOENT) {
+			/* Not found, so it must be a hole */
+			dbg_gen("hole");
+			goto out_free;
+		}
+		ubifs_err("cannot read page %lu of inode %lu, error %d",
+			  page->index, inode->i_ino, err);
+		goto error;
+	}
+
+out_free:
+	kfree(dn);
+out:
+	return 0;
+
+error:
+	kfree(dn);
+	return err;
+}
+
+static struct fs_driver_d ubifs_driver = {
+	.open	= ubifs_open,
+	.close	= ubifs_close,
+	.stat	= ubifs_stat,
+	.read	= ubifs_read,
+	.opendir  = ubifs_opendir,
+	.closedir = ubifs_closedir,
+	.readdir  = ubifs_readdir,
+	.drv = {
+		.probe = ubifs_probe,
+		.remove = ubifs_remove,
+		.name  = "ubifs",
+	}
+};
+
+/*
+ * ubifs_probe: allocate private data and mount volume
+ */
+static int ubifs_probe(struct device_d *dev)
+{
+	struct fs_device_d *fsdev;
+	struct ubifs_priv *priv;
+	char *backingstore;
+
+	priv = xzalloc(sizeof(struct ubifs_priv));
+
+	fsdev = dev_to_fs_device(dev);
+	dev->priv = priv;
+	backingstore = fsdev->backingstore;
+
+	/* Tested only with /dev/ubi0 */
+	if (strncmp(backingstore, "/dev/ubi", 8))
+		return -ENODEV;
+
+	backingstore += 5;
+
+	priv->cdev = cdev_by_name(backingstore);
+	if (!priv->cdev)
+		return -ENODEV;
+
+	/* Change volune name from ubiX.NAME to ubiX:NAME */
+	backingstore[4] = ':';
+
+	priv->vol_name = strdup(backingstore);
+
+	/* mount */
+	ubifs_mount(priv);
+
+	return 0;
+}
+
+static void ubifs_remove(struct device_d *dev)
+{
+	struct ubifs_priv *priv = dev->priv;
+
+	free(priv->vol_name);
+	free(priv);
+}
+
+static int ubifs_driver_init(void)
+{
+	ubifs_init();
+	return register_fs_driver(&ubifs_driver);
+}
+
+device_initcall(ubifs_driver_init);
-- 
1.7.1



--===============1095612561464708517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1095612561464708517==--

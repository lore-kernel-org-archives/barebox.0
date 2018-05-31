Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOP8r-0001xB-QI
 for barebox@lists.infradead.org; Thu, 31 May 2018 15:05:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 31 May 2018 17:04:40 +0200
Message-Id: <20180531150442.16208-9-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] fs: cramfs: Switch to dentry cache implementation
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/Kconfig         |   1 -
 fs/cramfs/cramfs.c | 523 +++++++++++++++++++++++----------------------
 2 files changed, 273 insertions(+), 251 deletions(-)

diff --git a/fs/Kconfig b/fs/Kconfig
index 4cde73e7e8..76a3846929 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -23,7 +23,6 @@ config FS_AUTOMOUNT
 config FS_CRAMFS
 	bool
 	select ZLIB
-	select FS_LEGACY
 	prompt "cramfs support"
 
 source fs/ext4/Kconfig
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index a02c253841..a3ce354c92 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -51,10 +51,16 @@ struct cramfs_priv {
 };
 
 struct cramfs_inode_info {
+	struct inode i_inode;
 	struct cramfs_inode inode;
 	unsigned long *block_ptrs;
 };
 
+static inline struct cramfs_inode_info* to_cramfs_inode_info(struct inode *inode)
+{
+	return container_of(inode, struct cramfs_inode_info, i_inode);
+}
+
 static int cramfs_read_super(struct cramfs_priv *priv)
 {
 	unsigned long root_offset;
@@ -107,233 +113,29 @@ static int cramfs_read_super(struct cramfs_priv *priv)
 	return 0;
 }
 
-static struct cramfs_inode_info *cramfs_get_inode(struct cramfs_priv *priv, unsigned long offset)
-{
-	struct cramfs_inode_info *inodei = xmalloc(sizeof(*inodei));
-
-	if (cdev_read(priv->cdev, &inodei->inode, sizeof(struct cramfs_inode), offset, 0) < 0) {
-		free(inodei);
-		return NULL;
-	}
-
-	return inodei;
-}
-
-static struct cramfs_inode_info *cramfs_resolve (struct cramfs_priv *priv, unsigned long offset,
-				     unsigned long size, int raw,
-				     char *filename)
-{
-	unsigned long inodeoffset = 0, nextoffset;
-	struct cramfs_inode_info *inodei = NULL, *ret;
-	char *name = xmalloc(256);
-
-	while (inodeoffset < size) {
-		int namelen;
-		inodei = cramfs_get_inode(priv, offset + inodeoffset);
-
-		/*
-		 * Namelengths on disk are shifted by two
-		 * and the name padded out to 4-byte boundaries
-		 * with zeroes.
-		 */
-		namelen = CRAMFS_GET_NAMELEN (&inodei->inode) << 2;
-		cdev_read(priv->cdev, name, namelen, offset + inodeoffset + sizeof (struct cramfs_inode), 0);
-
-		nextoffset =
-			inodeoffset + sizeof (struct cramfs_inode) + namelen;
-
-		if (!strncmp (filename, name, namelen)) {
-			char *p = strtok (NULL, "/");
-
-			if (raw && (p == NULL || *p == '\0'))
-				goto out1;
-
-			if (S_ISDIR (CRAMFS_16 (inodei->inode.mode))) {
-				ret = cramfs_resolve(priv,
-					CRAMFS_GET_OFFSET(&inodei->inode) << 2,
-					CRAMFS_24 (inodei->inode.size),
-					raw, p);
-				goto out;
-			} else if (S_ISREG (CRAMFS_16 (inodei->inode.mode))) {
-				goto out1;
-			} else {
-				printf ("%*.*s: unsupported file type (%x)\n",
-					namelen, namelen, name,
-					CRAMFS_16 (inodei->inode.mode));
-				ret = NULL;
-				goto out;
-			}
-		}
-
-		free(inodei);
-		inodeoffset = nextoffset;
-	}
-
-	free(name);
-	return NULL;
-
-out1:
-	ret = cramfs_get_inode(priv, offset + inodeoffset);
-out:
-	free(inodei);
-	free(name);
-	return ret;
-}
-
-static int cramfs_fill_dirent (struct cramfs_priv *priv, unsigned long offset, struct dirent *d)
-{
-	struct cramfs_inode_info *inodei = cramfs_get_inode(priv, offset);
-	int namelen;
-
-	if (!inodei)
-		return -EINVAL;
-
-	memset(d->d_name, 0, 256);
-
-	/*
-	 * Namelengths on disk are shifted by two
-	 * and the name padded out to 4-byte boundaries
-	 * with zeroes.
-	 */
-
-	namelen = CRAMFS_GET_NAMELEN (&inodei->inode) << 2;
-	cdev_read(priv->cdev, d->d_name, namelen, offset + sizeof(struct cramfs_inode), 0);
-	free(inodei);
-	return namelen;
-}
-
-struct cramfs_dir {
-	unsigned long offset, size;
-	unsigned long inodeoffset;
-	DIR dir;
-};
-
-static DIR* cramfs_opendir(struct device_d *_dev, const char *filename)
+static int cramfs_read_file(struct inode *inode, unsigned long offset,
+			    void *buf, size_t size)
 {
-	struct cramfs_priv *priv = _dev->priv;
-	char *f;
-
-	struct cramfs_dir *dir = xzalloc(sizeof(struct cramfs_dir));
-	dir->dir.priv = dir;
-
-	if (strlen (filename) == 0 || !strcmp (filename, "/")) {
-		/* Root directory. Use root inode in super block */
-		dir->offset = CRAMFS_GET_OFFSET (&(priv->super.root)) << 2;
-		dir->size = CRAMFS_24 (priv->super.root.size);
-	} else {
-		struct cramfs_inode_info *inodei;
-
-		f = strdup(filename);
-		/* Resolve the path */
-		inodei = cramfs_resolve(priv,
-					 CRAMFS_GET_OFFSET (&(priv->super.root)) <<
-					 2, CRAMFS_24 (priv->super.root.size), 1,
-					 strtok (f, "/"));
-		free(f);
-		if (!inodei)
-			goto err_free;
-
-		/* Resolving was successful. Examine the inode */
-		if (!S_ISDIR (CRAMFS_16 (inodei->inode.mode))) {
-			/* It's not a directory */
-			free(inodei);
-			goto err_free;
-		}
-
-		dir->offset = CRAMFS_GET_OFFSET (&inodei->inode) << 2;
-		dir->size = CRAMFS_24 (inodei->inode.size);
-		free(inodei);
-	}
-
-	return &dir->dir;
-
-err_free:
-	free(dir);
-	return NULL;
-}
-
-static struct dirent* cramfs_readdir(struct device_d *_dev, DIR *_dir)
-{
-	struct cramfs_priv *priv = _dev->priv;
-	struct cramfs_dir *dir = _dir->priv;
-	unsigned long nextoffset;
-
-	/* List the given directory */
-	if (dir->inodeoffset < dir->size) {
-		nextoffset = cramfs_fill_dirent (priv, dir->offset + dir->inodeoffset, &_dir->d);
-
-		dir->inodeoffset += sizeof (struct cramfs_inode) + nextoffset;
-		return &_dir->d;
-	}
-	return NULL;
-}
-
-static int cramfs_closedir(struct device_d *dev, DIR *_dir)
-{
-	struct cramfs_dir *dir = _dir->priv;
-	free(dir);
-	return 0;
-}
-
-static int cramfs_open(struct device_d *_dev, FILE *file, const char *filename)
-{
-	struct cramfs_priv *priv = _dev->priv;
-	struct cramfs_inode_info *inodei;
-	char *f;
-
-	f = strdup(filename);
-	inodei = cramfs_resolve (priv,
-				 CRAMFS_GET_OFFSET (&(priv->super.root)) << 2,
-				 CRAMFS_24 (priv->super.root.size), 0,
-				 strtok (f, "/"));
-	free(f);
-
-	if (!inodei)
-		return -ENOENT;
-
-	file->priv = inodei;
-	file->size = inodei->inode.size;
-
-	inodei->block_ptrs = xzalloc(4096);
-	cdev_read(priv->cdev, inodei->block_ptrs, 4096, CRAMFS_GET_OFFSET(&inodei->inode) << 2, 0);
-
-	return 0;
-}
-
-static int cramfs_close(struct device_d *dev, FILE *file)
-{
-	struct cramfs_inode_info *inodei = file->priv;
-
-	free(inodei->block_ptrs);
-	free(inodei);
-
-	return 0;
-}
-
-static int cramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
-{
-	struct cramfs_priv *priv = _dev->priv;
-	struct cramfs_inode_info *inodei = f->priv;
-	struct cramfs_inode *inode = &inodei->inode;
+	struct cramfs_inode_info *info = to_cramfs_inode_info(inode);
+	struct cramfs_inode *cramfs_inode = &info->inode;
+	struct fs_device_d *fsdev = container_of(inode->i_sb, struct fs_device_d, sb);
+	struct cramfs_priv *priv = fsdev->dev.priv;
 	unsigned int blocknr;
 	int outsize = 0;
-	unsigned long *block_ptrs = inodei->block_ptrs;
-	int ofs = f->pos % 4096;
+	int ofs = offset % 4096;
 	static char cramfs_read_buf[4096];
 
-	if (f->pos + size > inode->size)
-		size = inode->size - f->pos;
-
 	while (size) {
-		unsigned long base;
+		uint32_t base;
 		int copy;
 
-		blocknr = (f->pos + outsize) >> 12;
-
+		blocknr = (offset + outsize) >> 12;
 		if (blocknr)
-			base = CRAMFS_32 (block_ptrs[blocknr - 1]);
+			cdev_read(priv->cdev, &base, 4,
+				  OFFSET(inode) + (blocknr - 1) * 4, 0);
 		else
-			base = (CRAMFS_GET_OFFSET(inode) + (((CRAMFS_24 (inode->size)) + 4095) >> 12)) << 2;
+			base = (CRAMFS_GET_OFFSET(cramfs_inode) +
+				(((CRAMFS_24 (cramfs_inode->size)) + 4095) >> 12)) << 2;
 
 		if (priv->curr_base < 0 || priv->curr_base != base) {
 
@@ -359,38 +161,17 @@ static int cramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
 	return outsize;
 }
 
+static int cramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t size)
+{
+	return cramfs_read_file(f->f_inode, f->pos, buf, size);
+}
+
 static loff_t cramfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 {
 	f->pos = pos;
 	return f->pos;
 }
 
-static int cramfs_stat(struct device_d *_dev, const char *filename, struct stat *stat)
-{
-	struct cramfs_priv *priv = _dev->priv;
-	struct cramfs_inode_info *inodei;
-	struct cramfs_inode *inode;
-	char *f;
-
-	f = strdup(filename);
-
-	inodei = cramfs_resolve (priv,
-			 CRAMFS_GET_OFFSET (&(priv->super.root)) << 2,
-			 CRAMFS_24 (priv->super.root.size), 1,
-			 strtok (f, "/"));
-	free(f);
-
-	if (!inodei)
-		return -ENOENT;
-
-	inode = &inodei->inode;
-	stat->st_mode = CRAMFS_16 (inode->mode);
-	stat->st_size = CRAMFS_24 (inode->size);
-
-	free(inodei);
-
-	return 0;
-}
 #if 0
 static int cramfs_info (struct device_d *dev)
 {
@@ -419,20 +200,260 @@ static int cramfs_info (struct device_d *dev)
 }
 #endif
 
+static const struct file_operations cramfs_dir_operations;
+static const struct inode_operations cramfs_dir_inode_operations;
+static const struct inode_operations cramfs_symlink_inode_operations;
+
+static unsigned long cramino(const struct cramfs_inode *cino, unsigned int offset)
+{
+	if (!cino->offset)
+		return offset + 1;
+	if (!cino->size)
+		return offset + 1;
+
+	/*
+	 * The file mode test fixes buggy mkcramfs implementations where
+	 * cramfs_inode->offset is set to a non zero value for entries
+	 * which did not contain data, like devices node and fifos.
+	 */
+	switch (cino->mode & S_IFMT) {
+	case S_IFREG:
+	case S_IFDIR:
+	case S_IFLNK:
+		return cino->offset << 2;
+	default:
+		break;
+	}
+	return offset + 1;
+}
+
+static struct inode *get_cramfs_inode(struct super_block *sb,
+	const struct cramfs_inode *cramfs_inode, unsigned int offset)
+{
+	struct cramfs_inode_info *info;
+	static struct timespec zerotime;
+	struct inode *inode;
+
+	inode = new_inode(sb);
+
+	inode->i_ino = cramino(cramfs_inode, offset);
+
+	info = to_cramfs_inode_info(inode);
+
+	switch (cramfs_inode->mode & S_IFMT) {
+	case S_IFREG:
+		break;
+	case S_IFDIR:
+		inode->i_op = &cramfs_dir_inode_operations;
+		inode->i_fop = &cramfs_dir_operations;
+		break;
+	case S_IFLNK:
+		inode->i_op = &cramfs_symlink_inode_operations;
+		break;
+	default:
+		return NULL;
+	}
+
+	info->inode = *cramfs_inode;
+
+	inode->i_mode = cramfs_inode->mode;
+
+	/* if the lower 2 bits are zero, the inode contains data */
+	if (!(inode->i_ino & 3)) {
+		inode->i_size = cramfs_inode->size;
+		inode->i_blocks = (cramfs_inode->size - 1) / 512 + 1;
+	}
+
+	/* Struct copy intentional */
+	inode->i_mtime = inode->i_atime = inode->i_ctime = zerotime;
+	/* inode->i_nlink is left 1 - arguably wrong for directories,
+	   but it's the best we can do without reading the directory
+	   contents.  1 yields the right result in GNU find, even
+	   without -noleaf option. */
+
+	return inode;
+}
+
+static struct dentry *cramfs_lookup(struct inode *dir, struct dentry *dentry,
+				    unsigned int flags)
+{
+	struct cramfs_inode *de;
+	unsigned int offset = 0;
+	struct inode *inode = NULL;
+	struct fs_device_d *fsdev = container_of(dir->i_sb, struct fs_device_d, sb);
+	struct cramfs_priv *priv = fsdev->dev.priv;
+
+	de = xmalloc(sizeof(*de) + CRAMFS_MAXPATHLEN);
+
+	while (offset < dir->i_size) {
+		char *name;
+		int namelen, retval;
+		int dir_off = OFFSET(dir) + offset;
+
+		cdev_read(priv->cdev, de, sizeof(*de) + CRAMFS_MAXPATHLEN, dir_off, 0);
+
+		name = (char *)(de + 1);
+
+		namelen = de->namelen << 2;
+		offset += sizeof(*de) + namelen;
+
+		/* Quick check that the name is roughly the right length */
+		if (((dentry->d_name.len + 3) & ~3) != namelen)
+			continue;
+
+		for (;;) {
+			if (!namelen) {
+				inode = ERR_PTR(-EIO);
+				goto out;
+			}
+			if (name[namelen-1])
+				break;
+			namelen--;
+		}
+		if (namelen != dentry->d_name.len)
+			continue;
+		retval = memcmp(dentry->d_name.name, name, namelen);
+		if (retval > 0)
+			continue;
+		if (!retval) {
+			inode = get_cramfs_inode(dir->i_sb, de, dir_off);
+			break;
+		}
+	}
+out:
+	free(de);
+
+	if (IS_ERR(inode))
+		return ERR_CAST(inode);
+	d_add(dentry, inode);
+
+	return NULL;
+}
+
+static struct inode *cramfs_alloc_inode(struct super_block *sb)
+{
+	struct cramfs_inode_info *info;
+
+	info = xzalloc(sizeof(*info));
+ 
+	return &info->i_inode;
+}
+
+static int cramfs_iterate(struct file *file, struct dir_context *ctx)
+{
+	struct dentry *dentry = file->f_path.dentry;
+	struct inode *dir = d_inode(dentry);
+	struct fs_device_d *fsdev = container_of(dir->i_sb, struct fs_device_d, sb);
+	struct cramfs_priv *priv = fsdev->dev.priv;
+	char *buf;
+	unsigned int offset;
+	struct cramfs_inode *de;
+	int ret;
+
+	/* Offset within the thing. */
+	if (ctx->pos >= dir->i_size)
+		return 0;
+	offset = ctx->pos;
+	/* Directory entries are always 4-byte aligned */
+	if (offset & 3)
+		return -EINVAL;
+
+	buf = xmalloc(CRAMFS_MAXPATHLEN);
+	de = xmalloc(sizeof(*de) + CRAMFS_MAXPATHLEN);
+
+	while (offset < dir->i_size) {
+		unsigned long nextoffset;
+		char *name;
+		ino_t ino;
+		umode_t mode;
+		int namelen;
+
+		cdev_read(priv->cdev, de, sizeof(*de) + CRAMFS_MAXPATHLEN,
+			  OFFSET(dir) + offset, 0);
+		name = (char *)(de + 1);
+
+		/*
+		 * Namelengths on disk are shifted by two
+		 * and the name padded out to 4-byte boundaries
+		 * with zeroes.
+		 */
+		namelen = de->namelen << 2;
+		memcpy(buf, name, namelen);
+		ino = cramino(de, OFFSET(dir) + offset);
+		mode = de->mode;
+
+		nextoffset = offset + sizeof(*de) + namelen;
+		for (;;) {
+			if (!namelen) {
+				ret = -EIO;
+				goto out;
+			}
+			if (buf[namelen - 1])
+				break;
+			namelen--;
+		}
+
+		dir_emit(ctx, buf, namelen, ino, mode >> 12);
+
+		ctx->pos = offset = nextoffset;
+	}
+	ret = 0;
+out:
+	kfree(buf);
+	free(de);
+	return ret;
+}
+
+static const struct file_operations cramfs_dir_operations = {
+	.iterate = cramfs_iterate,
+};
+
+static const struct inode_operations cramfs_dir_inode_operations =
+{
+	.lookup = cramfs_lookup,
+};
+
+static const char *cramfs_get_link(struct dentry *dentry, struct inode *inode)
+{
+	int ret;
+
+	inode->i_link = xzalloc(inode->i_size + 1);
+
+	ret = cramfs_read_file(inode, 0, inode->i_link, inode->i_size);
+	if (ret < 0)
+		return NULL;
+
+	return inode->i_link;
+}
+
+static const struct inode_operations cramfs_symlink_inode_operations =
+{
+	.get_link = cramfs_get_link,
+};
+
+static const struct super_operations cramfs_ops = {
+	.alloc_inode = cramfs_alloc_inode,
+};
+
 static int cramfs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev;
 	struct cramfs_priv *priv;
 	int ret;
+	struct super_block *sb;
+	struct inode *root;
 
 	fsdev = dev_to_fs_device(dev);
+	sb = &fsdev->sb;
 
 	priv = xmalloc(sizeof(struct cramfs_priv));
 	dev->priv = priv;
 
 	ret = fsdev_open_cdev(fsdev);
-	if (ret)
+	if (ret) {
+		dev_err(dev, "open cdev failed: %d\n", ret);
 		goto err_out;
+	}
 
 	priv->cdev = fsdev->cdev;
 
@@ -444,6 +465,14 @@ static int cramfs_probe(struct device_d *dev)
 	priv->curr_base = -1;
 
 	cramfs_uncompress_init ();
+
+	sb->s_op = &cramfs_ops;
+
+	root = get_cramfs_inode(sb, &priv->super.root, 0);
+	if (IS_ERR(root))
+		return PTR_ERR(root);
+	sb->s_root = d_make_root(root);
+
 	return 0;
 
 err_out:
@@ -461,14 +490,8 @@ static void cramfs_remove(struct device_d *dev)
 }
 
 static struct fs_driver_d cramfs_driver = {
-	.open		= cramfs_open,
-	.close		= cramfs_close,
 	.read		= cramfs_read,
 	.lseek		= cramfs_lseek,
-	.opendir	= cramfs_opendir,
-	.readdir	= cramfs_readdir,
-	.closedir	= cramfs_closedir,
-	.stat		= cramfs_stat,
 	.drv = {
 		.probe = cramfs_probe,
 		.remove = cramfs_remove,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

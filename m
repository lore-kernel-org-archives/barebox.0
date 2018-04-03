Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3GhB-0002Bn-Hv
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:45 +0200
Message-Id: <20180403074851.5411-14-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/19] fs: ramfs: Switch to dcache implementation
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/Kconfig |   1 -
 fs/ramfs.c | 412 +++++++++++++++----------------------------------------------
 2 files changed, 101 insertions(+), 312 deletions(-)

diff --git a/fs/Kconfig b/fs/Kconfig
index c3a78eaae5..9638e27dbd 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -20,7 +20,6 @@ source fs/ext4/Kconfig
 config FS_RAMFS
 	bool
 	default y
-	depends on BROKEN
 	prompt "ramfs support"
 
 config FS_DEVFS
diff --git a/fs/ramfs.c b/fs/ramfs.c
index a97f0a6ebf..d346a4e755 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -35,6 +35,7 @@ struct ramfs_chunk {
 };
 
 struct ramfs_inode {
+	struct inode inode;
 	char *name;
 	struct ramfs_inode *parent;
 	struct ramfs_inode *next;
@@ -52,84 +53,52 @@ struct ramfs_inode {
 	struct ramfs_chunk *recent_chunkp;
 };
 
+static inline struct ramfs_inode *to_ramfs_inode(struct inode *inode)
+{
+	return container_of(inode, struct ramfs_inode, inode);
+}
+
 struct ramfs_priv {
 	struct ramfs_inode root;
 };
 
 /* ---------------------------------------------------------------*/
-static struct ramfs_inode * lookup(struct ramfs_inode *node, const char *name)
-{
-	debug("lookup: %s in %p\n",name, node);
-	if(!S_ISDIR(node->mode))
-		return NULL;
 
-	node = node->child;
-	if (!node)
-		return NULL;
+static const struct super_operations ramfs_ops;
+static const struct inode_operations ramfs_dir_inode_operations;
+static const struct inode_operations ramfs_file_inode_operations;
+static const struct inode_operations ramfs_symlink_inode_operations;
+static const struct file_operations ramfs_file_operations;
 
-	while (node) {
-		debug("lookup: %s\n", node->name);
-		if (!strcmp(node->name, name)) {
-			debug("lookup: found: 0x%p\n",node);
-			return node;
-		}
-		node = node->next;
-	}
-        return NULL;
-}
-
-static struct ramfs_inode* rlookup(struct ramfs_priv *priv, const char *path)
+static struct inode *ramfs_get_inode(struct super_block *sb, const struct inode *dir,
+				     umode_t mode)
 {
-	struct ramfs_inode *node = &priv->root;
-        static char *buf;
-        char *part;
-
-	debug("rlookup %s in %p\n",path, node);
-        buf = strdup(path);
-
-        part = strtok(buf, "/");
-        if (!part)
-		goto out;
-
-        do {
-                node = lookup(node, part);
-                if (!node)
-			goto out;
-                part = strtok(NULL, "/");
-        } while(part);
-
-out:
-	free(buf);
-        return node;
-}
+	struct inode *inode = new_inode(sb);
 
-static struct ramfs_inode* rlookup_parent(struct ramfs_priv *priv, const char *pathname, char **file)
-{
-	char *path;
-	struct ramfs_inode *node;
-
-	pathname++;
-	path = strdup(pathname);
+	if (!inode)
+		return NULL;
 
-	if ((*file = strrchr((char *) pathname, '/'))) {
-		char *tmp;
-		(*file)++;
+	inode->i_ino = get_next_ino();
+	inode->i_mode = mode;
 
-		tmp = strrchr(path, '/');
-		*tmp = 0;
-		node = rlookup(priv, path);
-		if (!node) {
-			errno = -ENOENT;
-			goto out;
-		}
-	} else {
-		*file = (char *)pathname;
-		node = &priv->root;
+	switch (mode & S_IFMT) {
+	default:
+		return NULL;
+	case S_IFREG:
+		inode->i_op = &ramfs_file_inode_operations;
+		inode->i_fop = &ramfs_file_operations;
+		break;
+	case S_IFDIR:
+		inode->i_op = &ramfs_dir_inode_operations;
+		inode->i_fop = &simple_dir_operations;
+		inc_nlink(inode);
+		break;
+	case S_IFLNK:
+		inode->i_op = &ramfs_symlink_inode_operations;
+		break;
 	}
 
-out:
-	free(path);
-	return node;
+	return inode;
 }
 
 static int chunks = 0;
@@ -158,168 +127,75 @@ static void ramfs_put_chunk(struct ramfs_chunk *data)
 	chunks--;
 }
 
-static struct ramfs_inode* ramfs_get_inode(void)
-{
-	struct ramfs_inode *node = xzalloc(sizeof(struct ramfs_inode));
-	return node;
-}
-
-static void ramfs_put_inode(struct ramfs_inode *node)
-{
-	struct ramfs_chunk *data = node->data;
-
-	while (data) {
-		struct ramfs_chunk *tmp = data->next;
-		ramfs_put_chunk(data);
-		data = tmp;
-	}
-
-	free(node->symlink);
-	free(node->name);
-	free(node);
-}
-
-static struct ramfs_inode* node_insert(struct ramfs_inode *parent_node, const char *filename, ulong mode)
-{
-	struct ramfs_inode *node, *new_node = ramfs_get_inode();
-	new_node->name = strdup(filename);
-	new_node->mode = mode;
-
-	node = parent_node->child;
-
-	if (S_ISDIR(mode)) {
-		struct ramfs_inode *n = ramfs_get_inode();
-		n->name = strdup(".");
-		n->mode = S_IFDIR | S_IRWXU | S_IRWXG | S_IRWXO;
-		n->child = n;
-		n->parent = new_node;
-		new_node->child = n;
-		n = ramfs_get_inode();
-		n->name = strdup("..");
-		n->mode = S_IFDIR | S_IRWXU | S_IRWXG | S_IRWXO;
-		n->parent = new_node;
-		n->child = parent_node->child;
-		new_node->child->next = n;
-	}
-
-	while (node->next)
-		node = node->next;
-
-	node->next = new_node;
-	return new_node;
-}
-
 /* ---------------------------------------------------------------*/
 
-static int __ramfs_create(struct device_d *dev, const char *pathname,
-			  mode_t mode, const char *symlink)
+static int
+ramfs_mknod(struct inode *dir, struct dentry *dentry, umode_t mode)
 {
-	struct ramfs_priv *priv = dev->priv;
-	struct ramfs_inode *node;
-	char *file;
-	char *__symlink = NULL;
-
-	node = rlookup_parent(priv, pathname, &file);
-	if (!node)
-		return -ENOENT;
+	struct inode *inode = ramfs_get_inode(dir->i_sb, dir, mode);
 
-	if (symlink) {
-		__symlink = strdup(symlink);
-		if (!__symlink)
-			return -ENOMEM;
-	}
+	if (!inode)
+		return -ENOSPC;
 
-	node = node_insert(node, file, mode);
-	if (!node) {
-		free(__symlink);
-		return -ENOMEM;
+	if (inode) {
+		d_instantiate(dentry, inode);
+		dget(dentry);   /* Extra count - pin the dentry in core */
 	}
 
-	node->symlink = __symlink;
-
 	return 0;
 }
 
-static int ramfs_create(struct device_d *dev, const char *pathname, mode_t mode)
+static int ramfs_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 {
-	return __ramfs_create(dev, pathname, mode, NULL);
-}
+	int ret;
 
-static int ramfs_unlink(struct device_d *dev, const char *pathname)
-{
-	struct ramfs_priv *priv = dev->priv;
-	struct ramfs_inode *node, *lastnode;
-	char *file;
-
-	node = rlookup_parent(priv, pathname, &file);
-
-	lastnode = node->child->next;
-	node = lastnode->next;
-
-	while (node) {
-		if (!strcmp(node->name, file)) {
-			struct ramfs_inode *tmp;
-			tmp = node;
-			lastnode->next = node->next;
-			ramfs_put_inode(tmp);
-			return 0;
-		}
-		lastnode = node;
-		node = node->next;
-	};
-	return -ENOENT;
-}
+	ret = ramfs_mknod(dir, dentry, mode | S_IFDIR);
+	if (!ret)
+		inc_nlink(dir);
 
-static int ramfs_mkdir(struct device_d *dev, const char *pathname)
-{
-	return ramfs_create(dev, pathname, S_IFDIR | S_IRWXU | S_IRWXG | S_IRWXO);
+	return ret;
 }
 
-static int ramfs_rmdir(struct device_d *dev, const char *pathname)
+static int ramfs_create(struct inode *dir, struct dentry *dentry, umode_t mode)
 {
-	struct ramfs_priv *priv = dev->priv;
-	struct ramfs_inode *node, *lastnode;
-	char *file;
-
-	node = rlookup_parent(priv, pathname, &file);
-
-	lastnode = node->child->next;
-	node = lastnode->next;
-
-	while (node) {
-		if (!strcmp(node->name, file)) {
-			struct ramfs_inode *tmp;
-			tmp = node;
-			lastnode->next = node->next;
-			ramfs_put_inode(tmp->child->next);
-			ramfs_put_inode(tmp->child);
-			ramfs_put_inode(tmp);
-			return 0;
-		}
-		lastnode = node;
-		node = node->next;
-	};
-	return -ENOENT;
+	return ramfs_mknod(dir, dentry, mode | S_IFREG);
 }
 
-static int ramfs_open(struct device_d *dev, FILE *file, const char *filename)
+static int ramfs_symlink(struct inode *dir, struct dentry *dentry,
+			 const char *symname)
 {
-	struct ramfs_priv *priv = dev->priv;
-	struct ramfs_inode *node = rlookup(priv, filename);
+	struct inode *inode;
 
-	if (!node)
-		return -ENOENT;
+	inode = ramfs_get_inode(dir->i_sb, dir, S_IFLNK | S_IRWXG);
+	if (!inode)
+		return -ENOSPC;
+
+	inode->i_link = xstrdup(symname);
+	d_instantiate(dentry, inode);
 
-	file->size = node->size;
-	file->priv = node;
 	return 0;
 }
 
-static int ramfs_close(struct device_d *dev, FILE *f)
+static const char *ramfs_get_link(struct dentry *dentry, struct inode *inode)
 {
-	return 0;
+	return inode->i_link;
 }
 
+static const struct inode_operations ramfs_symlink_inode_operations =
+{
+	.get_link = ramfs_get_link,
+};
+
+static const struct inode_operations ramfs_dir_inode_operations =
+{
+	.lookup = simple_lookup,
+	.symlink = ramfs_symlink,
+	.mkdir = ramfs_mkdir,
+	.rmdir = simple_rmdir,
+	.unlink = simple_unlink,
+	.create = ramfs_create,
+};
+
 static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node, int chunk)
 {
 	struct ramfs_chunk *data;
@@ -351,7 +227,8 @@ static struct ramfs_chunk *ramfs_find_chunk(struct ramfs_inode *node, int chunk)
 
 static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 {
-	struct ramfs_inode *node = f->priv;
+	struct inode *inode = f->f_inode;
+	struct ramfs_inode *node = to_ramfs_inode(inode);
 	int chunk;
 	struct ramfs_chunk *data;
 	int ofs;
@@ -359,12 +236,12 @@ static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 	int pos = f->pos;
 	int size = insize;
 
-	chunk = f->pos / CHUNK_SIZE;
+	chunk = pos / CHUNK_SIZE;
 	debug("%s: reading from chunk %d\n", __FUNCTION__, chunk);
 
 	/* Position ourself in stream */
 	data = ramfs_find_chunk(node, chunk);
-	ofs = f->pos % CHUNK_SIZE;
+	ofs = pos % CHUNK_SIZE;
 
 	/* Read till end of current chunk */
 	if (ofs) {
@@ -400,7 +277,8 @@ static int ramfs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
 
 static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t insize)
 {
-	struct ramfs_inode *node = f->priv;
+	struct inode *inode = f->f_inode;
+	struct ramfs_inode *node = to_ramfs_inode(inode);
 	int chunk;
 	struct ramfs_chunk *data;
 	int ofs;
@@ -447,15 +325,10 @@ static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
 	return insize;
 }
 
-static loff_t ramfs_lseek(struct device_d *dev, FILE *f, loff_t pos)
-{
-	f->pos = pos;
-	return f->pos;
-}
-
 static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
 {
-	struct ramfs_inode *node = f->priv;
+	struct inode *inode = f->f_inode;
+	struct ramfs_inode *node = to_ramfs_inode(inode);
 	int oldchunks, newchunks;
 	struct ramfs_chunk *data = node->data;
 
@@ -502,108 +375,38 @@ static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
 	return 0;
 }
 
-static DIR* ramfs_opendir(struct device_d *dev, const char *pathname)
+static struct inode *ramfs_alloc_inode(struct super_block *sb)
 {
-	DIR *dir;
-	struct ramfs_priv *priv = dev->priv;
 	struct ramfs_inode *node;
 
-	debug("opendir: %s\n", pathname);
-
-	node = rlookup(priv, pathname);
-
+	node = xzalloc(sizeof(*node));
 	if (!node)
 		return NULL;
 
-	if (!S_ISDIR(node->mode))
-		return NULL;
-
-	dir = xmalloc(sizeof(DIR));
-
-	dir->priv = node->child;
-
-	return dir;
-}
-
-static struct dirent* ramfs_readdir(struct device_d *dev, DIR *dir)
-{
-	struct ramfs_inode *node = dir->priv;
-
-	if (node) {
-		strcpy(dir->d.d_name, node->name);
-		dir->priv = node->next;
-		return &dir->d;
-	}
-	return NULL;
-}
-
-static int ramfs_closedir(struct device_d *dev, DIR *dir)
-{
-	free(dir);
-	return 0;
-}
-
-static int ramfs_stat(struct device_d *dev, const char *filename, struct stat *s)
-{
-	struct ramfs_priv *priv = dev->priv;
-	struct ramfs_inode *node = rlookup(priv, filename);
-
-	if (!node)
-		return -ENOENT;
-
-	s->st_size = node->symlink ? strlen(node->symlink) : node->size;
-	s->st_mode = node->mode;
-
-	return 0;
-}
-
-static int ramfs_symlink(struct device_d *dev, const char *pathname,
-		       const char *newpath)
-{
-	mode_t mode = S_IFLNK | S_IRWXU | S_IRWXG | S_IRWXO;
-
-	return __ramfs_create(dev, newpath, mode, pathname);
+	return &node->inode;
 }
 
-static int ramfs_readlink(struct device_d *dev, const char *pathname,
-			char *buf, size_t bufsiz)
-{
-	struct ramfs_priv *priv = dev->priv;
-	struct ramfs_inode *node = rlookup(priv, pathname);
-	int len;
-
-	if (!node || !node->symlink)
-		return -ENOENT;
-
-	len = min(bufsiz, strlen(node->symlink));
-
-	memcpy(buf, node->symlink, len);
-
-	return 0;
-}
+static const struct super_operations ramfs_ops = {
+	.alloc_inode = ramfs_alloc_inode,
+};
 
 static int ramfs_probe(struct device_d *dev)
 {
-	struct ramfs_inode *n;
+	struct inode *inode;
 	struct ramfs_priv *priv = xzalloc(sizeof(struct ramfs_priv));
+	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+	struct super_block *sb = &fsdev->sb;
 
 	dev->priv = priv;
 
 	priv->root.name = "/";
 	priv->root.mode = S_IFDIR | S_IRWXU | S_IRWXG | S_IRWXO;
 	priv->root.parent = &priv->root;
-	n = ramfs_get_inode();
-	n->name = strdup(".");
-	n->mode = S_IFDIR;
-	n->parent = &priv->root;
-	n->child = n;
-	priv->root.child = n;
-	n = ramfs_get_inode();
-	n->name = strdup("..");
-	n->mode = S_IFDIR | S_IRWXU | S_IRWXG | S_IRWXO;
-	n->parent = &priv->root;
-	n->child = priv->root.child;
-	priv->root.child->next = n;
+
+	sb->s_op = &ramfs_ops;
+
+	inode = ramfs_get_inode(sb, NULL, S_IFDIR);
+	sb->s_root = d_make_root(inode);
 
 	return 0;
 }
@@ -614,22 +417,9 @@ static void ramfs_remove(struct device_d *dev)
 }
 
 static struct fs_driver_d ramfs_driver = {
-	.create    = ramfs_create,
-	.unlink    = ramfs_unlink,
-	.open      = ramfs_open,
-	.close     = ramfs_close,
-	.truncate  = ramfs_truncate,
-	.read      = ramfs_read,
-	.write     = ramfs_write,
-	.lseek     = ramfs_lseek,
-	.mkdir     = ramfs_mkdir,
-	.rmdir     = ramfs_rmdir,
-	.opendir   = ramfs_opendir,
-	.readdir   = ramfs_readdir,
-	.closedir  = ramfs_closedir,
-	.stat      = ramfs_stat,
-	.symlink   = ramfs_symlink,
-	.readlink  = ramfs_readlink,
+	.read = ramfs_read,
+	.write = ramfs_write,
+	.truncate = ramfs_truncate,
 	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
 		.probe  = ramfs_probe,
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

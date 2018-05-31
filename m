Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fOP8O-0000Z0-EY
 for barebox@lists.infradead.org; Thu, 31 May 2018 15:05:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 31 May 2018 17:04:39 +0200
Message-Id: <20180531150442.16208-8-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] fs: tftp: Switch to dentry cache implementation
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/Kconfig |  1 -
 fs/tftp.c  | 97 +++++++++++++++++++++++++++++++-----------------------
 2 files changed, 55 insertions(+), 43 deletions(-)

diff --git a/fs/Kconfig b/fs/Kconfig
index 4d0e2787af..4cde73e7e8 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -40,7 +40,6 @@ config FS_DEVFS
 
 config FS_TFTP
 	bool
-	select FS_LEGACY
 	prompt "tftp support"
 	depends on NET
 
diff --git a/fs/tftp.c b/fs/tftp.c
index 847921aa56..cc30c5eb8f 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -89,26 +89,6 @@ struct tftp_priv {
 	IPaddr_t server;
 };
 
-static int tftp_create(struct device_d *dev, const char *pathname, mode_t mode)
-{
-	return 0;
-}
-
-static int tftp_unlink(struct device_d *dev, const char *pathname)
-{
-	return -ENOSYS;
-}
-
-static int tftp_mkdir(struct device_d *dev, const char *pathname)
-{
-	return -ENOSYS;
-}
-
-static int tftp_rmdir(struct device_d *dev, const char *pathname)
-{
-	return -ENOSYS;
-}
-
 static int tftp_truncate(struct device_d *dev, FILE *f, ulong size)
 {
 	return 0;
@@ -466,6 +446,9 @@ out:
 static int tftp_open(struct device_d *dev, FILE *file, const char *filename)
 {
 	struct file_priv *priv;
+	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+
+	filename = dpath(file->dentry, fsdev->vfsmount.mnt_root);
 
 	priv = tftp_do_open(dev, file->flags, filename);
 	if (IS_ERR(priv))
@@ -618,40 +601,76 @@ out_free:
 	return -ENOSYS;
 }
 
-static DIR* tftp_opendir(struct device_d *dev, const char *pathname)
+static const struct inode_operations tftp_file_inode_operations;
+static const struct inode_operations tftp_dir_inode_operations;
+static const struct file_operations tftp_file_operations;
+
+static struct inode *tftp_get_inode(struct super_block *sb, const struct inode *dir,
+                                     umode_t mode)
 {
-	/* not implemented in tftp protocol */
-	return NULL;
+	struct inode *inode = new_inode(sb);
+
+	if (!inode)
+		return NULL;
+
+	inode->i_ino = get_next_ino();
+	inode->i_mode = mode;
+	inode->i_size = FILE_SIZE_STREAM;
+
+	switch (mode & S_IFMT) {
+	default:
+		return NULL;
+	case S_IFREG:
+		inode->i_op = &tftp_file_inode_operations;
+		inode->i_fop = &tftp_file_operations;
+		break;
+	case S_IFDIR:
+		inode->i_op = &tftp_dir_inode_operations;
+		inode->i_fop = &simple_dir_operations;
+		inc_nlink(inode);
+		break;
+	}
+
+	return inode;
 }
 
-static int tftp_stat(struct device_d *dev, const char *filename, struct stat *s)
+static struct dentry *tftp_lookup(struct inode *dir, struct dentry *dentry,
+			    unsigned int flags)
 {
-	struct file_priv *priv;
-
-	priv = tftp_do_open(dev, O_RDONLY, filename);
-	if (IS_ERR(priv))
-		return PTR_ERR(priv);
+	struct inode *inode;
 
-	s->st_mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
-	if (priv->filesize)
-		s->st_size = priv->filesize;
-	else
-		s->st_size = FILESIZE_MAX;
+	inode = tftp_get_inode(dir->i_sb, dir, S_IFREG | S_IRWXUGO);
+	if (!inode)
+		return ERR_PTR(-ENOSPC);
 
-	tftp_do_close(priv);
+	d_add(dentry, inode);
 
-	return 0;
+	return NULL;
 }
 
+static const struct inode_operations tftp_dir_inode_operations =
+{
+	.lookup = tftp_lookup,
+};
+
+static const struct super_operations tftp_ops;
+
 static int tftp_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct tftp_priv *priv = xzalloc(sizeof(struct tftp_priv));
+	struct super_block *sb = &fsdev->sb;
+	struct inode *inode;
 
 	dev->priv = priv;
 
 	priv->server = resolv(fsdev->backingstore);
 
+	sb->s_op = &tftp_ops;
+
+	inode = tftp_get_inode(sb, NULL, S_IFDIR);
+	sb->s_root = d_make_root(inode);
+
 	return 0;
 }
 
@@ -667,12 +686,6 @@ static struct fs_driver_d tftp_driver = {
 	.close     = tftp_close,
 	.read      = tftp_read,
 	.lseek     = tftp_lseek,
-	.opendir   = tftp_opendir,
-	.stat      = tftp_stat,
-	.create    = tftp_create,
-	.unlink    = tftp_unlink,
-	.mkdir     = tftp_mkdir,
-	.rmdir     = tftp_rmdir,
 	.write     = tftp_write,
 	.truncate  = tftp_truncate,
 	.flags     = 0,
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

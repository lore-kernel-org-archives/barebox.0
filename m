Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x235.google.com ([2a00:1450:4013:c00::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJI8K-0001Xn-BL
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 07:45:26 +0000
Received: by mail-ee0-f53.google.com with SMTP id e51so903713eek.40
 for <barebox@lists.infradead.org>; Thu, 27 Feb 2014 23:45:02 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Fri, 28 Feb 2014 08:44:26 +0100
Message-Id: <1393573468-31105-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
References: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
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
Subject: [RFC 1/3] ramfs: add foofs for testing
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 fs/ramfs.c | 69 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index f45a454..4b93c2e 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -608,6 +608,48 @@ static int ramfs_probe(struct device_d *dev)
 	return 0;
 }
 
+static int foofs_read(struct device_d *_dev, FILE *f, void *buf, size_t insize)
+{
+	if (f->pos == strlen("Hello World!\n"))
+		return 0;
+
+	return sprintf(buf, "%s", "Hello World!\n");
+}
+
+static int foofs_probe(struct device_d *dev)
+{
+	struct ramfs_inode *n;
+	struct ramfs_priv *priv = xzalloc(sizeof(struct ramfs_priv));
+
+	dev->priv = priv;
+
+	priv->root.name = "/";
+	priv->root.mode = S_IFDIR | S_IRWXU | S_IRWXG | S_IRWXO;
+	priv->root.parent = &priv->root;
+	n = ramfs_get_inode();
+	n->name = strdup(".");
+	n->mode = S_IFDIR;
+	n->parent = &priv->root;
+	n->child = n;
+	priv->root.child = n;
+	n = ramfs_get_inode();
+	n->name = strdup("..");
+	n->mode = S_IFDIR | S_IRWXU | S_IRWXG | S_IRWXO;
+	n->parent = &priv->root;
+	n->child = priv->root.child;
+	priv->root.child->next = n;
+
+	/* just for test zero file read */
+	n = ramfs_get_inode();
+	n->name = strdup("foobar");
+	n->mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
+	n->parent = &priv->root;
+	n->child = priv->root.child;
+	priv->root.child->next = n;
+
+	return 0;
+}
+
 static void ramfs_remove(struct device_d *dev)
 {
 	free(dev->priv);
@@ -638,8 +680,35 @@ static struct fs_driver_d ramfs_driver = {
 	}
 };
 
+static struct fs_driver_d foofs_driver = {
+	.create    = ramfs_create,
+	.unlink    = ramfs_unlink,
+	.open      = ramfs_open,
+	.close     = ramfs_close,
+	.truncate  = ramfs_truncate,
+	.read      = foofs_read,
+	.write     = ramfs_write,
+	.lseek     = ramfs_lseek,
+	.mkdir     = ramfs_mkdir,
+	.rmdir     = ramfs_rmdir,
+	.opendir   = ramfs_opendir,
+	.readdir   = ramfs_readdir,
+	.closedir  = ramfs_closedir,
+	.stat      = ramfs_stat,
+	.symlink   = ramfs_symlink,
+	.readlink  = ramfs_readlink,
+	.flags     = FS_DRIVER_NO_DEV,
+	.drv = {
+		.probe  = foofs_probe,
+		.remove = ramfs_remove,
+		.name = "foofs",
+	}
+};
+
+
 static int ramfs_init(void)
 {
+	register_fs_driver(&foofs_driver);
 	return register_fs_driver(&ramfs_driver);
 }
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

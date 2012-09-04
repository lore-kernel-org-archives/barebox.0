Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8z8O-00082d-FQ
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 19:50:11 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 4D106DC5B09
 for <barebox@lists.infradead.org>; Tue,  4 Sep 2012 21:55:21 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  4 Sep 2012 21:50:06 +0200
Message-Id: <1346788217-16042-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120904194720.GB32603@game.jcrosoft.org>
 <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/19] ramfs: add symlink and readlink support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/ramfs.c |   61 ++++++++++++++++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 55 insertions(+), 6 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 91d06b8..8f3b936 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -42,6 +42,7 @@ struct ramfs_inode {
 	struct ramfs_inode *parent;
 	struct ramfs_inode *next;
 	struct ramfs_inode *child;
+	char *symlink;
 	ulong mode;
 
 	struct handle_d *handle;
@@ -176,6 +177,7 @@ static void ramfs_put_inode(struct ramfs_inode *node)
 		data = tmp;
 	}
 
+	free(node->symlink);
 	free(node->name);
 	free(node);
 }
@@ -212,18 +214,38 @@ static struct ramfs_inode* node_insert(struct ramfs_inode *parent_node, const ch
 
 /* ---------------------------------------------------------------*/
 
-static int ramfs_create(struct device_d *dev, const char *pathname, mode_t mode)
+static int __ramfs_create(struct device_d *dev, const char *pathname,
+			  mode_t mode, const char *symlink)
 {
 	struct ramfs_priv *priv = dev->priv;
 	struct ramfs_inode *node;
 	char *file;
+	char *__symlink = NULL;
 
 	node = rlookup_parent(priv, pathname, &file);
-	if (node) {
-		node_insert(node, file, mode);
-		return 0;
+	if (!node)
+		return -ENOENT;
+
+	if (symlink) {
+		__symlink = strdup(symlink);
+		if (!__symlink)
+			return -ENOMEM;
 	}
-	return -ENOENT;
+
+	node = node_insert(node, file, mode);
+	if (!node) {
+		free(__symlink);
+		return -ENOMEM;
+	}
+
+	node->symlink = __symlink;
+
+	return 0;
+}
+
+static int ramfs_create(struct device_d *dev, const char *pathname, mode_t mode)
+{
+	return __ramfs_create(dev, pathname, mode, NULL);
 }
 
 static int ramfs_unlink(struct device_d *dev, const char *pathname)
@@ -532,12 +554,37 @@ static int ramfs_stat(struct device_d *dev, const char *filename, struct stat *s
 	if (!node)
 		return -ENOENT;
 
-	s->st_size = node->size;
+	s->st_size = node->symlink ? strlen(node->symlink) : node->size;
 	s->st_mode = node->mode;
 
 	return 0;
 }
 
+static int ramfs_symlink(struct device_d *dev, const char *pathname,
+		       const char *newpath)
+{
+	mode_t mode = S_IFLNK | S_IRWXU | S_IRWXG | S_IRWXO;
+
+	return __ramfs_create(dev, newpath, mode, pathname);
+}
+
+static int ramfs_readlink(struct device_d *dev, const char *pathname,
+			char *buf, size_t bufsiz)
+{
+	struct ramfs_priv *priv = dev->priv;
+	struct ramfs_inode *node = rlookup(priv, pathname);
+	int len;
+
+	if (!node || !node->symlink)
+		return -ENOENT;
+
+	len = min(bufsiz, strlen(node->symlink));
+
+	memcpy(buf, node->symlink, len);
+
+	return 0;
+}
+
 static int ramfs_probe(struct device_d *dev)
 {
 	struct ramfs_inode *n;
@@ -584,6 +631,8 @@ static struct fs_driver_d ramfs_driver = {
 	.readdir   = ramfs_readdir,
 	.closedir  = ramfs_closedir,
 	.stat      = ramfs_stat,
+	.symlink   = ramfs_symlink,
+	.readlink  = ramfs_readlink,
 	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
 		.probe  = ramfs_probe,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

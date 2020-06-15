Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCa-0007Jz-3R
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:02:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:02:25 +0200
Message-Id: <20200615060229.7533-8-s.hauer@pengutronix.de>
In-Reply-To: <20200615060229.7533-1-s.hauer@pengutronix.de>
References: <20200615060229.7533-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/11] fs: ramfs: Drop dead code
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 800b03af29..2b6df07996 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -34,9 +34,6 @@ struct ramfs_chunk {
 struct ramfs_inode {
 	struct inode inode;
 	char *name;
-	struct ramfs_inode *parent;
-	struct ramfs_inode *next;
-	struct ramfs_inode *child;
 	char *symlink;
 	ulong mode;
 
@@ -53,10 +50,6 @@ static inline struct ramfs_inode *to_ramfs_inode(struct inode *inode)
 	return container_of(inode, struct ramfs_inode, inode);
 }
 
-struct ramfs_priv {
-	struct ramfs_inode root;
-};
-
 /* ---------------------------------------------------------------*/
 
 static const struct super_operations ramfs_ops;
@@ -411,16 +404,9 @@ static const struct super_operations ramfs_ops = {
 static int ramfs_probe(struct device_d *dev)
 {
 	struct inode *inode;
-	struct ramfs_priv *priv = xzalloc(sizeof(struct ramfs_priv));
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
 	struct super_block *sb = &fsdev->sb;
 
-	dev->priv = priv;
-
-	priv->root.name = "/";
-	priv->root.mode = S_IFDIR | S_IRWXU | S_IRWXG | S_IRWXO;
-	priv->root.parent = &priv->root;
-
 	sb->s_op = &ramfs_ops;
 
 	inode = ramfs_get_inode(sb, NULL, S_IFDIR);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

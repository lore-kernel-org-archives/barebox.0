Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g54gv-0003J2-9v
 for barebox@lists.infradead.org; Wed, 26 Sep 2018 07:57:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Sep 2018 09:56:25 +0200
Message-Id: <20180926075625.444-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: ramfs: Free data when file is unlinked
To: Barebox List <barebox@lists.infradead.org>

Since the switch to dentry cache implementation the memory is no
longer freed when a file in ramfs is deleted. Fix this.

Fixes: b283b72639 ("fs: ramfs: Switch to dentry cache implementation")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ramfs.c | 24 +++++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index 7548bdac9f..09dafe02ae 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -176,6 +176,28 @@ static int ramfs_symlink(struct inode *dir, struct dentry *dentry,
 	return 0;
 }
 
+static int ramfs_unlink(struct inode *dir, struct dentry *dentry)
+{
+	struct inode *inode = d_inode(dentry);
+
+	if (inode) {
+		struct ramfs_inode *node = to_ramfs_inode(inode);
+		struct ramfs_chunk *chunk = node->data;
+
+		node->data = NULL;
+
+		while (chunk) {
+			struct ramfs_chunk *tmp = chunk;
+
+			chunk = chunk->next;
+
+			ramfs_put_chunk(tmp);
+		}
+	}
+
+	return simple_unlink(dir, dentry);
+}
+
 static const char *ramfs_get_link(struct dentry *dentry, struct inode *inode)
 {
 	return inode->i_link;
@@ -192,7 +214,7 @@ static const struct inode_operations ramfs_dir_inode_operations =
 	.symlink = ramfs_symlink,
 	.mkdir = ramfs_mkdir,
 	.rmdir = simple_rmdir,
-	.unlink = simple_unlink,
+	.unlink = ramfs_unlink,
 	.create = ramfs_create,
 };
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

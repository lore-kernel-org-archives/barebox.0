Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fzzH7-000431-S7
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 07:09:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2018 09:09:07 +0200
Message-Id: <20180912070908.24485-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] fs: devfs: Create device files as character devices
To: Barebox List <barebox@lists.infradead.org>

Without this files in /dev/ appear as regular files. copy_file()
stumbles upon this as it tries a truncate() on that files which
then fails. Create the files as character devices so that copy_file()
works as expected.

Fixes: 9137c41915 ("fs: devfs: Switch to dentry cache implementation")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index 5d0bb2c674..84c619f1ed 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -226,7 +226,7 @@ static struct inode *devfs_get_inode(struct super_block *sb, const struct inode
 	switch (mode & S_IFMT) {
 	default:
 		return NULL;
-	case S_IFREG:
+	case S_IFCHR:
 		inode->i_op = &devfs_file_inode_operations;
 		inode->i_fop = &devfs_file_operations;
 		break;
@@ -251,7 +251,7 @@ static struct dentry *devfs_lookup(struct inode *dir, struct dentry *dentry,
 	if (!cdev)
 		return ERR_PTR(-ENOENT);
 
-	inode = devfs_get_inode(dir->i_sb, dir, S_IFREG | S_IRWXUGO);
+	inode = devfs_get_inode(dir->i_sb, dir, S_IFCHR | S_IRWXUGO);
 	if (!inode)
 		return ERR_PTR(-ENOMEM);
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fzzH7-000430-S8
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 07:09:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2018 09:09:08 +0200
Message-Id: <20180912070908.24485-2-s.hauer@pengutronix.de>
In-Reply-To: <20180912070908.24485-1-s.hauer@pengutronix.de>
References: <20180912070908.24485-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] fs: devfs: fix r/w permissions
To: Barebox List <barebox@lists.infradead.org>

The real r/w flags were lost in the switch to dentry cache
implementation. Restore them.

Fixes: 9137c41915 ("fs: devfs: Switch to dentry cache implementation")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index 84c619f1ed..d2b801036e 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -251,10 +251,15 @@ static struct dentry *devfs_lookup(struct inode *dir, struct dentry *dentry,
 	if (!cdev)
 		return ERR_PTR(-ENOENT);
 
-	inode = devfs_get_inode(dir->i_sb, dir, S_IFCHR | S_IRWXUGO);
+	inode = devfs_get_inode(dir->i_sb, dir, S_IFCHR);
 	if (!inode)
 		return ERR_PTR(-ENOMEM);
 
+	if (cdev->ops->write)
+		inode->i_mode |= S_IWUSR;
+	if (cdev->ops->read)
+		inode->i_mode |= S_IRUSR;
+
 	dinode = container_of(inode, struct devfs_inode, inode);
 
 	inode->i_size = cdev->size;
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

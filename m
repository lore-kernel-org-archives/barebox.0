Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gChR3-0003Vz-GP
 for barebox@lists.infradead.org; Wed, 17 Oct 2018 08:44:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2018 10:43:53 +0200
Message-Id: <20181017084353.5217-3-s.hauer@pengutronix.de>
In-Reply-To: <20181017084353.5217-1-s.hauer@pengutronix.de>
References: <20181017084353.5217-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] fs: devfs: implement d_revalidate hook
To: Barebox List <barebox@lists.infradead.org>
Cc: Ladislav Michl <ladis@linux-mips.org>

The files in devfs can change withouut the fs layer noticing, so we
have to revalidate dentries before using them.

A failure could be triggered with:

ls /dev/nand0.root.ubi; ubiattach /dev/nand0.root; ls /dev/nand0.root.ubi

The first 'ls' would create a dentry for nand0.root.ubi with no inode
associated since it does not yet exist. 'ubiattach' then creates that
file, but the second 'ls' does not show it since the dentry is not
revalidated and thus no inode is added to that dentry. This patch
fixes this and also the opposite case when a file is removed (for
example with ubidetach).

Reported-by: Ladislav Michl <ladis@linux-mips.org>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/fs/devfs.c b/fs/devfs.c
index d2b801036e..717e66c5dc 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -212,6 +212,32 @@ static const struct file_operations devfs_dir_operations;
 static const struct inode_operations devfs_dir_inode_operations;
 static const struct file_operations devfs_file_operations;
 
+static int devfs_lookup_revalidate(struct dentry *dentry, unsigned int flags)
+{
+	struct devfs_inode *dinode;
+	struct inode *inode;
+	struct cdev *cdev;
+
+	cdev = cdev_by_name(dentry->name);
+	if (!cdev)
+		return -ENOENT;
+
+	inode = d_inode(dentry);
+	if (!inode)
+		return 0;
+
+	dinode = container_of(inode, struct devfs_inode, inode);
+
+	if (dinode->cdev != cdev)
+		return 0;
+
+	return 1;
+}
+
+static const struct dentry_operations devfs_dentry_operations = {
+	.d_revalidate = devfs_lookup_revalidate,
+};
+
 static struct inode *devfs_get_inode(struct super_block *sb, const struct inode *dir,
                                      umode_t mode)
 {
@@ -290,6 +316,7 @@ static int devfs_probe(struct device_d *dev)
 	struct super_block *sb = &fsdev->sb;
 
 	sb->s_op = &devfs_ops;
+	sb->s_d_op = &devfs_dentry_operations;
 
 	inode = devfs_get_inode(sb, NULL, S_IFDIR);
 	sb->s_root = d_make_root(inode);
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

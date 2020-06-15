Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCn-0007XN-Hs
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:02:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:02:20 +0200
Message-Id: <20200615060229.7533-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] fs: Add destroy_inode callbacks to filesystems
To: Barebox List <barebox@lists.infradead.org>

Several filesystems rely on the default function which frees
the struct inode * rather than the filesystem specific inode
which the inode is embedded in. This works because the inode
is the first element in the filesystem specific inode. Let's
not depend on this behaviour and for clarity add the destroy_inode
callbacks to all filesystems.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/cramfs/cramfs.c     | 10 ++++++++++
 fs/devfs.c             |  8 ++++++++
 fs/nfs.c               |  8 ++++++++
 fs/ramfs.c             |  8 ++++++++
 fs/squashfs/squashfs.c | 10 +++++++++-
 5 files changed, 43 insertions(+), 1 deletion(-)

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 99cbdb920c..3ea6bd437e 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -333,6 +333,15 @@ static struct inode *cramfs_alloc_inode(struct super_block *sb)
 	return &info->i_inode;
 }
 
+static void cramfs_destroy_inode(struct inode *inode)
+{
+	struct cramfs_inode_info *info;
+
+	info = to_cramfs_inode_info(inode);
+
+	free(info);
+}
+
 static int cramfs_iterate(struct file *file, struct dir_context *ctx)
 {
 	struct dentry *dentry = file->f_path.dentry;
@@ -427,6 +436,7 @@ static const struct inode_operations cramfs_symlink_inode_operations =
 
 static const struct super_operations cramfs_ops = {
 	.alloc_inode = cramfs_alloc_inode,
+	.destroy_inode = cramfs_destroy_inode,
 };
 
 static int cramfs_probe(struct device_d *dev)
diff --git a/fs/devfs.c b/fs/devfs.c
index b503f277ac..df229cca48 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -200,6 +200,13 @@ static struct inode *devfs_alloc_inode(struct super_block *sb)
 	return &node->inode;
 }
 
+static void devfs_destroy_inode(struct inode *inode)
+{
+	struct devfs_inode *node = container_of(inode, struct devfs_inode, inode);
+
+	free(node);
+}
+
 static int devfs_iterate(struct file *file, struct dir_context *ctx)
 {
 	struct cdev *cdev;
@@ -314,6 +321,7 @@ static const struct inode_operations devfs_dir_inode_operations =
 
 static const struct super_operations devfs_ops = {
 	.alloc_inode = devfs_alloc_inode,
+	.destroy_inode = devfs_destroy_inode,
 };
 
 static int devfs_probe(struct device_d *dev)
diff --git a/fs/nfs.c b/fs/nfs.c
index 15ddab7915..6c4637281d 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1202,6 +1202,13 @@ static struct inode *nfs_alloc_inode(struct super_block *sb)
 	return &node->inode;
 }
 
+static void nfs_destroy_inode(struct inode *inode)
+{
+	struct nfs_inode *node = nfsi(inode);
+
+	free(node);
+}
+
 static const struct inode_operations nfs_file_inode_operations;
 static const struct file_operations nfs_dir_operations;
 static const struct inode_operations nfs_dir_inode_operations;
@@ -1273,6 +1280,7 @@ static const struct inode_operations nfs_dir_inode_operations =
 
 static const struct super_operations nfs_ops = {
 	.alloc_inode = nfs_alloc_inode,
+	.destroy_inode = nfs_destroy_inode,
 };
 
 static char *rootnfsopts;
diff --git a/fs/ramfs.c b/fs/ramfs.c
index 5328775ee0..341b6130de 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -396,8 +396,16 @@ static struct inode *ramfs_alloc_inode(struct super_block *sb)
 	return &node->inode;
 }
 
+static void ramfs_destroy_inode(struct inode *inode)
+{
+	struct ramfs_inode *node = to_ramfs_inode(inode);
+
+	free(node);
+}
+
 static const struct super_operations ramfs_ops = {
 	.alloc_inode = ramfs_alloc_inode,
+	.destroy_inode = ramfs_destroy_inode,
 };
 
 static int ramfs_probe(struct device_d *dev)
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 38aff6d5b8..cb2d936ea4 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -76,8 +76,16 @@ static struct inode *squashfs_alloc_inode(struct super_block *sb)
 	return &node->vfs_inode;
 }
 
+static void squashfs_destroy_inode(struct inode *inode)
+{
+	struct squashfs_inode_info *node = squashfs_i(inode);
+
+	free(inode);
+}
+
 static const struct super_operations squashfs_super_ops = {
-        .alloc_inode = squashfs_alloc_inode,
+	.alloc_inode = squashfs_alloc_inode,
+	.destroy_inode = squashfs_destroy_inode,
 };
 
 static int squashfs_probe(struct device_d *dev)
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

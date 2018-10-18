Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2GZ-0003LU-AO
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:59:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:14 +0200
Message-Id: <20181018065827.19973-8-s.hauer@pengutronix.de>
In-Reply-To: <20181018065827.19973-1-s.hauer@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/20] fs: Make locally used functions static
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 36 ++++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index d76d829140..899b9d7bc3 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -93,7 +93,7 @@ static struct fs_device_d *get_fsdevice_by_path(const char *path);
 
 LIST_HEAD(fs_device_list);
 
-struct vfsmount *mntget(struct vfsmount *mnt)
+static struct vfsmount *mntget(struct vfsmount *mnt)
 {
 	if (!mnt)
 		return NULL;
@@ -103,7 +103,7 @@ struct vfsmount *mntget(struct vfsmount *mnt)
 	return mnt;
 }
 
-void mntput(struct vfsmount *mnt)
+static void mntput(struct vfsmount *mnt)
 {
 	if (!mnt)
 		return;
@@ -111,7 +111,7 @@ void mntput(struct vfsmount *mnt)
 	mnt->ref--;
 }
 
-struct vfsmount *lookup_mnt(struct path *path)
+static struct vfsmount *lookup_mnt(struct path *path)
 {
 	struct fs_device_d *fsdev;
 
@@ -181,7 +181,7 @@ static int check_fd(int fd)
 	return 0;
 }
 
-int create(struct dentry *dir, struct dentry *dentry)
+static int create(struct dentry *dir, struct dentry *dentry)
 {
 	struct inode *inode;
 
@@ -609,7 +609,7 @@ static int fs_probe(struct device_d *dev)
 	return 0;
 }
 
-void dentry_kill(struct dentry *dentry)
+static void dentry_kill(struct dentry *dentry)
 {
 	if (dentry->d_inode)
 		iput(dentry->d_inode);
@@ -622,7 +622,7 @@ void dentry_kill(struct dentry *dentry)
 	free(dentry);
 }
 
-int dentry_delete_subtree(struct super_block *sb, struct dentry *parent)
+static int dentry_delete_subtree(struct super_block *sb, struct dentry *parent)
 {
 	struct dentry *dentry, *tmp;
 
@@ -1152,7 +1152,7 @@ void d_set_d_op(struct dentry *dentry, const struct dentry_operations *op)
  * available. On a success the dentry is returned. The name passed in is
  * copied and the copy passed in may be reused after this call.
  */
-struct dentry *__d_alloc(struct super_block *sb, const struct qstr *name)
+static struct dentry *__d_alloc(struct super_block *sb, const struct qstr *name)
 {
 	struct dentry *dentry;
 
@@ -1192,7 +1192,7 @@ struct dentry *__d_alloc(struct super_block *sb, const struct qstr *name)
  * available. On a success the dentry is returned. The name passed in is
  * copied and the copy passed in may be reused after this call.
  */
-struct dentry *d_alloc(struct dentry *parent, const struct qstr *name)
+static struct dentry *d_alloc(struct dentry *parent, const struct qstr *name)
 {
 	struct dentry *dentry = __d_alloc(parent->d_sb, name);
 	if (!dentry)
@@ -1265,7 +1265,7 @@ static bool d_same_name(const struct dentry *dentry,
 	return strncmp(dentry->d_name.name, name->name, name->len) == 0;
 }
 
-struct dentry *d_lookup(const struct dentry *parent, const struct qstr *name)
+static struct dentry *d_lookup(const struct dentry *parent, const struct qstr *name)
 {
 	struct dentry *dentry;
 
@@ -1281,7 +1281,7 @@ struct dentry *d_lookup(const struct dentry *parent, const struct qstr *name)
 	return NULL;
 }
 
-void d_invalidate(struct dentry *dentry)
+static void d_invalidate(struct dentry *dentry)
 {
 }
 
@@ -1358,13 +1358,13 @@ static void set_nameidata(struct nameidata *p, int dfd, struct filename *name)
 	p->total_link_count = 0;
 }
 
-void path_get(const struct path *path)
+static void path_get(const struct path *path)
 {
 	mntget(path->mnt);
 	dget(path->dentry);
 }
 
-void path_put(const struct path *path)
+static void path_put(const struct path *path)
 {
 	dput(path->dentry);
 	mntput(path->mnt);
@@ -1547,7 +1547,7 @@ static int lookup_fast(struct nameidata *nd, struct path *path)
  * Return 1 if we went up a level and 0 if we were already at the
  * root.
  */
-int follow_up(struct path *path)
+static int follow_up(struct path *path)
 {
 	struct vfsmount *parent, *mnt = path->mnt;
 	struct dentry *mountpoint;
@@ -1739,7 +1739,7 @@ static int component_len(const char *name, char separator)
 	return len;
 }
 
-struct filename *getname(const char *filename)
+static struct filename *getname(const char *filename)
 {
 	struct filename *result;
 
@@ -1758,7 +1758,7 @@ struct filename *getname(const char *filename)
 	return result;
 }
 
-void putname(struct filename *name)
+static void putname(struct filename *name)
 {
 	BUG_ON(name->refcnt <= 0);
 
@@ -2105,7 +2105,7 @@ static struct fs_device_d *get_fsdevice_by_path(const char *pathname)
 	return fsdev;
 }
 
-int vfs_rmdir(struct inode *dir, struct dentry *dentry)
+static int vfs_rmdir(struct inode *dir, struct dentry *dentry)
 {
 	int error;
 
@@ -2129,7 +2129,7 @@ out:
 	return error;
 }
 
-int vfs_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
+static int vfs_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
 {
 	int error;
 
@@ -2388,7 +2388,7 @@ out:
 }
 EXPORT_SYMBOL(unlink);
 
-int vfs_symlink(struct inode *dir, struct dentry *dentry, const char *oldname)
+static int vfs_symlink(struct inode *dir, struct dentry *dentry, const char *oldname)
 {
 	if (!dir->i_op->symlink)
 		return -EPERM;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

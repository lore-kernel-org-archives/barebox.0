Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHe-0005zB-Ti
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:04:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:03:57 +0200
Message-Id: <20181002140403.3735-9-s.hauer@pengutronix.de>
In-Reply-To: <20181002140403.3735-1-s.hauer@pengutronix.de>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/14] fs: implement iget_locked and iget_failed
To: Barebox List <barebox@lists.infradead.org>

Implement in fs core rather than using a private version in UBIFS.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c            | 24 ++++++++++++++++++++++++
 fs/ubifs/super.c   | 29 -----------------------------
 include/linux/fs.h |  2 ++
 3 files changed, 26 insertions(+), 29 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 5bfc6f8b78..12851b7ae3 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1051,6 +1051,30 @@ struct inode *new_inode(struct super_block *sb)
 	return inode;
 }
 
+struct inode *iget_locked(struct super_block *sb, unsigned long ino)
+{
+	struct inode *inode;
+
+	list_for_each_entry(inode, &sb->s_inodes, i_sb_list) {
+		if (inode->i_ino == ino)
+			return iget(inode);
+	}
+
+	inode = new_inode(sb);
+	if (!inode)
+		return NULL;
+
+	inode->i_state = I_NEW;
+	inode->i_ino = ino;
+
+	return inode;
+}
+
+void iget_failed(struct inode *inode)
+{
+	iput(inode);
+}
+
 void iput(struct inode *inode)
 {
 	if (!inode->i_count)
diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index bfc0a4714a..8bd1803bce 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -55,26 +55,6 @@ int set_anon_super(struct super_block *s, void *data)
 	return 0;
 }
 
-struct inode *iget_locked(struct super_block *sb, unsigned long ino)
-{
-	struct inode *inode;
-
-	inode = (struct inode *)kzalloc(
-			sizeof(struct ubifs_inode), 0);
-	if (inode) {
-		inode->i_ino = ino;
-		inode->i_sb = sb;
-		list_add(&inode->i_sb_list, &sb->s_inodes);
-		inode->i_state = I_SYNC | I_NEW;
-	}
-
-	return inode;
-}
-
-void iget_failed(struct inode *inode)
-{
-}
-
 int ubifs_iput(struct inode *inode)
 {
 	list_del_init(&inode->i_sb_list);
@@ -2574,15 +2554,6 @@ int ubifs_get_super(struct device_d *dev, struct ubi_volume_desc *ubi, int silen
 	}
 	sb->s_dev = c->vi.cdev;
 
-	if (c->rw_incompat) {
-		ubifs_err(c, "the file-system is not R/W-compatible");
-		ubifs_msg(c, "on-flash format version is w%d/r%d, but software only supports up to version w%d/r%d",
-			  c->fmt_version, c->ro_compat_version,
-			  UBIFS_FORMAT_VERSION, UBIFS_RO_COMPAT_VERSION);
-		err = -EROFS;
-		goto out;
-	}
-
 	return 0;
 out:
 	kfree(c);
diff --git a/include/linux/fs.h b/include/linux/fs.h
index a29fd8fe4a..d38dc12872 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -482,5 +482,7 @@ int simple_rmdir(struct inode *dir, struct dentry *dentry);
 struct dentry *simple_lookup(struct inode *, struct dentry *, unsigned int flags);
 int dcache_readdir(struct file *, struct dir_context *);
 const char *simple_get_link(struct dentry *dentry, struct inode *inode);
+struct inode *iget_locked(struct super_block *, unsigned long);
+void iget_failed(struct inode *inode);
 
 #endif /* _LINUX_FS_H */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

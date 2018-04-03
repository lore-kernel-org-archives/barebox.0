Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3GhB-00029J-HO
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:37 +0200
Message-Id: <20180403074851.5411-6-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/19] fs: Add super_operations
To: Barebox List <barebox@lists.infradead.org>

Add a struct super_operations we can use later when we get a fs
implementation closer to Linux. Only add the functions we'll likely
need though.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/super.c   |  4 ----
 fs/ubifs/ubifs.h   | 35 -----------------------------------
 include/linux/fs.h |  5 +++++
 3 files changed, 5 insertions(+), 39 deletions(-)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index ce6e95e373..b4eb76202b 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -556,7 +556,6 @@ out:
 done:
 	clear_inode(inode);
 }
-#endif
 
 static void ubifs_dirty_inode(struct inode *inode, int flags)
 {
@@ -569,7 +568,6 @@ static void ubifs_dirty_inode(struct inode *inode, int flags)
 	}
 }
 
-#ifndef __BAREBOX__
 static int ubifs_statfs(struct dentry *dentry, struct kstatfs *buf)
 {
 	struct ubifs_info *c = dentry->d_sb->s_fs_info;
@@ -2107,9 +2105,7 @@ const struct super_operations ubifs_super_operations = {
 	.write_inode   = ubifs_write_inode,
 	.evict_inode   = ubifs_evict_inode,
 	.statfs        = ubifs_statfs,
-#endif
 	.dirty_inode   = ubifs_dirty_inode,
-#ifndef __BAREBOX__
 	.remount_fs    = ubifs_remount_fs,
 	.show_options  = ubifs_show_options,
 	.sync_fs       = ubifs_sync_fs,
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 1391bd7283..22b24a1161 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -97,41 +97,6 @@ void *kmemdup(const void *src, size_t len, gfp_t gfp);
 /* uapi/linux/limits.h */
 #define XATTR_LIST_MAX 65536	/* size of extended attribute namelist (64k) */
 
-struct super_operations {
-   	struct inode *(*alloc_inode)(struct super_block *sb);
-	void (*destroy_inode)(struct inode *);
-
-   	void (*dirty_inode) (struct inode *, int flags);
-#ifndef __BAREBOX__
-	int (*write_inode) (struct inode *, struct writeback_control *wbc);
-#endif
-	int (*drop_inode) (struct inode *);
-	void (*evict_inode) (struct inode *);
-	void (*put_super) (struct super_block *);
-	int (*sync_fs)(struct super_block *sb, int wait);
-	int (*freeze_fs) (struct super_block *);
-	int (*unfreeze_fs) (struct super_block *);
-#ifndef __BAREBOX__
-	int (*statfs) (struct dentry *, struct kstatfs *);
-#endif
-	int (*remount_fs) (struct super_block *, int *, char *);
-	void (*umount_begin) (struct super_block *);
-
-#ifndef __BAREBOX__
-	int (*show_options)(struct seq_file *, struct dentry *);
-	int (*show_devname)(struct seq_file *, struct dentry *);
-	int (*show_path)(struct seq_file *, struct dentry *);
-	int (*show_stats)(struct seq_file *, struct dentry *);
-#endif
-#ifdef CONFIG_QUOTA
-	ssize_t (*quota_read)(struct super_block *, int, char *, size_t, loff_t);
-	ssize_t (*quota_write)(struct super_block *, int, const char *, size_t, loff_t);
-#endif
-	int (*bdev_try_to_free_page)(struct super_block*, struct page*, gfp_t);
-	long (*nr_cached_objects)(struct super_block *, int);
-	long (*free_cached_objects)(struct super_block *, long, int);
-};
-
 /*
  * get_seconds() not really needed in the read-only implmentation
  */
diff --git a/include/linux/fs.h b/include/linux/fs.h
index c1a5802eea..153c464470 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -252,6 +252,11 @@ struct file {
 #endif
 };
 
+struct super_operations {
+	struct inode *(*alloc_inode)(struct super_block *sb);
+	void (*destroy_inode)(struct inode *);
+};
+
 /*
  * Inode flags - they have no relation to superblock flags now
  */
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x231.google.com ([2a00:1450:400c:c09::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aNQHS-0000Md-Q7
 for barebox@lists.infradead.org; Sun, 24 Jan 2016 19:25:00 +0000
Received: by mail-wm0-x231.google.com with SMTP id l65so40717445wmf.1
 for <barebox@lists.infradead.org>; Sun, 24 Jan 2016 11:24:36 -0800 (PST)
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Sun, 24 Jan 2016 20:24:16 +0100
Message-Id: <1453663456-5168-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [RFC] fs: move super_block and inode definitions to central fs.h
 header
To: barebox@lists.infradead.org

Both super_block and inode are common to various file systems, so
move them to the central place.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/ubifs/ubifs.h | 134 +------------------------------------------------------
 include/fs.h     | 134 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 135 insertions(+), 133 deletions(-)

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index c025d34..afed252 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -34,6 +34,7 @@
 #include <common.h>
 #include <malloc.h>
 #include <lzo.h>
+#include <fs.h>
 #include <linux/ctype.h>
 #include <linux/time.h>
 #include <linux/math64.h>
@@ -77,13 +78,6 @@ void iput(struct inode *inode);
 #define atomic_long_dec(a)
 #define	atomic_long_sub(a, b)
 
-/* linux/include/time.h */
-
-struct timespec {
-	time_t	tv_sec;		/* seconds */
-	long	tv_nsec;	/* nanoseconds */
-};
-
 /* linux/include/dcache.h */
 
 /*
@@ -99,132 +93,6 @@ struct qstr {
 	const char *name;
 };
 
-struct inode {
-	struct hlist_node	i_hash;
-	struct list_head	i_list;
-	struct list_head	i_sb_list;
-	struct list_head	i_dentry;
-	unsigned long		i_ino;
-	unsigned int		i_nlink;
-	uid_t			i_uid;
-	gid_t			i_gid;
-	dev_t			i_rdev;
-	u64			i_version;
-	loff_t			i_size;
-#ifdef __NEED_I_SIZE_ORDERED
-	seqcount_t		i_size_seqcount;
-#endif
-	struct timespec		i_atime;
-	struct timespec		i_mtime;
-	struct timespec		i_ctime;
-	unsigned int		i_blkbits;
-	unsigned short          i_bytes;
-	umode_t			i_mode;
-	spinlock_t		i_lock;	/* i_blocks, i_bytes, maybe i_size */
-	struct mutex		i_mutex;
-	struct rw_semaphore	i_alloc_sem;
-	const struct inode_operations	*i_op;
-	const struct file_operations	*i_fop;	/* former ->i_op->default_file_ops */
-	struct super_block	*i_sb;
-	struct file_lock	*i_flock;
-#ifdef CONFIG_QUOTA
-	struct dquot		*i_dquot[MAXQUOTAS];
-#endif
-	struct list_head	i_devices;
-	int			i_cindex;
-
-	__u32			i_generation;
-
-#ifdef CONFIG_DNOTIFY
-	unsigned long		i_dnotify_mask; /* Directory notify events */
-	struct dnotify_struct	*i_dnotify; /* for directory notifications */
-#endif
-
-#ifdef CONFIG_INOTIFY
-	struct list_head	inotify_watches; /* watches on this inode */
-	struct mutex		inotify_mutex;	/* protects the watches list */
-#endif
-
-	unsigned long		i_state;
-	unsigned long		dirtied_when;	/* jiffies of first dirtying */
-
-	unsigned int		i_flags;
-
-#ifdef CONFIG_SECURITY
-	void			*i_security;
-#endif
-	void			*i_private; /* fs or device private pointer */
-};
-
-struct super_block {
-	struct list_head	s_list;		/* Keep this first */
-	dev_t			s_dev;		/* search index; _not_ kdev_t */
-	unsigned long		s_blocksize;
-	unsigned char		s_blocksize_bits;
-	unsigned char		s_dirt;
-	unsigned long long	s_maxbytes;	/* Max file size */
-	struct file_system_type	*s_type;
-	const struct super_operations	*s_op;
-	struct dquot_operations	*dq_op;
-	struct quotactl_ops	*s_qcop;
-	const struct export_operations *s_export_op;
-	unsigned long		s_flags;
-	unsigned long		s_magic;
-	struct dentry		*s_root;
-	struct rw_semaphore	s_umount;
-	struct mutex		s_lock;
-	int			s_count;
-	int			s_syncing;
-	int			s_need_sync_fs;
-#ifdef CONFIG_SECURITY
-	void                    *s_security;
-#endif
-	struct xattr_handler	**s_xattr;
-
-	struct list_head	s_inodes;	/* all inodes */
-	struct list_head	s_dirty;	/* dirty inodes */
-	struct list_head	s_io;		/* parked for writeback */
-	struct list_head	s_more_io;	/* parked for more writeback */
-	struct hlist_head	s_anon;		/* anonymous dentries for (nfs) exporting */
-	struct list_head	s_files;
-	/* s_dentry_lru and s_nr_dentry_unused are protected by dcache_lock */
-	struct list_head	s_dentry_lru;	/* unused dentry lru */
-	int			s_nr_dentry_unused;	/* # of dentry on lru */
-
-	struct block_device	*s_bdev;
-	struct mtd_info		*s_mtd;
-	struct list_head	s_instances;
-
-	int			s_frozen;
-	wait_queue_head_t	s_wait_unfrozen;
-
-	char s_id[32];				/* Informational name */
-
-	void 			*s_fs_info;	/* Filesystem private info */
-
-	/*
-	 * The next field is for VFS *only*. No filesystems have any business
-	 * even looking at it. You had been warned.
-	 */
-	struct mutex s_vfs_rename_mutex;	/* Kludge */
-
-	/* Granularity of c/m/atime in ns.
-	   Cannot be worse than a second */
-	u32		   s_time_gran;
-
-	/*
-	 * Filesystem subtype.  If non-empty the filesystem type field
-	 * in /proc/mounts will be "type.subtype"
-	 */
-	char *s_subtype;
-
-	/*
-	 * Saved mount options for lazy filesystems using
-	 * generic_show_options()
-	 */
-	char *s_options;
-};
-
 struct file_system_type {
 	const char *name;
 	int fs_flags;
diff --git a/include/fs.h b/include/fs.h
index ee7e48b..a5e48a2 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -3,6 +3,7 @@
 
 #include <driver.h>
 #include <filetype.h>
+#include <linux/barebox-wrapper.h>
 
 #define PATH_MAX       1024        /* include/linux/limits.h */
 
@@ -10,6 +11,139 @@ struct partition;
 struct node_d;
 struct stat;
 
+/* linux/include/time.h */
+
+struct timespec {
+	time_t	tv_sec;		/* seconds */
+	long	tv_nsec;	/* nanoseconds */
+};
+
+struct super_block {
+	struct list_head	s_list;		/* Keep this first */
+	dev_t			s_dev;		/* search index; _not_ kdev_t */
+	unsigned long		s_blocksize;
+	unsigned char		s_blocksize_bits;
+	unsigned char		s_dirt;
+	unsigned long long	s_maxbytes;	/* Max file size */
+	struct file_system_type	*s_type;
+	const struct super_operations	*s_op;
+	struct dquot_operations	*dq_op;
+	struct quotactl_ops	*s_qcop;
+	const struct export_operations *s_export_op;
+	unsigned long		s_flags;
+	unsigned long		s_magic;
+	struct dentry		*s_root;
+	struct rw_semaphore	s_umount;
+	struct mutex		s_lock;
+	int			s_count;
+	int			s_syncing;
+	int			s_need_sync_fs;
+#ifdef CONFIG_SECURITY
+	void                    *s_security;
+#endif
+	struct xattr_handler	**s_xattr;
+
+	struct list_head	s_inodes;	/* all inodes */
+	struct list_head	s_dirty;	/* dirty inodes */
+	struct list_head	s_io;		/* parked for writeback */
+	struct list_head	s_more_io;	/* parked for more writeback */
+	struct hlist_head	s_anon;		/* anonymous dentries for (nfs) exporting */
+	struct list_head	s_files;
+	/* s_dentry_lru and s_nr_dentry_unused are protected by dcache_lock */
+	struct list_head	s_dentry_lru;	/* unused dentry lru */
+	int			s_nr_dentry_unused;	/* # of dentry on lru */
+
+	struct block_device	*s_bdev;
+	struct mtd_info		*s_mtd;
+	struct list_head	s_instances;
+
+	int			s_frozen;
+	wait_queue_head_t	s_wait_unfrozen;
+
+	char s_id[32];				/* Informational name */
+
+	void 			*s_fs_info;	/* Filesystem private info */
+
+	/*
+	 * The next field is for VFS *only*. No filesystems have any business
+	 * even looking at it. You had been warned.
+	 */
+	struct mutex s_vfs_rename_mutex;	/* Kludge */
+
+	/* Granularity of c/m/atime in ns.
+	   Cannot be worse than a second */
+	u32		   s_time_gran;
+
+	/*
+	 * Filesystem subtype.  If non-empty the filesystem type field
+	 * in /proc/mounts will be "type.subtype"
+	 */
+	char *s_subtype;
+
+	/*
+	 * Saved mount options for lazy filesystems using
+	 * generic_show_options()
+	 */
+	char *s_options;
+};
+
+struct inode {
+	struct hlist_node	i_hash;
+	struct list_head	i_list;
+	struct list_head	i_sb_list;
+	struct list_head	i_dentry;
+	unsigned long		i_ino;
+	unsigned int		i_nlink;
+	uid_t			i_uid;
+	gid_t			i_gid;
+	dev_t			i_rdev;
+	u64			i_version;
+	loff_t			i_size;
+#ifdef __NEED_I_SIZE_ORDERED
+	seqcount_t		i_size_seqcount;
+#endif
+	struct timespec		i_atime;
+	struct timespec		i_mtime;
+	struct timespec		i_ctime;
+	unsigned int		i_blkbits;
+	unsigned short          i_bytes;
+	umode_t			i_mode;
+	spinlock_t		i_lock;	/* i_blocks, i_bytes, maybe i_size */
+	struct mutex		i_mutex;
+	struct rw_semaphore	i_alloc_sem;
+	const struct inode_operations	*i_op;
+	const struct file_operations	*i_fop;	/* former ->i_op->default_file_ops */
+	struct super_block	*i_sb;
+	struct file_lock	*i_flock;
+#ifdef CONFIG_QUOTA
+	struct dquot		*i_dquot[MAXQUOTAS];
+#endif
+	struct list_head	i_devices;
+	int			i_cindex;
+
+	__u32			i_generation;
+
+#ifdef CONFIG_DNOTIFY
+	unsigned long		i_dnotify_mask; /* Directory notify events */
+	struct dnotify_struct	*i_dnotify; /* for directory notifications */
+#endif
+
+#ifdef CONFIG_INOTIFY
+	struct list_head	inotify_watches; /* watches on this inode */
+	struct mutex		inotify_mutex;	/* protects the watches list */
+#endif
+
+	unsigned long		i_state;
+	unsigned long		dirtied_when;	/* jiffies of first dirtying */
+
+	unsigned int		i_flags;
+
+#ifdef CONFIG_SECURITY
+	void			*i_security;
+#endif
+	void			*i_private; /* fs or device private pointer */
+};
+
 struct dirent {
 	char d_name[256];
 };
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

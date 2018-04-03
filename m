Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggn-00021Y-Qr
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:34 +0200
Message-Id: <20180403074851.5411-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/19] ubifs: remove dead code
To: Barebox List <barebox@lists.infradead.org>

Remove stuff that was added to UBIFS for U-Boot which we do not need
because we already have it in the Linux header files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/ubifs.h | 187 -------------------------------------------------------
 1 file changed, 187 deletions(-)

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 5c5a82637e..5589f99401 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -96,193 +96,6 @@ void *kmemdup(const void *src, size_t len, gfp_t gfp);
 /* uapi/linux/limits.h */
 #define XATTR_LIST_MAX 65536	/* size of extended attribute namelist (64k) */
 
-#ifndef __BAREBOX__
-/* linux/include/time.h */
-#define NSEC_PER_SEC	1000000000L
-#define get_seconds()	0
-#define CURRENT_TIME_SEC	((struct timespec) { get_seconds(), 0 })
-
-struct timespec {
-	time_t	tv_sec;		/* seconds */
-	long	tv_nsec;	/* nanoseconds */
-};
-
-static struct timespec current_fs_time(struct super_block *sb)
-{
-	struct timespec now;
-	now.tv_sec = 0;
-	now.tv_nsec = 0;
-	return now;
-};
-
-/* linux/include/dcache.h */
-
-/*
- * "quick string" -- eases parameter passing, but more importantly
- * saves "metadata" about the string (ie length and the hash).
- *
- * hash comes first so it snuggles against d_parent in the
- * dentry.
- */
-struct qstr {
-	unsigned int hash;
-	unsigned int len;
-#ifndef __BAREBOX__
-	const char *name;
-#else
-	char *name;
-#endif
-};
-
-/* include/linux/fs.h */
-
-/* Possible states of 'frozen' field */
-enum {
-	SB_UNFROZEN = 0,		/* FS is unfrozen */
-	SB_FREEZE_WRITE	= 1,		/* Writes, dir ops, ioctls frozen */
-	SB_FREEZE_PAGEFAULT = 2,	/* Page faults stopped as well */
-	SB_FREEZE_FS = 3,		/* For internal FS use (e.g. to stop
-					 * internal threads if needed) */
-	SB_FREEZE_COMPLETE = 4,		/* ->freeze_fs finished successfully */
-};
-
-#define SB_FREEZE_LEVELS (SB_FREEZE_COMPLETE - 1)
-
-struct sb_writers {
-#ifndef __BAREBOX__
-	/* Counters for counting writers at each level */
-	struct percpu_counter	counter[SB_FREEZE_LEVELS];
-#endif
-	wait_queue_head_t	wait;		/* queue for waiting for
-						   writers / faults to finish */
-	int			frozen;		/* Is sb frozen? */
-	wait_queue_head_t	wait_unfrozen;	/* queue for waiting for
-						   sb to be thawed */
-#ifdef CONFIG_DEBUG_LOCK_ALLOC
-	struct lockdep_map	lock_map[SB_FREEZE_LEVELS];
-#endif
-};
-
-struct address_space {
-	struct inode		*host;		/* owner: inode, block_device */
-#ifndef __BAREBOX__
-	struct radix_tree_root	page_tree;	/* radix tree of all pages */
-#endif
-	spinlock_t		tree_lock;	/* and lock protecting it */
-	unsigned int		i_mmap_writable;/* count VM_SHARED mappings */
-	struct rb_root		i_mmap;		/* tree of private and shared mappings */
-	struct list_head	i_mmap_nonlinear;/*list VM_NONLINEAR mappings */
-	struct mutex		i_mmap_mutex;	/* protect tree, count, list */
-	/* Protected by tree_lock together with the radix tree */
-	unsigned long		nrpages;	/* number of total pages */
-	pgoff_t			writeback_index;/* writeback starts here */
-	const struct address_space_operations *a_ops;	/* methods */
-	unsigned long		flags;		/* error bits/gfp mask */
-#ifndef __BAREBOX__
-	struct backing_dev_info *backing_dev_info; /* device readahead, etc */
-#endif
-	spinlock_t		private_lock;	/* for use by the address_space */
-	struct list_head	private_list;	/* ditto */
-	void			*private_data;	/* ditto */
-} __attribute__((aligned(sizeof(long))));
-
-/*
- * Keep mostly read-only and often accessed (especially for
- * the RCU path lookup and 'stat' data) fields at the beginning
- * of the 'struct inode'
- */
-struct inode {
-	umode_t			i_mode;
-	unsigned short		i_opflags;
-	kuid_t			i_uid;
-	kgid_t			i_gid;
-	unsigned int		i_flags;
-
-#ifdef CONFIG_FS_POSIX_ACL
-	struct posix_acl	*i_acl;
-	struct posix_acl	*i_default_acl;
-#endif
-
-	const struct inode_operations	*i_op;
-	struct super_block	*i_sb;
-	struct address_space	*i_mapping;
-
-#ifdef CONFIG_SECURITY
-	void			*i_security;
-#endif
-
-	/* Stat data, not accessed from path walking */
-	unsigned long		i_ino;
-	/*
-	 * Filesystems may only read i_nlink directly.  They shall use the
-	 * following functions for modification:
-	 *
-	 *    (set|clear|inc|drop)_nlink
-	 *    inode_(inc|dec)_link_count
-	 */
-	union {
-		const unsigned int i_nlink;
-		unsigned int __i_nlink;
-	};
-	dev_t			i_rdev;
-	loff_t			i_size;
-	struct timespec		i_atime;
-	struct timespec		i_mtime;
-	struct timespec		i_ctime;
-	spinlock_t		i_lock;	/* i_blocks, i_bytes, maybe i_size */
-	unsigned short          i_bytes;
-	unsigned int		i_blkbits;
-	blkcnt_t		i_blocks;
-
-#ifdef __NEED_I_SIZE_ORDERED
-	seqcount_t		i_size_seqcount;
-#endif
-
-	/* Misc */
-	unsigned long		i_state;
-	struct mutex		i_mutex;
-
-	unsigned long		dirtied_when;	/* jiffies of first dirtying */
-
-	struct hlist_node	i_hash;
-	struct list_head	i_wb_list;	/* backing dev IO list */
-	struct list_head	i_lru;		/* inode LRU list */
-	struct list_head	i_sb_list;
-	union {
-		struct hlist_head	i_dentry;
-		struct rcu_head		i_rcu;
-	};
-	u64			i_version;
-	atomic_t		i_count;
-	atomic_t		i_dio_count;
-	atomic_t		i_writecount;
-	const struct file_operations	*i_fop;	/* former ->i_op->default_file_ops */
-	struct file_lock	*i_flock;
-	struct address_space	i_data;
-#ifdef CONFIG_QUOTA
-	struct dquot		*i_dquot[MAXQUOTAS];
-#endif
-	struct list_head	i_devices;
-	union {
-		struct pipe_inode_info	*i_pipe;
-		struct block_device	*i_bdev;
-		struct cdev		*i_cdev;
-	};
-
-	__u32			i_generation;
-
-#ifdef CONFIG_FSNOTIFY
-	__u32			i_fsnotify_mask; /* all events this inode cares about */
-	struct hlist_head	i_fsnotify_marks;
-#endif
-
-#ifdef CONFIG_IMA
-	atomic_t		i_readcount; /* struct files open RO */
-#endif
-	void			*i_private; /* fs or device private pointer */
-};
-#endif
-
 struct super_operations {
    	struct inode *(*alloc_inode)(struct super_block *sb);
 	void (*destroy_inode)(struct inode *);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

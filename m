Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggv-00021x-AP
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:35 +0200
Message-Id: <20180403074851.5411-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/19] ubifs: Remove Linux struct definitions we already have
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/ubifs.h | 318 +------------------------------------------------------
 1 file changed, 1 insertion(+), 317 deletions(-)

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 5589f99401..1391bd7283 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -42,6 +42,7 @@
 #include <linux/math64.h>
 #include <linux/rbtree.h>
 #include <linux/mtd/ubi.h>
+#include <linux/pagemap.h>
 #include <asm/atomic.h>
 #include <asm-generic/atomic-long.h>
 #include "ubifs-media.h"
@@ -131,328 +132,11 @@ struct super_operations {
 	long (*free_cached_objects)(struct super_block *, long, int);
 };
 
-#ifndef __BAREBOX__
-struct super_block {
-	struct list_head	s_list;		/* Keep this first */
-	dev_t			s_dev;		/* search index; _not_ kdev_t */
-	unsigned char		s_blocksize_bits;
-	unsigned long		s_blocksize;
-	loff_t			s_maxbytes;	/* Max file size */
-	struct file_system_type	*s_type;
-	const struct super_operations	*s_op;
-	const struct dquot_operations	*dq_op;
-	const struct quotactl_ops	*s_qcop;
-	const struct export_operations *s_export_op;
-	unsigned long		s_flags;
-	unsigned long		s_magic;
-	struct dentry		*s_root;
-	struct rw_semaphore	s_umount;
-	int			s_count;
-	atomic_t		s_active;
-#ifdef CONFIG_SECURITY
-	void                    *s_security;
-#endif
-	const struct xattr_handler **s_xattr;
-
-	struct list_head	s_inodes;	/* all inodes */
-#ifndef __BAREBOX__
-	struct hlist_bl_head	s_anon;		/* anonymous dentries for (nfs) exporting */
-#endif
-	struct list_head	s_mounts;	/* list of mounts; _not_ for fs use */
-	struct block_device	*s_bdev;
-#ifndef __BAREBOX__
-	struct backing_dev_info *s_bdi;
-#endif
-	struct mtd_info		*s_mtd;
-	struct hlist_node	s_instances;
-#ifndef __BAREBOX__
-	struct quota_info	s_dquot;	/* Diskquota specific options */
-#endif
-
-	struct sb_writers	s_writers;
-
-	char s_id[32];				/* Informational name */
-	u8 s_uuid[16];				/* UUID */
-
-	void 			*s_fs_info;	/* Filesystem private info */
-	unsigned int		s_max_links;
-#ifndef __BAREBOX__
-	fmode_t			s_mode;
-#endif
-
-	/* Granularity of c/m/atime in ns.
-	   Cannot be worse than a second */
-	u32		   s_time_gran;
-
-	/*
-	 * The next field is for VFS *only*. No filesystems have any business
-	 * even looking at it. You had been warned.
-	 */
-	struct mutex s_vfs_rename_mutex;	/* Kludge */
-
-	/*
-	 * Filesystem subtype.  If non-empty the filesystem type field
-	 * in /proc/mounts will be "type.subtype"
-	 */
-	char *s_subtype;
-
-#ifndef __BAREBOX__
-	/*
-	 * Saved mount options for lazy filesystems using
-	 * generic_show_options()
-	 */
-	char __rcu *s_options;
-#endif
-	const struct dentry_operations *s_d_op; /* default d_op for dentries */
-
-	/*
-	 * Saved pool identifier for cleancache (-1 means none)
-	 */
-	int cleancache_poolid;
-
-#ifndef __BAREBOX__
-	struct shrinker s_shrink;	/* per-sb shrinker handle */
-#endif
-
-	/* Number of inodes with nlink == 0 but still referenced */
-	atomic_long_t s_remove_count;
-
-	/* Being remounted read-only */
-	int s_readonly_remount;
-
-	/* AIO completions deferred from interrupt context */
-	struct workqueue_struct *s_dio_done_wq;
-
-#ifndef __BAREBOX__
-	/*
-	 * Keep the lru lists last in the structure so they always sit on their
-	 * own individual cachelines.
-	 */
-	struct list_lru		s_dentry_lru ____cacheline_aligned_in_smp;
-	struct list_lru		s_inode_lru ____cacheline_aligned_in_smp;
-#endif
-	struct rcu_head		rcu;
-};
-
-struct file_system_type {
-	const char *name;
-	int fs_flags;
-#define FS_REQUIRES_DEV		1
-#define FS_BINARY_MOUNTDATA	2
-#define FS_HAS_SUBTYPE		4
-#define FS_USERNS_MOUNT		8	/* Can be mounted by userns root */
-#define FS_USERNS_DEV_MOUNT	16 /* A userns mount does not imply MNT_NODEV */
-#define FS_RENAME_DOES_D_MOVE	32768	/* FS will handle d_move() during rename() internally. */
-	struct dentry *(*mount) (struct file_system_type *, int,
-		       const char *, void *);
-	void (*kill_sb) (struct super_block *);
-	struct module *owner;
-	struct file_system_type * next;
-	struct hlist_head fs_supers;
-
-#ifndef __BAREBOX__
-	struct lock_class_key s_lock_key;
-	struct lock_class_key s_umount_key;
-	struct lock_class_key s_vfs_rename_key;
-	struct lock_class_key s_writers_key[SB_FREEZE_LEVELS];
-
-	struct lock_class_key i_lock_key;
-	struct lock_class_key i_mutex_key;
-	struct lock_class_key i_mutex_dir_key;
-#endif
-};
-
-/* include/linux/mount.h */
-struct vfsmount {
-	struct dentry *mnt_root;	/* root of the mounted tree */
-	struct super_block *mnt_sb;	/* pointer to superblock */
-	int mnt_flags;
-};
-
-struct path {
-	struct vfsmount *mnt;
-	struct dentry *dentry;
-};
-
-struct file {
-	struct path		f_path;
-#define f_dentry	f_path.dentry
-#define f_vfsmnt	f_path.mnt
-	const struct file_operations	*f_op;
-	unsigned int 		f_flags;
-	loff_t			f_pos;
-	unsigned int		f_uid, f_gid;
-
-	u64			f_version;
-#ifdef CONFIG_SECURITY
-	void			*f_security;
-#endif
-	/* needed for tty driver, and maybe others */
-	void			*private_data;
-
-#ifdef CONFIG_EPOLL
-	/* Used by fs/eventpoll.c to link all the hooks to this file */
-	struct list_head	f_ep_links;
-	spinlock_t		f_ep_lock;
-#endif /* #ifdef CONFIG_EPOLL */
-#ifdef CONFIG_DEBUG_WRITECOUNT
-	unsigned long f_mnt_write_state;
-#endif
-};
-#endif
-
 /*
  * get_seconds() not really needed in the read-only implmentation
  */
 #define get_seconds()		0
 
-/* 4k page size */
-#define PAGE_CACHE_SHIFT	12
-#define PAGE_CACHE_SIZE		(1 << PAGE_CACHE_SHIFT)
-
-#ifndef __BAREBOX__
-/* Page cache limit. The filesystems should put that into their s_maxbytes
-   limits, otherwise bad things can happen in VM. */
-#if BITS_PER_LONG==32
-#define MAX_LFS_FILESIZE	(((u64)PAGE_CACHE_SIZE << (BITS_PER_LONG-1))-1)
-#elif BITS_PER_LONG==64
-#define MAX_LFS_FILESIZE 	0x7fffffffffffffffUL
-#endif
-
-/*
- * These are the fs-independent mount-flags: up to 32 flags are supported
- */
-#define MS_RDONLY	 1	/* Mount read-only */
-#define MS_NOSUID	 2	/* Ignore suid and sgid bits */
-#define MS_NODEV	 4	/* Disallow access to device special files */
-#define MS_NOEXEC	 8	/* Disallow program execution */
-#define MS_SYNCHRONOUS	16	/* Writes are synced at once */
-#define MS_REMOUNT	32	/* Alter flags of a mounted FS */
-#define MS_MANDLOCK	64	/* Allow mandatory locks on an FS */
-#define MS_DIRSYNC	128	/* Directory modifications are synchronous */
-#define MS_NOATIME	1024	/* Do not update access times. */
-#define MS_NODIRATIME	2048	/* Do not update directory access times */
-#define MS_BIND		4096
-#define MS_MOVE		8192
-#define MS_REC		16384
-#define MS_VERBOSE	32768	/* War is peace. Verbosity is silence.
-				   MS_VERBOSE is deprecated. */
-#define MS_SILENT	32768
-#define MS_POSIXACL	(1<<16)	/* VFS does not apply the umask */
-#define MS_UNBINDABLE	(1<<17)	/* change to unbindable */
-#define MS_PRIVATE	(1<<18)	/* change to private */
-#define MS_SLAVE	(1<<19)	/* change to slave */
-#define MS_SHARED	(1<<20)	/* change to shared */
-#define MS_RELATIME	(1<<21)	/* Update atime relative to mtime/ctime. */
-#define MS_KERNMOUNT	(1<<22) /* this is a kern_mount call */
-#define MS_I_VERSION	(1<<23) /* Update inode I_version field */
-#define MS_ACTIVE	(1<<30)
-#define MS_NOUSER	(1<<31)
-
-#define I_NEW			8
-
-/* Inode flags - they have nothing to superblock flags now */
-
-#define S_SYNC		1	/* Writes are synced at once */
-#define S_NOATIME	2	/* Do not update access times */
-#define S_APPEND	4	/* Append-only file */
-#define S_IMMUTABLE	8	/* Immutable file */
-#define S_DEAD		16	/* removed, but still open directory */
-#define S_NOQUOTA	32	/* Inode is not counted to quota */
-#define S_DIRSYNC	64	/* Directory modifications are synchronous */
-#define S_NOCMTIME	128	/* Do not update file c/mtime */
-#define S_SWAPFILE	256	/* Do not truncate: swapon got its bmaps */
-#define S_PRIVATE	512	/* Inode is fs-internal */
-
-/* include/linux/stat.h */
-
-#define S_IFMT  00170000
-#define S_IFSOCK 0140000
-#define S_IFLNK	 0120000
-#define S_IFREG  0100000
-#define S_IFBLK  0060000
-#define S_IFDIR  0040000
-#define S_IFCHR  0020000
-#define S_IFIFO  0010000
-#define S_ISUID  0004000
-#define S_ISGID  0002000
-#define S_ISVTX  0001000
-
-/* include/linux/fs.h */
-
-/*
- * File types
- *
- * NOTE! These match bits 12..15 of stat.st_mode
- * (ie "(i_mode >> 12) & 15").
- */
-#define DT_UNKNOWN	0
-#define DT_FIFO		1
-#define DT_CHR		2
-#define DT_DIR		4
-#define DT_BLK		6
-#define DT_REG		8
-#define DT_LNK		10
-#define DT_SOCK		12
-#define DT_WHT		14
-
-#define I_DIRTY_SYNC		1
-#define I_DIRTY_DATASYNC	2
-#define I_DIRTY_PAGES		4
-#define I_NEW			8
-#define I_WILL_FREE		16
-#define I_FREEING		32
-#define I_CLEAR			64
-#define __I_LOCK		7
-#define I_LOCK			(1 << __I_LOCK)
-#define __I_SYNC		8
-#define I_SYNC			(1 << __I_SYNC)
-
-#define I_DIRTY (I_DIRTY_SYNC | I_DIRTY_DATASYNC | I_DIRTY_PAGES)
-
-/* linux/include/dcache.h */
-
-#define DNAME_INLINE_LEN_MIN 36
-
-struct dentry {
-	unsigned int d_flags;		/* protected by d_lock */
-	spinlock_t d_lock;		/* per dentry lock */
-	struct inode *d_inode;		/* Where the name belongs to - NULL is
-					 * negative */
-	/*
-	 * The next three fields are touched by __d_lookup.  Place them here
-	 * so they all fit in a cache line.
-	 */
-	struct hlist_node d_hash;	/* lookup hash list */
-	struct dentry *d_parent;	/* parent directory */
-	struct qstr d_name;
-
-	struct list_head d_lru;		/* LRU list */
-	/*
-	 * d_child and d_rcu can share memory
-	 */
-	struct list_head d_subdirs;	/* our children */
-	struct list_head d_alias;	/* inode alias list */
-	unsigned long d_time;		/* used by d_revalidate */
-	struct super_block *d_sb;	/* The root of the dentry tree */
-	void *d_fsdata;			/* fs-specific data */
-#ifdef CONFIG_PROFILING
-	struct dcookie_struct *d_cookie; /* cookie, if any */
-#endif
-	int d_mounted;
-	unsigned char d_iname[DNAME_INLINE_LEN_MIN];	/* small names */
-};
-#endif
-static inline ino_t parent_ino(struct dentry *dentry)
-{
-	ino_t res;
-
-	spin_lock(&dentry->d_lock);
-	res = dentry->d_parent->d_inode->i_ino;
-	spin_unlock(&dentry->d_lock);
-	return res;
-}
-
 /* debug.c */
 
 #define module_param_named(...)
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

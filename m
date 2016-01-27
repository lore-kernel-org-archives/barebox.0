Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOOfv-0001wL-RT
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 11:54:19 +0000
Received: by mail-wm0-x241.google.com with SMTP id 123so2888018wmz.2
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 03:53:55 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 12:53:04 +0100
Message-Id: <1453895589-20941-3-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1453895589-20941-1-git-send-email-yegorslists@googlemail.com>
References: <1453895589-20941-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 3/8] fs: use linux/fs.h for file system related definitions
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/ubifs/super.c   |   4 +-
 fs/ubifs/ubifs.h   |  85 ------------------------
 include/fs.h       |   5 +-
 include/linux/fs.h | 189 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 192 insertions(+), 91 deletions(-)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 075b258..b45240d 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -88,7 +88,7 @@ struct inode *iget_locked(struct super_block *sb, unsigned long ino)
 		inode->i_ino = ino;
 		inode->i_sb = sb;
 		list_add(&inode->i_sb_list, &sb->s_inodes);
-		inode->i_state = I_LOCK | I_NEW;
+		inode->i_state = I_SYNC | I_NEW;
 	}
 
 	return inode;
@@ -225,7 +225,7 @@ struct inode *ubifs_iget(struct super_block *sb, unsigned long inum)
 	}
 
 	kfree(ino);
-	inode->i_state &= ~(I_LOCK | I_NEW);
+	inode->i_state &= ~(I_SYNC | I_NEW);
 	return inode;
 
 out_invalid:
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index b603c5d..53c0813 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -175,91 +175,6 @@ struct file {
  */
 #define get_seconds()		0
 
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
 /* linux/include/dcache.h */
 
 #define DNAME_INLINE_LEN_MIN 36
diff --git a/include/fs.h b/include/fs.h
index ee7e48b..23156ea 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -3,6 +3,7 @@
 
 #include <driver.h>
 #include <filetype.h>
+#include <linux/fs.h>
 
 #define PATH_MAX       1024        /* include/linux/limits.h */
 
@@ -122,10 +123,6 @@ int ioctl(int fd, int request, void *buf);
 ssize_t write(int fd, const void *buf, size_t count);
 ssize_t pwrite(int fd, const void *buf, size_t count, loff_t offset);
 
-#define SEEK_SET	1
-#define SEEK_CUR	2
-#define SEEK_END	3
-
 loff_t lseek(int fildes, loff_t offset, int whence);
 int mkdir (const char *pathname, mode_t mode);
 
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 9db334c..d0e61ba 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -5,6 +5,51 @@
 #include <linux/list.h>
 #include <linux/time.h>
 
+/* Page cache limit. The filesystems should put that into their s_maxbytes
+   limits, otherwise bad things can happen in VM. */
+#if BITS_PER_LONG==32
+#define MAX_LFS_FILESIZE	(((loff_t)PAGE_CACHE_SIZE << (BITS_PER_LONG-1))-1)
+#elif BITS_PER_LONG==64
+#define MAX_LFS_FILESIZE 	((loff_t)0x7fffffffffffffffLL)
+#endif
+
+/*
+ * These are the fs-independent mount-flags: up to 32 flags are supported
+ */
+#define MS_RDONLY	 1	/* Mount read-only */
+#define MS_NOSUID	 2	/* Ignore suid and sgid bits */
+#define MS_NODEV	 4	/* Disallow access to device special files */
+#define MS_NOEXEC	 8	/* Disallow program execution */
+#define MS_SYNCHRONOUS	16	/* Writes are synced at once */
+#define MS_REMOUNT	32	/* Alter flags of a mounted FS */
+#define MS_MANDLOCK	64	/* Allow mandatory locks on an FS */
+#define MS_DIRSYNC	128	/* Directory modifications are synchronous */
+#define MS_NOATIME	1024	/* Do not update access times. */
+#define MS_NODIRATIME	2048	/* Do not update directory access times */
+#define MS_BIND		4096
+#define MS_MOVE		8192
+#define MS_REC		16384
+#define MS_VERBOSE	32768	/* War is peace. Verbosity is silence.
+				   MS_VERBOSE is deprecated. */
+#define MS_SILENT	32768
+#define MS_POSIXACL	(1<<16)	/* VFS does not apply the umask */
+#define MS_UNBINDABLE	(1<<17)	/* change to unbindable */
+#define MS_PRIVATE	(1<<18)	/* change to private */
+#define MS_SLAVE	(1<<19)	/* change to slave */
+#define MS_SHARED	(1<<20)	/* change to shared */
+#define MS_RELATIME	(1<<21)	/* Update atime relative to mtime/ctime. */
+#define MS_KERNMOUNT	(1<<22) /* this is a kern_mount call */
+#define MS_I_VERSION	(1<<23) /* Update inode I_version field */
+#define MS_ACTIVE	(1<<30)
+#define MS_NOUSER	(1<<31)
+
+#define SEEK_SET	0	/* seek relative to beginning of file */
+#define SEEK_CUR	1	/* seek relative to current file position */
+#define SEEK_END	2	/* seek relative to end of file */
+#define SEEK_DATA	3	/* seek to the next data */
+#define SEEK_HOLE	4	/* seek to the next hole */
+#define SEEK_MAX	SEEK_HOLE
+
 struct inode {
 	struct hlist_node	i_hash;
 	struct list_head	i_list;
@@ -130,4 +175,148 @@ struct super_block {
 	 */
 	char *s_options;
 };
+
+/*
+ * Inode flags - they have no relation to superblock flags now
+ */
+#define S_SYNC		1	/* Writes are synced at once */
+#define S_NOATIME	2	/* Do not update access times */
+#define S_APPEND	4	/* Append-only file */
+#define S_IMMUTABLE	8	/* Immutable file */
+#define S_DEAD		16	/* removed, but still open directory */
+#define S_NOQUOTA	32	/* Inode is not counted to quota */
+#define S_DIRSYNC	64	/* Directory modifications are synchronous */
+#define S_NOCMTIME	128	/* Do not update file c/mtime */
+#define S_SWAPFILE	256	/* Do not truncate: swapon got its bmaps */
+#define S_PRIVATE	512	/* Inode is fs-internal */
+#define S_IMA		1024	/* Inode has an associated IMA struct */
+#define S_AUTOMOUNT	2048	/* Automount/referral quasi-directory */
+#define S_NOSEC		4096	/* no suid or xattr security attributes */
+#ifdef CONFIG_FS_DAX
+#define S_DAX		8192	/* Direct Access, avoiding the page cache */
+#else
+#define S_DAX		0	/* Make all the DAX code disappear */
+#endif
+
+/*
+ * Note that nosuid etc flags are inode-specific: setting some file-system
+ * flags just means all the inodes inherit those flags by default. It might be
+ * possible to override it selectively if you really wanted to with some
+ * ioctl() that is not currently implemented.
+ *
+ * Exception: MS_RDONLY is always applied to the entire file system.
+ *
+ * Unfortunately, it is possible to change a filesystems flags with it mounted
+ * with files in use.  This means that all of the inodes will not have their
+ * i_flags updated.  Hence, i_flags no longer inherit the superblock mount
+ * flags, so these have to be checked separately. -- rmk@arm.uk.linux.org
+ */
+#define __IS_FLG(inode, flg)	((inode)->i_sb->s_flags & (flg))
+
+#define IS_RDONLY(inode)	((inode)->i_sb->s_flags & MS_RDONLY)
+#define IS_SYNC(inode)		(__IS_FLG(inode, MS_SYNCHRONOUS) || \
+					((inode)->i_flags & S_SYNC))
+#define IS_DIRSYNC(inode)	(__IS_FLG(inode, MS_SYNCHRONOUS|MS_DIRSYNC) || \
+					((inode)->i_flags & (S_SYNC|S_DIRSYNC)))
+#define IS_MANDLOCK(inode)	__IS_FLG(inode, MS_MANDLOCK)
+#define IS_NOATIME(inode)	__IS_FLG(inode, MS_RDONLY|MS_NOATIME)
+#define IS_I_VERSION(inode)	__IS_FLG(inode, MS_I_VERSION)
+
+#define IS_NOQUOTA(inode)	((inode)->i_flags & S_NOQUOTA)
+#define IS_APPEND(inode)	((inode)->i_flags & S_APPEND)
+#define IS_IMMUTABLE(inode)	((inode)->i_flags & S_IMMUTABLE)
+#define IS_POSIXACL(inode)	__IS_FLG(inode, MS_POSIXACL)
+
+#define IS_DEADDIR(inode)	((inode)->i_flags & S_DEAD)
+#define IS_NOCMTIME(inode)	((inode)->i_flags & S_NOCMTIME)
+#define IS_SWAPFILE(inode)	((inode)->i_flags & S_SWAPFILE)
+#define IS_PRIVATE(inode)	((inode)->i_flags & S_PRIVATE)
+#define IS_IMA(inode)		((inode)->i_flags & S_IMA)
+#define IS_AUTOMOUNT(inode)	((inode)->i_flags & S_AUTOMOUNT)
+#define IS_NOSEC(inode)		((inode)->i_flags & S_NOSEC)
+#define IS_DAX(inode)		((inode)->i_flags & S_DAX)
+
+#define IS_WHITEOUT(inode)	(S_ISCHR(inode->i_mode) && \
+				 (inode)->i_rdev == WHITEOUT_DEV)
+
+/*
+ * Inode state bits.  Protected by inode->i_lock
+ *
+ * Three bits determine the dirty state of the inode, I_DIRTY_SYNC,
+ * I_DIRTY_DATASYNC and I_DIRTY_PAGES.
+ *
+ * Four bits define the lifetime of an inode.  Initially, inodes are I_NEW,
+ * until that flag is cleared.  I_WILL_FREE, I_FREEING and I_CLEAR are set at
+ * various stages of removing an inode.
+ *
+ * Two bits are used for locking and completion notification, I_NEW and I_SYNC.
+ *
+ * I_DIRTY_SYNC		Inode is dirty, but doesn't have to be written on
+ *			fdatasync().  i_atime is the usual cause.
+ * I_DIRTY_DATASYNC	Data-related inode changes pending. We keep track of
+ *			these changes separately from I_DIRTY_SYNC so that we
+ *			don't have to write inode on fdatasync() when only
+ *			mtime has changed in it.
+ * I_DIRTY_PAGES	Inode has dirty pages.  Inode itself may be clean.
+ * I_NEW		Serves as both a mutex and completion notification.
+ *			New inodes set I_NEW.  If two processes both create
+ *			the same inode, one of them will release its inode and
+ *			wait for I_NEW to be released before returning.
+ *			Inodes in I_WILL_FREE, I_FREEING or I_CLEAR state can
+ *			also cause waiting on I_NEW, without I_NEW actually
+ *			being set.  find_inode() uses this to prevent returning
+ *			nearly-dead inodes.
+ * I_WILL_FREE		Must be set when calling write_inode_now() if i_count
+ *			is zero.  I_FREEING must be set when I_WILL_FREE is
+ *			cleared.
+ * I_FREEING		Set when inode is about to be freed but still has dirty
+ *			pages or buffers attached or the inode itself is still
+ *			dirty.
+ * I_CLEAR		Added by clear_inode().  In this state the inode is
+ *			clean and can be destroyed.  Inode keeps I_FREEING.
+ *
+ *			Inodes that are I_WILL_FREE, I_FREEING or I_CLEAR are
+ *			prohibited for many purposes.  iget() must wait for
+ *			the inode to be completely released, then create it
+ *			anew.  Other functions will just ignore such inodes,
+ *			if appropriate.  I_NEW is used for waiting.
+ *
+ * I_SYNC		Writeback of inode is running. The bit is set during
+ *			data writeback, and cleared with a wakeup on the bit
+ *			address once it is done. The bit is also used to pin
+ *			the inode in memory for flusher thread.
+ *
+ * I_REFERENCED		Marks the inode as recently references on the LRU list.
+ *
+ * I_DIO_WAKEUP		Never set.  Only used as a key for wait_on_bit().
+ *
+ * I_WB_SWITCH		Cgroup bdi_writeback switching in progress.  Used to
+ *			synchronize competing switching instances and to tell
+ *			wb stat updates to grab mapping->tree_lock.  See
+ *			inode_switch_wb_work_fn() for details.
+ *
+ * Q: What is the difference between I_WILL_FREE and I_FREEING?
+ */
+#define I_DIRTY_SYNC		(1 << 0)
+#define I_DIRTY_DATASYNC	(1 << 1)
+#define I_DIRTY_PAGES		(1 << 2)
+#define __I_NEW			3
+#define I_NEW			(1 << __I_NEW)
+#define I_WILL_FREE		(1 << 4)
+#define I_FREEING		(1 << 5)
+#define I_CLEAR			(1 << 6)
+#define __I_SYNC		7
+#define I_SYNC			(1 << __I_SYNC)
+#define I_REFERENCED		(1 << 8)
+#define __I_DIO_WAKEUP		9
+#define I_DIO_WAKEUP		(1 << __I_DIO_WAKEUP)
+#define I_LINKABLE		(1 << 10)
+#define I_DIRTY_TIME		(1 << 11)
+#define __I_DIRTY_TIME_EXPIRED	12
+#define I_DIRTY_TIME_EXPIRED	(1 << __I_DIRTY_TIME_EXPIRED)
+#define I_WB_SWITCH		(1 << 13)
+
+#define I_DIRTY (I_DIRTY_SYNC | I_DIRTY_DATASYNC | I_DIRTY_PAGES)
+#define I_DIRTY_ALL (I_DIRTY | I_DIRTY_TIME)
+
 #endif /* _LINUX_FS_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOOfy-0001yW-O7
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 11:54:22 +0000
Received: by mail-wm0-x242.google.com with SMTP id r129so2896145wmr.0
 for <barebox@lists.infradead.org>; Wed, 27 Jan 2016 03:54:00 -0800 (PST)
From: yegorslists@googlemail.com
Date: Wed, 27 Jan 2016 12:53:06 +0100
Message-Id: <1453895589-20941-5-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 5/8] fs: ubifs: move dcache related definitions to
 include/linux/dcache.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/ubifs/ubifs.h       | 47 +-----------------------------
 include/linux/dcache.h | 77 ++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 78 insertions(+), 46 deletions(-)
 create mode 100644 include/linux/dcache.h

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 9a2d2f5..424b154 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -37,6 +37,7 @@
 #include <linux/fs.h>
 #include <linux/pagemap.h>
 #include <linux/stat.h>
+#include <linux/dcache.h>
 #include <linux/ctype.h>
 #include <linux/math64.h>
 #include <linux/rbtree.h>
@@ -79,19 +80,6 @@ void iput(struct inode *inode);
 
 /* linux/include/dcache.h */
 
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
-	const char *name;
-};
-
 struct file_system_type {
 	const char *name;
 	int fs_flags;
@@ -173,39 +161,6 @@ struct file {
  */
 #define get_seconds()		0
 
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
-
 static inline ino_t parent_ino(struct dentry *dentry)
 {
 	ino_t res;
diff --git a/include/linux/dcache.h b/include/linux/dcache.h
new file mode 100644
index 0000000..ea69b68
--- /dev/null
+++ b/include/linux/dcache.h
@@ -0,0 +1,77 @@
+#ifndef __LINUX_DCACHE_H
+#define __LINUX_DCACHE_H
+
+/*
+ * linux/include/linux/dcache.h
+ *
+ * Dirent cache data structures
+ *
+ * (C) Copyright 1997 Thomas Schoebel-Theuer,
+ * with heavy changes by Linus Torvalds
+ */
+
+#define IS_ROOT(x) ((x) == (x)->d_parent)
+
+/* The hash is always the low bits of hash_len */
+#ifdef __LITTLE_ENDIAN
+ #define HASH_LEN_DECLARE u32 hash; u32 len
+ #define bytemask_from_count(cnt)	(~(~0ul << (cnt)*8))
+#else
+ #define HASH_LEN_DECLARE u32 len; u32 hash
+ #define bytemask_from_count(cnt)	(~(~0ul >> (cnt)*8))
+#endif
+
+/*
+ * "quick string" -- eases parameter passing, but more importantly
+ * saves "metadata" about the string (ie length and the hash).
+ *
+ * hash comes first so it snuggles against d_parent in the
+ * dentry.
+ */
+struct qstr {
+	union {
+		struct {
+			HASH_LEN_DECLARE;
+		};
+		u64 hash_len;
+	};
+	const unsigned char *name;
+};
+
+#define QSTR_INIT(n,l) { { { .len = l } }, .name = n }
+#define hashlen_hash(hashlen) ((u32) (hashlen))
+#define hashlen_len(hashlen)  ((u32)((hashlen) >> 32))
+#define hashlen_create(hash,len) (((u64)(len)<<32)|(u32)(hash))
+
+#define DNAME_INLINE_LEN_MIN 36
+
+struct dentry {
+	unsigned int d_flags;		/* protected by d_lock */
+	spinlock_t d_lock;		/* per dentry lock */
+	struct inode *d_inode;		/* Where the name belongs to - NULL is
+					 * negative */
+	/*
+	 * The next three fields are touched by __d_lookup.  Place them here
+	 * so they all fit in a cache line.
+	 */
+	struct hlist_node d_hash;	/* lookup hash list */
+	struct dentry *d_parent;	/* parent directory */
+	struct qstr d_name;
+
+	struct list_head d_lru;		/* LRU list */
+	/*
+	 * d_child and d_rcu can share memory
+	 */
+	struct list_head d_subdirs;	/* our children */
+	struct list_head d_alias;	/* inode alias list */
+	unsigned long d_time;		/* used by d_revalidate */
+	struct super_block *d_sb;	/* The root of the dentry tree */
+	void *d_fsdata;			/* fs-specific data */
+#ifdef CONFIG_PROFILING
+	struct dcookie_struct *d_cookie; /* cookie, if any */
+#endif
+	int d_mounted;
+	unsigned char d_iname[DNAME_INLINE_LEN_MIN];	/* small names */
+};
+
+#endif	/* __LINUX_DCACHE_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

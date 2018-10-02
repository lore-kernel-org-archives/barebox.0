Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHk-00061F-VV
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:05:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:03:50 +0200
Message-Id: <20181002140403.3735-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/14] Add linux/slab.h
To: Barebox List <barebox@lists.infradead.org>

Move stuff we already have in include/linux/barebox-wrapper.h that
really belongs to include/linux/slab.h to there. Also add kmem_cache_*
functions. UBIFS uses them in there own implementation, so we have to
remove it there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/ubifs/super.c                |   8 +--
 fs/ubifs/ubifs.h                |  18 ------
 include/linux/barebox-wrapper.h |  13 +---
 include/linux/slab.h            | 104 ++++++++++++++++++++++++++++++++
 include/linux/types.h           |   3 +
 5 files changed, 110 insertions(+), 36 deletions(-)
 create mode 100644 include/linux/slab.h

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 977c723442..bfc0a4714a 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -2406,20 +2406,16 @@ static struct file_system_type ubifs_fs_type = {
 
 #ifndef __BAREBOX__
 MODULE_ALIAS_FS("ubifs");
+#endif
 
 /*
  * Inode slab cache constructor.
  */
 static void inode_slab_ctor(void *obj)
 {
-	struct ubifs_inode *ui = obj;
-	inode_init_once(&ui->vfs_inode);
 }
 
 static int __init ubifs_init(void)
-#else
-int ubifs_init(void)
-#endif
 {
 	int err;
 
@@ -2480,7 +2476,6 @@ int ubifs_init(void)
 		return -EINVAL;
 	}
 
-#ifndef __BAREBOX__
 	ubifs_inode_slab = kmem_cache_create("ubifs_inode_slab",
 				sizeof(struct ubifs_inode), 0,
 				SLAB_MEM_SPREAD | SLAB_RECLAIM_ACCOUNT,
@@ -2488,6 +2483,7 @@ int ubifs_init(void)
 	if (!ubifs_inode_slab)
 		return -ENOMEM;
 
+#ifndef __BAREBOX__
 	err = register_shrinker(&ubifs_shrinker_info);
 	if (err)
 		goto out_slab;
diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index 4c4c927de9..19af05ade3 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -71,24 +71,6 @@ struct page {
 	struct inode *inode;
 };
 
-struct kmem_cache { int sz; };
-
-struct kmem_cache *get_mem(int element_sz);
-#define kmem_cache_create(a, sz, c, d, e)	get_mem(sz)
-static inline void *kmem_cache_alloc(struct kmem_cache *obj, int flag)
-{
-	return kzalloc(obj->sz, 0);
-}
-
-static inline void kmem_cache_free(struct kmem_cache *cachep, void *obj)
-{
-	free(obj);
-}
-static inline void kmem_cache_destroy(struct kmem_cache *cachep)
-{
-	free(cachep);
-}
-
 void *kmemdup(const void *src, size_t len, gfp_t gfp);
 
 /* uapi/linux/limits.h */
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index b57c58cfb6..e998932d12 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -3,16 +3,10 @@
 
 #include <malloc.h>
 #include <xfuncs.h>
+#include <linux/slab.h>
 
-#define kmalloc(len, mode)	malloc(len)
-#define kzalloc(len, mode)	xzalloc(len)
-#define kcalloc(n, len, mode)	xzalloc(n * len)
 #define vmalloc(len)		malloc(len)
 #define __vmalloc(len, mode, pgsz)	malloc(len)
-static inline void kfree(const void *block)
-{
-	free((void *)block);
-}
 #define vzalloc(len)		kzalloc(len, 0)
 static inline void vfree(const void *addr)
 {
@@ -29,11 +23,6 @@ static inline void vfree(const void *addr)
 #define KERN_DEBUG      ""   /* debug-level messages                 */
 #define KERN_CONT       ""
 
-#define GFP_KERNEL ((gfp_t) 0)
-#define GFP_NOFS ((gfp_t) 1)
-
-typedef int     gfp_t;
-
 #define printk			printf
 
 #define pr_warn			pr_warning
diff --git a/include/linux/slab.h b/include/linux/slab.h
new file mode 100644
index 0000000000..806d5bfb21
--- /dev/null
+++ b/include/linux/slab.h
@@ -0,0 +1,104 @@
+#ifndef _LINUX_SLAB_H
+#define _LINUX_SLAB_H
+
+#define SLAB_CONSISTENCY_CHECKS	0
+#define SLAB_RED_ZONE		0
+#define SLAB_POISON		0
+#define SLAB_HWCACHE_ALIGN	0
+#define SLAB_CACHE_DMA		0
+#define SLAB_STORE_USER		0
+#define SLAB_PANIC		0
+#define SLAB_TYPESAFE_BY_RCU	0
+#define SLAB_MEM_SPREAD		0
+#define SLAB_TRACE		0
+#define SLAB_DEBUG_OBJECTS	0
+#define SLAB_NOLEAKTRACE	0
+#define SLAB_FAILSLAB		0
+#define SLAB_ACCOUNT		0
+#define SLAB_KASAN		0
+#define SLAB_RECLAIM_ACCOUNT	0
+#define SLAB_TEMPORARY		0
+
+/* unused in barebox, just bogus values */
+#define GFP_KERNEL	0
+#define GFP_NOFS	0
+#define GFP_USER	0
+#define __GFP_NOWARN	0
+
+static inline void *kmalloc(size_t size, gfp_t flags)
+{
+	return malloc(size);
+}
+
+struct kmem_cache {
+	unsigned int size;
+	void (*ctor)(void *);
+};
+
+static inline
+struct kmem_cache *kmem_cache_create(const char *name, unsigned int size,
+                        unsigned int align, slab_flags_t flags,
+                        void (*ctor)(void *))
+{
+	struct kmem_cache *cache = kmalloc(sizeof(*cache), GFP_KERNEL);
+
+	if (!cache)
+		return NULL;
+
+	cache->size = size;
+	cache->ctor = ctor;
+
+	return cache;
+}
+
+static inline void kmem_cache_destroy(struct kmem_cache *cache)
+{
+	free(cache);
+}
+
+static inline void kfree(const void *mem)
+{
+	free((void *)mem);
+}
+
+static inline void *kmem_cache_alloc(struct kmem_cache *cache, gfp_t flags)
+{
+	void *mem = kmalloc(cache->size, flags);
+
+	if (!mem)
+		return NULL;
+
+	if (cache->ctor)
+		cache->ctor(mem);
+
+	return mem;
+}
+
+
+static inline void kmem_cache_free(struct kmem_cache *cache, void *mem)
+{
+	kfree(mem);
+}
+
+static inline void *kzalloc(size_t size, gfp_t flags)
+{
+	return calloc(size, 1);
+}
+
+/**
+ * kmalloc_array - allocate memory for an array.
+ * @n: number of elements.
+ * @size: element size.
+ * @flags: the type of memory to allocate (see kmalloc).
+ */
+static inline void *kmalloc_array(size_t n, size_t size, gfp_t flags)
+{
+	return kmalloc(n * size, flags);
+}
+
+static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
+{
+	return calloc(n, size);
+}
+
+#endif /* _LINUX_SLAB_H */
diff --git a/include/linux/types.h b/include/linux/types.h
index f64ec4a814..ed3a5b6e81 100644
--- a/include/linux/types.h
+++ b/include/linux/types.h
@@ -185,6 +185,9 @@ typedef u64 dma_addr_t;
 typedef u32 dma_addr_t;
 #endif /* dma_addr_t */
 
+typedef unsigned __bitwise gfp_t;
+typedef unsigned __bitwise slab_flags_t;
+
 #ifdef CONFIG_PHYS_ADDR_T_64BIT
 typedef u64 phys_addr_t;
 typedef u64 phys_size_t;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

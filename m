Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqzeI-0000z1-1y
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 08:30:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Oct 2015 09:29:55 +0100
Message-Id: <1445934602-25903-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1445934602-25903-1-git-send-email-s.hauer@pengutronix.de>
References: <1445934602-25903-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] rework remap_range
To: Barebox List <barebox@lists.infradead.org>

remap_range is for remapping regions with different cache attributes.
It is implemented for ARM and PowerPC only, the other architectures only
provide stubs.
Currently the new cache attributes are passed in an architecture specific
way and the attributes have to be retrieved by calls to
mmu_get_pte_cached_flags() and mmu_get_pte_uncached_flags().
Make this simpler by providing architecture independent flags which can
be directly passed to remap_range()
Also provide a MAP_ARCH_DEFAULT flag and a arch_can_remap() function.
The MAP_ARCH_DEFAULT defaults to whatever caching type the architecture
has as default. the arch_can_remap() function returns true if the
architecture can change the cache attributes, false otherwise. This
allows the memtest code to better find out what it has to do.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c              | 30 +++++++++++++++------------
 arch/arm/include/asm/mmu.h      | 23 ++++-----------------
 arch/blackfin/include/asm/mmu.h | 14 +------------
 arch/mips/include/asm/mmu.h     | 14 +------------
 arch/nios2/include/asm/mmu.h    | 14 +------------
 arch/openrisc/include/asm/mmu.h | 14 +------------
 arch/ppc/cpu-85xx/mmu.c         | 20 +++++++++++++++---
 arch/ppc/include/asm/mmu.h      | 23 +++++----------------
 arch/sandbox/include/asm/mmu.h  | 14 +------------
 arch/x86/include/asm/mmu.h      | 14 +------------
 commands/memtest.c              | 45 +++++++++++++++++++++--------------------
 common/memtest.c                |  5 ++---
 include/mmu.h                   | 41 +++++++++++++++++++++++++++++++++++++
 13 files changed, 115 insertions(+), 156 deletions(-)
 create mode 100644 include/mmu.h

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 470b448..81c2394 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -20,7 +20,7 @@
 #include <common.h>
 #include <dma-dir.h>
 #include <init.h>
-#include <asm/mmu.h>
+#include <mmu.h>
 #include <errno.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
@@ -81,16 +81,6 @@ static uint32_t pte_flags_uncached;
 
 #define PTE_MASK ((1 << 12) - 1)
 
-uint32_t mmu_get_pte_cached_flags()
-{
-	return pte_flags_cached;
-}
-
-uint32_t mmu_get_pte_uncached_flags()
-{
-	return pte_flags_uncached;
-}
-
 static void arm_mmu_not_initialized_error(void)
 {
 	/*
@@ -173,24 +163,38 @@ static void dma_inv_range(unsigned long start, unsigned long end)
 	__dma_inv_range(start, end);
 }
 
-void remap_range(void *_start, size_t size, uint32_t flags)
+int arch_remap_range(void *_start, size_t size, unsigned flags)
 {
 	unsigned long start = (unsigned long)_start;
 	u32 *p;
 	int numentries, i;
+	u32 pte_flags;
+
+	switch (flags) {
+	case MAP_CACHED:
+		pte_flags = pte_flags_cached;
+		break;
+	case MAP_UNCACHED:
+		pte_flags = pte_flags_uncached;
+		break;
+	default:
+		return -EINVAL;
+	}
 
 	numentries = size >> PAGE_SHIFT;
 	p = find_pte(start);
 
 	for (i = 0; i < numentries; i++) {
 		p[i] &= ~PTE_MASK;
-		p[i] |= flags | PTE_TYPE_SMALL;
+		p[i] |= pte_flags | PTE_TYPE_SMALL;
 	}
 
 	dma_flush_range((unsigned long)p,
 			(unsigned long)p + numentries * sizeof(u32));
 
 	tlb_invalidate();
+
+	return 0;
 }
 
 void *map_io_sections(unsigned long phys, void *_start, size_t size)
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 3b19e9e..8de6544 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -27,32 +27,17 @@ static inline void setup_dma_coherent(unsigned long offset)
 }
 
 #ifdef CONFIG_MMU
-void remap_range(void *_start, size_t size, uint32_t flags);
+#define ARCH_HAS_REMAP
+#define MAP_ARCH_DEFAULT MAP_CACHED
+int arch_remap_range(void *_start, size_t size, unsigned flags);
 void *map_io_sections(unsigned long physaddr, void *start, size_t size);
-uint32_t mmu_get_pte_cached_flags(void);
-uint32_t mmu_get_pte_uncached_flags(void);
-
 #else
-
-static inline void remap_range(void *_start, size_t size, uint32_t flags)
-{
-}
-
+#define MAP_ARCH_DEFAULT MAP_UNCACHED
 static inline void *map_io_sections(unsigned long phys, void *start, size_t size)
 {
 	return (void *)phys;
 }
 
-static inline uint32_t mmu_get_pte_cached_flags(void)
-{
-	return 0;
-}
-
-static inline uint32_t mmu_get_pte_uncached_flags(void)
-{
-	return 0;
-}
-
 #endif
 
 #ifdef CONFIG_CACHE_L2X0
diff --git a/arch/blackfin/include/asm/mmu.h b/arch/blackfin/include/asm/mmu.h
index bf65420..95af871 100644
--- a/arch/blackfin/include/asm/mmu.h
+++ b/arch/blackfin/include/asm/mmu.h
@@ -1,18 +1,6 @@
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
-static inline void remap_range(void *_start, size_t size, uint32_t flags)
-{
-}
-
-static inline uint32_t mmu_get_pte_cached_flags(void)
-{
-	return 0;
-}
-
-static inline uint32_t mmu_get_pte_uncached_flags(void)
-{
-	return 0;
-}
+#define MAP_ARCH_DEFAULT MAP_UNCACHED
 
 #endif /* __ASM_MMU_H */
diff --git a/arch/mips/include/asm/mmu.h b/arch/mips/include/asm/mmu.h
index bf65420..95af871 100644
--- a/arch/mips/include/asm/mmu.h
+++ b/arch/mips/include/asm/mmu.h
@@ -1,18 +1,6 @@
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
-static inline void remap_range(void *_start, size_t size, uint32_t flags)
-{
-}
-
-static inline uint32_t mmu_get_pte_cached_flags(void)
-{
-	return 0;
-}
-
-static inline uint32_t mmu_get_pte_uncached_flags(void)
-{
-	return 0;
-}
+#define MAP_ARCH_DEFAULT MAP_UNCACHED
 
 #endif /* __ASM_MMU_H */
diff --git a/arch/nios2/include/asm/mmu.h b/arch/nios2/include/asm/mmu.h
index bf65420..95af871 100644
--- a/arch/nios2/include/asm/mmu.h
+++ b/arch/nios2/include/asm/mmu.h
@@ -1,18 +1,6 @@
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
-static inline void remap_range(void *_start, size_t size, uint32_t flags)
-{
-}
-
-static inline uint32_t mmu_get_pte_cached_flags(void)
-{
-	return 0;
-}
-
-static inline uint32_t mmu_get_pte_uncached_flags(void)
-{
-	return 0;
-}
+#define MAP_ARCH_DEFAULT MAP_UNCACHED
 
 #endif /* __ASM_MMU_H */
diff --git a/arch/openrisc/include/asm/mmu.h b/arch/openrisc/include/asm/mmu.h
index bf65420..95af871 100644
--- a/arch/openrisc/include/asm/mmu.h
+++ b/arch/openrisc/include/asm/mmu.h
@@ -1,18 +1,6 @@
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
-static inline void remap_range(void *_start, size_t size, uint32_t flags)
-{
-}
-
-static inline uint32_t mmu_get_pte_cached_flags(void)
-{
-	return 0;
-}
-
-static inline uint32_t mmu_get_pte_uncached_flags(void)
-{
-	return 0;
-}
+#define MAP_ARCH_DEFAULT MAP_UNCACHED
 
 #endif /* __ASM_MMU_H */
diff --git a/arch/ppc/cpu-85xx/mmu.c b/arch/ppc/cpu-85xx/mmu.c
index 7e86e6b..27cac2f 100644
--- a/arch/ppc/cpu-85xx/mmu.c
+++ b/arch/ppc/cpu-85xx/mmu.c
@@ -16,15 +16,27 @@
 #include <asm/cache.h>
 #include <mach/mmu.h>
 
-void remap_range(void *_start, size_t size, uint32_t flags)
+int arch_remap_range(void *_start, size_t size, unsigned flags)
 {
-	uint32_t ptr, start, tsize, valid, wimge;
+	uint32_t ptr, start, tsize, valid, wimge, pte_flags;
 	unsigned long epn;
 	phys_addr_t rpn = 0;
 	int esel = 0;
 
+	switch (flags) {
+	case MAP_UNCACHED:
+		pte_flags = MAS2_I;
+		break;
+	case MAP_SYSTEM_RAM:
+	case MAP_CACHED:
+		pte_flags = 0;
+		break;
+	default:
+		return -EINVAL;
+	}
+
 	ptr = start = (uint32_t)_start;
-	wimge = flags | MAS2_M;
+	wimge = pte_flags | MAS2_M;
 
 	while (ptr < (start + size)) {
 		esel = e500_find_tlb_idx((void *)ptr, 1);
@@ -41,6 +53,8 @@ void remap_range(void *_start, size_t size, uint32_t flags)
 		/* convert tsize to bytes to increment address. */
 		ptr += (1ULL << ((tsize) + 10));
 	}
+
+	return 0;
 }
 
 uint32_t mmu_get_pte_cached_flags(void)
diff --git a/arch/ppc/include/asm/mmu.h b/arch/ppc/include/asm/mmu.h
index 6e15975..03ac644 100644
--- a/arch/ppc/include/asm/mmu.h
+++ b/arch/ppc/include/asm/mmu.h
@@ -557,25 +557,12 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 
 #ifndef __ASSEMBLY__
 
+#define MAP_ARCH_DEFAULT MAP_CACHED
+
 #ifdef CONFIG_MMU
-void remap_range(void *_start, size_t size, uint32_t flags);
-uint32_t mmu_get_pte_cached_flags(void);
-uint32_t mmu_get_pte_uncached_flags(void);
-#else
-static inline void remap_range(void *_start, size_t size, uint32_t flags)
-{
-}
-
-static inline uint32_t mmu_get_pte_cached_flags(void)
-{
-	return 0;
-}
-
-static inline uint32_t mmu_get_pte_uncached_flags(void)
-{
-	return 0;
-}
-#endif /* CONFIG_MMU */
+#define ARCH_HAS_REMAP
+int arch_remap_range(void *_start, size_t size, unsigned flags);
+#else /* CONFIG_MMU */
 #endif
 
 #endif /* _PPC_MMU_H_ */
diff --git a/arch/sandbox/include/asm/mmu.h b/arch/sandbox/include/asm/mmu.h
index bf65420..95af871 100644
--- a/arch/sandbox/include/asm/mmu.h
+++ b/arch/sandbox/include/asm/mmu.h
@@ -1,18 +1,6 @@
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
-static inline void remap_range(void *_start, size_t size, uint32_t flags)
-{
-}
-
-static inline uint32_t mmu_get_pte_cached_flags(void)
-{
-	return 0;
-}
-
-static inline uint32_t mmu_get_pte_uncached_flags(void)
-{
-	return 0;
-}
+#define MAP_ARCH_DEFAULT MAP_UNCACHED
 
 #endif /* __ASM_MMU_H */
diff --git a/arch/x86/include/asm/mmu.h b/arch/x86/include/asm/mmu.h
index bf65420..95af871 100644
--- a/arch/x86/include/asm/mmu.h
+++ b/arch/x86/include/asm/mmu.h
@@ -1,18 +1,6 @@
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
-static inline void remap_range(void *_start, size_t size, uint32_t flags)
-{
-}
-
-static inline uint32_t mmu_get_pte_cached_flags(void)
-{
-	return 0;
-}
-
-static inline uint32_t mmu_get_pte_uncached_flags(void)
-{
-	return 0;
-}
+#define MAP_ARCH_DEFAULT MAP_UNCACHED
 
 #endif /* __ASM_MMU_H */
diff --git a/commands/memtest.c b/commands/memtest.c
index 531b8e0..db9e3db 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -21,15 +21,15 @@
 
 #include <command.h>
 #include <getopt.h>
-#include <asm/mmu.h>
 #include <memory.h>
 #include <malloc.h>
 #include <common.h>
 #include <errno.h>
 #include <memtest.h>
+#include <mmu.h>
 
 static int __do_memtest(struct list_head *memtest_regions,
-		int bus_only, uint32_t cache_flag)
+		int bus_only, unsigned cache_flag)
 {
 	struct mem_test_resource *r;
 	int ret;
@@ -53,7 +53,7 @@ static int __do_memtest(struct list_head *memtest_regions,
 static int do_memtest(int argc, char *argv[])
 {
 	int bus_only = 0, ret, opt;
-	uint32_t i, max_i = 1, pte_flags_cached, pte_flags_uncached;
+	uint32_t i, max_i = 1;
 	struct list_head memtest_used_regions;
 
 	while ((opt = getopt(argc, argv, "i:b")) > 0) {
@@ -72,12 +72,6 @@ static int do_memtest(int argc, char *argv[])
 	if (optind > argc)
 		return COMMAND_ERROR_USAGE;
 
-	/*
-	 * Get pte flags for enable and disable cache support on page.
-	 */
-	pte_flags_cached = mmu_get_pte_cached_flags();
-	pte_flags_uncached = mmu_get_pte_uncached_flags();
-
 	INIT_LIST_HEAD(&memtest_used_regions);
 
 	ret = mem_test_request_regions(&memtest_used_regions);
@@ -87,24 +81,31 @@ static int do_memtest(int argc, char *argv[])
 	for (i = 1; (i <= max_i) || !max_i; i++) {
 		if (max_i)
 			printf("Start iteration %u of %u.\n", i, max_i);
-		/*
-		 * First try a memtest with caching enabled.
-		 */
-		if (IS_ENABLED(CONFIG_MMU)) {
+
+		if (arch_can_remap()) {
+			/*
+			 * First try a memtest with caching enabled.
+			 */
 			printf("Do memtest with caching enabled.\n");
 			ret = __do_memtest(&memtest_used_regions,
-					bus_only, pte_flags_cached);
+					bus_only, MAP_CACHED);
+			if (ret < 0)
+				goto out;
+
+			/*
+			 * Second try a memtest with caching disabled.
+			 */
+			printf("Do memtest with caching disabled.\n");
+			ret = __do_memtest(&memtest_used_regions,
+					bus_only, MAP_UNCACHED);
+			if (ret < 0)
+				goto out;
+		} else {
+			ret = __do_memtest(&memtest_used_regions,
+					bus_only, MAP_DEFAULT);
 			if (ret < 0)
 				goto out;
 		}
-		/*
-		 * Second try a memtest with caching disabled.
-		 */
-		printf("Do memtest with caching disabled.\n");
-		ret = __do_memtest(&memtest_used_regions,
-				bus_only, pte_flags_uncached);
-		if (ret < 0)
-			goto out;
 	}
 
 out:
diff --git a/common/memtest.c b/common/memtest.c
index fc71e91..467eea5 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -28,7 +28,7 @@
 #include <errno.h>
 #include <memtest.h>
 #include <malloc.h>
-#include <asm/mmu.h>
+#include <mmu.h>
 
 static int alloc_memtest_region(struct list_head *list,
 		resource_size_t start, resource_size_t size)
@@ -126,14 +126,13 @@ int mem_test_request_regions(struct list_head *list)
 void mem_test_release_regions(struct list_head *list)
 {
 	struct mem_test_resource *r, *r_tmp;
-	uint32_t pte_flags_cached = mmu_get_pte_cached_flags();
 
 	list_for_each_entry_safe(r, r_tmp, list, list) {
 		/*
 		 * Ensure to leave with a cached on non used sdram regions.
 		 */
 		remap_range((void *)r->r->start, r->r->end -
-				r->r->start + 1, pte_flags_cached);
+				r->r->start + 1, MAP_DEFAULT);
 
 		release_sdram_region(r->r);
 		free(r);
diff --git a/include/mmu.h b/include/mmu.h
new file mode 100644
index 0000000..66b246f
--- /dev/null
+++ b/include/mmu.h
@@ -0,0 +1,41 @@
+#ifndef __MMU_H
+#define __MMU_H
+
+#define MAP_UNCACHED	0
+#define MAP_CACHED	1
+
+/*
+ * Depending on the architecture the default mapping can be
+ * cached or uncached. Without ARCH_HAS_REMAP being set this
+ * is mapping type is the only one supported.
+ */
+#define MAP_DEFAULT	MAP_ARCH_DEFAULT
+
+#include <asm/mmu.h>
+
+#ifndef ARCH_HAS_REMAP
+static inline int arch_remap_range(void *start, size_t size, unsigned flags)
+{
+	if (flags == MAP_ARCH_DEFAULT)
+		return 0;
+
+	return -EINVAL;
+}
+
+static inline bool arch_can_remap(void)
+{
+	return false;
+}
+#else
+static inline bool arch_can_remap(void)
+{
+	return true;
+}
+#endif
+
+static inline int remap_range(void *start, size_t size, unsigned flags)
+{
+	return arch_remap_range(start, size, flags);
+}
+
+#endif
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkIBL-0004Q4-Uk
 for barebox@lists.infradead.org; Fri, 18 Jan 2019 00:38:57 +0000
Received: by mail-pg1-x544.google.com with SMTP id v28so5190753pgk.10
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2019 16:38:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 Jan 2019 16:38:23 -0800
Message-Id: <20190118003827.17517-9-andrew.smirnov@gmail.com>
In-Reply-To: <20190118003827.17517-1-andrew.smirnov@gmail.com>
References: <20190118003827.17517-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 08/12] ARM: mmu: Share code for dma_alloc_coherent()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Both ARM and ARM64 implement almost identical algorithms in
dma_alloc_coherent(). Move the code to mmu-common.c, so it can be
shared.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-common.c | 21 +++++++++++++++++++++
 arch/arm/cpu/mmu-common.h |  7 +++++++
 arch/arm/cpu/mmu.c        | 23 +----------------------
 arch/arm/cpu/mmu.h        |  2 ++
 arch/arm/cpu/mmu_64.c     | 18 +-----------------
 arch/arm/cpu/mmu_64.h     |  2 ++
 6 files changed, 34 insertions(+), 39 deletions(-)
 create mode 100644 arch/arm/cpu/mmu-common.h

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 65cc786e1..8c7d61447 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -24,6 +24,27 @@ void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
 	dma_sync_single_for_cpu(addr, size, dir);
 }
 
+void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
+{
+	void *ret;
+
+	size = PAGE_ALIGN(size);
+	ret = xmemalign(PAGE_SIZE, size);
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)ret;
+
+	dma_inv_range(ret, size);
+
+	arch_remap_range(ret, size, flags);
+
+	return ret;
+}
+
+void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	return dma_alloc_map(size, dma_handle, MAP_UNCACHED);
+}
+
 void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 {
 	size = PAGE_ALIGN(size);
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
new file mode 100644
index 000000000..e8689ac31
--- /dev/null
+++ b/arch/arm/cpu/mmu-common.h
@@ -0,0 +1,7 @@
+#ifndef __ARM_MMU_COMMON_H
+#define __ARM_MMU_COMMON_H
+
+void dma_inv_range(void *ptr, size_t size);
+void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags);
+
+#endif
\ No newline at end of file
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 70ab5ebb5..35ac00a8f 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -118,7 +118,7 @@ static void dma_flush_range(void *ptr, size_t size)
 		outer_cache.flush_range(start, end);
 }
 
-static void dma_inv_range(void *ptr, size_t size)
+void dma_inv_range(void *ptr, size_t size)
 {
 	unsigned long start = (unsigned long)ptr;
 	unsigned long end = start + size;
@@ -501,27 +501,6 @@ void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-static void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
-{
-	void *ret;
-
-	size = PAGE_ALIGN(size);
-	ret = xmemalign(PAGE_SIZE, size);
-	if (dma_handle)
-		*dma_handle = (dma_addr_t)ret;
-
-	dma_inv_range(ret, size);
-
-	arch_remap_range(ret, size, flags);
-
-	return ret;
-}
-
-void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
-{
-	return dma_alloc_map(size, dma_handle, MAP_UNCACHED);
-}
-
 void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 {
 	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 2e425e092..338728aac 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -4,6 +4,8 @@
 #include <asm/pgtable.h>
 #include <linux/sizes.h>
 
+#include "mmu-common.h"
+
 #define PGDIR_SHIFT	20
 #define PGDIR_SIZE	(1UL << PGDIR_SHIFT)
 
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 1ee6a3b8c..ed4aa00a8 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -248,7 +248,7 @@ void mmu_disable(void)
 	isb();
 }
 
-static void dma_inv_range(void *ptr, size_t size)
+void dma_inv_range(void *ptr, size_t size)
 {
 	unsigned long start = (unsigned long)ptr;
 	unsigned long end = start + size - 1;
@@ -256,22 +256,6 @@ static void dma_inv_range(void *ptr, size_t size)
 	v8_inv_dcache_range(start, end);
 }
 
-void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
-{
-	void *ret;
-
-	size = PAGE_ALIGN(size);
-	ret = xmemalign(PAGE_SIZE, size);
-	if (dma_handle)
-		*dma_handle = (dma_addr_t)ret;
-
-	dma_inv_range(ret, size);
-
-	arch_remap_range(ret, size, MAP_UNCACHED);
-
-	return ret;
-}
-
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
                              enum dma_data_direction dir)
 {
diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
index 2cbe72062..e2e125686 100644
--- a/arch/arm/cpu/mmu_64.h
+++ b/arch/arm/cpu/mmu_64.h
@@ -1,4 +1,6 @@
 
+#include "mmu-common.h"
+
 #define CACHED_MEM      (PTE_BLOCK_MEMTYPE(MT_NORMAL) | \
 			 PTE_BLOCK_OUTER_SHARE | \
 			 PTE_BLOCK_AF)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo4.mail-out.ovh.net ([46.105.72.36]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QnsqM-0003hQ-MK
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 13:47:48 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 480ECFFA5DC
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 15:48:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  1 Aug 2011 15:29:42 +0200
Message-Id: <1312205383-13266-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110801132643.GH6255@game.jcrosoft.org>
References: <20110801132643.GH6255@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 8/9] ARM: rework MMU support
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

In barebox we used 1MiB sections to map our SDRAM cachable. This
has the drawback that we have to map our sdram twice: cached for
normal sdram and uncached for DMA operations. As address space gets
sparse on newer systems we are sometines unable to find a suitably
big enough area for the dma coherent space.

This patch changes the MMU code to use second level page tables.
With it we can implement dma_alloc_coherent as normal malloc, we
just have to remap the allocated area uncached afterwards and map
it cached again after free().

This makes arm_create_section(), setup_dma_coherent() and mmu_enable()
noops.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c         |  175 ++++++++++++++++++++++++++++++++++++--------
 arch/arm/include/asm/mmu.h |   20 ++++-
 include/common.h           |    1 +
 3 files changed, 161 insertions(+), 35 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index bb067e3..53ba51a 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -1,10 +1,13 @@
 #include <common.h>
 #include <init.h>
 #include <asm/mmu.h>
+#include <errno.h>
+#include <sizes.h>
+#include <asm/memory.h>
 
 static unsigned long *ttb;
 
-void arm_create_section(unsigned long virt, unsigned long phys, int size_m,
+static void create_section(unsigned long virt, unsigned long phys, int size_m,
 		unsigned int flags)
 {
 	int i;
@@ -24,6 +27,23 @@ void arm_create_section(unsigned long virt, unsigned long phys, int size_m,
 }
 
 /*
+ * Do it the simple way for now and invalidate the entire
+ * tlb
+ */
+static inline void tlb_invalidate(void)
+{
+	asm volatile (
+		"mov	r0, #0\n"
+		"mcr	p15, 0, r0, c7, c10, 4;	@ drain write buffer\n"
+		"mcr	p15, 0, r0, c8, c6, 0;  @ invalidate D TLBs\n"
+		"mcr	p15, 0, r0, c8, c5, 0;  @ invalidate I TLBs\n"
+		:
+		:
+		: "r0"
+	);
+}
+
+/*
  * Create a second level translation table for the given virtual address.
  * We initially create a flat uncached mapping on it.
  * Not yet exported, but may be later if someone finds use for it.
@@ -43,6 +63,84 @@ static u32 *arm_create_pte(unsigned long virt)
 	return table;
 }
 
+static void remap_range(void *_start, size_t size, uint32_t flags)
+{
+	u32 pteentry;
+	struct arm_memory *mem;
+	unsigned long start = (unsigned long)_start;
+	u32 *p;
+	int numentries, i;
+
+	for_each_sdram_bank(mem) {
+		if (start >= mem->start && start < mem->start + mem->size)
+			goto found;
+	}
+
+	BUG();
+	return;
+
+found:
+	pteentry = (start - mem->start) >> PAGE_SHIFT;
+
+	numentries = size >> PAGE_SHIFT;
+
+	p = mem->ptes + pteentry;
+
+	for (i = 0; i < numentries; i++) {
+		p[i] &= ~(PTE_BUFFERABLE | PTE_CACHEABLE);
+		p[i] |= flags;
+	}
+
+	dma_flush_range((unsigned long)p,
+			(unsigned long)p + numentries * sizeof(u32));
+
+	tlb_invalidate();
+}
+
+/*
+ * remap the memory bank described by mem cachable and
+ * bufferable
+ */
+static int arm_mmu_remap_sdram(struct arm_memory *mem)
+{
+	unsigned long phys = (unsigned long)mem->start;
+	unsigned long ttb_start = phys >> 20;
+	unsigned long ttb_end = (phys + mem->size) >> 20;
+	unsigned long num_ptes = mem->size >> 10;
+	int i, pte;
+
+	debug("remapping SDRAM from 0x%08lx (size 0x%08lx)\n",
+			phys, mem->size);
+
+	/*
+	 * We replace each 1MiB section in this range with second level page
+	 * tables, therefore we must have 1Mib aligment here.
+	 */
+	if ((phys & (SZ_1M - 1)) || (mem->size & (SZ_1M - 1)))
+		return -EINVAL;
+
+	mem->ptes = memalign(0x400, num_ptes * sizeof(u32));
+
+	debug("ptes: 0x%p ttb_start: 0x%08lx ttb_end: 0x%08lx\n",
+			mem->ptes, ttb_start, ttb_end);
+
+	for (i = 0; i < num_ptes; i++) {
+		mem->ptes[i] = (phys + i * 4096) | PTE_TYPE_SMALL |
+			PTE_SMALL_AP_URW_SRW | PTE_BUFFERABLE | PTE_CACHEABLE;
+	}
+
+	pte = 0;
+
+	for (i = ttb_start; i < ttb_end; i++) {
+		ttb[i] = (unsigned long)(&mem->ptes[pte]) | PMD_TYPE_TABLE |
+			(0 << 4);
+		pte += 256;
+	}
+
+	tlb_invalidate();
+
+	return 0;
+}
 /*
  * We have 8 exception vectors and the table consists of absolute
  * jumps, so we need 8 * 4 bytes for the instructions and another
@@ -70,15 +168,17 @@ static void vectors_init(void)
 }
 
 /*
- * Prepare MMU for usage and create a flat mapping. Board
- * code is responsible to remap the SDRAM cached
+ * Prepare MMU for usage enable it.
  */
-void mmu_init(void)
+int mmu_init(void)
 {
+	struct arm_memory *mem;
 	int i;
 
 	ttb = memalign(0x10000, 0x4000);
 
+	debug("ttb: 0x%p\n", ttb);
+
 	/* Set the ttb register */
 	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
 
@@ -86,23 +186,36 @@ void mmu_init(void)
 	i = 0x3;
 	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(i) /*:*/);
 
-	/* create a flat mapping */
-	arm_create_section(0, 0, 4096, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT);
+	/* create a flat mapping using 1MiB sections */
+	create_section(0, 0, 4096, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
+			PMD_TYPE_SECT);
 
 	vectors_init();
-}
 
-/*
- * enable the MMU. Should be called after mmu_init()
- */
-void mmu_enable(void)
-{
+	/*
+	 * First remap sdram cached using sections.
+	 * This is to speed up the generation of 2nd level page tables
+	 * below
+	 */
+	for_each_sdram_bank(mem)
+		create_section(mem->start, mem->start, mem->size >> 20,
+				PMD_SECT_DEF_CACHED);
+
 	asm volatile (
 		"bl __mmu_cache_on;"
 		:
 		:
 		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "cc", "memory"
         );
+
+	/*
+	 * Now that we have the MMU and caches on remap sdram again using
+	 * page tables
+	 */
+	for_each_sdram_bank(mem)
+		arm_mmu_remap_sdram(mem);
+
+	return 0;
 }
 
 struct outer_cache_fns outer_cache;
@@ -125,39 +238,41 @@ void mmu_disable(void)
 	);
 }
 
-/*
- * For boards which need coherent memory for DMA. The idea
- * is simple: Setup a uncached section containing your SDRAM
- * and call setup_dma_coherent() with the offset between the
- * cached and the uncached section. dma_alloc_coherent() then
- * works using normal malloc but returns the corresponding
- * pointer in the uncached area.
- */
-static unsigned long dma_coherent_offset;
-
-void setup_dma_coherent(unsigned long offset)
-{
-	dma_coherent_offset = offset;
-}
+#define PAGE_ALIGN(s) ((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1);
 
 void *dma_alloc_coherent(size_t size)
 {
-	return xmemalign(4096, size) + dma_coherent_offset;
+	void *ret;
+
+	size = PAGE_ALIGN(size);
+	ret = xmemalign(4096, size);
+
+#ifdef CONFIG_MMU
+	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
+
+	remap_range(ret, size, 0);
+#endif
+
+	return ret;
 }
 
 unsigned long virt_to_phys(void *virt)
 {
-	return (unsigned long)virt - dma_coherent_offset;
+	return (unsigned long)virt;
 }
 
 void *phys_to_virt(unsigned long phys)
 {
-	return (void *)(phys + dma_coherent_offset);
+	return (void *)phys;
 }
 
 void dma_free_coherent(void *mem, size_t size)
 {
-	free(mem - dma_coherent_offset);
+#ifdef CONFIG_MMU
+	remap_range(mem, size, PTE_BUFFERABLE | PTE_CACHEABLE);
+#endif
+
+	free(mem);
 }
 
 void dma_clean_range(unsigned long start, unsigned long end)
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 9ebc2cd..b1aa781 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -3,19 +3,29 @@
 
 #include <asm/pgtable.h>
 #include <malloc.h>
+#include <errno.h>
 
 #define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT)
 #define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
 
-void mmu_init(void);
-void mmu_enable(void);
+struct arm_memory;
+
+static inline void mmu_enable(void)
+{
+}
 void mmu_disable(void);
-void arm_create_section(unsigned long virt, unsigned long phys, int size_m,
-		unsigned int flags);
+static inline void arm_create_section(unsigned long virt, unsigned long phys, int size_m,
+		unsigned int flags)
+{
+}
 
-void setup_dma_coherent(unsigned long offset);
+static inline void setup_dma_coherent(unsigned long offset)
+{
+}
 
 #ifdef CONFIG_MMU
+int mmu_init(void);
+
 void *dma_alloc_coherent(size_t size);
 void dma_free_coherent(void *mem, size_t size);
 
diff --git a/include/common.h b/include/common.h
index f3353c8..0ce4a70 100644
--- a/include/common.h
+++ b/include/common.h
@@ -221,6 +221,7 @@ int run_shell(void);
 #define ULLONG_MAX	(~0ULL)
 
 #define PAGE_SIZE	4096
+#define PAGE_SHIFT	12
 
 int memory_display(char *addr, ulong offs, ulong nbytes, int size);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

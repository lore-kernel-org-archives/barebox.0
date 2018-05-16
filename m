Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ2cR-00069r-Eh
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:01:55 +0000
Received: by mail-pl0-x243.google.com with SMTP id e6-v6so1036878plt.11
 for <barebox@lists.infradead.org>; Wed, 16 May 2018 13:01:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 May 2018 13:00:35 -0700
Message-Id: <20180516200036.29829-28-andrew.smirnov@gmail.com>
In-Reply-To: <20180516200036.29829-1-andrew.smirnov@gmail.com>
References: <20180516200036.29829-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 27/28] ARM: mmu: Implement on-demand PTE allocation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Allocating PTEs for every 4K page corresponding to SDRAM upfront costs
us quite a bit of memory: 1KB per 1MB or RAM. This is far from being a
deal-breaker for majority of use-cases, but for builds where amount of
free memory is in hundres of KBs* it becomes a real hurdle for being
able to use MMU (which also means no L1 cache).

Given how we really only need PTEs for a very few regions of memory
dedicated from DMA buffers (Ethernet, USB, etc), changing MMU code to
do on-demand section splitting can allow us to save significant amount
of memory without any functionality loss.

Below is a very trivial comparison of memory usages on start before
and after this patch is applied.

Before:

barebox@ZII VF610 Development Board, Rev B:/ meminfo
used: 1271584
free: 265553032

After:

barebox@ZII VF610 Development Board, Rev B:/ meminfo
used: 795276
free: 266024448

Tested on:

       - VF610 Tower Board,
       - VF610 ZII Development Board (Rev. C)
       - i.MX51 Babbage Board
       - i.MX7 SabreSD Board
       - i.MX6 ZII RDU2 Board
       - AT91SAM9X5-EK Board

* One example of such use-case is memory testing while running purely
  out of SRAM

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.c | 210 ++++++++++++++++++++++++---------------------
 1 file changed, 111 insertions(+), 99 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 30f321691..fdb919eb8 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -35,6 +35,7 @@
 
 #define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
 #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
+#define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
 
 static uint32_t *ttb;
 
@@ -60,6 +61,7 @@ static inline void tlb_invalidate(void)
 #define PTE_FLAGS_UNCACHED_V7 (0)
 #define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
 #define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
+#define PGD_FLAGS_WC_V7 PMD_SECT_TEX(1)
 
 /*
  * PTE flags to set cached and uncached areas.
@@ -68,6 +70,7 @@ static inline void tlb_invalidate(void)
 static uint32_t pte_flags_cached;
 static uint32_t pte_flags_wc;
 static uint32_t pte_flags_uncached;
+static uint32_t pgd_flags_wc;
 
 #define PTE_MASK ((1 << 12) - 1)
 
@@ -110,6 +113,11 @@ static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
 	return table;
 }
 
+static bool pgd_type_table(u32 pgd)
+{
+	return (pgd & PMD_TYPE_MASK) == PMD_TYPE_TABLE;
+}
+
 static u32 *find_pte(unsigned long adr)
 {
 	u32 *table;
@@ -117,23 +125,8 @@ static u32 *find_pte(unsigned long adr)
 	if (!ttb)
 		arm_mmu_not_initialized_error();
 
-	if ((ttb[pgd_index(adr)] & PMD_TYPE_MASK) != PMD_TYPE_TABLE) {
-		struct memory_bank *bank;
-		int i = 0;
-
-		/*
-		 * This should only be called for page mapped memory inside our
-		 * memory banks. It's a bug to call it with section mapped memory
-		 * locations.
-		 */
-		pr_crit("%s: TTB for address 0x%08lx is not of type table\n",
-				__func__, adr);
-		pr_crit("Memory banks:\n");
-		for_each_memory_bank(bank)
-			pr_crit("#%d 0x%08lx - 0x%08lx\n", i, bank->start,
-					bank->start + bank->size - 1);
-		BUG();
-	}
+	if (!pgd_type_table(ttb[pgd_index(adr)]))
+		return NULL;
 
 	/* find the coarse page table base address */
 	table = (u32 *)(ttb[pgd_index(adr)] & ~0x3ff);
@@ -159,42 +152,115 @@ static void dma_inv_range(unsigned long start, unsigned long end)
 	__dma_inv_range(start, end);
 }
 
-static int __remap_range(void *_start, size_t size, u32 pte_flags)
-{
-	unsigned long start = (unsigned long)_start;
-	u32 *p;
-	int numentries, i;
-
-	numentries = size >> PAGE_SHIFT;
-	p = find_pte(start);
-
-	for (i = 0; i < numentries; i++) {
-		p[i] &= ~PTE_MASK;
-		p[i] |= pte_flags | PTE_TYPE_SMALL;
-	}
-
-	dma_flush_range(p, numentries * sizeof(u32));
-	tlb_invalidate();
-
-	return 0;
-}
-
 int arch_remap_range(void *start, size_t size, unsigned flags)
 {
+	u32 addr = (u32)start;
 	u32 pte_flags;
+	u32 pgd_flags;
+
+	BUG_ON(!IS_ALIGNED(addr, PAGE_SIZE));
 
 	switch (flags) {
 	case MAP_CACHED:
 		pte_flags = pte_flags_cached;
+		pgd_flags = PMD_SECT_DEF_CACHED;
 		break;
 	case MAP_UNCACHED:
 		pte_flags = pte_flags_uncached;
+		pgd_flags = PMD_SECT_DEF_UNCACHED;
+		break;
+	case ARCH_MAP_WRITECOMBINE:
+		pte_flags = pte_flags_wc;
+		pgd_flags = pgd_flags_wc;
 		break;
 	default:
 		return -EINVAL;
 	}
 
-	return __remap_range(start, size, pte_flags);
+	while (size) {
+		const bool pgdir_size_aligned = IS_ALIGNED(addr, PGDIR_SIZE);
+		u32 *pgd = (u32 *)&ttb[pgd_index(addr)];
+		size_t chunk;
+
+		if (size >= PGDIR_SIZE && pgdir_size_aligned &&
+		    !pgd_type_table(*pgd)) {
+			/*
+			 * TODO: Add code to discard a page table and
+			 * replace it with a section
+			 */
+			chunk = PGDIR_SIZE;
+			*pgd = addr | pgd_flags;
+			dma_flush_range(pgd, sizeof(*pgd));
+		} else {
+			unsigned int num_ptes;
+			u32 *table = NULL;
+			unsigned int i;
+			u32 *pte;
+			/*
+			 * We only want to cover pages up until next
+			 * section boundary in case there we would
+			 * have an opportunity to re-map the whole
+			 * section (say if we got here becasue address
+			 * was not aligned on PGDIR_SIZE boundary)
+			 */
+			chunk = pgdir_size_aligned ?
+				PGDIR_SIZE : ALIGN(addr, PGDIR_SIZE) - addr;
+			/*
+			 * At the same time we want to make sure that
+			 * we don't go on remapping past requested
+			 * size in case that is less that the distance
+			 * to next PGDIR_SIZE boundary.
+			 */
+			chunk = min(chunk, size);
+			num_ptes = chunk / PAGE_SIZE;
+
+			pte = find_pte(addr);
+			if (!pte) {
+				/*
+				 * If PTE is not found it means that
+				 * we needs to split this section and
+				 * create a new page table for it
+				 *
+				 * NOTE: Here we assume that section
+				 * we just split was mapped as cached
+				 */
+				table = arm_create_pte(addr, pte_flags_cached);
+				pte = find_pte(addr);
+				BUG_ON(!pte);
+				/*
+				 * We just converted split this
+				 * section and modified it's Level 1
+				 * descriptor, so we mark it to be
+				 * flushed
+				 */
+				dma_flush_range(pgd, sizeof(*pgd));
+			}
+
+			for (i = 0; i < num_ptes; i++) {
+				pte[i] &= ~PTE_MASK;
+				pte[i] |= pte_flags | PTE_TYPE_SMALL;
+			}
+
+			if (table) {
+				/*
+				 * If we just created a new page
+				 * table, the whole table would have
+				 * to be flushed, not just PTEs that
+				 * we touched when re-mapping.
+				 */
+				pte = table;
+				num_ptes = PTRS_PER_PTE;
+			}
+
+			dma_flush_range(pte, num_ptes * sizeof(u32));
+		}
+
+		addr += chunk;
+		size -= chunk;
+	}
+
+	tlb_invalidate();
+	return 0;
 }
 
 void *map_io_sections(unsigned long phys, void *_start, size_t size)
@@ -209,55 +275,6 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 	return _start;
 }
 
-/*
- * remap the memory bank described by mem cachable and
- * bufferable
- */
-static int arm_mmu_remap_sdram(struct memory_bank *bank)
-{
-	unsigned long phys = (unsigned long)bank->start;
-	unsigned long ttb_start = pgd_index(phys);
-	unsigned long ttb_end = ttb_start + pgd_index(bank->size);
-	unsigned long num_ptes = bank->size / PAGE_SIZE;
-	int i, pte;
-	u32 *ptes;
-
-	pr_debug("remapping SDRAM from 0x%08lx (size 0x%08lx)\n",
-			phys, bank->size);
-
-	/*
-	 * We replace each 1MiB section in this range with second level page
-	 * tables, therefore we must have 1Mib aligment here.
-	 */
-	if (!IS_ALIGNED(phys, PGDIR_SIZE) || !IS_ALIGNED(bank->size, PGDIR_SIZE))
-		return -EINVAL;
-
-	ptes = xmemalign(PAGE_SIZE, num_ptes * sizeof(u32));
-
-	pr_debug("ptes: 0x%p ttb_start: 0x%08lx ttb_end: 0x%08lx\n",
-			ptes, ttb_start, ttb_end);
-
-	for (i = 0; i < num_ptes; i++) {
-		ptes[i] = (phys + i * PAGE_SIZE) | PTE_TYPE_SMALL |
-			pte_flags_cached;
-	}
-
-	pte = 0;
-
-	for (i = ttb_start; i < ttb_end; i++) {
-		ttb[i] = (unsigned long)(&ptes[pte]) | PMD_TYPE_TABLE |
-			(0 << 4);
-		pte += PTRS_PER_PTE;
-	}
-
-	dma_flush_range(ttb, 0x4000);
-	dma_flush_range(ptes, num_ptes * sizeof(u32));
-
-	tlb_invalidate();
-
-	return 0;
-}
-
 #define ARM_HIGH_VECTORS	0xffff0000
 #define ARM_LOW_VECTORS		0x0
 
@@ -423,10 +440,12 @@ static int mmu_init(void)
 	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
 		pte_flags_cached = PTE_FLAGS_CACHED_V7;
 		pte_flags_wc = PTE_FLAGS_WC_V7;
+		pgd_flags_wc = PGD_FLAGS_WC_V7;
 		pte_flags_uncached = PTE_FLAGS_UNCACHED_V7;
 	} else {
 		pte_flags_cached = PTE_FLAGS_CACHED_V4;
 		pte_flags_wc = PTE_FLAGS_UNCACHED_V4;
+		pgd_flags_wc = PMD_SECT_DEF_UNCACHED;
 		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
 	}
 
@@ -477,13 +496,6 @@ static int mmu_init(void)
 
 	__mmu_cache_on();
 
-	/*
-	 * Now that we have the MMU and caches on remap sdram again using
-	 * page tables
-	 */
-	for_each_memory_bank(bank)
-		arm_mmu_remap_sdram(bank);
-
 	return 0;
 }
 mmu_initcall(mmu_init);
@@ -501,7 +513,7 @@ void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-static void *dma_alloc(size_t size, dma_addr_t *dma_handle, uint32_t pte_flags)
+static void *dma_alloc(size_t size, dma_addr_t *dma_handle, unsigned flags)
 {
 	void *ret;
 
@@ -512,19 +524,19 @@ static void *dma_alloc(size_t size, dma_addr_t *dma_handle, uint32_t pte_flags)
 
 	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
 
-	__remap_range(ret, size, pte_flags);
+	arch_remap_range(ret, size, flags);
 
 	return ret;
 }
 
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
-	return dma_alloc(size, dma_handle, pte_flags_uncached);
+	return dma_alloc(size, dma_handle, MAP_UNCACHED);
 }
 
 void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 {
-	return dma_alloc(size, dma_handle, pte_flags_wc);
+	return dma_alloc(size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
 
 unsigned long virt_to_phys(volatile void *virt)
@@ -540,7 +552,7 @@ void *phys_to_virt(unsigned long phys)
 void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
 {
 	size = PAGE_ALIGN(size);
-	__remap_range(mem, size, pte_flags_cached);
+	arch_remap_range(mem, size, MAP_CACHED);
 
 	free(mem);
 }
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

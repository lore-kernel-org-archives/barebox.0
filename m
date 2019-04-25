Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJfQp-0007dp-50
 for barebox@lists.infradead.org; Thu, 25 Apr 2019 14:33:06 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Apr 2019 16:32:32 +0200
Message-Id: <20190425143232.25405-5-a.fatoum@pengutronix.de>
In-Reply-To: <20190425143232.25405-1-a.fatoum@pengutronix.de>
References: <20190425143232.25405-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 4/4] ARM: mmu: mark uncached regions as eXecute never on v7
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, sam@ravnborg.org

The ARM Cortex-A Series Programmer's Guide notes[1]:
> When set, the Execute Never (XN) bit in the translation table entry
> prevents speculative instruction fetches taking place from desired
> memory locations and will cause a prefetch abort to occur if execution
> from the memory location is attempted.
>
> Typically device memory regions are marked as execute never to prevent
> accidental execution from such locations, and to prevent undesirable
> side-effects which might be caused by speculative instruction fetches.

Heed the advice and mark uncached memory with the XN bit, when the
CPU is >=v7.

It's possible that there are SoCs that have a section shared between
device memory and the on-chip RAM hosting the PBL.
In such a section, every page except for the OCRAM's should be mapped XN,
but as we know of no SoC with such an OCRAM layout, we ignore this
possibility for now and let mmu_early_enable map sections only.

[1]: 9.6.3 "Execute Never", Version 4.0

Suggested-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-early.c | 27 ++++++++++++++++++++++++---
 arch/arm/cpu/mmu.c       | 15 ++++++++++-----
 arch/arm/cpu/mmu.h       |  8 +++++++-
 3 files changed, 41 insertions(+), 9 deletions(-)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index d39a03ed95d6..2f5876fc46d8 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -5,17 +5,20 @@
 #include <asm/memory.h>
 #include <asm/system.h>
 #include <asm/cache.h>
+#include <asm-generic/sections.h>
 
 #include "mmu.h"
 
 static uint32_t *ttb;
 
-static void map_cachable(unsigned long start, unsigned long size)
+static inline void map_region(unsigned long start, unsigned long size,
+			      uint64_t flags)
+
 {
 	start = ALIGN_DOWN(start, SZ_1M);
 	size  = ALIGN(size, SZ_1M);
 
-	create_sections(ttb, start, start + size - 1, PMD_SECT_DEF_CACHED);
+	create_sections(ttb, start, start + size - 1, flags);
 }
 
 void mmu_early_enable(unsigned long membase, unsigned long memsize,
@@ -28,9 +31,27 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	set_ttbr(ttb);
 	set_domain(DOMAIN_MANAGER);
 
+	/*
+	 * This marks the whole address space as uncachable as well as
+	 * unexecutable if possible
+	 */
 	create_flat_mapping(ttb);
 
-	map_cachable(membase, memsize);
+	/*
+	 * There can be SoCs that have a section shared between device memory
+	 * and the on-chip RAM hosting the PBL. Thus mark this section
+	 * uncachable, but executable.
+	 * On such SoCs, executing from OCRAM could cause the instruction
+	 * prefetcher to speculatively access that device memory, triggering
+	 * potential errant behavior.
+	 *
+	 * If your SoC has such a memory layout, you should rewrite the code
+	 * here to map the OCRAM page-wise.
+	 */
+	map_region((unsigned long)_stext, _etext - _stext, PMD_SECT_DEF_UNCACHED);
+
+	/* maps main memory as cachable */
+	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
 
 	__mmu_cache_on();
 }
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index ed27d1e4b654..123e19e9e55c 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -57,11 +57,13 @@ static inline void tlb_invalidate(void)
 }
 
 #define PTE_FLAGS_CACHED_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE)
-#define PTE_FLAGS_WC_V7 PTE_EXT_TEX(1)
-#define PTE_FLAGS_UNCACHED_V7 (0)
+#define PTE_FLAGS_WC_V7 (PTE_EXT_TEX(1) | PTE_EXT_XN)
+#define PTE_FLAGS_UNCACHED_V7 PTE_EXT_XN
 #define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
 #define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
-#define PGD_FLAGS_WC_V7 (PMD_SECT_TEX(1) | PMD_TYPE_SECT | PMD_SECT_BUFFERABLE)
+#define PGD_FLAGS_WC_V7 (PMD_SECT_TEX(1) | PMD_TYPE_SECT | PMD_SECT_BUFFERABLE | \
+			 PMD_SECT_XN)
+#define PGD_FLAGS_UNCACHED_V7 (PMD_SECT_DEF_UNCACHED | PMD_SECT_XN)
 
 /*
  * PTE flags to set cached and uncached areas.
@@ -71,6 +73,7 @@ static uint32_t pte_flags_cached;
 static uint32_t pte_flags_wc;
 static uint32_t pte_flags_uncached;
 static uint32_t pgd_flags_wc;
+static uint32_t pgd_flags_uncached;
 
 #define PTE_MASK ((1 << 12) - 1)
 
@@ -163,7 +166,7 @@ int arch_remap_range(void *start, size_t size, unsigned flags)
 		break;
 	case MAP_UNCACHED:
 		pte_flags = pte_flags_uncached;
-		pgd_flags = PMD_SECT_DEF_UNCACHED;
+		pgd_flags = pgd_flags_uncached;
 		break;
 	case ARCH_MAP_WRITECOMBINE:
 		pte_flags = pte_flags_wc;
@@ -246,7 +249,7 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 	unsigned long start = (unsigned long)_start, sec;
 
 	for (sec = start; sec < start + size; sec += PGDIR_SIZE, phys += PGDIR_SIZE)
-		ttb[pgd_index(sec)] = phys | PMD_SECT_DEF_UNCACHED;
+		ttb[pgd_index(sec)] = phys | pgd_flags_uncached;
 
 	dma_flush_range(ttb, 0x4000);
 	tlb_invalidate();
@@ -410,11 +413,13 @@ void __mmu_init(bool mmu_on)
 		pte_flags_cached = PTE_FLAGS_CACHED_V7;
 		pte_flags_wc = PTE_FLAGS_WC_V7;
 		pgd_flags_wc = PGD_FLAGS_WC_V7;
+		pgd_flags_uncached = PGD_FLAGS_UNCACHED_V7;
 		pte_flags_uncached = PTE_FLAGS_UNCACHED_V7;
 	} else {
 		pte_flags_cached = PTE_FLAGS_CACHED_V4;
 		pte_flags_wc = PTE_FLAGS_UNCACHED_V4;
 		pgd_flags_wc = PMD_SECT_DEF_UNCACHED;
+		pgd_flags_uncached = PMD_SECT_DEF_UNCACHED;
 		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
 	}
 
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 338728aacd3b..c911ee209f51 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -3,6 +3,7 @@
 
 #include <asm/pgtable.h>
 #include <linux/sizes.h>
+#include <asm/system_info.h>
 
 #include "mmu-common.h"
 
@@ -62,8 +63,13 @@ create_sections(uint32_t *ttb, unsigned long first,
 
 static inline void create_flat_mapping(uint32_t *ttb)
 {
+	unsigned int flags = PMD_SECT_DEF_UNCACHED;
+
+	if (cpu_architecture() >= CPU_ARCH_ARMv7)
+		flags |= PMD_SECT_XN;
+
 	/* create a flat mapping using 1MiB sections */
-	create_sections(ttb, 0, 0xffffffff, PMD_SECT_DEF_UNCACHED);
+	create_sections(ttb, 0, 0xffffffff, flags);
 }
 
 #endif /* __ARM_MMU_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qQ-On
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:54 +0100
Message-Id: <20180316125354.23462-79-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 78/78] ARM: aarch64: Make early MMU support work
To: Barebox List <barebox@lists.infradead.org>

Until now it was not possible to enable the MMU in PBL because
create_section needs memory allocations which are not available. With
this patch we move the early MMU support to a separate file and all
necessary aux functions to mmu_64.h. create_sections is reimplmented
for the early case to only create 1st level pagetables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile       |   5 +-
 arch/arm/cpu/mmu-early_64.c |  88 +++++++++++++++++++++++++++++
 arch/arm/cpu/mmu_64.c       | 134 +++-----------------------------------------
 arch/arm/cpu/mmu_64.h       |  84 +++++++++++++++++++++++++++
 4 files changed, 182 insertions(+), 129 deletions(-)
 create mode 100644 arch/arm/cpu/mmu-early_64.c

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index f79cedd085..0316d251c0 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -3,10 +3,7 @@ obj-y += cpu.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o interrupts$(S64).o
 obj-$(CONFIG_MMU) += mmu$(S64).o
 lwl-y += lowlevel$(S64).o
-
-ifeq ($(CONFIG_CPU_32), y)
-obj-pbl-$(CONFIG_MMU) += mmu-early.o
-endif
+obj-pbl-$(CONFIG_MMU) += mmu-early$(S64).o
 
 obj-y += start.o entry.o
 
diff --git a/arch/arm/cpu/mmu-early_64.c b/arch/arm/cpu/mmu-early_64.c
new file mode 100644
index 0000000000..f07d107e0d
--- /dev/null
+++ b/arch/arm/cpu/mmu-early_64.c
@@ -0,0 +1,88 @@
+#include <common.h>
+#include <dma-dir.h>
+#include <init.h>
+#include <mmu.h>
+#include <errno.h>
+#include <linux/sizes.h>
+#include <asm/memory.h>
+#include <asm/pgtable64.h>
+#include <asm/barebox-arm.h>
+#include <asm/system.h>
+#include <asm/cache.h>
+#include <memory.h>
+#include <asm/system_info.h>
+
+#include "mmu_64.h"
+
+static void create_sections(void *ttb, uint64_t virt, uint64_t phys,
+			    uint64_t size, uint64_t attr)
+{
+	uint64_t block_size;
+	uint64_t block_shift;
+	uint64_t *pte;
+	uint64_t idx;
+	uint64_t addr;
+	uint64_t *table;
+
+	addr = virt;
+
+	attr &= ~PTE_TYPE_MASK;
+
+	table = ttb;
+
+	while (1) {
+		block_shift = level2shift(1);
+		idx = (addr & level2mask(1)) >> block_shift;
+		block_size = (1ULL << block_shift);
+
+		pte = table + idx;
+
+		*pte = phys | attr | PTE_TYPE_BLOCK;
+
+		if (size < block_size)
+			break;
+
+		addr += block_size;
+		phys += block_size;
+		size -= block_size;
+	}
+}
+
+void mmu_early_enable(unsigned long membase, unsigned long memsize,
+		      unsigned long ttb)
+{
+	int el;
+
+	/*
+	 * For the early code we only create level 1 pagetables which only
+	 * allow for a 1GiB granularity. If our membase is not aligned to that
+	 * bail out without enabling the MMU.
+	 */
+	if (membase & ((1ULL << level2shift(1)) - 1))
+		return;
+
+	memset((void *)ttb, 0, GRANULE_SIZE);
+
+	el = current_el();
+	set_ttbr_tcr_mair(el, ttb, calc_tcr(el), MEMORY_ATTRIBUTES);
+	create_sections((void *)ttb, 0, 0, 1UL << (BITS_PER_VA - 1), UNCACHED_MEM);
+	create_sections((void *)ttb, membase, membase, memsize, CACHED_MEM);
+	tlb_invalidate();
+	isb();
+	set_cr(get_cr() | CR_M);
+}
+
+void mmu_early_disable(void)
+{
+	unsigned int cr;
+
+	cr = get_cr();
+	cr &= ~(CR_M | CR_C);
+
+	set_cr(cr);
+	v8_flush_dcache_all();
+	tlb_invalidate();
+
+	dsb();
+	isb();
+}
\ No newline at end of file
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 31658de910..8355a4c6e8 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -34,13 +34,6 @@
 
 #include "mmu_64.h"
 
-#define CACHED_MEM      (PTE_BLOCK_MEMTYPE(MT_NORMAL) | \
-			 PTE_BLOCK_OUTER_SHARE | \
-			 PTE_BLOCK_AF)
-#define UNCACHED_MEM    (PTE_BLOCK_MEMTYPE(MT_DEVICE_nGnRnE) | \
-			 PTE_BLOCK_OUTER_SHARE | \
-			 PTE_BLOCK_AF)
-
 static uint64_t *ttb;
 
 static void arm_mmu_not_initialized_error(void)
@@ -54,74 +47,6 @@ static void arm_mmu_not_initialized_error(void)
 	panic("MMU not initialized\n");
 }
 
-static uint64_t calc_tcr(int el)
-{
-	u64 ips, va_bits;
-	u64 tcr;
-
-	ips = 2;
-	va_bits = BITS_PER_VA;
-
-	if (el == 1)
-		tcr = (ips << 32) | TCR_EPD1_DISABLE;
-	else if (el == 2)
-		tcr = (ips << 16);
-	else
-		tcr = (ips << 16);
-
-	/* PTWs cacheable, inner/outer WBWA and inner shareable */
-	tcr |= TCR_TG0_4K | TCR_SHARED_INNER | TCR_ORGN_WBWA | TCR_IRGN_WBWA;
-	tcr |= TCR_T0SZ(va_bits);
-
-	return tcr;
-}
-
-/*
- * Do it the simple way for now and invalidate the entire
- * tlb
- */
-static inline void tlb_invalidate(void)
-{
-	unsigned int el = current_el();
-
-	dsb();
-
-	if (el == 1)
-		__asm__ __volatile__("tlbi vmalle1\n\t" : : : "memory");
-	else if (el == 2)
-		__asm__ __volatile__("tlbi alle2\n\t" : : : "memory");
-	else if (el == 3)
-		__asm__ __volatile__("tlbi alle3\n\t" : : : "memory");
-
-	dsb();
-	isb();
-}
-
-static int level2shift(int level)
-{
-	/* Page is 12 bits wide, every level translates 9 bits */
-	return (12 + 9 * (3 - level));
-}
-
-static uint64_t level2mask(int level)
-{
-	uint64_t mask = -EINVAL;
-
-	if (level == 1)
-		mask = L1_ADDR_MASK;
-	else if (level == 2)
-		mask = L2_ADDR_MASK;
-	else if (level == 3)
-		mask = L3_ADDR_MASK;
-
-	return mask;
-}
-
-static int pte_type(uint64_t *pte)
-{
-	return *pte & PTE_TYPE_MASK;
-}
-
 static void set_table(uint64_t *pt, uint64_t *table_addr)
 {
 	uint64_t val;
@@ -140,16 +65,6 @@ static uint64_t *create_table(void)
 	return new_table;
 }
 
-static uint64_t *get_level_table(uint64_t *pte)
-{
-	uint64_t *table = (uint64_t *)(*pte & XLAT_ADDR_MASK);
-
-	if (pte_type(pte) != PTE_TYPE_TABLE)
-		BUG();
-
-	return table;
-}
-
 static __maybe_unused uint64_t *find_pte(uint64_t addr)
 {
 	uint64_t *pte;
@@ -286,26 +201,15 @@ static int mmu_init(void)
 		 */
 		panic("MMU: No memory bank found! Cannot continue\n");
 
-	if (get_cr() & CR_M) {
-		ttb = (uint64_t *)get_ttbr(current_el());
-		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
-			/*
-			* This can mean that:
-			* - the early MMU code has put the ttb into a place
-			*   which we don't have inside our available memory
-			* - Somebody else has occupied the ttb region which means
-			*   the ttb will get corrupted.
-			*/
-			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
-				ttb);
-	} else {
-		ttb = xmemalign(GRANULE_SIZE, GRANULE_SIZE);
-
-		memset(ttb, 0, GRANULE_SIZE);
-
-		el = current_el();
-		set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el), MEMORY_ATTRIBUTES);
-	}
+	if (get_cr() & CR_M)
+		mmu_disable();
+
+	ttb = xmemalign(GRANULE_SIZE, GRANULE_SIZE);
+
+	memset(ttb, 0, GRANULE_SIZE);
+
+	el = current_el();
+	set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el), MEMORY_ATTRIBUTES);
 
 	pr_debug("ttb: 0x%p\n", ttb);
 
@@ -339,26 +243,6 @@ void mmu_disable(void)
 	isb();
 }
 
-void mmu_early_enable(unsigned long membase, unsigned long memsize,
-		      unsigned long _ttb)
-{
-	int el;
-
-	ttb = (uint64_t *)_ttb;
-
-	memset(ttb, 0, GRANULE_SIZE);
-
-	el = current_el();
-	set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el), MEMORY_ATTRIBUTES);
-
-	create_sections(0, 0, 1UL << (BITS_PER_VA - 1), UNCACHED_MEM);
-
-	create_sections(membase, membase, memsize, CACHED_MEM);
-
-	isb();
-	set_cr(get_cr() | CR_M);
-}
-
 unsigned long virt_to_phys(volatile void *virt)
 {
 	return (unsigned long)virt;
diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
index cc01db0db9..c280d2ced2 100644
--- a/arch/arm/cpu/mmu_64.h
+++ b/arch/arm/cpu/mmu_64.h
@@ -1,4 +1,31 @@
 
+#define CACHED_MEM      (PTE_BLOCK_MEMTYPE(MT_NORMAL) | \
+			 PTE_BLOCK_OUTER_SHARE | \
+			 PTE_BLOCK_AF)
+#define UNCACHED_MEM    (PTE_BLOCK_MEMTYPE(MT_DEVICE_nGnRnE) | \
+			 PTE_BLOCK_OUTER_SHARE | \
+			 PTE_BLOCK_AF)
+
+/*
+ * Do it the simple way for now and invalidate the entire tlb
+ */
+static inline void tlb_invalidate(void)
+{
+	unsigned int el = current_el();
+
+	dsb();
+
+	if (el == 1)
+		__asm__ __volatile__("tlbi vmalle1\n\t" : : : "memory");
+	else if (el == 2)
+		__asm__ __volatile__("tlbi alle2\n\t" : : : "memory");
+	else if (el == 3)
+		__asm__ __volatile__("tlbi alle3\n\t" : : : "memory");
+
+	dsb();
+	isb();
+}
+
 static inline void set_ttbr_tcr_mair(int el, uint64_t table, uint64_t tcr, uint64_t attr)
 {
 	asm volatile("dsb sy");
@@ -35,3 +62,60 @@ static inline uint64_t get_ttbr(int el)
 
 	return val;
 }
+
+static inline int level2shift(int level)
+{
+	/* Page is 12 bits wide, every level translates 9 bits */
+	return (12 + 9 * (3 - level));
+}
+
+static inline uint64_t level2mask(int level)
+{
+	uint64_t mask = -EINVAL;
+
+	if (level == 1)
+		mask = L1_ADDR_MASK;
+	else if (level == 2)
+		mask = L2_ADDR_MASK;
+	else if (level == 3)
+		mask = L3_ADDR_MASK;
+
+	return mask;
+}
+
+static inline uint64_t calc_tcr(int el)
+{
+	u64 ips, va_bits;
+	u64 tcr;
+
+	ips = 2;
+	va_bits = BITS_PER_VA;
+
+	if (el == 1)
+		tcr = (ips << 32) | TCR_EPD1_DISABLE;
+	else if (el == 2)
+		tcr = (ips << 16);
+	else
+		tcr = (ips << 16);
+
+	/* PTWs cacheable, inner/outer WBWA and inner shareable */
+	tcr |= TCR_TG0_4K | TCR_SHARED_INNER | TCR_ORGN_WBWA | TCR_IRGN_WBWA;
+	tcr |= TCR_T0SZ(va_bits);
+
+	return tcr;
+}
+
+static inline int pte_type(uint64_t *pte)
+{
+	return *pte & PTE_TYPE_MASK;
+}
+
+static inline uint64_t *get_level_table(uint64_t *pte)
+{
+	uint64_t *table = (uint64_t *)(*pte & XLAT_ADDR_MASK);
+
+	if (pte_type(pte) != PTE_TYPE_TABLE)
+		BUG();
+
+	return table;
+}
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3KFR-0005ic-VZ
 for barebox@lists.infradead.org; Thu, 19 May 2016 09:28:08 +0000
Received: by mail-wm0-x243.google.com with SMTP id w143so19258918wmw.3
 for <barebox@lists.infradead.org>; Thu, 19 May 2016 02:27:45 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Fri, 20 May 2016 03:11:08 +0200
Message-Id: <1463706669-39738-3-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1463706669-39738-1-git-send-email-poggi.raph@gmail.com>
References: <1463706669-39738-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 2/3] arm64: add basic mmu support
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

This commit adds basic mmu support, ie:
	- DMA cache handling is not supported
	- Remapping memory region also

The current mmu setting is:
	- 4KB granularity
	- 3 level lookup (skipping L0)
	- 33 bits per VA

This is based on coreboot and u-boot mmu configuration.

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm64/cpu/Makefile          |   2 +-
 arch/arm64/cpu/cpu.c             |  19 ---
 arch/arm64/cpu/interrupts.c      |   6 -
 arch/arm64/cpu/mmu-early.h       |   6 -
 arch/arm64/cpu/mmu.c             | 334 +++++++++++++++++++++++++++++++++++++++
 arch/arm64/cpu/mmu.h             | 155 ++++++++++++++++++
 arch/arm64/cpu/start.c           |   4 +-
 arch/arm64/include/asm/mmu.h     |   6 +-
 arch/arm64/include/asm/pgtable.h |   5 +-
 include/asm-generic/sections.h   |   6 +-
 10 files changed, 500 insertions(+), 43 deletions(-)
 delete mode 100644 arch/arm64/cpu/mmu-early.h
 create mode 100644 arch/arm64/cpu/mmu.c

diff --git a/arch/arm64/cpu/Makefile b/arch/arm64/cpu/Makefile
index 1880c32..fe6e7af 100644
--- a/arch/arm64/cpu/Makefile
+++ b/arch/arm64/cpu/Makefile
@@ -8,7 +8,7 @@ obj-y += start.o entry.o
 #
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
-obj-$(CONFIG_MMU) += cache.o
+obj-$(CONFIG_MMU) += mmu.o cache.o
 
 AFLAGS_cache-armv8.o       :=-Wa,-march=armv8-a
 obj-$(CONFIG_CPU_64v8) += cache-armv8.o
diff --git a/arch/arm64/cpu/cpu.c b/arch/arm64/cpu/cpu.c
index 2a27e72..19cd944 100644
--- a/arch/arm64/cpu/cpu.c
+++ b/arch/arm64/cpu/cpu.c
@@ -61,25 +61,6 @@ int icache_status(void)
 	return (get_sctlr() & CR_I) != 0;
 }
 
-/*
- * SoC like the ux500 have the l2x0 always enable
- * with or without MMU enable
- */
-struct outer_cache_fns outer_cache;
-
-/*
- * Clean and invalide caches, disable MMU
- */
-void mmu_disable(void)
-{
-	__mmu_cache_flush();
-	if (outer_cache.disable) {
-		outer_cache.flush_all();
-		outer_cache.disable();
-	}
-	__mmu_cache_off();
-}
-
 /**
  * Disable MMU and D-cache, flush caches
  * @return 0 (always)
diff --git a/arch/arm64/cpu/interrupts.c b/arch/arm64/cpu/interrupts.c
index 32f5b4b..d42a5b1 100644
--- a/arch/arm64/cpu/interrupts.c
+++ b/arch/arm64/cpu/interrupts.c
@@ -75,12 +75,6 @@ void do_prefetch_abort (struct pt_regs *pt_regs)
  */
 void do_data_abort (struct pt_regs *pt_regs)
 {
-	u32 far;
-
-	printf("unable to handle %s at address 0x%08x\n",
-			far < PAGE_SIZE ? "NULL pointer dereference" :
-			"paging request", far);
-
 	do_exception(pt_regs);
 }
 
diff --git a/arch/arm64/cpu/mmu-early.h b/arch/arm64/cpu/mmu-early.h
deleted file mode 100644
index af21f52..0000000
--- a/arch/arm64/cpu/mmu-early.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __ARM_CPU_MMU_EARLY_H
-#define __ARM_CPU_MMU_EARLY_H
-
-void mmu_early_enable(uint32_t membase, uint32_t memsize, uint32_t ttb);
-
-#endif /* __ARM_CPU_MMU_EARLY_H */
diff --git a/arch/arm64/cpu/mmu.c b/arch/arm64/cpu/mmu.c
new file mode 100644
index 0000000..b171f80
--- /dev/null
+++ b/arch/arm64/cpu/mmu.c
@@ -0,0 +1,334 @@
+/*
+ * Copyright (c) 2009-2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#define pr_fmt(fmt)	"mmu: " fmt
+
+#include <common.h>
+#include <dma-dir.h>
+#include <init.h>
+#include <mmu.h>
+#include <errno.h>
+#include <linux/sizes.h>
+#include <asm/memory.h>
+#include <asm/barebox-arm.h>
+#include <asm/system.h>
+#include <asm/cache.h>
+#include <memory.h>
+#include <asm/system_info.h>
+
+#include "mmu.h"
+
+static uint64_t *ttb;
+static int free_idx;
+
+static void arm_mmu_not_initialized_error(void)
+{
+	/*
+	 * This means:
+	 * - one of the MMU functions like dma_alloc_coherent
+	 *   or remap_range is called too early, before the MMU is initialized
+	 * - Or the MMU initialization has failed earlier
+	 */
+	panic("MMU not initialized\n");
+}
+
+
+/*
+ * Do it the simple way for now and invalidate the entire
+ * tlb
+ */
+static inline void tlb_invalidate(void)
+{
+	unsigned int el = current_el();
+
+	dsb();
+
+	if (el == 1)
+		__asm__ __volatile__("tlbi alle1\n\t" : : : "memory");
+	else if (el == 2)
+		__asm__ __volatile__("tlbi alle2\n\t" : : : "memory");
+	else if (el == 3)
+		__asm__ __volatile__("tlbi alle3\n\t" : : : "memory");
+
+	dsb();
+	isb();
+}
+
+static int level2shift(int level)
+{
+	/* Page is 12 bits wide, every level translates 9 bits */
+	return (12 + 9 * (3 - level));
+}
+
+static uint64_t level2mask(int level)
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
+static int pte_type(uint64_t *pte)
+{
+	return *pte & PMD_TYPE_MASK;
+}
+
+static void set_table(uint64_t *pt, uint64_t *table_addr)
+{
+	uint64_t val;
+
+	val = PMD_TYPE_TABLE | (uint64_t)table_addr;
+	*pt = val;
+}
+
+static uint64_t *create_table(void)
+{
+	uint64_t *new_table = ttb + free_idx * GRANULE_SIZE;
+
+	/* Mark all entries as invalid */
+	memset(new_table, 0, GRANULE_SIZE);
+
+	free_idx++;
+
+	return new_table;
+}
+
+static uint64_t *get_level_table(uint64_t *pte)
+{
+	uint64_t *table = (uint64_t *)(*pte & XLAT_ADDR_MASK);
+
+	if (pte_type(pte) != PMD_TYPE_TABLE) {
+		table = create_table();
+		set_table(pte, table);
+	}
+
+	return table;
+}
+
+static uint64_t *find_pte(uint64_t addr)
+{
+	uint64_t *pte;
+	uint64_t block_shift;
+	uint64_t idx;
+	int i;
+
+	pte = ttb;
+
+	for (i = 1; i < 4; i++) {
+		block_shift = level2shift(i);
+		idx = (addr & level2mask(i)) >> block_shift;
+		pte += idx;
+
+		if ((pte_type(pte) != PMD_TYPE_TABLE) || (block_shift <= GRANULE_SIZE_SHIFT))
+			break;
+		else
+			pte = (uint64_t *)(*pte & XLAT_ADDR_MASK);
+	}
+
+	return pte;
+}
+
+static void map_region(uint64_t virt, uint64_t phys, uint64_t size, uint64_t attr)
+{
+	uint64_t block_size;
+	uint64_t block_shift;
+	uint64_t *pte;
+	uint64_t idx;
+	uint64_t addr;
+	uint64_t *table;
+	int level;
+
+	if (!ttb)
+		arm_mmu_not_initialized_error();
+
+	addr = virt;
+
+	attr &= ~(PMD_TYPE_SECT);
+
+	while (size) {
+		table = ttb;
+		for (level = 1; level < 4; level++) {
+			block_shift = level2shift(level);
+			idx = (addr & level2mask(level)) >> block_shift;
+			block_size = (1 << block_shift);
+
+			pte = table + idx;
+
+			if (level == 3)
+				attr |= PMD_TYPE_PAGE;
+			else
+				attr |= PMD_TYPE_SECT;
+
+			if (size >= block_size && IS_ALIGNED(addr, block_size)) {
+				*pte = phys | attr;
+				addr += block_size;
+				phys += block_size;
+				size -= block_size;
+				break;
+
+			}
+
+			table = get_level_table(pte);
+		}
+
+	}
+}
+
+static void create_sections(uint64_t virt, uint64_t phys, uint64_t size_m, uint64_t flags)
+{
+
+	map_region(virt, phys, size_m, flags);
+}
+
+void *map_io_sections(uint64_t phys, void *_start, size_t size)
+{
+
+	map_region((uint64_t)_start, phys, (uint64_t)size, PMD_SECT_DEF_UNCACHED);
+
+	tlb_invalidate();
+	return _start;
+}
+
+
+int arch_remap_range(void *_start, size_t size, unsigned flags)
+{
+	map_region((uint64_t)_start, (uint64_t)_start, (uint64_t)size, flags);
+
+	return 0;
+}
+
+/*
+ * Prepare MMU for usage enable it.
+ */
+static int mmu_init(void)
+{
+	struct memory_bank *bank;
+
+	if (list_empty(&memory_banks))
+		/*
+		 * If you see this it means you have no memory registered.
+		 * This can be done either with arm_add_mem_device() in an
+		 * initcall prior to mmu_initcall or via devicetree in the
+		 * memory node.
+		 */
+		panic("MMU: No memory bank found! Cannot continue\n");
+
+	if (get_sctlr() & CR_M) {
+		ttb = (uint64_t *)get_ttbr(1);
+		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
+			/*
+			* This can mean that:
+			* - the early MMU code has put the ttb into a place
+			*   which we don't have inside our available memory
+			* - Somebody else has occupied the ttb region which means
+			*   the ttb will get corrupted.
+			*/
+			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
+				ttb);
+	} else {
+		ttb = memalign(0x1000, SZ_16K);
+		free_idx = 1;
+
+		memset(ttb, 0, GRANULE_SIZE);
+
+		set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS, MEMORY_ATTR);
+	}
+
+	pr_debug("ttb: 0x%p\n", ttb);
+
+	/* create a flat mapping using 1MiB sections */
+	create_sections(0, 0, GRANULE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT);
+
+	/*
+	 * First remap sdram cached using sections.
+	 * This is to speed up the generation of 2nd level page tables
+	 * below
+	 */
+	for_each_memory_bank(bank)
+		create_sections(bank->start, bank->start, bank->size, PMD_SECT_DEF_CACHED);
+
+	return 0;
+}
+mmu_initcall(mmu_init);
+
+void mmu_enable(void)
+{
+	if (!ttb)
+		arm_mmu_not_initialized_error();
+
+	if (!(get_sctlr() & CR_M)) {
+
+		isb();
+		set_sctlr(get_sctlr() | CR_M | CR_C | CR_I);
+	}
+}
+
+void mmu_disable(void)
+{
+	unsigned int sctlr;
+
+	if (!ttb)
+		arm_mmu_not_initialized_error();
+
+	sctlr = get_sctlr();
+	sctlr &= ~(CR_M | CR_C | CR_I);
+
+	tlb_invalidate();
+
+	dsb();
+	isb();
+
+	set_sctlr(sctlr);
+
+	dsb();
+	isb();
+}
+
+void mmu_early_enable(uint64_t membase, uint64_t memsize, uint64_t _ttb)
+{
+	ttb = (uint64_t *)_ttb;
+
+	memset(ttb, 0, GRANULE_SIZE);
+	free_idx = 1;
+
+	set_ttbr_tcr_mair(current_el(), (uint64_t)ttb, TCR_FLAGS, MEMORY_ATTR);
+
+	create_sections(0, 0, 4096, PMD_SECT_AP_WRITE |
+			PMD_SECT_AP_READ | PMD_TYPE_SECT);
+
+	create_sections(membase, membase, memsize, PMD_SECT_AP_WRITE |
+		PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
+
+	isb();
+	set_sctlr(get_sctlr() | CR_M);
+}
+
+unsigned long virt_to_phys(volatile void *virt)
+{
+	return (unsigned long)virt;
+}
+
+void *phys_to_virt(unsigned long phys)
+{
+	return (void *)phys;
+}
diff --git a/arch/arm64/cpu/mmu.h b/arch/arm64/cpu/mmu.h
index 79ebc80..a20adec 100644
--- a/arch/arm64/cpu/mmu.h
+++ b/arch/arm64/cpu/mmu.h
@@ -1,6 +1,159 @@
 #ifndef __ARM_MMU_H
 #define __ARM_MMU_H
 
+#define UL(x)		_AC(x, UL)
+
+#define UNUSED_DESC                0x6EbAAD0BBADbA6E0
+
+#define VA_START                   0x0
+#define BITS_PER_VA                33
+
+/* Granule size of 4KB is being used */
+#define GRANULE_SIZE_SHIFT         12
+#define GRANULE_SIZE               (1 << GRANULE_SIZE_SHIFT)
+#define XLAT_ADDR_MASK             ((1UL << BITS_PER_VA) - GRANULE_SIZE)
+#define GRANULE_SIZE_MASK          ((1 << GRANULE_SIZE_SHIFT) - 1)
+
+#define BITS_RESOLVED_PER_LVL   (GRANULE_SIZE_SHIFT - 3)
+#define L1_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LVL * 2)
+#define L2_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LVL * 1)
+#define L3_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LVL * 0)
+
+
+#define L1_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L1_ADDR_SHIFT)
+#define L2_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L2_ADDR_SHIFT)
+#define L3_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L3_ADDR_SHIFT)
+
+/* These macros give the size of the region addressed by each entry of a xlat
+   table at any given level */
+#define L3_XLAT_SIZE               (1UL << L3_ADDR_SHIFT)
+#define L2_XLAT_SIZE               (1UL << L2_ADDR_SHIFT)
+#define L1_XLAT_SIZE               (1UL << L1_ADDR_SHIFT)
+
+#define GRANULE_MASK	GRANULE_SIZE
+
+/*
+ * Memory types
+ */
+#define MT_DEVICE_NGNRNE	0
+#define MT_DEVICE_NGNRE		1
+#define MT_DEVICE_GRE		2
+#define MT_NORMAL_NC		3
+#define MT_NORMAL		4
+
+#define MEMORY_ATTRIBUTES	((0x00 << (MT_DEVICE_NGNRNE*8)) |	\
+		(0x04 << (MT_DEVICE_NGNRE*8)) |		\
+		(0x0c << (MT_DEVICE_GRE*8)) |		\
+		(0x44 << (MT_NORMAL_NC*8)) |		\
+		(UL(0xff) << (MT_NORMAL*8)))
+
+/*
+ * Hardware page table definitions.
+ *
+ * Level 2 descriptor (PMD).
+ */
+#define PMD_TYPE_MASK		(3 << 0)
+#define PMD_TYPE_FAULT		(0 << 0)
+#define PMD_TYPE_TABLE		(3 << 0)
+#define PMD_TYPE_PAGE		(3 << 0)
+#define PMD_TYPE_SECT		(1 << 0)
+
+/*
+ * Section
+ */
+#define PMD_SECT_NON_SHARE	(0 << 8)
+#define PMD_SECT_OUTER_SHARE	(2 << 8)
+#define PMD_SECT_INNER_SHARE	(3 << 8)
+#define PMD_SECT_AF		(1 << 10)
+#define PMD_SECT_NG		(1 << 11)
+#define PMD_SECT_PXN		(UL(1) << 53)
+#define PMD_SECT_UXN		(UL(1) << 54)
+
+/*
+ * AttrIndx[2:0]
+ */
+#define PMD_ATTRINDX(t)		((t) << 2)
+#define PMD_ATTRINDX_MASK	(7 << 2)
+
+/*
+ * TCR flags.
+ */
+#define TCR_T0SZ(x)		((64 - (x)) << 0)
+#define TCR_IRGN_NC		(0 << 8)
+#define TCR_IRGN_WBWA		(1 << 8)
+#define TCR_IRGN_WT		(2 << 8)
+#define TCR_IRGN_WBNWA		(3 << 8)
+#define TCR_IRGN_MASK		(3 << 8)
+#define TCR_ORGN_NC		(0 << 10)
+#define TCR_ORGN_WBWA		(1 << 10)
+#define TCR_ORGN_WT		(2 << 10)
+#define TCR_ORGN_WBNWA		(3 << 10)
+#define TCR_ORGN_MASK		(3 << 10)
+#define TCR_SHARED_NON		(0 << 12)
+#define TCR_SHARED_OUTER	(2 << 12)
+#define TCR_SHARED_INNER	(3 << 12)
+#define TCR_TG0_4K		(0 << 14)
+#define TCR_TG0_64K		(1 << 14)
+#define TCR_TG0_16K		(2 << 14)
+#define TCR_EL1_IPS_BITS	(UL(3) << 32)	/* 42 bits physical address */
+#define TCR_EL2_IPS_BITS	(3 << 16)	/* 42 bits physical address */
+#define TCR_EL3_IPS_BITS	(3 << 16)	/* 42 bits physical address */
+
+#define TCR_EL1_RSVD		(1 << 31)
+#define TCR_EL2_RSVD		(1 << 31 | 1 << 23)
+#define TCR_EL3_RSVD		(1 << 31 | 1 << 23)
+
+#define TCR_FLAGS		(TCR_TG0_4K | \
+		TCR_SHARED_OUTER | \
+		TCR_SHARED_INNER | \
+		TCR_IRGN_WBWA | \
+		TCR_ORGN_WBWA | \
+		TCR_T0SZ(BITS_PER_VA))
+
+#define MEMORY_ATTR     (PMD_SECT_AF | PMD_SECT_INNER_SHARE |    \
+		PMD_ATTRINDX(MT_NORMAL) |       \
+		PMD_TYPE_SECT)
+
+#ifndef __ASSEMBLY__
+
+static inline void set_ttbr_tcr_mair(int el, uint64_t table, uint64_t tcr, uint64_t attr)
+{
+	asm volatile("dsb sy");
+	if (el == 1) {
+		asm volatile("msr ttbr0_el1, %0" : : "r" (table) : "memory");
+		asm volatile("msr tcr_el1, %0" : : "r" (tcr) : "memory");
+		asm volatile("msr mair_el1, %0" : : "r" (attr) : "memory");
+	} else if (el == 2) {
+		asm volatile("msr ttbr0_el2, %0" : : "r" (table) : "memory");
+		asm volatile("msr tcr_el2, %0" : : "r" (tcr) : "memory");
+		asm volatile("msr mair_el2, %0" : : "r" (attr) : "memory");
+	} else if (el == 3) {
+		asm volatile("msr ttbr0_el3, %0" : : "r" (table) : "memory");
+		asm volatile("msr tcr_el3, %0" : : "r" (tcr) : "memory");
+		asm volatile("msr mair_el3, %0" : : "r" (attr) : "memory");
+	} else {
+		hang();
+	}
+	asm volatile("isb");
+}
+
+static inline uint64_t get_ttbr(int el)
+{
+	uint64_t val;
+	if (el == 1) {
+		asm volatile("mrs %0, ttbr0_el1" : "=r" (val));
+	} else if (el == 2) {
+		asm volatile("mrs %0, ttbr0_el2" : "=r" (val));
+	} else if (el == 3) {
+		asm volatile("mrs %0, ttbr0_el3" : "=r" (val));
+	} else {
+		hang();
+	}
+
+	return val;
+}
+#endif
+
 #ifdef CONFIG_MMU
 void __mmu_cache_on(void);
 void __mmu_cache_off(void);
@@ -11,4 +164,6 @@ static inline void __mmu_cache_off(void) {}
 static inline void __mmu_cache_flush(void) {}
 #endif
 
+void mmu_early_enable(uint64_t membase, uint64_t memsize, uint64_t _ttb);
+
 #endif /* __ARM_MMU_H */
diff --git a/arch/arm64/cpu/start.c b/arch/arm64/cpu/start.c
index e4a48e3..1d017bc 100644
--- a/arch/arm64/cpu/start.c
+++ b/arch/arm64/cpu/start.c
@@ -31,7 +31,7 @@
 #include <malloc.h>
 
 #include <debug_ll.h>
-#include "mmu-early.h"
+#include "mmu.h"
 
 unsigned long arm_stack_top;
 static unsigned long arm_head_bottom;
@@ -170,7 +170,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 		} else {
 			pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
 			arm_early_mmu_cache_invalidate();
-			mmu_early_enable(membase, memsize, ttb);
+			mmu_early_enable((uint64_t)membase, (uint64_t)memsize, (uint64_t)ttb);
 		}
 	}
 
diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 8de6544..8a1d80a 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -13,9 +13,7 @@
 
 struct arm_memory;
 
-static inline void mmu_enable(void)
-{
-}
+void mmu_enable(void);
 void mmu_disable(void);
 static inline void arm_create_section(unsigned long virt, unsigned long phys, int size_m,
 		unsigned int flags)
@@ -30,7 +28,7 @@ static inline void setup_dma_coherent(unsigned long offset)
 #define ARCH_HAS_REMAP
 #define MAP_ARCH_DEFAULT MAP_CACHED
 int arch_remap_range(void *_start, size_t size, unsigned flags);
-void *map_io_sections(unsigned long physaddr, void *start, size_t size);
+void *map_io_sections(uint64_t phys, void *_start, size_t size);
 #else
 #define MAP_ARCH_DEFAULT MAP_UNCACHED
 static inline void *map_io_sections(unsigned long phys, void *start, size_t size)
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index fd1521d..e4a3c53 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -18,8 +18,9 @@
  */
 #define PMD_TYPE_MASK		(3 << 0)
 #define PMD_TYPE_FAULT		(0 << 0)
-#define PMD_TYPE_TABLE		(1 << 0)
-#define PMD_TYPE_SECT		(2 << 0)
+#define PMD_TYPE_TABLE		(3 << 0)
+#define PMD_TYPE_PAGE		(3 << 0)
+#define PMD_TYPE_SECT		(1 << 0)
 #define PMD_BIT4		(1 << 4)
 #define PMD_DOMAIN(x)		((x) << 5)
 #define PMD_PROTECTION		(1 << 9)	/* v5 */
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 984f8b6..e08fb72 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -11,8 +11,8 @@ extern void *_barebox_image_size;
 extern void *_barebox_bare_init_size;
 extern void *_barebox_pbl_size;
 
-#define barebox_image_size	(unsigned int)&_barebox_image_size
-#define barebox_bare_init_size	(unsigned int)&_barebox_bare_init_size
-#define barebox_pbl_size	(unsigned int)&_barebox_pbl_size
+#define barebox_image_size	((uint64_t)&_barebox_image_size)
+#define barebox_bare_init_size	((uint64_t)&_barebox_bare_init_size)
+#define barebox_pbl_size	((uint64_t)&_barebox_pbl_size)
 
 #endif /* _ASM_GENERIC_SECTIONS_H_ */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

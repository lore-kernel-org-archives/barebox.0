Delivery-date: Tue, 03 Feb 2026 15:20:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnHGb-008QX7-13
	for lore@lore.pengutronix.de;
	Tue, 03 Feb 2026 15:20:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnHGY-00051u-U7
	for lore@pengutronix.de; Tue, 03 Feb 2026 15:20:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FBooIExbqhHCohmurLJLXGlLlXkEcvM8M/Qdv3BRuRs=; b=v/K+pbSF6drNEZXBgWi2rLf49Q
	pkkkYh/QSUL0ZJMPE6ISNRZn0DS5F7cb87byMuHOQ5Z384ld75tdJzSys7K9/Z7yQloJVLDwMQKjx
	+6CdxDVlE/z5aQN6aSD2G1e9hlcBUfN9qXINWobght4Ztnzc74umLqGT5vIYm+5i28vs4depZpP4M
	o4QpLSFjgJH7PeKC2L8NqwWRBzLoNSnqg8KYS8WaLii3HM2+LKSjn+PlGeBkm1yhC8nPNahvG7Rlc
	rkIp/9Mp2tqZ360Y/Wvxc29WTluUXPvByu856zSHNUNhnd6u+Yl0qRjwE14JhkMy07KYsfn83YtDt
	6N6j8ziA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnHG2-00000006kFC-0v9e;
	Tue, 03 Feb 2026 14:19:58 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnHFz-00000006kED-0cVI
	for barebox@lists.infradead.org;
	Tue, 03 Feb 2026 14:19:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1770128389; x=1772720389;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=AB7P665+g+Cs2vDLpwsNRhDGdthsHUddU93ZPRQC6Bs=;
	b=Av8dJFRVKmNL8zwNykhlr68GmiuNL+UUuLBF16E9r1ykKgjKV7CkHk521OcpPsX3
	3GGUvq9YtNJKEtMwVDcjFKNli8i+TALJneYkKaF8tMmJ6dxNjmojttdDOHgtWZ+I
	4STxAu/xp6YLxBmddEmGgDo7fGAx9YoUy7dyIlDPLK7AT7hLIib0LZouYIgBA6i1
	xoy/7kOhV16hrSZesuKa3u+1y3PvV6a6AdeSpNviDHGvd+/YlqhQqMkWfuq4Ewa4
	2oUbDJwQlXAWcBiuOH8pBHNvUvWx/vHVvcJ/0oFbtCza+I1akhRx2EQGnPfymX/E
	QJJEOCuCxg48WwDAfA1X0w==;
X-AuditID: ac1001d4-ba83c380000daae5-ff-698204051cdd
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id D6.78.43749.50402896; Tue,  3 Feb 2026 14:19:49 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Tue,  3 Feb 2026 14:19:45 +0000
Message-ID: <20260203141945.1417902-2-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203141945.1417902-1-renaud.barbier@ametek.com>
References: <20260203141945.1417902-1-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGJMWRmVeSWpSXmKPExsXCtT5hni4rS1OmwcLbJhYnFvczW0x/G+TA
	5DFvZ4DH5iX1AUxRXDYpqTmZZalF+nYJXBkbp2xnLJj7lrFi3bcjTA2Mh3czdjFyckgImEi8
	7n/G1sXIxSEksJNRomVBAxNIgk3AQOLf0a9sILaIgLzE3P1trCA2s4CeRMeFiWA1wgLGEm/2
	bmEGsVkEVCXOdV1kB7F5BRwk/l95BrVAXmLxjuVgNZwCjhJ9r5vAbCGgmnPrXjBC1AtKnJz5
	hAVivrxE89bZzBMYeWchSc1CklrAyLSKUbQ0W7coNSex0tBYLzE3tSQ1Wy85P3cTIzBo1ggw
	XtnBeOfTB71DjEwcjIcYJTiYlUR406fXZwrxpiRWVqUW5ccXleakFh9ilOZgURLnXbvnQ5yQ
	QHoi0JTU1ILUIpgsEwenVANTQ2/YGffSiRpLFgp/4GmvfGZbzZf6fXlG7c7Fs+498PhXfujl
	Ktszyd99k9WOG7Y4Z/09sPK6ZfeHI1ezf6/v1Tmz7L3h/QyufSE/pyic/WG0R4btzqH1f0uv
	r19V/nU3y82PzhYGLAFuJ7p32ohYnfkk5nNWRih897pli7zXvVV8VpsYaXKBqfZw3p2oW5r3
	2eMmXF1rr26i9UA/UNp4/c/35oeu+Lu2LkngPCQ3cb+6xsHS9zpJYW5mnPIvZs2J+T5RrS5M
	ZvmczoUtfrdCYp8tuXNm6+QAlxBrMdYFoSdl5tgnC20QWpeqpGfR82X+j+SZ2Y91VDoKhEyf
	8H259ymO4ZDnqx2PtaesdTdNUWIrzkg0MjXTYi4qTgQA1Z6jAIsCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_061955_482239_18505FEF 
X-CRM114-Status: GOOD (  32.37  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/1] arm: mmu: initial LPAE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the Long Physical Address Extension allowing to map
40-bit physical address of ARMv7-A processors to 32-bit virtual address.

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 arch/arm/Kconfig                            |   9 +
 arch/arm/configs/layerscape_v7_defconfig    |   1 +
 arch/arm/cpu/Makefile                       |   4 +
 arch/arm/cpu/mmu_lpae.c                     | 650 ++++++++++++++++++++
 arch/arm/cpu/mmu_lpae.h                     | 101 +++
 arch/arm/include/asm/mmu.h                  |   4 +
 arch/arm/include/asm/pgtable-3level-hwdef.h | 156 +++++
 include/mmu.h                               |   2 +
 8 files changed, 927 insertions(+)
 create mode 100644 arch/arm/cpu/mmu_lpae.c
 create mode 100644 arch/arm/cpu/mmu_lpae.h
 create mode 100644 arch/arm/include/asm/pgtable-3level-hwdef.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 65856977ab..518ccc5ff3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -359,6 +359,15 @@ config ARM_BOARD_PREPEND_ATAG
 
 endmenu
 
+config ARMV7_LPAE
+	bool "Use LPAE page table format"
+	default no
+	default !64BIT
+	select PHYS_ADDR_T_64BIT
+	depends on CPU_V7 || MMU
+	help
+	  Say Y here to use the long descriptor page table format.
+
 config 64BIT
 	bool "64bit barebox" if "$(ARCH)" != "arm64"
 	default "$(ARCH)" = "arm64"
diff --git a/arch/arm/configs/layerscape_v7_defconfig b/arch/arm/configs/layerscape_v7_defconfig
index 5127a52522..406eec1c37 100644
--- a/arch/arm/configs/layerscape_v7_defconfig
+++ b/arch/arm/configs/layerscape_v7_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_MACH_LS1021AIOT=y
 CONFIG_NAME="layerscape_v7_defconfig"
 CONFIG_MMU=y
+CONFIG_ARMV7_LPAE=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 467ef17bfd..c4a62b7b70 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -5,7 +5,11 @@ obj-pbl-y += cpu.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_$(S64_32).o interrupts_$(S64_32).o
 pbl-$(CONFIG_ARM_EXCEPTIONS_PBL) += exceptions_$(S64_32).o interrupts_$(S64_32).o
 obj-pbl-$(CONFIG_MMU) += mmu-common.o
+ifeq ($(CONFIG_ARMV7_LPAE),y)
+obj-pbl-$(CONFIG_MMU) += mmu_lpae.o
+else
 obj-pbl-$(CONFIG_MMU) += mmu_$(S64_32).o
+endif
 obj-$(CONFIG_MMU) += dma_$(S64_32).o
 obj-pbl-y += lowlevel_$(S64_32).o
 obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
diff --git a/arch/arm/cpu/mmu_lpae.c b/arch/arm/cpu/mmu_lpae.c
new file mode 100644
index 0000000000..d5cc5ee38d
--- /dev/null
+++ b/arch/arm/cpu/mmu_lpae.c
@@ -0,0 +1,650 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2009-2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+
+/*
+ * Derived from arch/arm/cpu/mmu_32.c and a bit of U-boot code
+ * arch/arm/cpu/armv7/ls102xa/cpu.c
+ */
+
+#define pr_fmt(fmt)	"mmu: " fmt
+
+#include <common.h>
+#include <dma-dir.h>
+#include <dma.h>
+#include <init.h>
+#include <mmu.h>
+#include <errno.h>
+#include <zero_page.h>
+#include <linux/sizes.h>
+#include <asm/memory.h>
+#include <asm/barebox-arm.h>
+#include <asm/system.h>
+#include <asm/cache.h>
+#include <memory.h>
+#include <asm/system_info.h>
+#include <asm/sections.h>
+#include <linux/pagemap.h>
+
+#include "mmu_lpae.h"
+
+/*
+ * The PGD tables start at offset 0x0 from ttb. All four entries points
+ * to 4 contiguous PMD tables from offset 0x1000. Each PMD table has 512
+ * 2MB entries mapping up to 1GB. Each 2MB PMD entries can be split to
+ * point to a table of 512 PTEs with a granularity of 4KiB.
+ */
+
+static size_t granule_size(int level)
+{
+	/*
+	 *  With 4k page granule, a virtual address is split into 3 lookup parts.
+	 *  With LPAE support, physical address above the 32-bit address space
+	 *  can be mapped to a 32-bit virtual address.
+	 *
+	 *    _______________________________
+	 *   |       |       |       |       |
+	 *   |  Lv0  |  Lv1  |  Lv2  |  off  |
+	 *   |_______|_______|_______|_______|
+	 *     31-30   29-22   21-12   11-00
+	 *
+	 *             mask        page size   term
+	 *
+	 *    Lv1:     C0000000       1G      PGD
+	 *    Lv2:     3FC00000       2M      PMD
+	 *    Lv3:       3FF000       4K      PTE
+	 *    off:          FFF
+	 */
+
+	switch (level) {
+	case 1:
+		return PGDIR_SIZE;
+	case 2:
+		return PMD_SIZE;
+	case 3:
+		return PAGE_SIZE;
+	}
+
+	return 0;
+}
+
+static inline uint64_t *get_ttb(void)
+{
+	/* Clear unpredictable bits [13:0] */
+	return (uint64_t *)(get_ttbr() & ~0x3fff);
+}
+
+/*
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
+#define PTE_FLAGS_CACHED_V7_RWX (PMD_ATTRINDX(MT_NORMAL) | PTE_EXT_AP_URW_SRW)
+#define PTE_FLAGS_CACHED_V7 (PMD_ATTRINDX(MT_NORMAL) | \
+		PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
+#define PTE_FLAGS_CACHED_RO_V7 (PMD_ATTRINDX(MT_NORMAL) | \
+			     PTE_AP2 | PTE_AP1 | PTE_EXT_XN)
+#define PTE_FLAGS_CODE_V7 (PMD_ATTRINDX(MT_NORMAL) | PTE_AP2 | PTE_AP1)
+#define PTE_FLAGS_WC_V7 (PMD_ATTRINDX(MT_NORMAL) | PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
+#define PTE_FLAGS_UNCACHED_V7 (PMD_ATTRINDX(MT_NORMAL_NC) | \
+			PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
+#define PTE_FLAGS_DEV_UNCACHED_V7 (PMD_ATTRINDX(MT_DEVICE_MEM) | \
+			PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
+
+static bool pmd_type_table(u64 pmd)
+{
+	return (pmd & PTE_TYPE_MASK) == PTE_TYPE_PAGE;
+}
+
+#define PTE_SIZE       PTE_HWTABLE_SIZE
+
+static void set_pte(uint64_t *pt, uint64_t val)
+{
+	WRITE_ONCE(*pt, val);
+}
+
+static void set_pte_range(unsigned int level, uint64_t *virt, phys_addr_t phys,
+			  size_t count, uint64_t attrs, bool bbm)
+{
+	unsigned int granularity = granule_size(level);
+
+	if (!bbm)
+		goto write_attrs;
+
+	 // TODO break-before-make missing
+
+write_attrs:
+	for (int i = 0; i < count; i++, phys += granularity)
+		set_pte(&virt[i], phys | attrs | PTE_EXT_AF);
+
+	dma_flush_range(virt, count * sizeof(*virt));
+}
+
+#ifdef __PBL__
+static uint64_t *alloc_pte(void)
+{
+	static unsigned int idx = 5;
+
+	idx++;
+
+	BUG_ON(idx * PTE_SIZE >= ARM_EARLY_PAGETABLE_SIZE);
+
+	return get_ttb() + idx * PTE_SIZE;
+}
+#else
+static uint32_t *alloc_pte(void)
+{
+	return xmemalign(PTE_SIZE, PTE_SIZE);
+}
+#endif
+
+/**
+ * find_pte - Find page table entry
+ * @ttb: Translation Table Base
+ * @addr: Virtual address to lookup
+ * @level: used to store the level at which the page table walk ended.
+ *         if NULL, asserts that the smallest page was found
+ *
+ * This function walks the page table from the top down and finds the page
+ * table entry associated with the supplied virtual address.
+ * The level at which a page was found is saved into *level.
+ * if the level is NULL, a last level page must be found or the function
+ * panics.
+ *
+ * Returns a pointer to the page table entry
+ */
+static u64 *find_pte(uint64_t *ttb, uint32_t adr, unsigned int *level)
+{
+	u64 *table;
+	u64 *pmd;
+
+	pmd = &ttb[pmd_index(adr) + PTRS_PER_PMD];
+	/* Test directly the pmd as we already know the pgd points to a
+	 * pmd table.
+	 */
+	if (!pmd_type_table(*pmd)) {
+		if (!level)
+			panic("Got level 2 page table entry, where level 3 expected\n");
+		/* Flat mapping already exists so return pmd */
+		*level = 2;
+		return pmd;
+	}
+
+	if (level)
+		*level = 3;
+
+	/* find the coarse page table base address by masking the pmd
+	 * upper/lower attributes.
+	 */
+	table = (u64 *)((uintptr_t)(*pmd & 0xfffff000ULL));
+
+	/* find third level descriptor */
+	return &table[(adr >> PAGE_SHIFT) & (PTRS_PER_PTE - 1)];
+}
+
+void dma_flush_range(void *ptr, size_t size)
+{
+	unsigned long start = (unsigned long)ptr;
+	unsigned long end = start + size;
+
+	__dma_flush_range(start, end);
+
+	if (outer_cache.flush_range)
+		outer_cache.flush_range(start, end);
+}
+
+/**
+ * dma_flush_range_end - Flush caches for address range
+ * @start: Starting virtual address of the range.
+ * @end:   Last virtual address in range (inclusive)
+ *
+ * This function cleans and invalidates all cache lines in the specified
+ * range. Note that end is inclusive, meaning that it's the last address
+ * that is flushed (assuming both start and total size are cache line aligned).
+ */
+static void dma_flush_range_end(unsigned long start, unsigned long end)
+{
+	dma_flush_range((void *)start, end - start + 1);
+}
+
+void dma_inv_range(void *ptr, size_t size)
+{
+	unsigned long start = (unsigned long)ptr;
+	unsigned long end = start + size;
+
+	if (outer_cache.inv_range)
+		outer_cache.inv_range(start, end);
+
+	__dma_inv_range(start, end);
+}
+
+/*
+ * Create a third level translation table for the given virtual address.
+ * The second level PMD entry then points to the PTE table.
+ */
+static u64 *arm_create_pte(unsigned long virt, unsigned long phys,
+			   uint32_t flags, bool bbm)
+{
+	uint64_t *ttb = get_ttb();
+	u64 *table;
+	int ttb_idx;
+
+	virt = ALIGN_DOWN(virt, PMD_SIZE);
+	phys = ALIGN_DOWN(phys, PMD_SIZE);
+
+	table = (u64 *)alloc_pte();
+
+	ttb_idx = pmd_index(virt) + PTRS_PER_PTE;
+
+	set_pte_range(3, table, phys, PTRS_PER_PTE, PTE_TYPE_PAGE | flags, bbm);
+
+	set_pte_range(2, &ttb[ttb_idx], (unsigned long)table, 1, PMD_TYPE_TABLE, bbm);
+
+	return table;
+}
+
+static u64 pmd_flags_to_pte(u64 pmd)
+{
+	u64 pte = pmd & (PMD_SECT_XN | 0xffc);
+
+	return pte;
+}
+
+static u64 pte_flags_to_pmd(u64 pte)
+{
+	u64 pmd = pte & (PTE_EXT_XN | 0xffc);
+
+	return pmd;
+}
+
+static uint64_t get_pte_flags(maptype_t map_type)
+{
+	switch (map_type & MAP_TYPE_MASK) {
+	case ARCH_MAP_CACHED_RWX:
+		return PTE_FLAGS_CACHED_V7_RWX;
+	case MAP_CACHED_RO:
+		return PTE_FLAGS_CACHED_RO_V7;
+	case MAP_CACHED:
+		return PTE_FLAGS_CACHED_V7;
+	case MAP_UNCACHED:
+		return PTE_FLAGS_UNCACHED_V7;
+	case MAP_CODE:
+		return PTE_FLAGS_CODE_V7;
+	case MAP_WRITECOMBINE:
+		return PTE_FLAGS_WC_V7;
+	case MAP_DEVICE:
+		return PTE_FLAGS_DEV_UNCACHED_V7;
+	case MAP_FAULT:
+	default:
+		return 0x0;
+	}
+}
+
+static uint32_t get_pmd_flags(maptype_t map_type)
+{
+	return pte_flags_to_pmd(get_pte_flags(map_type));
+}
+
+static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size,
+			       maptype_t map_type)
+{
+	bool force_pages = map_type & ARCH_MAP_FLAG_PAGEWISE;
+	bool mmu_on;
+	u32 virt_addr = (u32)_virt_addr;
+	u64 pte_flags, pmd_flags;
+	uint64_t *ttb = get_ttb();
+
+	pte_flags = get_pte_flags(map_type);
+	pmd_flags = pte_flags_to_pmd(pte_flags);
+
+	pr_debug_remap(virt_addr, phys_addr, size, map_type);
+
+	BUG_ON(!IS_ALIGNED(virt_addr, PAGE_SIZE));
+	BUG_ON(!IS_ALIGNED(phys_addr, PAGE_SIZE));
+
+	size = PAGE_ALIGN(size);
+	if (!size)
+		return;
+
+	mmu_on = get_cr() & CR_M;
+
+	while (size) {
+		const bool pmdir_size_aligned = IS_ALIGNED(virt_addr, PMD_SIZE);
+		u64 *pmd = (u64 *)&ttb[pmd_index(virt_addr) + PTRS_PER_PMD];
+		u64 flags;
+		size_t chunk;
+
+		if (size >= PMD_SIZE && pmdir_size_aligned &&
+		    IS_ALIGNED(phys_addr, PMD_SIZE) &&
+		    !pmd_type_table(*pmd) && !force_pages) {
+			/*
+			 * TODO: Add code to discard a page table and
+			 * replace it with a section
+			 */
+			chunk = PMD_SIZE;
+			flags = pmd_flags;
+			if (!maptype_is_compatible(map_type, MAP_FAULT))
+				flags |= PMD_TYPE_SECT;
+			set_pte_range(2, pmd, phys_addr, 1, flags, mmu_on);
+		} else {
+			unsigned int num_ptes;
+			u64 *table = NULL;
+			unsigned int level;
+			u64 *pte;
+			/*
+			 * We only want to cover pages up until next
+			 * section boundary in case there we would
+			 * have an opportunity to re-map the whole
+			 * section (say if we got here because address
+			 * was not aligned on PMD_SIZE boundary)
+			 */
+			chunk = pmdir_size_aligned ?
+				PMD_SIZE : ALIGN(virt_addr, PMD_SIZE) - virt_addr;
+			/*
+			 * At the same time we want to make sure that
+			 * we don't go on remapping past requested
+			 * size in case that is less that the distance
+			 * to next PMD_SIZE boundary.
+			 */
+			chunk = min(chunk, size);
+			num_ptes = chunk / PAGE_SIZE;
+
+			pte = find_pte(ttb, virt_addr, &level);
+			if (level == 2) {
+				/*
+				 * No PTE at level 3, so we needs to split this section
+				 * and create a new page table for it
+				 */
+				table = arm_create_pte(virt_addr, phys_addr,
+						       pmd_flags_to_pte(*pmd), mmu_on);
+				pte = find_pte(ttb, virt_addr, NULL);
+			}
+
+			flags = pte_flags;
+			if (!maptype_is_compatible(map_type, MAP_FAULT))
+				flags |= PTE_TYPE_PAGE;
+			set_pte_range(3, pte, phys_addr, num_ptes, flags, mmu_on);
+		}
+
+		virt_addr += chunk;
+		phys_addr += chunk;
+		size -= chunk;
+	}
+
+	tlb_invalidate();
+}
+
+static void early_remap_range(u32 addr, size_t size, maptype_t map_type)
+{
+	__arch_remap_range((void *)addr, addr, size, map_type);
+}
+
+static bool pte_is_cacheable(uint64_t pte, int level)
+{
+	return	((pte & 0x1c) == PMD_ATTRINDX(MT_NORMAL));
+}
+
+#include "flush_cacheable_pages.h"
+
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type)
+{
+	if (!maptype_is_compatible(map_type, MAP_CACHED))
+		flush_cacheable_pages(virt_addr, size);
+
+	map_type = arm_mmu_maybe_skip_permissions(map_type);
+
+	__arch_remap_range(virt_addr, phys_addr, size, map_type);
+
+	return 0;
+}
+
+static void early_create_sections(unsigned long first, unsigned long last,
+				  unsigned int flags)
+{
+	uint64_t *ttb = get_ttb();
+	uint64_t *pmd = &ttb[PTRS_PER_PMD];
+	unsigned long ttb_start = pmd_index(first);
+	unsigned long ttb_end = pmd_index(last) + 1;
+	unsigned int i, addr = first;
+
+	/* This always runs with MMU disabled, so just opencode the loop */
+	for (i = ttb_start; i < ttb_end; i++) {
+		set_pte(&pmd[i], addr | flags | PMD_TYPE_SECT | PMD_SECT_AF);
+		addr += PMD_SIZE;
+	}
+}
+
+/*
+ * Point the 4 PGD entries to the PMD tables starting at offset 0x1000:
+ *	- map PCIe at index 0 (offset 0x1000)
+ *	- map device at index 1 (offset 0x2000)
+ *	- DDR memory at index 2 and 3 (offset 0x3000 and 0x4000)
+ *
+ * Then, the PMD maps the whole 32-bit memory space
+ */
+static inline void early_create_flat_mapping(void)
+{
+	uint64_t *ttb = get_ttb();
+	unsigned long ttb_start = pgd_index(0);
+	unsigned long ttb_end = pgd_index(0xffffffff) + 1;
+	uint64_t *pmd_table = &ttb[PTRS_PER_PMD];
+	unsigned int i;
+
+	/* 4 PGD entries points to PMD tables */
+	for  (i = ttb_start; i < ttb_end; i++)
+		set_pte(&ttb[i], (u32)&pmd_table[PTRS_PER_PMD * i] | PMD_TYPE_TABLE);
+
+	/* create a flat mapping using 2MiB sections */
+	early_create_sections(0, 0x7fffffff,
+			attrs_uncached_mem(MT_DEVICE_MEM));
+	early_create_sections(0x80000000, 0xffffffff,
+			attrs_uncached_mem(MT_NORMAL_NC));
+}
+
+/*
+ * Assume PMDs so the size must be a multiple of 2MB
+ */
+void *map_io_sections(unsigned long long phys, void *_start, size_t size)
+{
+	unsigned long start = (unsigned long)_start;
+	uint64_t *ttb = get_ttb();
+	uint64_t *pmd = &ttb[PTRS_PER_PMD];
+
+	BUG_ON(!IS_ALIGNED((u32)_start, PMD_SIZE));
+	BUG_ON(!IS_ALIGNED(phys, PMD_SIZE));
+
+	set_pte_range(2, &pmd[pmd_index(start)], phys, size / PMD_SIZE,
+		      get_pmd_flags(MAP_DEVICE) | PMD_TYPE_SECT | PTE_EXT_XN, true);
+
+	dma_flush_range(pmd, 0x4000);
+	tlb_invalidate();
+	return _start;
+}
+
+/**
+ * create_vector_table - create a vector table at given address
+ * @adr - The address where the vector table should be created
+ *
+ * After executing this function the vector table is found at the
+ * virtual address @adr.
+ */
+void create_vector_table(unsigned long adr)
+{
+	struct resource *vectors_sdram;
+	void *vectors;
+	u64 *pte;
+
+	vectors_sdram = request_barebox_region("vector table", adr, PAGE_SIZE,
+					       MEMATTRS_RWX); // FIXME
+	if (vectors_sdram) {
+		/*
+		 * The vector table address is inside the SDRAM physical
+		 * address space. Use the existing identity mapping for
+		 * the vector table.
+		 */
+		pr_err("Creating vector table, virt = phys = 0x%08lx\n", adr);
+		vectors = (void *)(u32)vectors_sdram->start;
+	} else {
+		/*
+		 * The vector table address is outside of SDRAM. Create
+		 * a secondary page table for the section and map
+		 * allocated memory to the vector address.
+		 */
+		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
+		pr_err("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
+			 vectors, adr);
+
+		arm_create_pte(adr, adr, get_pte_flags(MAP_UNCACHED), true);
+		pte = find_pte(get_ttb(), adr, NULL);
+		set_pte_range(3, pte, (u32)vectors, 1, PTE_TYPE_PAGE |
+			      get_pte_flags(MAP_CACHED), true);
+	}
+
+	memset(vectors, 0, PAGE_SIZE);
+	memcpy(vectors, __exceptions_start, __exceptions_stop - __exceptions_start);
+}
+
+static void create_zero_page(void)
+{
+	/*
+	 * In case the zero page is in SDRAM request it to prevent others
+	 * from using it
+	 */
+	request_sdram_region_silent("zero page", 0x0, PAGE_SIZE,
+				    MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_FAULT);
+
+	zero_page_faulting();
+	pr_debug("Created zero page\n");
+}
+
+static void create_guard_page(void)
+{
+	ulong guard_page;
+
+	if (!IS_ENABLED(CONFIG_STACK_GUARD_PAGE))
+		return;
+
+	guard_page = arm_mem_guard_page_get();
+	request_barebox_region("guard page", guard_page, PAGE_SIZE, MEMATTRS_FAULT);
+	remap_range((void *)guard_page, PAGE_SIZE, MAP_FAULT);
+
+	pr_debug("Created guard page\n");
+}
+
+/*
+ * Map vectors and zero page
+ */
+void setup_trap_pages(void)
+{
+	if (arm_get_vector_table() != 0x0)
+		create_zero_page();
+	create_guard_page();
+}
+
+/*
+ * Prepare MMU for usage enable it.
+ */
+void __mmu_init(bool mmu_on)
+{
+	uint64_t *ttb = get_ttb();
+
+	// TODO: remap writable only while remapping?
+	// TODO: What memtype for ttb when barebox is EFI loader?
+	if (!request_barebox_region("ttb", (unsigned long)ttb,
+				    ARM_EARLY_PAGETABLE_SIZE,
+				    MEMATTRS_RW))
+		/*
+		 * This can mean that:
+		 * - the early MMU code has put the ttb into a place
+		 *   which we don't have inside our available memory
+		 * - Somebody else has occupied the ttb region which means
+		 *   the ttb will get corrupted.
+		 */
+		pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
+					ttb);
+
+	pr_debug("ttb: 0x%p\n", ttb);
+}
+
+/*
+ * Clean and invalidate caches, disable MMU
+ */
+void mmu_disable(void)
+{
+	__mmu_cache_flush();
+	if (outer_cache.disable) {
+		outer_cache.flush_all();
+		outer_cache.disable();
+	}
+	__mmu_cache_off();
+}
+
+void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_start)
+{
+	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase + memsize);
+	unsigned long barebox_size, optee_start;
+
+	pr_err("enabling MMU, ttb @ 0x%p\n", ttb);
+
+	if (get_cr() & CR_M)
+		return;
+
+	set_ttbr(ttb);
+
+	/*
+	 * This marks the whole address space as uncachable as well as
+	 * unexecutable if possible
+	 */
+	early_create_flat_mapping();
+
+	/* maps main memory as cachable */
+	optee_start = membase + memsize - OPTEE_SIZE;
+	barebox_size = optee_start - barebox_start;
+
+	/*
+	 * map the bulk of the memory as sections to avoid allocating too many page tables
+	 * at this early stage
+	 */
+	early_remap_range(membase, barebox_start - membase, ARCH_MAP_CACHED_RWX);
+	/*
+	 * Map the remainder of the memory explicitly with two/three level page tables. This is
+	 * the place where barebox proper ends at. In barebox proper we'll remap the code
+	 * segments readonly/executable and the ro segments readonly/execute never. For this
+	 * we need the memory being mapped pagewise. We can't do the split up from section
+	 * wise mapping to pagewise mapping later because that would require us to do
+	 * a break-before-make sequence which we can't do when barebox proper is running
+	 * at the location being remapped.
+	 */
+	early_remap_range(barebox_start, barebox_size,
+			  ARCH_MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
+	early_remap_range(optee_start, OPTEE_SIZE, MAP_UNCACHED);
+	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
+			  ARCH_MAP_CACHED_RWX);
+
+	/* U-boot code */
+	asm volatile("dsb sy;isb");
+	asm volatile("mcr p15, 0, %0, c2, c0, 2" /* Write RT to TTBCR */
+			: : "r" (TTBCR) : "memory");
+	asm volatile("mcrr p15, 0, %0, %1, c2" /* TTBR 0 */
+			: : "r" ((u32)ttb), "r" (0) : "memory");
+	asm volatile("mcr p15, 0, %0, c10, c2, 0" /* write MAIR 0 */
+			: : "r" (MT_MAIR0) : "memory");
+	asm volatile("mcr p15, 0, %0, c10, c2, 1" /* write MAIR 1 */
+			: : "r" (MT_MAIR1) : "memory");
+	/* Set the access control to all-supervisor. Should be ignored in LPAE */
+	asm volatile("mcr p15, 0, %0, c3, c0, 0"
+			: : "r" (~0));
+
+	__mmu_cache_on();
+}
diff --git a/arch/arm/cpu/mmu_lpae.h b/arch/arm/cpu/mmu_lpae.h
new file mode 100644
index 0000000000..5553d42c93
--- /dev/null
+++ b/arch/arm/cpu/mmu_lpae.h
@@ -0,0 +1,101 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ARM_MMU__LPAE_H
+#define __ARM_MMU__LPAE_H
+
+#include <asm/pgtable-3level-hwdef.h>
+#include <linux/sizes.h>
+#include <linux/pagemap.h>
+#include <asm/system_info.h>
+
+#include "mmu-common.h"
+
+/*
+ * With LPAE, there are 3 levels of page tables. Each level has 512 entries of
+ * 8 bytes each, occupying a 4K page. The first level table covers a range of
+ * 512GB, each entry representing 1GB. Since we are limited to 4GB input
+ * address range, only 4 entries in the PGD are used.
+ *
+ * There are enough spare bits in a page table entry for the kernel specific
+ * state.
+ */
+#define PTRS_PER_PTE		512
+#define PTRS_PER_PMD		512
+#define PTRS_PER_PGD		4
+
+#define PTE_HWTABLE_SIZE	(PTRS_PER_PTE * sizeof(u64))
+
+/*
+ * PGDIR_SHIFT determines the size a top-level page table entry can map.
+ */
+#define PGDIR_SHIFT		30
+#define PGDIR_SIZE		(1UL << PGDIR_SHIFT)
+#define PGDIR_MASK		(~((1 << PGDIR_SHIFT) - 1))
+
+#define pgd_index(addr)		((addr) >> PGDIR_SHIFT)
+
+/*
+ * PMD_SHIFT determines the size a middle-level page table entry can map.
+ */
+#define PMD_SHIFT		21
+#define PMD_SIZE		(1UL << PMD_SHIFT)
+#define PMD_MASK		(~((1 << PMD_SHIFT) - 1))
+
+#define pmd_index(addr)		((addr) >> PMD_SHIFT)
+
+/*
+ * section address mask and size definitions.
+ */
+#define SECTION_SHIFT		21
+#define SECTION_SIZE		(1UL << SECTION_SHIFT)
+#define SECTION_MASK		(~((1 << SECTION_SHIFT) - 1))
+
+
+/* AttrIndx[2:0] */
+#define PMD_ATTRINDX(t)		((t) << 2)
+#define PMD_ATTRINDX_MASK	(7 << 2)
+
+/* pte */
+/* AttrIndx[2:0] */
+#define PTE_ATTRINDX(t)		((t) << 2)
+#define PTE_ATTRINDX_MASK	(7 << 2)
+
+typedef u64 mmu_addr_t;
+
+#ifdef CONFIG_MMU
+void __mmu_cache_on(void);
+void __mmu_cache_off(void);
+void __mmu_cache_flush(void);
+#else
+static inline void __mmu_cache_on(void) {}
+static inline void __mmu_cache_off(void) {}
+static inline void __mmu_cache_flush(void) {}
+#endif
+
+static inline unsigned long get_ttbr(void)
+{
+	unsigned long ttb;
+
+	asm volatile ("mrc p15, 0, %0, c2, c0, 0" : "=r"(ttb));
+
+	return ttb;
+}
+
+static inline void set_ttbr(void *ttb)
+{
+	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
+}
+
+static inline uint64_t attrs_uncached_mem(u64 attr)
+{
+	uint64_t flags = PMD_ATTRINDX(attr) | PMD_SECT_AP1 | PMD_TYPE_SECT;
+
+	if (cpu_architecture() >= CPU_ARCH_ARMv7)
+		flags |= PMD_SECT_XN;
+
+	return flags;
+}
+
+void create_vector_table(unsigned long adr);
+
+#endif
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index bcaa984a40..abf1951fa4 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -29,7 +29,11 @@ static inline void setup_dma_coherent(unsigned long offset)
 #define ARCH_HAS_REMAP
 #define MAP_ARCH_DEFAULT MAP_CACHED
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptype_t map_type);
+#ifdef CONFIG_ARMV7_LPAE
+void *map_io_sections(unsigned long long physaddr, void *start, size_t size);
+#else
 void *map_io_sections(unsigned long physaddr, void *start, size_t size);
+#endif
 #else
 #define MAP_ARCH_DEFAULT MAP_UNCACHED
 static inline void *map_io_sections(unsigned long phys, void *start, size_t size)
diff --git a/arch/arm/include/asm/pgtable-3level-hwdef.h b/arch/arm/include/asm/pgtable-3level-hwdef.h
new file mode 100644
index 0000000000..cab85c00ab
--- /dev/null
+++ b/arch/arm/include/asm/pgtable-3level-hwdef.h
@@ -0,0 +1,156 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * arch/arm/include/asm/pgtable-3level-hwdef.h
+ *
+ * Copyright (C) 2011 ARM Ltd.
+ * Author: Catalin Marinas <catalin.marinas@arm.com>
+ */
+#ifndef _ASM_PGTABLE_3LEVEL_HWDEF_H
+#define _ASM_PGTABLE_3LEVEL_HWDEF_H
+
+/*
+ * Hardware page table definitions.
+ *
+ * + Level 1/2 descriptor
+ *   - common
+ */
+#define PMD_TYPE_MASK		(3 << 0)
+#define PMD_TYPE_FAULT		(0 << 0)
+#define PMD_TYPE_TABLE		(3 << 0)
+#define PMD_TYPE_SECT		(1 << 0)
+#define PMD_TABLE_BIT		(1 << 1)
+#define PMD_DOMAIN(x)		(0)
+#define PMD_PXNTABLE		(1ULL << 59)
+
+/*
+ *   - section
+ */
+#define PMD_SECT_BUFFERABLE	(1 << 2)
+#define PMD_SECT_CACHEABLE	(1 << 3)
+#define PMD_SECT_USER		(1 << 6)		/* AP[1] */
+#define PMD_SECT_AP2		(1 << 7)		/* read only */
+#define PMD_SECT_S		(3 << 8)
+#define PMD_SECT_AF		(1 << 10)
+#define PMD_SECT_nG		(1 << 11)
+#define PMD_SECT_PXN		(1ULL << 53)
+#define PMD_SECT_XN		(1ULL << 54)
+#define PMD_SECT_AP_WRITE	(0)
+#define PMD_SECT_AP_READ	(0)
+#define PMD_SECT_AP1		(1 << 6)
+#define PMD_SECT_TEX(x)		(0)
+
+/*
+ * AttrIndx[2:0] encoding (mapping attributes defined in the MAIR* registers).
+ */
+#define PMD_SECT_UNCACHED	(0 << 2)	/* strongly ordered */
+#define PMD_SECT_BUFFERED	(1 << 2)	/* normal non-cacheable */
+#define PMD_SECT_WT		(2 << 2)	/* normal inner write-through */
+#define PMD_SECT_WB		(3 << 2)	/* normal inner write-back */
+#define PMD_SECT_WBWA		(7 << 2)	/* normal inner write-alloc */
+#define PMD_SECT_CACHE_MASK	(7 << 2)
+
+/*
+ * + Level 3 descriptor (PTE)
+ */
+#define PTE_TYPE_MASK		(3 << 0)
+#define PTE_TYPE_FAULT		(0 << 0)
+#define PTE_TYPE_PAGE		(3 << 0)
+#define PTE_TABLE_BIT		(1 << 1)
+#define PTE_BUFFERABLE		(1 << 2)		/* AttrIndx[0] */
+#define PTE_CACHEABLE		(1 << 3)		/* AttrIndx[1] */
+#define PTE_AP1			PMD_SECT_USER		/* AP[1] */
+#define PTE_AP2			(1 << 7)		/* AP[2] */
+#define PTE_EXT_SHARED		(3 << 8)		/* SH[1:0], inner shareable */
+#define PTE_EXT_AF		(1 << 10)	/* Access Flag */
+#define PTE_EXT_NG		(1 << 11)	/* nG */
+#define PTE_EXT_PXN		(1ULL << 53)	/* PXN */
+#define PTE_EXT_XN		(1ULL << 54)	/* XN */
+
+#define PTE_EXT_AP_URW_SRW	PTE_AP1
+
+
+/*
+ * 40-bit physical address supported.
+ */
+#define PHYS_MASK_SHIFT		(40)
+#define PHYS_MASK		((1ULL << PHYS_MASK_SHIFT) - 1)
+
+#ifndef CONFIG_CPU_TTBR0_PAN
+/*
+ * TTBR0/TTBR1 split (PAGE_OFFSET):
+ *   0x40000000: T0SZ = 2, T1SZ = 0 (not used)
+ *   0x80000000: T0SZ = 0, T1SZ = 1
+ *   0xc0000000: T0SZ = 0, T1SZ = 2
+ *
+ * Only use this feature if PHYS_OFFSET <= PAGE_OFFSET, otherwise
+ * booting secondary CPUs would end up using TTBR1 for the identity
+ * mapping set up in TTBR0.
+ */
+#if defined CONFIG_VMSPLIT_2G
+#define TTBR1_OFFSET	16			/* skip two L1 entries */
+#elif defined CONFIG_VMSPLIT_3G
+#define TTBR1_OFFSET	(4096 * (1 + 3))	/* only L2, skip pgd + 3*pmd */
+#else
+#define TTBR1_OFFSET	0
+#endif
+
+#define TTBR1_SIZE	(((PAGE_OFFSET >> 30) - 1) << 16)
+#else
+/*
+ * With CONFIG_CPU_TTBR0_PAN enabled, TTBR1 is only used during uaccess
+ * disabled regions when TTBR0 is disabled.
+ */
+#define TTBR1_OFFSET	0			/* pointing to swapper_pg_dir */
+#define TTBR1_SIZE	0			/* TTBR1 size controlled via TTBCR.T0SZ */
+#endif
+
+/*
+ * TTBCR register bits.
+ *
+ * The ORGN0 and IRGN0 bits enables different forms of caching when
+ * walking the translation table. Clearing these bits (which is claimed
+ * to be the reset default) means "normal memory, [outer|inner]
+ * non-cacheable"
+ */
+#define TTBCR_EAE		(1 << 31)
+#define TTBCR_IMP		(1 << 30)
+#define TTBCR_SH1_MASK		(3 << 28)
+#define TTBCR_ORGN1_MASK	(3 << 26)
+#define TTBCR_IRGN1_MASK	(3 << 24)
+#define TTBCR_EPD1		(1 << 23)
+#define TTBCR_A1		(1 << 22)
+#define TTBCR_T1SZ_MASK		(7 << 16)
+#define TTBCR_SH0_MASK		(3 << 12)
+#define TTBCR_ORGN0_MASK	(3 << 10)
+#define TTBCR_SHARED_NON	(0 << 12)
+#define TTBCR_IRGN0_MASK	(3 << 8)
+#define TTBCR_EPD0		(1 << 7)
+#define TTBCR_T0SZ_MASK		(7 << 0)
+#define TTBCR			(TTBCR_EAE)
+
+/*
+ * Memory region attributes for LPAE (defined in pgtable):
+ *
+ * n = AttrIndx[2:0]
+ *
+ *		              n       MAIR
+ *	UNCACHED              000     00000000
+ *	BUFFERABLE            001     01000100
+ *	DEV_WC                001     01000100
+ *	WRITETHROUGH          010     10101010
+ *	WRITEBACK             011     11101110
+ *	DEV_CACHED            011     11101110
+ *	DEV_SHARED            100     00000100
+ *	DEV_NONSHARED         100     00000100
+ *	unused                101
+ *	unused                110
+ *	WRITEALLOC            111     11111111
+ */
+#define MT_MAIR0		0xeeaa4400
+#define MT_MAIR1		0xff000004
+#define MT_STRONLY_ORDER	0
+#define MT_NORMAL_NC		1
+#define MT_DEVICE_MEM		4
+#define MT_NORMAL		7
+
+#endif
diff --git a/include/mmu.h b/include/mmu.h
index 9f582f25e1..abf10615bd 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -17,6 +17,8 @@
 #define MAP_WRITECOMBINE	MAP_UNCACHED
 #endif
 
+#define MAP_DEVICE		6
+
 #define MAP_TYPE_MASK	0xFFFF
 #define MAP_ARCH(x)	((u16)~(x))
 
-- 
2.43.0




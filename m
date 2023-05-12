Delivery-date: Fri, 12 May 2023 13:12:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQh4-00F2Xj-ER
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:12:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgz-0005N2-At
	for lore@pengutronix.de; Fri, 12 May 2023 13:12:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fgDNFoQn2GnDE8rEId0i9zyVXztmWxHEO6yfUCAL2IU=; b=OLmXfSG5h3ZNVWGCokaa552LEm
	MgQLJsy5bESp8OULM3CuoQgtsMDDLDNH/DoeDQr45n/xVfFsLg2hi+KFMCDdpOmDlnYaCkJEUjTEz
	Mq7614VbPbtkCwsj7T3lQE058wwdA9IdhhaCIGLinnV3AVezS5nt1ImhUWjn0b0EH/9V7qZayUxWv
	qzL7WSB56c5V+StGVMoMP4FdpSbXZUHGikG4a2Cx+kYFV6JdPM4h/0NsKH15x6uz/MzYUaTIsA6aG
	cgsBNUImDchl/DED/rzw/KhGxEKqs1rwoSsBpqQ3UaLxe6ZcmYtIf1vB2hOnYKZ+LecnPjSqit0F8
	VjLe8jyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfm-00BkVn-1V;
	Fri, 12 May 2023 11:10:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfG-00BjyA-03
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf6-0003ax-Q2; Fri, 12 May 2023 13:10:12 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf5-002wiv-W2; Fri, 12 May 2023 13:10:12 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055EE-8J; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:09:54 +0200
Message-Id: <20230512111008.1120833-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_041022_251789_BFEA5076 
X-CRM114-Status: GOOD (  22.00  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 13/27] ARM: mmu: merge mmu-early_xx.c into mmu_xx.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The code will be further consolidated, so move it together for easier
code sharing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Makefile       |  4 +-
 arch/arm/cpu/mmu-early_32.c | 62 -------------------------
 arch/arm/cpu/mmu-early_64.c | 93 -------------------------------------
 arch/arm/cpu/mmu_32.c       | 50 ++++++++++++++++++++
 arch/arm/cpu/mmu_64.c       | 76 ++++++++++++++++++++++++++++++
 5 files changed, 128 insertions(+), 157 deletions(-)
 delete mode 100644 arch/arm/cpu/mmu-early_32.c
 delete mode 100644 arch/arm/cpu/mmu-early_64.c

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index cd5f36eb49..0e4fa69229 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -3,10 +3,10 @@
 obj-y += cpu.o
 
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_$(S64_32).o interrupts_$(S64_32).o
-obj-$(CONFIG_MMU) += mmu_$(S64_32).o mmu-common.o
+obj-$(CONFIG_MMU) += mmu-common.o
+obj-pbl-$(CONFIG_MMU) += mmu_$(S64_32).o
 obj-$(CONFIG_MMU) += dma_$(S64_32).o
 obj-pbl-y += lowlevel_$(S64_32).o
-obj-pbl-$(CONFIG_MMU) += mmu-early_$(S64_32).o
 obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
 AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
 AFLAGS_hyp.pbl.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
diff --git a/arch/arm/cpu/mmu-early_32.c b/arch/arm/cpu/mmu-early_32.c
deleted file mode 100644
index 94bde44c9b..0000000000
--- a/arch/arm/cpu/mmu-early_32.c
+++ /dev/null
@@ -1,62 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <asm/mmu.h>
-#include <errno.h>
-#include <linux/sizes.h>
-#include <asm/memory.h>
-#include <asm/system.h>
-#include <asm/cache.h>
-#include <asm-generic/sections.h>
-
-#include "mmu_32.h"
-
-static uint32_t *ttb;
-
-static inline void map_region(unsigned long start, unsigned long size,
-			      uint64_t flags)
-
-{
-	start = ALIGN_DOWN(start, SZ_1M);
-	size  = ALIGN(size, SZ_1M);
-
-	create_sections(ttb, start, start + size - 1, flags);
-}
-
-void mmu_early_enable(unsigned long membase, unsigned long memsize,
-		      unsigned long _ttb)
-{
-	ttb = (uint32_t *)_ttb;
-
-	set_ttbr(ttb);
-
-	/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
-	if (cpu_architecture() >= CPU_ARCH_ARMv7)
-		set_domain(DOMAIN_CLIENT);
-	else
-		set_domain(DOMAIN_MANAGER);
-
-	/*
-	 * This marks the whole address space as uncachable as well as
-	 * unexecutable if possible
-	 */
-	create_flat_mapping(ttb);
-
-	/*
-	 * There can be SoCs that have a section shared between device memory
-	 * and the on-chip RAM hosting the PBL. Thus mark this section
-	 * uncachable, but executable.
-	 * On such SoCs, executing from OCRAM could cause the instruction
-	 * prefetcher to speculatively access that device memory, triggering
-	 * potential errant behavior.
-	 *
-	 * If your SoC has such a memory layout, you should rewrite the code
-	 * here to map the OCRAM page-wise.
-	 */
-	map_region((unsigned long)_stext, _etext - _stext, PMD_SECT_DEF_UNCACHED);
-
-	/* maps main memory as cachable */
-	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
-
-	__mmu_cache_on();
-}
diff --git a/arch/arm/cpu/mmu-early_64.c b/arch/arm/cpu/mmu-early_64.c
deleted file mode 100644
index d1f4a046bb..0000000000
--- a/arch/arm/cpu/mmu-early_64.c
+++ /dev/null
@@ -1,93 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <dma-dir.h>
-#include <init.h>
-#include <mmu.h>
-#include <errno.h>
-#include <linux/sizes.h>
-#include <asm/memory.h>
-#include <asm/pgtable64.h>
-#include <asm/barebox-arm.h>
-#include <asm/system.h>
-#include <asm/cache.h>
-#include <memory.h>
-#include <asm/system_info.h>
-
-#include "mmu_64.h"
-
-static void create_sections(void *ttb, uint64_t virt, uint64_t phys,
-			    uint64_t size, uint64_t attr)
-{
-	uint64_t block_size;
-	uint64_t block_shift;
-	uint64_t *pte;
-	uint64_t idx;
-	uint64_t addr;
-	uint64_t *table;
-
-	addr = virt;
-
-	attr &= ~PTE_TYPE_MASK;
-
-	table = ttb;
-
-	while (1) {
-		block_shift = level2shift(1);
-		idx = (addr & level2mask(1)) >> block_shift;
-		block_size = (1ULL << block_shift);
-
-		pte = table + idx;
-
-		*pte = phys | attr | PTE_TYPE_BLOCK;
-
-		if (size < block_size)
-			break;
-
-		addr += block_size;
-		phys += block_size;
-		size -= block_size;
-	}
-}
-
-#define EARLY_BITS_PER_VA 39
-
-void mmu_early_enable(unsigned long membase, unsigned long memsize,
-		      unsigned long ttb)
-{
-	int el;
-
-	/*
-	 * For the early code we only create level 1 pagetables which only
-	 * allow for a 1GiB granularity. If our membase is not aligned to that
-	 * bail out without enabling the MMU.
-	 */
-	if (membase & ((1ULL << level2shift(1)) - 1))
-		return;
-
-	memset((void *)ttb, 0, GRANULE_SIZE);
-
-	el = current_el();
-	set_ttbr_tcr_mair(el, ttb, calc_tcr(el, EARLY_BITS_PER_VA), MEMORY_ATTRIBUTES);
-	create_sections((void *)ttb, 0, 0, 1UL << (EARLY_BITS_PER_VA - 1),
-			attrs_uncached_mem());
-	create_sections((void *)ttb, membase, membase, memsize, CACHED_MEM);
-	tlb_invalidate();
-	isb();
-	set_cr(get_cr() | CR_M);
-}
-
-void mmu_early_disable(void)
-{
-	unsigned int cr;
-
-	cr = get_cr();
-	cr &= ~(CR_M | CR_C);
-
-	set_cr(cr);
-	v8_flush_dcache_all();
-	tlb_invalidate();
-
-	dsb();
-	isb();
-}
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 10f447874c..12fe892400 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -494,3 +494,53 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 {
 	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
+
+static uint32_t *ttb;
+
+static inline void map_region(unsigned long start, unsigned long size,
+			      uint64_t flags)
+
+{
+	start = ALIGN_DOWN(start, SZ_1M);
+	size  = ALIGN(size, SZ_1M);
+
+	create_sections(ttb, start, start + size - 1, flags);
+}
+
+void mmu_early_enable(unsigned long membase, unsigned long memsize,
+		      unsigned long _ttb)
+{
+	ttb = (uint32_t *)_ttb;
+
+	set_ttbr(ttb);
+
+	/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
+	if (cpu_architecture() >= CPU_ARCH_ARMv7)
+		set_domain(DOMAIN_CLIENT);
+	else
+		set_domain(DOMAIN_MANAGER);
+
+	/*
+	 * This marks the whole address space as uncachable as well as
+	 * unexecutable if possible
+	 */
+	create_flat_mapping(ttb);
+
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
+
+	__mmu_cache_on();
+}
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 9150de1676..55ada960c5 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -241,3 +241,79 @@ void dma_flush_range(void *ptr, size_t size)
 
 	v8_flush_dcache_range(start, end);
 }
+
+static void early_create_sections(void *ttb, uint64_t virt, uint64_t phys,
+				  uint64_t size, uint64_t attr)
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
+#define EARLY_BITS_PER_VA 39
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
+	set_ttbr_tcr_mair(el, ttb, calc_tcr(el, EARLY_BITS_PER_VA), MEMORY_ATTRIBUTES);
+	early_create_sections((void *)ttb, 0, 0, 1UL << (EARLY_BITS_PER_VA - 1),
+			attrs_uncached_mem());
+	early_create_sections((void *)ttb, membase, membase, memsize, CACHED_MEM);
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
-- 
2.39.2




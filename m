Delivery-date: Wed, 17 May 2023 11:41:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfK-0049uT-JQ
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfH-0002kx-Fy
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fgDNFoQn2GnDE8rEId0i9zyVXztmWxHEO6yfUCAL2IU=; b=BMCfGz3EWddFu05BkUL/vKzUem
	w+8ERx3Kh46cDD4KnP4AxSMK9tIkhVLd7U1cKmiIK3vBqhnpjWnpn/VHLxYKAGIDALzd4go5G0tXx
	K7eSdwfwAbKxKHlwydbPXFdY5Ir1MFyiwzjG/Tc2weWJDZhVpkjXn2wXsVTUU04urFTGZC8jiIo/0
	OSI96ywD/H++p3zB9pDqn4WP1YjbwLrpLjB5VvHN2QZLTPnxq2oU0jFoh/89hqAHta5SU++bZ7HZI
	gNrjxPb1SeRxq93qhCeXZL2vowQfa5c9Z6KaQzmG/9gm6dBlj8zHsIHGLKNVT/Z+2V8jdT94W9rV4
	ahXH4k8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDe6-0096SF-32;
	Wed, 17 May 2023 09:40:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDe1-0096Lj-0s
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fgDNFoQn2GnDE8rEId0i9zyVXztmWxHEO6yfUCAL2IU=; b=T74PsyN0UPOZOBvzTkHHVu4kMl
	Q4tGKPh5MKBOZX+ADCEdD0A1JX6izLRCS1/+eQSu7Yk5luZvzjf/f4eySNSv/0OO867QgM/ZE/yZN
	fCrcJL1IK5ySsNdPlXYwBrVqlAKUtQSt9vW3wTpIMKokazOqNZx4bK7xt4GSIIscxwdkNaWGTly8D
	sPovPrLkhwhsGDMOHcYxAP9KDNsC8iTH0P9HMRe7mVqeQWjKjeIA/g3loBZdsZI0JZFNNhc7gyqNy
	1domYrpdDYbsBqWnVtqSMxqGbLAGZLZWkSMxoR+A+abWgSwAcvA3c82VKRLeuXw8+ZB/S3pRsNmCq
	3YufHbJA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-00DAxr-2C
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000407-Sj; Wed, 17 May 2023 11:03:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7K-5d; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4P-00Gas8-UA; Wed, 17 May 2023 11:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:26 +0200
Message-Id: <20230517090340.3954615-21-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100351_172073_C096A8B4 
X-CRM114-Status: GOOD (  22.20  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 20/34] ARM: mmu: merge mmu-early_xx.c into mmu_xx.c
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




Delivery-date: Mon, 04 Aug 2025 19:23:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyuC-00710t-2K
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 19:23:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyuA-0001LG-P1
	for lore@pengutronix.de; Mon, 04 Aug 2025 19:23:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HWgaupvrJa0mNcTkQxOuStZFz1Ag04545USxuHFmftQ=; b=QqR1b5Hg2JR6t752Ys7RJzs/wV
	MQZQxPfbRz8/26dnCejiFl1M1EszDNXYb1sLqxzr7toQ6yp+et0h+jUSqpCEVTp9Hf6E7oiWLFhX5
	WfZJbnB/jH7lJfiJ2AY4yPONImU7aKCXfNS7FSRakH7t5PwrbJGZ/MjpLxJOjhFymoUJGeD50CX41
	0UksXo1VUw6b7P59VH6293qyiFTtH4mqb6RQk/enGhyYN+p0tZ+vX+royn8Q2r/xvuJuQJNzsQiXW
	hZalLCIqqkpzh37gc3RgMFB88Qj6lkP/fjea6QQkexVm9K4AsYgf307a6Jtp5PxvtzwlBnnMRmMJJ
	4vvwrS9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytd-0000000B5SJ-2GE1;
	Mon, 04 Aug 2025 17:22:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytZ-0000000B5OF-3GjF
	for barebox@bombadil.infradead.org;
	Mon, 04 Aug 2025 17:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HWgaupvrJa0mNcTkQxOuStZFz1Ag04545USxuHFmftQ=; b=Hm37KRcZTpHBMws40En7AiF5m4
	F8VvePfvCOxSXje/nsKe3NTe+DDaDngqnf0iD83EMcQtzo5ae1ZwbyeB/psIePcaAYJGcKC6QXfmB
	qQ275TaurXuzh5++BDwY1iRiXgjZ6C162gm1vY6NeHsbr0PDhYsf/aR7Cr2GDOjxCIBu3MN4sQmN5
	29Mvq9UChZjdW0yROHrIqI0EDIZNqOD2NBiN9cz3et+rb9FxvE8mNvxZaoZsnA/tCPA/+xg1Bzn8n
	KoZyIO5CUl2v9vMGO/Xqyzqphqsm9DETi5GKH5ma0QOmifki+Ft5uRubu39DecM6zNbq8BW4SjhMm
	zbtuMBdA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytT-0000000DtfD-3ntx
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 17:22:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uiytS-0000su-Q3; Mon, 04 Aug 2025 19:22:38 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  4 Aug 2025 19:22:31 +0200
Message-Id: <20250804172233.2158462-12-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250804172233.2158462-1-a.fatoum@barebox.org>
References: <20250804172233.2158462-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_182240_223746_C79A9422 
X-CRM114-Status: GOOD (  27.55  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 11/13] ARM: mmu: map text segment ro and data segments execute never
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

With this all segments in the DRAM except the text segment are mapped
execute-never so that only the barebox code can actually be executed.
Also map the readonly data segment readonly so that it can't be
modified.

The mapping is only implemented in barebox proper. The PBL still maps
the whole DRAM rwx.

To make the protection work on ARMv5 we have to set the CS_S bit and
also have to use DOMAIN_CLIENT as already done on ARMv7.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/Kconfig             | 13 ++++++++++++
 arch/arm/cpu/lowlevel_32.S   |  1 +
 arch/arm/cpu/mmu-common.c    | 38 +++++++++++++++++++++++++++++++----
 arch/arm/cpu/mmu-common.h    | 18 +++++++++++++++++
 arch/arm/cpu/mmu_32.c        | 39 +++++++++++++++++++++++++++---------
 arch/arm/lib32/barebox.lds.S |  3 ++-
 common/memory.c              |  7 ++++++-
 include/mmu.h                |  2 +-
 8 files changed, 104 insertions(+), 17 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9b67f823807f..18bd0ffa5bf4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -397,6 +397,19 @@ config ARM_UNWIND
 	  the performance is not affected. Currently, this feature
 	  only works with EABI compilers. If unsure say Y.
 
+config ARM_MMU_PERMISSIONS
+	bool "Map with extended RO/X permissions"
+	depends on ARM32
+	default y
+	help
+	  Enable this option to map readonly sections as readonly, executable
+	  sections as readonly/executable and the remainder of the SDRAM as
+	  read/write/non-executable.
+	  Traditionally barebox maps the whole SDRAM as read/write/execute.
+	  You get this behaviour by disabling this option which is meant as
+	  a debugging facility. It can go away once the extended permission
+	  settings are proved to work reliable.
+
 config ARM_SEMIHOSTING
 	bool "enable ARM semihosting support"
 	select SEMIHOSTING
diff --git a/arch/arm/cpu/lowlevel_32.S b/arch/arm/cpu/lowlevel_32.S
index 960a92b78c0a..5d524faf9cff 100644
--- a/arch/arm/cpu/lowlevel_32.S
+++ b/arch/arm/cpu/lowlevel_32.S
@@ -70,6 +70,7 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
 	orr	r12, r12, #CR_U
 	bic	r12, r12, #CR_A
 #else
+	orr	r12, r12, #CR_S
 	orr	r12, r12, #CR_A
 #endif
 
diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 4c30f98cbd79..a8673d027d17 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -14,6 +14,7 @@
 #include <zero_page.h>
 #include "mmu-common.h"
 #include <efi/efi-mode.h>
+#include <range.h>
 
 void arch_sync_dma_for_cpu(void *vaddr, size_t size,
 			   enum dma_data_direction dir)
@@ -82,15 +83,37 @@ static inline void remap_range_end(unsigned long start, unsigned long end,
 	remap_range((void *)start, end - start, map_type);
 }
 
+static inline void remap_range_end_sans_text(unsigned long start, unsigned long end,
+					     unsigned map_type)
+{
+	unsigned long text_start = (unsigned long)&_stext;
+	unsigned long text_end = (unsigned long)&_etext;
+
+	if (region_overlap_end_exclusive(start, end, text_start, text_end)) {
+		remap_range_end(start, text_start, MAP_CACHED);
+		/* skip barebox segments here, will be mapped later */
+		start = text_end;
+	}
+
+	remap_range_end(start, end, MAP_CACHED);
+}
+
 static void mmu_remap_memory_banks(void)
 {
 	struct memory_bank *bank;
+	unsigned long code_start = (unsigned long)&_stext;
+	unsigned long code_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
+	unsigned long rodata_start = (unsigned long)&__start_rodata;
+	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
 
 	/*
 	 * Early mmu init will have mapped everything but the initial memory area
 	 * (excluding final OPTEE_SIZE bytes) uncached. We have now discovered
-	 * all memory banks, so let's map all pages, excluding reserved memory areas,
-	 * cacheable and executable.
+	 * all memory banks, so let's map all pages, excluding reserved memory areas
+	 * and barebox text area cacheable.
+	 *
+	 * This code will become much less complex once we switch over to using
+	 * CONFIG_MEMORY_ATTRIBUTES for MMU as well.
 	 */
 	for_each_memory_bank(bank) {
 		struct resource *rsv;
@@ -100,14 +123,21 @@ static void mmu_remap_memory_banks(void)
 
 		/* Skip reserved regions */
 		for_each_reserved_region(bank, rsv) {
-			remap_range_end(pos, rsv->start, MAP_CACHED);
+			remap_range_end_sans_text(pos, rsv->start, MAP_CACHED);
 			pos = rsv->end + 1;
 		}
 
-		remap_range_end(pos, bank->start + bank->size, MAP_CACHED);
+		remap_range_end_sans_text(pos, bank->start + bank->size, MAP_CACHED);
 	}
 
+	/* Do this while interrupt vectors are still writable */
 	setup_trap_pages();
+
+	if (!IS_ENABLED(CONFIG_ARM_MMU_PERMISSIONS))
+		return;
+
+	remap_range((void *)code_start, code_size, MAP_CODE);
+	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
 }
 
 static int mmu_init(void)
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index 8d90da8c86fe..395a2f8d0f6f 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -3,6 +3,7 @@
 #ifndef __ARM_MMU_COMMON_H
 #define __ARM_MMU_COMMON_H
 
+#include <mmu.h>
 #include <printf.h>
 #include <linux/types.h>
 #include <linux/ioport.h>
@@ -10,6 +11,8 @@
 #include <linux/sizes.h>
 
 #define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
+#define ARCH_MAP_CACHED_RWX	((unsigned)-2)
+#define ARCH_MAP_CACHED_RO	((unsigned)-3)
 
 struct device;
 
@@ -19,6 +22,21 @@ void *dma_alloc_map(struct device *dev, size_t size, dma_addr_t *dma_handle, uns
 void setup_trap_pages(void);
 void __mmu_init(bool mmu_on);
 
+static inline unsigned arm_mmu_maybe_skip_permissions(unsigned map_type)
+{
+	if (IS_ENABLED(CONFIG_ARM_MMU_PERMISSIONS))
+		return map_type;
+
+	switch (map_type) {
+	case MAP_CODE:
+	case MAP_CACHED:
+	case ARCH_MAP_CACHED_RO:
+		return ARCH_MAP_CACHED_RWX;
+	default:
+		return map_type;
+	}
+}
+
 static inline void arm_mmu_not_initialized_error(void)
 {
 	/*
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 080e55a7ced6..b7936141911f 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -47,11 +47,18 @@ static inline void tlb_invalidate(void)
 	);
 }
 
+#define PTE_FLAGS_CACHED_V7_RWX (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE | \
+				 PTE_EXT_AP_URW_SRW)
 #define PTE_FLAGS_CACHED_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE | \
-			     PTE_EXT_AP_URW_SRW)
+			     PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
+#define PTE_FLAGS_CACHED_RO_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE | \
+			     PTE_EXT_APX | PTE_EXT_AP0 | PTE_EXT_AP1 | PTE_EXT_XN)
+#define PTE_FLAGS_CODE_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE | \
+			     PTE_EXT_APX | PTE_EXT_AP0 | PTE_EXT_AP1)
 #define PTE_FLAGS_WC_V7 (PTE_EXT_TEX(1) | PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
 #define PTE_FLAGS_UNCACHED_V7 (PTE_EXT_AP_URW_SRW | PTE_EXT_XN)
 #define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
+#define PTE_FLAGS_CACHED_RO_V4 (PTE_SMALL_AP_UNO_SRO | PTE_CACHEABLE)
 #define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
 #define PGD_FLAGS_WC_V7 (PMD_SECT_TEX(1) | PMD_SECT_DEF_UNCACHED | \
 			 PMD_SECT_BUFFERABLE | PMD_SECT_XN)
@@ -208,7 +215,9 @@ static u32 pte_flags_to_pmd(u32 pte)
 		/* AP[2] */
 		pmd |= ((pte >> 9) & 0x1) << 15;
 	} else {
-		pmd |= PMD_SECT_AP_WRITE | PMD_SECT_AP_READ;
+		pmd |= PMD_SECT_AP_READ;
+		if (pte & PTE_SMALL_AP_MASK)
+			pmd |= PMD_SECT_AP_WRITE;
 	}
 
 	return pmd;
@@ -218,10 +227,16 @@ static uint32_t get_pte_flags(int map_type)
 {
 	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
 		switch (map_type) {
+		case ARCH_MAP_CACHED_RWX:
+			return PTE_FLAGS_CACHED_V7_RWX;
+		case ARCH_MAP_CACHED_RO:
+			return PTE_FLAGS_CACHED_RO_V7;
 		case MAP_CACHED:
 			return PTE_FLAGS_CACHED_V7;
 		case MAP_UNCACHED:
 			return PTE_FLAGS_UNCACHED_V7;
+		case MAP_CODE:
+			return PTE_FLAGS_CODE_V7;
 		case ARCH_MAP_WRITECOMBINE:
 			return PTE_FLAGS_WC_V7;
 		case MAP_FAULT:
@@ -230,6 +245,10 @@ static uint32_t get_pte_flags(int map_type)
 		}
 	} else {
 		switch (map_type) {
+		case ARCH_MAP_CACHED_RO:
+		case MAP_CODE:
+			return PTE_FLAGS_CACHED_RO_V4;
+		case ARCH_MAP_CACHED_RWX:
 		case MAP_CACHED:
 			return PTE_FLAGS_CACHED_V4;
 		case MAP_UNCACHED:
@@ -260,6 +279,8 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 	pte_flags = get_pte_flags(map_type);
 	pmd_flags = pte_flags_to_pmd(pte_flags);
 
+	pr_debug("%s: 0x%08x 0x%08x type %d\n", __func__, virt_addr, size, map_type);
+
 	size = PAGE_ALIGN(size);
 	if (!size)
 		return;
@@ -350,6 +371,8 @@ static void early_remap_range(u32 addr, size_t size, unsigned map_type, bool for
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
 {
+	map_type = arm_mmu_maybe_skip_permissions(map_type);
+
 	__arch_remap_range(virt_addr, phys_addr, size, map_type, false);
 
 	if (map_type == MAP_UNCACHED)
@@ -605,11 +628,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 
 	set_ttbr(ttb);
 
-	/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
-	if (cpu_architecture() >= CPU_ARCH_ARMv7)
-		set_domain(DOMAIN_CLIENT);
-	else
-		set_domain(DOMAIN_MANAGER);
+	set_domain(DOMAIN_CLIENT);
 
 	/*
 	 * This marks the whole address space as uncachable as well as
@@ -625,7 +644,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 * map the bulk of the memory as sections to avoid allocating too many page tables
 	 * at this early stage
 	 */
-	early_remap_range(membase, barebox_start - membase, MAP_CACHED, false);
+	early_remap_range(membase, barebox_start - membase, ARCH_MAP_CACHED_RWX, false);
 	/*
 	 * Map the remainder of the memory explicitly with two level page tables. This is
 	 * the place where barebox proper ends at. In barebox proper we'll remap the code
@@ -635,10 +654,10 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 * a break-before-make sequence which we can't do when barebox proper is running
 	 * at the location being remapped.
 	 */
-	early_remap_range(barebox_start, barebox_size, MAP_CACHED, true);
+	early_remap_range(barebox_start, barebox_size, ARCH_MAP_CACHED_RWX, true);
 	early_remap_range(optee_start, OPTEE_SIZE, MAP_UNCACHED, false);
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
-			  MAP_CACHED, false);
+			  ARCH_MAP_CACHED_RWX, false);
 
 	__mmu_cache_on();
 }
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index a52556a35696..dbfdd2e9c110 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -30,7 +30,7 @@ SECTIONS
 	}
 	BAREBOX_BARE_INIT_SIZE
 
-	. = ALIGN(4);
+	. = ALIGN(4096);
 	__start_rodata = .;
 	.rodata : {
 		*(.rodata*)
@@ -53,6 +53,7 @@ SECTIONS
 		__stop_unwind_tab = .;
 	}
 #endif
+	. = ALIGN(4096);
 	__end_rodata = .;
 	_etext = .;
 	_sdata = .;
diff --git a/common/memory.c b/common/memory.c
index 57f58026df8e..bee55bd647e1 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -125,9 +125,14 @@ static int mem_malloc_resource(void)
 			MEMTYPE_BOOT_SERVICES_DATA, MEMATTRS_RW);
 	request_barebox_region("barebox code",
 			(unsigned long)&_stext,
-			(unsigned long)&_etext -
+			(unsigned long)&__start_rodata -
 			(unsigned long)&_stext,
 			MEMATTRS_RX);
+	request_barebox_region("barebox RO data",
+			(unsigned long)&__start_rodata,
+			(unsigned long)&__end_rodata -
+			(unsigned long)&__start_rodata,
+			MEMATTRS_RO);
 	request_barebox_region("barebox data",
 			(unsigned long)&_sdata,
 			(unsigned long)&_edata -
diff --git a/include/mmu.h b/include/mmu.h
index 669959050194..20855e89eda3 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -8,7 +8,7 @@
 #define MAP_UNCACHED	0
 #define MAP_CACHED	1
 #define MAP_FAULT	2
-#define MAP_CODE	MAP_CACHED	/* until support added */
+#define MAP_CODE	3
 
 /*
  * Depending on the architecture the default mapping can be
-- 
2.39.5




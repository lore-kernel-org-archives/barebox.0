Delivery-date: Tue, 17 Jun 2025 19:11:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRZpv-008LCN-0g
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 19:11:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRZpu-0001zm-2M
	for lore@pengutronix.de; Tue, 17 Jun 2025 19:11:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FvI9Lg7sw1FTyXuX05QTfh1SFMQd3unD/aSY/UmCObk=; b=a55bA+3YnMK8BDIFL/z2vnBIMq
	9ZH97+4JAl8Tf98WByjVF6aXBCTn1SQxEZISogYo4gLr5qtq9Lb2MaIkeBtkNUXus7sJg9wqXCg5x
	MPczH55X5dY8vWl+cwwihiHSj6PYpwz8PuFs3/rxSLkQDTbCAyF1x8mthhypUTmKkB2Pf63WBPI/1
	oVTQV1QMcshDPFaHEfnM5+/UjI0UPsKPfCcmvWyFiooKkeKnJe5RlhnlsHvhWltJMm5qbHfCV1WuM
	f13FmapPDN5CGZFddKoYYGN8HFoli08MQpc0FEySzvnIXBNZDHz8V3EQ61DPnllsMyONLiL1awbZ8
	Tr70TRqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZpZ-00000007xew-2nF8;
	Tue, 17 Jun 2025 17:10:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRXIM-00000007YTC-1zzs
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 14:28:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIL-0007nc-4o; Tue, 17 Jun 2025 16:28:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIK-003zFi-2r;
	Tue, 17 Jun 2025 16:28:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIK-00Gvg5-2S;
	Tue, 17 Jun 2025 16:28:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Jun 2025 16:28:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250617-mmu-xn-ro-v2-4-3c7aa9046b67@pengutronix.de>
References: <20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de>
In-Reply-To: <20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750170492; l=11063;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=cSVcq+3KwhBFD6qsn0uFa6ZtuSMIWFYTCrghRcZRbpg=;
 b=X4U7mJw1b61WLvKA7ozkDyBSPgsAnGDm5jXDTIi8FDWGP3IDY4zy2gbkcmVDReJkxa46m4Ww8
 QifNAG3KmtaCosnzA4jsNkq8BgX5l6Qf+zAaGZRcyii14/3u/JDHFCy
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_072814_674766_1CB11273 
X-CRM114-Status: GOOD (  25.05  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/6] ARM: MMU: map text segment ro and data segments
 execute never
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With this all segments in the DRAM except the text segment are mapped
execute-never so that only the barebox code can actually be executed.
Also map the readonly data segment readonly so that it can't be
modified.

The mapping is only implemented in barebox proper. The PBL still maps
the whole DRAM rwx.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig             | 12 ++++++++++
 arch/arm/cpu/lowlevel_32.S   |  1 +
 arch/arm/cpu/mmu-common.h    | 18 +++++++++++++++
 arch/arm/cpu/mmu_32.c        | 55 ++++++++++++++++++++++++++++++++++++--------
 arch/arm/lib32/barebox.lds.S |  3 ++-
 common/memory.c              |  7 +++++-
 include/mmu.h                |  1 +
 7 files changed, 85 insertions(+), 12 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index d283ef7793a1f13e6428d3b1037460cb806b566f..a67afed02c45f6736628e33ba8ddc69d3f854ba4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -387,6 +387,18 @@ config ARM_UNWIND
 	  the performance is not affected. Currently, this feature
 	  only works with EABI compilers. If unsure say Y.
 
+config ARM_MMU_PERMISSIONS
+	bool "Map with extended RO/X permissions"
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
index 960a92b78c0adaf815948517ba917ae85ae65e27..5d524faf9cff9a8b545044169b8255279dd8ab0b 100644
--- a/arch/arm/cpu/lowlevel_32.S
+++ b/arch/arm/cpu/lowlevel_32.S
@@ -70,6 +70,7 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
 	orr	r12, r12, #CR_U
 	bic	r12, r12, #CR_A
 #else
+	orr	r12, r12, #CR_S
 	orr	r12, r12, #CR_A
 #endif
 
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index 0f11a4b73d1199ec2400f64a2f057cf940d4ff2d..ac11a87be4165079457bd73682bfbd909c3d1c31 100644
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
 
@@ -18,6 +21,21 @@ void dma_flush_range(void *ptr, size_t size);
 void *dma_alloc_map(struct device *dev, size_t size, dma_addr_t *dma_handle, unsigned flags);
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
index b21fc75f0ceb0c50f5190662a6cd674b1bd38ced..67f1fe59886a176dddd385d20205f0bdf53d7244 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -19,6 +19,7 @@
 #include <asm/system_info.h>
 #include <asm/sections.h>
 #include <linux/pagemap.h>
+#include <range.h>
 
 #include "mmu_32.h"
 
@@ -47,11 +48,18 @@ static inline void tlb_invalidate(void)
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
@@ -208,7 +216,9 @@ static u32 pte_flags_to_pmd(u32 pte)
 		/* AP[2] */
 		pmd |= ((pte >> 9) & 0x1) << 15;
 	} else {
-		pmd |= PMD_SECT_AP_WRITE | PMD_SECT_AP_READ;
+		pmd |= PMD_SECT_AP_READ;
+		if (pte & PTE_SMALL_AP_MASK)
+			pmd |= PMD_SECT_AP_WRITE;
 	}
 
 	return pmd;
@@ -218,10 +228,16 @@ static uint32_t get_pte_flags(int map_type)
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
@@ -230,6 +246,10 @@ static uint32_t get_pte_flags(int map_type)
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
@@ -260,6 +280,8 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 	pte_flags = get_pte_flags(map_type);
 	pmd_flags = pte_flags_to_pmd(pte_flags);
 
+	pr_debug("%s: 0x%08x 0x%08x type %d\n", __func__, virt_addr, size, map_type);
+
 	size = PAGE_ALIGN(size);
 
 	while (size) {
@@ -348,6 +370,8 @@ static void early_remap_range(u32 addr, size_t size, unsigned map_type, bool for
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
 {
+	map_type = arm_mmu_maybe_skip_permissions(map_type);
+
 	__arch_remap_range(virt_addr, phys_addr, size, map_type, false);
 
 	if (map_type == MAP_UNCACHED)
@@ -555,6 +579,12 @@ void __mmu_init(bool mmu_on)
 {
 	struct memory_bank *bank;
 	uint32_t *ttb = get_ttb();
+	unsigned long text_start = (unsigned long)&_stext;
+	unsigned long code_start = text_start;
+	unsigned long code_size = (unsigned long)&__start_rodata - (unsigned long)&_stext;
+	unsigned long text_size = (unsigned long)&_etext - text_start;
+	unsigned long rodata_start = (unsigned long)&__start_rodata;
+	unsigned long rodata_size = (unsigned long)&__end_rodata - rodata_start;
 
 	// TODO: remap writable only while remapping?
 	// TODO: What memtype for ttb when barebox is EFI loader?
@@ -591,10 +621,19 @@ void __mmu_init(bool mmu_on)
 			pos = rsv->end + 1;
 		}
 
+		if (region_overlap_size(pos, bank->start + bank->size - pos, text_start, text_size)) {
+			remap_range((void *)pos, code_start - pos, MAP_CACHED);
+			/* skip barebox segments here, will be mapped below */
+			pos = text_start + text_size;
+		}
+
 		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
 	}
 
 	vectors_init();
+
+	remap_range((void *)code_start, code_size, MAP_CODE);
+	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
 }
 
 /*
@@ -627,11 +666,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 
 	set_ttbr(ttb);
 
-	/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
-	if (cpu_architecture() >= CPU_ARCH_ARMv7)
-		set_domain(DOMAIN_CLIENT);
-	else
-		set_domain(DOMAIN_MANAGER);
+	set_domain(DOMAIN_CLIENT);
 
 	/*
 	 * This marks the whole address space as uncachable as well as
@@ -647,7 +682,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 * map the bulk of the memory as sections to avoid allocating too many page tables
 	 * at this early stage
 	 */
-	early_remap_range(membase, barebox_start - membase, MAP_CACHED, false);
+	early_remap_range(membase, barebox_start - membase, ARCH_MAP_CACHED_RWX, false);
 	/*
 	 * Map the remainder of the memory explicitly with two level page tables. This is
 	 * the place where barebox proper ends at. In barebox proper we'll remap the code
@@ -657,10 +692,10 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
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
index a52556a35696aea6f15cad5fd3f0275e8e6349b1..dbfdd2e9c110133f7fb45e06911bfc9ea9e8299c 100644
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
index 57f58026df8e0ab52f4c27815b251e75cf30c7dc..bee55bd647e115c5c9f67bfd263e1887b58a78af 100644
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
index 84ec6c5efb3eb8020fdc98e76a3614c137a0f8e9..20855e89eda301527b8cd69d868d58fc79637f5e 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -8,6 +8,7 @@
 #define MAP_UNCACHED	0
 #define MAP_CACHED	1
 #define MAP_FAULT	2
+#define MAP_CODE	3
 
 /*
  * Depending on the architecture the default mapping can be

-- 
2.39.5




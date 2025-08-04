Delivery-date: Mon, 04 Aug 2025 19:23:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyuB-0070zj-0S
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 19:23:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyu9-0001KP-7B
	for lore@pengutronix.de; Mon, 04 Aug 2025 19:23:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IvJkaN94MEZ2noODSSLzbN/Q+xaL0ZDZx/Pb0zHmRb4=; b=hVLdEhl+bHjCYloVnFkCMeBLQw
	wP6b9XpZROEXzgLd3QKEFgW81f6Xufg5p6/FvYK3RprGErQNIr0mrIfVGTuI5rvXwiO7NxZITFpwc
	uF/+luXtWmEbfoXAPen4nco3SaifLE1F7PXp+2+Mv8V7HlffAj9yusCnBywc92hj0KOxiYW8S+d30
	4LinwAzieW+jHmXYqhdL1j9oRGYhJuzJ/QdxhuEdHi1Qz+e2v7f33/XlLlcoxaARLeRgkoEmr+Msp
	N4Sp6dsuiNd6aL7ZdcIcxlCtFwYX+UAE2zMTsHc4U62+I9B4od9b5KGNFf/vdkN3Pjv0HeA/+UjED
	OQS5eing==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytc-0000000B5Rl-42At;
	Mon, 04 Aug 2025 17:22:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytZ-0000000B5OG-3mYU
	for barebox@bombadil.infradead.org;
	Mon, 04 Aug 2025 17:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=IvJkaN94MEZ2noODSSLzbN/Q+xaL0ZDZx/Pb0zHmRb4=; b=OnTKVmEg+Y4ZMENWnPZi/Z6efE
	8afnchJRf1R2CSzpaiGMyK+HTSHhPBv8SNGsP78apZD65Ip8AAiU93m9+oQXQWB256oOC/ZMQaXvy
	gwzfP2kFa5BpNGUTviInk83D2ijCZsXbjCoWKYfbkJqn02OsjuA6ZiMUpuvOBctcy72ssQqAjnXFH
	YR83cKrkMcgYfQF/dQlVDGEgrHTqsGTequg/Be/AGo8lNf160xg//QqE3nxhATQpH2eo1iqz+tKbI
	Lgad8ikvKOfp98l+w83bAL9S0Clzl0j0PEkX26PryUBH86DQSE7U3QVTe+tVbmUAv2gNCTH94+kb3
	zhQDmN5A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytU-0000000Dtfg-26NQ
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 17:22:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uiytT-0000su-Ap; Mon, 04 Aug 2025 19:22:39 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  4 Aug 2025 19:22:33 +0200
Message-Id: <20250804172233.2158462-14-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250804172233.2158462-1-a.fatoum@barebox.org>
References: <20250804172233.2158462-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_182240_742949_3AF417E6 
X-CRM114-Status: GOOD (  14.82  )
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
Subject: [PATCH v4 13/13] ARM: mmu64: map text segment ro and data segments execute never
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

With this all segments in the DRAM except the text segment are mapped
execute-never so that only the barebox code can actually be executed.
Also map the readonly data segment readonly so that it can't be
modified.

The mapping is only implemented in barebox proper. The PBL still maps
the whole DRAM rwx.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/Kconfig                 |  1 -
 arch/arm/cpu/mmu-common.c        |  3 ---
 arch/arm/cpu/mmu_64.c            | 18 ++++++++++++++----
 arch/arm/include/asm/pgtable64.h |  1 +
 arch/arm/lib64/barebox.lds.S     |  5 +++--
 5 files changed, 18 insertions(+), 10 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 18bd0ffa5bf4..7a3952700aa8 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -399,7 +399,6 @@ config ARM_UNWIND
 
 config ARM_MMU_PERMISSIONS
 	bool "Map with extended RO/X permissions"
-	depends on ARM32
 	default y
 	help
 	  Enable this option to map readonly sections as readonly, executable
diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index a8673d027d17..365d9c89ba7c 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -133,9 +133,6 @@ static void mmu_remap_memory_banks(void)
 	/* Do this while interrupt vectors are still writable */
 	setup_trap_pages();
 
-	if (!IS_ENABLED(CONFIG_ARM_MMU_PERMISSIONS))
-		return;
-
 	remap_range((void *)code_start, code_size, MAP_CODE);
 	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
 }
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 6fd767d983b7..8621bcd26cf4 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -292,13 +292,19 @@ static unsigned long get_pte_attrs(unsigned flags)
 {
 	switch (flags) {
 	case MAP_CACHED:
-		return CACHED_MEM;
+		return attrs_xn() | CACHED_MEM;
 	case MAP_UNCACHED:
 		return attrs_xn() | UNCACHED_MEM;
 	case MAP_FAULT:
 		return 0x0;
 	case ARCH_MAP_WRITECOMBINE:
 		return attrs_xn() | MEM_ALLOC_WRITECOMBINE;
+	case MAP_CODE:
+		return CACHED_MEM | PTE_BLOCK_RO;
+	case ARCH_MAP_CACHED_RO:
+		return attrs_xn() | CACHED_MEM | PTE_BLOCK_RO;
+	case ARCH_MAP_CACHED_RWX:
+		return CACHED_MEM;
 	default:
 		return ~0UL;
 	}
@@ -316,7 +322,11 @@ static void early_remap_range(uint64_t addr, size_t size, unsigned flags, bool f
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags)
 {
-	unsigned long attrs = get_pte_attrs(flags);
+	unsigned long attrs;
+
+	flags = arm_mmu_maybe_skip_permissions(flags);
+
+	attrs = get_pte_attrs(flags);
 
 	if (attrs == ~0UL)
 		return -EINVAL;
@@ -453,7 +463,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 */
 	init_range(2);
 
-	early_remap_range(membase, memsize, MAP_CACHED, false);
+	early_remap_range(membase, memsize, ARCH_MAP_CACHED_RWX, false);
 
 	if (optee_get_membase(&optee_membase)) {
                 optee_membase = membase + memsize - OPTEE_SIZE;
@@ -472,7 +482,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT, false);
 
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
-			  MAP_CACHED, false);
+			  ARCH_MAP_CACHED_RWX, false);
 
 	mmu_enable();
 }
diff --git a/arch/arm/include/asm/pgtable64.h b/arch/arm/include/asm/pgtable64.h
index b88ffe6be525..6f6ef22717b7 100644
--- a/arch/arm/include/asm/pgtable64.h
+++ b/arch/arm/include/asm/pgtable64.h
@@ -59,6 +59,7 @@
 #define PTE_BLOCK_NG            (1 << 11)
 #define PTE_BLOCK_PXN           (UL(1) << 53)
 #define PTE_BLOCK_UXN           (UL(1) << 54)
+#define PTE_BLOCK_RO            (UL(1) << 7)
 
 /*
  * AttrIndx[2:0] encoding (mapping attributes defined in the MAIR* registers).
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index 454ae3a95d8d..68cff9dacdeb 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -25,18 +25,19 @@ SECTIONS
 	}
 	BAREBOX_BARE_INIT_SIZE
 
-	. = ALIGN(4);
+	. = ALIGN(4096);
 	__start_rodata = .;
 	.rodata : {
 		*(.rodata*)
 		RO_DATA_SECTION
 	}
 
+	. = ALIGN(4096);
+
 	__end_rodata = .;
 	_etext = .;
 	_sdata = .;
 
-	. = ALIGN(4);
 	.data : { *(.data*) }
 
 	.barebox_imd : { BAREBOX_IMD }
-- 
2.39.5




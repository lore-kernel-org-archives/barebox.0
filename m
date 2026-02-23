Delivery-date: Mon, 23 Feb 2026 09:35:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRPI-004laA-0V
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:35:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRPI-00045k-1d
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:35:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Htdl5cU/wL+3QrZFDhqjs3q/8VKwgRBWKGfvwQBRqnY=; b=pPBJtsI6QZnHYhSeozKPE5crla
	aS/UXODpnh2gaOyX/5l/QB72gToVidEJEb5wRT5ijLUYkAp31SBPFnNAotVGJxqDXO+oxX1QlhLiX
	OwXahIwdGBU6mlZpk4f8msq8oeNimStXgle2xGtnU/olNtyvqEn7xSnpGBCOkZOZXvSxS+B+C2KgL
	yNGbSdB/V6GJWguCtaR5A0wEncuq/ty37oSgjA/orHpJHMbd+fXdFuhTGxSqRTUOdU376LWGp4Vbi
	i5Dfo0LKOaHPi5dADL2PvgY7GwY2AP8FLLOfsXnE7KEum7WSJzq5LfWlY65BwP3Y/bDFH21+sKL8I
	iBlR2meg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuROU-0000000HQVj-3OMn;
	Mon, 23 Feb 2026 08:34:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuROS-0000000HQUk-0hVI
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:34:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuROO-0003pS-7K; Mon, 23 Feb 2026 09:34:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuROM-002CHc-1m;
	Mon, 23 Feb 2026 09:34:11 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRON-00000000llL-3U3J;
	Mon, 23 Feb 2026 09:34:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Feb 2026 09:34:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-arm-mmu-v1-1-707d45f6f6e1@pengutronix.de>
References: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
In-Reply-To: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771835651; l=7141;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=EvqMZ9M5iLWO0mhRp0f0bpcSTgrwlrhl0Gt+q+d4iZc=;
 b=hZoUQmIhqZ/BmBUyDWzmo3hOUNDJ3QjllcKhCtCZcvU1wQaGxYcwop4hso0XyRUX5lV72so3w
 N0K8Q2Xu/uoC5MhzPw+dpIY9hNT852KqLYaMH4j3fZHmF5l9sbM1itZ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_003416_368754_DECEEB5C 
X-CRM114-Status: GOOD (  18.12  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Sonnet 4.5" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] mmu: add MAP_CACHED_RWX mapping type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

ARCH_MAP_CACHED_RWX seems to be the typical mapping for PBL and is used
by ARM32, ARM64 and RiscV. Drop the ARCH_ prefix and move it to the
generic mapping types.

Signed-off-by: Claude Sonnet 4.5 <noreply@anthropic.com>
---
 arch/arm/cpu/mmu-common.c    |  2 +-
 arch/arm/cpu/mmu-common.h    |  4 +---
 arch/arm/cpu/mmu_32.c        | 10 +++++-----
 arch/arm/cpu/mmu_64.c        |  8 ++++----
 arch/riscv/cpu/mmu.c         |  6 +++---
 arch/riscv/include/asm/mmu.h |  1 -
 include/mmu.h                |  1 +
 7 files changed, 15 insertions(+), 17 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 44c39dc048..0300bb9bc6 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -21,7 +21,7 @@ const char *map_type_tostr(maptype_t map_type)
 	map_type &= ~ARCH_MAP_FLAG_PAGEWISE;
 
 	switch (map_type) {
-	case ARCH_MAP_CACHED_RWX:	return "RWX";
+	case MAP_CACHED_RWX:		return "RWX";
 	case MAP_CACHED_RO:		return "RO";
 	case MAP_CACHED:		return "CACHED";
 	case MAP_UNCACHED:		return "UNCACHED";
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index b42c421ffd..3a3590ebb5 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -11,8 +11,6 @@
 #include <linux/sizes.h>
 #include <linux/bits.h>
 
-#define ARCH_MAP_CACHED_RWX	MAP_ARCH(2)
-
 #define ARCH_MAP_FLAG_PAGEWISE	BIT(31)
 
 struct device;
@@ -32,7 +30,7 @@ static inline maptype_t arm_mmu_maybe_skip_permissions(maptype_t map_type)
 	case MAP_CODE:
 	case MAP_CACHED:
 	case MAP_CACHED_RO:
-		return ARCH_MAP_CACHED_RWX;
+		return MAP_CACHED_RWX;
 	default:
 		return map_type;
 	}
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 4e569677e1..074fd1b0ed 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -302,7 +302,7 @@ static uint32_t get_pte_flags(maptype_t map_type)
 {
 	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
 		switch (map_type & MAP_TYPE_MASK) {
-		case ARCH_MAP_CACHED_RWX:
+		case MAP_CACHED_RWX:
 			return PTE_FLAGS_CACHED_V7_RWX;
 		case MAP_CACHED_RO:
 			return PTE_FLAGS_CACHED_RO_V7;
@@ -323,7 +323,7 @@ static uint32_t get_pte_flags(maptype_t map_type)
 		case MAP_CACHED_RO:
 		case MAP_CODE:
 			return PTE_FLAGS_CACHED_RO_V4;
-		case ARCH_MAP_CACHED_RWX:
+		case MAP_CACHED_RWX:
 		case MAP_CACHED:
 			return PTE_FLAGS_CACHED_V4;
 		case MAP_UNCACHED:
@@ -635,7 +635,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 * map the bulk of the memory as sections to avoid allocating too many page tables
 	 * at this early stage
 	 */
-	early_remap_range(membase, barebox_start - membase, ARCH_MAP_CACHED_RWX);
+	early_remap_range(membase, barebox_start - membase, MAP_CACHED_RWX);
 	/*
 	 * Map the remainder of the memory explicitly with two level page tables. This is
 	 * the place where barebox proper ends at. In barebox proper we'll remap the code
@@ -646,10 +646,10 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 * at the location being remapped.
 	 */
 	early_remap_range(barebox_start, barebox_size,
-			  ARCH_MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
+			  MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
 	early_remap_range(optee_start, OPTEE_SIZE, MAP_UNCACHED);
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
-			  ARCH_MAP_CACHED_RWX);
+			  MAP_CACHED_RWX);
 
 	__mmu_cache_on();
 }
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 20e185cf5e..2ed39abeb5 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -161,7 +161,7 @@ static unsigned long get_pte_attrs(maptype_t map_type)
 		return CACHED_MEM | PTE_BLOCK_RO;
 	case MAP_CACHED_RO:
 		return attrs_xn() | CACHED_MEM | PTE_BLOCK_RO;
-	case ARCH_MAP_CACHED_RWX:
+	case MAP_CACHED_RWX:
 		return CACHED_MEM;
 	default:
 		return ~0UL;
@@ -404,7 +404,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 */
 	early_init_range(2);
 
-	early_remap_range(membase, memsize, ARCH_MAP_CACHED_RWX);
+	early_remap_range(membase, memsize, MAP_CACHED_RWX);
 
 	/* Default location for OP-TEE: end of DRAM, leave OPTEE_SIZE space for it */
 	optee_membase = membase + memsize - OPTEE_SIZE;
@@ -417,7 +417,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 * executing code from it
 	 */
 	early_remap_range(barebox_start, barebox_size,
-		     ARCH_MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
+		     MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
 
 	/* OP-TEE might be at location specified in OP-TEE header */
 	optee_get_membase(&optee_membase);
@@ -425,7 +425,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
 
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
-			  ARCH_MAP_CACHED_RWX);
+			  MAP_CACHED_RWX);
 
 	mmu_enable();
 }
diff --git a/arch/riscv/cpu/mmu.c b/arch/riscv/cpu/mmu.c
index bafd597b69..38120782ab 100644
--- a/arch/riscv/cpu/mmu.c
+++ b/arch/riscv/cpu/mmu.c
@@ -125,14 +125,14 @@ static unsigned long flags_to_pte(maptype_t flags)
 
 	/*
 	 * Map barebox memory types to RISC-V PTE flags:
-	 * - ARCH_MAP_CACHED_RWX: read + write + execute (early boot, full RAM access)
+	 * - MAP_CACHED_RWX: read + write + execute (early boot, full RAM access)
 	 * - MAP_CODE: read + execute (text sections)
 	 * - MAP_CACHED_RO: read only (rodata sections)
 	 * - MAP_CACHED: read + write (data/bss sections)
 	 * - MAP_UNCACHED: read + write, uncached (device memory)
 	 */
 	switch (flags & MAP_TYPE_MASK) {
-	case ARCH_MAP_CACHED_RWX:
+	case MAP_CACHED_RWX:
 		/* Full access for early boot: R + W + X */
 		pte |= PTE_R | PTE_W | PTE_X;
 		break;
@@ -287,7 +287,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	 */
 	pr_debug("Remapping RAM 0x%08lx-0x%08lx as cached RWX...\n", membase, end);
 	for (addr = membase; addr < end; addr += RISCV_L1_SIZE)
-		create_megapage(addr, addr, ARCH_MAP_CACHED_RWX);
+		create_megapage(addr, addr, MAP_CACHED_RWX);
 
 	pr_debug("Page table setup complete, used %lu KB\n",
 		 (early_pt_idx * RISCV_PGSIZE) / 1024);
diff --git a/arch/riscv/include/asm/mmu.h b/arch/riscv/include/asm/mmu.h
index ba7068c493..98af92cc17 100644
--- a/arch/riscv/include/asm/mmu.h
+++ b/arch/riscv/include/asm/mmu.h
@@ -16,7 +16,6 @@
 #define MAP_ARCH_DEFAULT MAP_CACHED
 
 /* Architecture-specific memory type flags */
-#define ARCH_MAP_CACHED_RWX		MAP_ARCH(2)	/* Cached, RWX (early boot) */
 #define ARCH_MAP_FLAG_PAGEWISE		(1 << 16)	/* Force page-wise mapping */
 
 /*
diff --git a/include/mmu.h b/include/mmu.h
index 9f582f25e1..d0143f360a 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -10,6 +10,7 @@
 #define MAP_FAULT		2
 #define MAP_CODE		3
 #define MAP_CACHED_RO		4
+#define MAP_CACHED_RWX		6
 
 #ifdef CONFIG_ARCH_HAS_DMA_WRITE_COMBINE
 #define MAP_WRITECOMBINE	5

-- 
2.47.3




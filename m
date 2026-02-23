Delivery-date: Mon, 23 Feb 2026 09:35:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRPG-004lZO-2l
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:35:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRPG-00045B-Qu
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:35:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YipdWGdI009ndFw/iuJQzc/5q/wiySrE0zT+3TiLNWQ=; b=KO45sPCRroN8K9qKoXsiO6FGNS
	67AEog7sxo+zr0GtqdcDdyEJGfU34gPSYwJRnUOQRvVkoUoIwhRPwDeIFEZpyj554AzA+4sGqa5at
	6T/o+TWVyoEmnb8+RKNPHGUNjMipdepAnDvhMUyzD+vI2cbp/z+kjjQOTdXLk/9LtMR7DZTiwX4Yg
	erJ+CFrG9fMDdJhXQrg1hh7Wr/YLC1V/gNVlmw0v0ePhd3gwNh6pj0uavlBhVxQWuL5QoOxXkoyKR
	vDAXSZKgMs9eAQnoqHl4aAhkFXkL0hLHUFgy0RqRvk9bnmG3x27/XIwBGrj8M87stoPza+IiyTCcl
	jCyoPfOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuROY-0000000HQWT-1UxW;
	Mon, 23 Feb 2026 08:34:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuROS-0000000HQUf-0har
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:34:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuROO-0003pU-4d; Mon, 23 Feb 2026 09:34:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuROM-002CHd-1s;
	Mon, 23 Feb 2026 09:34:11 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRON-00000000llL-3UsX;
	Mon, 23 Feb 2026 09:34:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Feb 2026 09:34:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-arm-mmu-v1-2-707d45f6f6e1@pengutronix.de>
References: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
In-Reply-To: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771835651; l=5434;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iYXGR2QQw0sHjUzSvAIqbxdYjznRJFCeMwEbXNenaM8=;
 b=m+dYWdjFhxNjq9APGycxF/1Xl2Y2AHBtgI1qCV9qfV1CTH+jjQRLLUW7v3D8I8UwTINPcJzBc
 u2/BrJaVuFJDYGNJWpz4VUZy1gwzEgl3q64J2JkvO8/dOtb5jLYQoMF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_003416_220222_1FE31452 
X-CRM114-Status: GOOD (  20.77  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] ARM: MMU: drop forced pagewise mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We used to force pagewise mapping the the PBL because we couldn't break
a section into pages later when barebox is running from that area. We
now do the MMU setup for the barebox regions entirely in the PBL, so we
won't have to touch that again which makes the forced pagewise mapping
unnecessary. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c    |  2 --
 arch/arm/cpu/mmu-common.h    |  2 --
 arch/arm/cpu/mmu_32.c        | 15 ++-------------
 arch/arm/cpu/mmu_64.c        | 11 ++---------
 arch/riscv/include/asm/mmu.h |  3 ---
 5 files changed, 4 insertions(+), 29 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 0300bb9bc6..b84485a276 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -18,8 +18,6 @@
 
 const char *map_type_tostr(maptype_t map_type)
 {
-	map_type &= ~ARCH_MAP_FLAG_PAGEWISE;
-
 	switch (map_type) {
 	case MAP_CACHED_RWX:		return "RWX";
 	case MAP_CACHED_RO:		return "RO";
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index 3a3590ebb5..59abc1d9c8 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -11,8 +11,6 @@
 #include <linux/sizes.h>
 #include <linux/bits.h>
 
-#define ARCH_MAP_FLAG_PAGEWISE	BIT(31)
-
 struct device;
 
 void dma_inv_range(void *ptr, size_t size);
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 074fd1b0ed..a5ac9a3ff9 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -344,7 +344,6 @@ static uint32_t get_pmd_flags(maptype_t map_type)
 static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size,
 			       maptype_t map_type)
 {
-	bool force_pages = map_type & ARCH_MAP_FLAG_PAGEWISE;
 	bool mmu_on;
 	u32 virt_addr = (u32)_virt_addr;
 	u32 pte_flags, pmd_flags;
@@ -372,7 +371,7 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 
 		if (size >= PGDIR_SIZE && pgdir_size_aligned &&
 		    IS_ALIGNED(phys_addr, PGDIR_SIZE) &&
-		    !pgd_type_table(*pgd) && !force_pages) {
+		    !pgd_type_table(*pgd)) {
 			/*
 			 * TODO: Add code to discard a page table and
 			 * replace it with a section
@@ -636,17 +635,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 * at this early stage
 	 */
 	early_remap_range(membase, barebox_start - membase, MAP_CACHED_RWX);
-	/*
-	 * Map the remainder of the memory explicitly with two level page tables. This is
-	 * the place where barebox proper ends at. In barebox proper we'll remap the code
-	 * segments readonly/executable and the ro segments readonly/execute never. For this
-	 * we need the memory being mapped pagewise. We can't do the split up from section
-	 * wise mapping to pagewise mapping later because that would require us to do
-	 * a break-before-make sequence which we can't do when barebox proper is running
-	 * at the location being remapped.
-	 */
-	early_remap_range(barebox_start, barebox_size,
-			  MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
+	early_remap_range(barebox_start, barebox_size, MAP_CACHED_RWX);
 	early_remap_range(optee_start, OPTEE_SIZE, MAP_UNCACHED);
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
 			  MAP_CACHED_RWX);
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 2ed39abeb5..69d4b89dd8 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -195,7 +195,6 @@ static void split_block(uint64_t *pte, int level, bool bbm)
 static int __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
 			      maptype_t map_type, bool bbm)
 {
-	bool force_pages = map_type & ARCH_MAP_FLAG_PAGEWISE;
 	unsigned long attr = get_pte_attrs(map_type);
 	uint64_t *ttb = get_ttb();
 	uint64_t block_size;
@@ -237,7 +236,7 @@ static int __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
 				        IS_ALIGNED(addr, block_size) &&
 				        IS_ALIGNED(phys, block_size);
 
-			if ((force_pages && level == 3) || (!force_pages && block_aligned)) {
+			if (block_aligned) {
 				type = (level == 3) ?
 					PTE_TYPE_PAGE : PTE_TYPE_BLOCK;
 
@@ -411,13 +410,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 
 	barebox_size = optee_membase - barebox_start;
 
-	/*
-	 * map barebox area using pagewise mapping. We want to modify the XN/RO
-	 * attributes later, but can't switch from sections to pages later when
-	 * executing code from it
-	 */
-	early_remap_range(barebox_start, barebox_size,
-		     MAP_CACHED_RWX | ARCH_MAP_FLAG_PAGEWISE);
+	early_remap_range(barebox_start, barebox_size, MAP_CACHED_RWX);
 
 	/* OP-TEE might be at location specified in OP-TEE header */
 	optee_get_membase(&optee_membase);
diff --git a/arch/riscv/include/asm/mmu.h b/arch/riscv/include/asm/mmu.h
index 98af92cc17..cdc599bd51 100644
--- a/arch/riscv/include/asm/mmu.h
+++ b/arch/riscv/include/asm/mmu.h
@@ -15,9 +15,6 @@
 #define ARCH_HAS_REMAP
 #define MAP_ARCH_DEFAULT MAP_CACHED
 
-/* Architecture-specific memory type flags */
-#define ARCH_MAP_FLAG_PAGEWISE		(1 << 16)	/* Force page-wise mapping */
-
 /*
  * Remap a virtual address range with specified memory type (barebox proper).
  * Used by the generic remap infrastructure after barebox is fully relocated.

-- 
2.47.3




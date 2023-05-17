Delivery-date: Wed, 17 May 2023 11:05:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD62-0048aB-V9
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:05:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzD5y-0004nF-8l
	for lore@pengutronix.de; Wed, 17 May 2023 11:05:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M+MPxAJick5pikskck4Hsjp17ObmyjEelqqXvTSk31A=; b=pGwSmJ7MA9/e+GW4ZMAvsoWNDv
	GSOs3QQ0dbPWCVxcjNZdZ7mxoA9zpWZSJlC/G1+gdXcBa3AtNCSDrOnf7hSf7x+2Nl4fwAEl8OzP9
	WwgUevk2biyjTH9PUKZ4cseMGrU0QC92pBRPQYtxckwUrGnMXJuHLC1h6lMlRb3Hz4teD25X1cZTr
	LGUEkKlCNnb+DHwUB1H9NuRumJvgAt3JR4GgjOv0dnPOIS9KKGCqa0APCO8/iAF7y64Ak5vol0Gcy
	G4LuwKosds08/lGx2TJFyITJ3Dli//w2ldOqMeMnOvJ0RNkE42MAwqJYRkFIERn1DCVUVrlZgHa0T
	doP6bUvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4d-008yRi-1M;
	Wed, 17 May 2023 09:03:55 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Y-008yMt-14
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:03:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-0003zs-HV; Wed, 17 May 2023 11:03:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4T-000o7H-Pw; Wed, 17 May 2023 11:03:45 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4Q-00Gasi-4g; Wed, 17 May 2023 11:03:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:35 +0200
Message-Id: <20230517090340.3954615-30-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_020350_364677_C53E3598 
X-CRM114-Status: GOOD (  16.10  )
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
Subject: [PATCH v2 29/34] ARM: mmu32: add get_pte_flags, get_pmd_flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The mmu code has several variables containing the pte/pmd values for
different mapping types. These variables only contain the correct values
after initializing them which makes it a bit hard to follow when the
code is used in both PBL and barebox proper.

Instead of using variables calculate the values when they are needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 82 +++++++++++++++++++++----------------------
 1 file changed, 41 insertions(+), 41 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 0af89ac39c..829139574c 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -57,11 +57,6 @@ static inline void tlb_invalidate(void)
  * PTE flags to set cached and uncached areas.
  * This will be determined at runtime.
  */
-static uint32_t pte_flags_cached;
-static uint32_t pte_flags_wc;
-static uint32_t pte_flags_uncached;
-static uint32_t pgd_flags_wc;
-static uint32_t pgd_flags_uncached;
 
 #define PTE_MASK ((1 << 12) - 1)
 
@@ -215,29 +210,48 @@ static u32 pte_flags_to_pmd(u32 pte)
 	return pmd;
 }
 
-int arch_remap_range(void *start, size_t size, unsigned flags)
+static uint32_t get_pte_flags(int map_type)
+{
+	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
+		switch (map_type) {
+		case MAP_CACHED:
+			return PTE_FLAGS_CACHED_V7;
+		case MAP_UNCACHED:
+			return PTE_FLAGS_UNCACHED_V7;
+		case ARCH_MAP_WRITECOMBINE:
+			return PTE_FLAGS_WC_V7;
+		case MAP_FAULT:
+		default:
+			return 0x0;
+		}
+	} else {
+		switch (map_type) {
+		case MAP_CACHED:
+			return PTE_FLAGS_CACHED_V4;
+		case MAP_UNCACHED:
+		case ARCH_MAP_WRITECOMBINE:
+			return PTE_FLAGS_UNCACHED_V4;
+		case MAP_FAULT:
+		default:
+			return 0x0;
+		}
+	}
+}
+
+static uint32_t get_pmd_flags(int map_type)
+{
+	return pte_flags_to_pmd(get_pte_flags(map_type));
+}
+
+int arch_remap_range(void *start, size_t size, unsigned map_type)
 {
 	u32 addr = (u32)start;
-	u32 pte_flags;
+	u32 pte_flags, pmd_flags;
 
 	BUG_ON(!IS_ALIGNED(addr, PAGE_SIZE));
 
-	switch (flags) {
-	case MAP_CACHED:
-		pte_flags = pte_flags_cached;
-		break;
-	case MAP_UNCACHED:
-		pte_flags = pte_flags_uncached;
-		break;
-	case MAP_FAULT:
-		pte_flags = 0x0;
-		break;
-	case ARCH_MAP_WRITECOMBINE:
-		pte_flags = pte_flags_wc;
-		break;
-	default:
-		return -EINVAL;
-	}
+	pte_flags = get_pte_flags(map_type);
+	pmd_flags = pte_flags_to_pmd(pte_flags);
 
 	while (size) {
 		const bool pgdir_size_aligned = IS_ALIGNED(addr, PGDIR_SIZE);
@@ -251,7 +265,7 @@ int arch_remap_range(void *start, size_t size, unsigned flags)
 			 * replace it with a section
 			 */
 			chunk = PGDIR_SIZE;
-			*pgd = addr | pte_flags_to_pmd(pte_flags) | PMD_TYPE_SECT;
+			*pgd = addr | pmd_flags | PMD_TYPE_SECT;
 			dma_flush_range(pgd, sizeof(*pgd));
 		} else {
 			unsigned int num_ptes;
@@ -309,7 +323,7 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 	unsigned long start = (unsigned long)_start, sec;
 
 	for (sec = start; sec < start + size; sec += PGDIR_SIZE, phys += PGDIR_SIZE)
-		ttb[pgd_index(sec)] = phys | pgd_flags_uncached;
+		ttb[pgd_index(sec)] = phys | get_pmd_flags(MAP_UNCACHED);
 
 	dma_flush_range(ttb, 0x4000);
 	tlb_invalidate();
@@ -350,9 +364,9 @@ static void create_vector_table(unsigned long adr)
 		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
-		arm_create_pte(adr, pte_flags_uncached);
+		arm_create_pte(adr, get_pte_flags(MAP_UNCACHED));
 		pte = find_pte(adr);
-		*pte = (u32)vectors | PTE_TYPE_SMALL | pte_flags_cached;
+		*pte = (u32)vectors | PTE_TYPE_SMALL | get_pte_flags(MAP_CACHED);
 	}
 
 	arm_fixup_vectors();
@@ -465,20 +479,6 @@ void __mmu_init(bool mmu_on)
 {
 	struct memory_bank *bank;
 
-	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
-		pte_flags_cached = PTE_FLAGS_CACHED_V7;
-		pte_flags_wc = PTE_FLAGS_WC_V7;
-		pgd_flags_wc = PGD_FLAGS_WC_V7;
-		pgd_flags_uncached = PGD_FLAGS_UNCACHED_V7;
-		pte_flags_uncached = PTE_FLAGS_UNCACHED_V7;
-	} else {
-		pte_flags_cached = PTE_FLAGS_CACHED_V4;
-		pte_flags_wc = PTE_FLAGS_UNCACHED_V4;
-		pgd_flags_wc = PMD_SECT_DEF_UNCACHED;
-		pgd_flags_uncached = PMD_SECT_DEF_UNCACHED;
-		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
-	}
-
 	/* Clear unpredictable bits [13:0] */
 	ttb = (uint32_t *)(get_ttbr() & ~0x3fff);
 
-- 
2.39.2




Delivery-date: Fri, 12 May 2023 13:12:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQh4-00F2Y5-Cc
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:12:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgz-0005No-Qj
	for lore@pengutronix.de; Fri, 12 May 2023 13:12:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4VCnEthEfLU/GnGfCqpNIsemGNMiw4oWE5A2yQuyzpQ=; b=y4aqoWLsAc8O17dIn1JTDx/pk7
	DiXehvXNLOMp989BjXb1UiDUzNTt2d+XgGsJySi3hrMMHgPq0dTnfo0xDDloFYULPw1jtM9tVJy0A
	lBkZKTHwT68Me9XlX3+ey6E4rPYmBB5w10kyFewSzx9107yaiG1QFXKMoPt/mUkmmhMT9/R8/e/9M
	AI/9BKch9ai8pja4epW6aiOigTkf/8G69ipZVNjcRpMJNJed1RJyxec/bLDuyvt5r0FonfO4duMZZ
	tDa15vl/03SqZ918wl4tAUFS9ht2jd5R6ZhoxCmQi/hveHs31ebmby610jvhu/jMYqH2mtUfUqakS
	Z5brYxSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfp-00BkZU-1E;
	Fri, 12 May 2023 11:10:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfM-00Bk1z-0Y
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:10:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4VCnEthEfLU/GnGfCqpNIsemGNMiw4oWE5A2yQuyzpQ=; b=BNtw6KDCLfqHnLh9TNo8Bt3brV
	yJOuuabotWviUMFm0tx/Nj4oDh9TD1HwgMYhKKqjBCHgNLKZDXxlEY1HS1zxclbp9zLamrc/Z8PUp
	j0iAuUzmczC/FQTxTggwkZ5yFj4MjWDpa5HMf3vZRTLU307vT4swly67cEZlve/clfshPycBz1eTt
	28Xh+uXsxMtvD1ZY0RINq8BvPGgxUofFBh5r2GumEaJUFECNxmBRKZusUn3odDrT4i9U+X7pYueNK
	sHPtFo8GpJn15UckMgykn+Wc/2cj6C1JJpXzvwKEVKLqcqzPF402aopPnEX5vujfws+EPa8Wn04YR
	IlySsbyA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfF-009831-20
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf9-0003fX-1r; Fri, 12 May 2023 13:10:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-002wk3-BW; Fri, 12 May 2023 13:10:14 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055F9-IK; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:10:08 +0200
Message-Id: <20230512111008.1120833-28-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121021_764361_5A18B393 
X-CRM114-Status: GOOD (  19.48  )
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
Subject: [PATCH 27/27] ARM: mmu64: Use two level pagetables in early code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far we used 1GiB sized sections in the early MMU setup. This has
the disadvantage that we can't use the MMU in early code when we
require a finer granularity. Rockchip for example keeps TF-A code
in the lower memory so the code just skipped MMU initialization.
Also we can't properly map the OP-TEE space at the end of SDRAM non
executable.

With this patch we now use two level page tables and can map with 4KiB
granularity.

The MMU setup in barebox proper changes as well. Instead of disabling
the MMU for reconfiguration we can now keep the MMU enabled and just
add the mappings for SDRAM banks not known to the early code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 97 ++++++++++---------------------------------
 1 file changed, 21 insertions(+), 76 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 4b75be621d..3f9b52bbdb 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -22,7 +22,10 @@
 
 #include "mmu_64.h"
 
-static uint64_t *ttb;
+static uint64_t *get_ttb(void)
+{
+	return (uint64_t *)get_ttbr(current_el());
+}
 
 static void set_table(uint64_t *pt, uint64_t *table_addr)
 {
@@ -42,7 +45,7 @@ static uint64_t *alloc_pte(void)
 	if (idx * GRANULE_SIZE >= ARM_EARLY_PAGETABLE_SIZE)
 		return NULL;
 
-	return (void *)ttb + idx * GRANULE_SIZE;
+	return get_ttb() + idx * GRANULE_SIZE;
 }
 #else
 static uint64_t *alloc_pte(void)
@@ -63,7 +66,7 @@ static __maybe_unused uint64_t *find_pte(uint64_t addr)
 	uint64_t idx;
 	int i;
 
-	pte = ttb;
+	pte = get_ttb();
 
 	for (i = 0; i < 4; i++) {
 		block_shift = level2shift(i);
@@ -112,6 +115,7 @@ static void split_block(uint64_t *pte, int level)
 static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 			    uint64_t attr)
 {
+	uint64_t *ttb = get_ttb();
 	uint64_t block_size;
 	uint64_t block_shift;
 	uint64_t *pte;
@@ -121,9 +125,6 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 	uint64_t type;
 	int level;
 
-	if (!ttb)
-		arm_mmu_not_initialized_error();
-
 	addr = virt;
 
 	attr &= ~PTE_TYPE_MASK;
@@ -192,37 +193,25 @@ static void mmu_enable(void)
 void __mmu_init(bool mmu_on)
 {
 	struct memory_bank *bank;
-	unsigned int el;
-
-	if (mmu_on)
-		mmu_disable();
-
-	ttb = alloc_pte();
-	el = current_el();
-	set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el, BITS_PER_VA),
-			  MEMORY_ATTRIBUTES);
 
-	pr_debug("ttb: 0x%p\n", ttb);
+	reserve_sdram_region("OP-TEE", 0xf0000000 - OPTEE_SIZE, OPTEE_SIZE);
 
-	/* create a flat mapping */
-	arch_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
-
-	/* Map sdram cached. */
 	for_each_memory_bank(bank) {
 		struct resource *rsv;
+		resource_size_t pos;
 
-		arch_remap_range((void *)bank->start, bank->size, MAP_CACHED);
+		pos = bank->start;
 
 		for_each_reserved_region(bank, rsv) {
-			arch_remap_range((void *)resource_first_page(rsv),
-					 resource_count_pages(rsv), MAP_UNCACHED);
+			arch_remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
+			pos = rsv->end + 1;
 		}
+
+		arch_remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
 	}
 
 	/* Make zero page faulting to catch NULL pointer derefs */
 	zero_page_faulting();
-
-	mmu_enable();
 }
 
 void mmu_disable(void)
@@ -256,42 +245,6 @@ void dma_flush_range(void *ptr, size_t size)
 	v8_flush_dcache_range(start, end);
 }
 
-static void early_create_sections(void *ttb, uint64_t virt, uint64_t phys,
-				  uint64_t size, uint64_t attr)
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
 void mmu_early_enable(unsigned long membase, unsigned long memsize)
 {
 	int el;
@@ -299,24 +252,16 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 
 	pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
 
-	/*
-	 * For the early code we only create level 1 pagetables which only
-	 * allow for a 1GiB granularity. If our membase is not aligned to that
-	 * bail out without enabling the MMU.
-	 */
-	if (membase & ((1ULL << level2shift(1)) - 1))
-		return;
+	el = current_el();
+	set_ttbr_tcr_mair(el, ttb, calc_tcr(el, BITS_PER_VA), MEMORY_ATTRIBUTES);
 
 	memset((void *)ttb, 0, GRANULE_SIZE);
 
-	el = current_el();
-	set_ttbr_tcr_mair(el, ttb, calc_tcr(el, EARLY_BITS_PER_VA), MEMORY_ATTRIBUTES);
-	early_create_sections((void *)ttb, 0, 0, 1UL << (EARLY_BITS_PER_VA - 1),
-			attrs_uncached_mem());
-	early_create_sections((void *)ttb, membase, membase, memsize - OPTEE_SIZE, CACHED_MEM);
-	tlb_invalidate();
-	isb();
-	set_cr(get_cr() | CR_M);
+	arch_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
+	arch_remap_range((void *)membase, memsize - OPTEE_SIZE, MAP_CACHED);
+	arch_remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
+
+	mmu_enable();
 }
 
 void mmu_early_disable(void)
-- 
2.39.2




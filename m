Delivery-date: Wed, 17 May 2023 11:41:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfF-0049q3-WA
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfB-0002gg-Sg
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Y56x4ouegr0qbI/DmBgnyFqxhDP4bOHUApTRpfnL8U=; b=n5gWFY4gx+tiTpYuoZFMavneux
	1/xtSkMtjKIMq4SJ49VaIrEUYH2wjXZGLYlHW44xknEVSDDpeSWyCy3AXkEF+S0UUXGNABKChYJIM
	/dpZaVdPA5d/1dPytrstECwFk1u9BphXlK2HzAgyduL1hQJ7/ldGFEebdkZ8+2da8Ifsyq1mSlPi2
	IQNQ7lhr8pwQMUqzm2YyIPCcXj857TfOeeJ3s6rF2FAmooXLQKo8cehAtehBIBYfXWgxpbmmFQvzQ
	6llhmuEEMBnID++yXobAkcWwAIuUMyEuAKp28zzDZeoIb4i17szSK4GZ6HG/+hG8bE+hLgwi80f3g
	r3mFJeSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDdz-0096L9-2f;
	Wed, 17 May 2023 09:40:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDdu-0096Gj-2U
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2Y56x4ouegr0qbI/DmBgnyFqxhDP4bOHUApTRpfnL8U=; b=dpsRnLmdxejSPZac/tMEP0djkH
	9CFKCBwFJCdurMChG+5Nk/gfSOHnOfgY2p7bTF+gmUFb8zfcbAobgBXhMMmU2TmPaHHFj4flhfqyr
	+0jGBaqt6cUEO2cHZGMVPrI2+ya3KHHp/vfGKfxoPskfWihwHUW0kMk/gIXSSMcDJ72Ex4i7THmtm
	eFYrk8jfZCpDfXnjra3YOCGQaSn75vKv7c6ZP9/m34NJEn08i0JCARTMLL6d9xbQ4suLj6h8yBZ/z
	zuWcBVrFqWkZRXZHGaXceFoPzctXL2xwi8elzXCfKdzIuphZeufdF3n7XV2C31LstNZ/G/BqP105u
	Dwgi2PpQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Z-00DAy5-1w
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:04:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4W-00043k-V2; Wed, 17 May 2023 11:03:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4W-000o8P-9e; Wed, 17 May 2023 11:03:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00GauC-9J; Wed, 17 May 2023 11:03:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:40 +0200
Message-Id: <20230517090340.3954615-35-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100351_931567_E919731F 
X-CRM114-Status: GOOD (  19.71  )
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
Subject: [PATCH v2 34/34] ARM: mmu64: Use two level pagetables in early code
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
 arch/arm/cpu/mmu_64.c | 97 +++++++++----------------------------------
 1 file changed, 20 insertions(+), 77 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index d32eecf144..2f9b5098a3 100644
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
@@ -192,37 +193,23 @@ static void mmu_enable(void)
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
-
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
@@ -256,42 +243,6 @@ void dma_flush_range(void *ptr, size_t size)
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
@@ -299,24 +250,16 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 
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




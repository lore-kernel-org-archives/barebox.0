Delivery-date: Mon, 04 Aug 2025 20:29:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uizwc-0071yI-0q
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 20:29:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uizwb-0007M9-Gy
	for lore@pengutronix.de; Mon, 04 Aug 2025 20:29:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QXZH7pBfiH/O8y1zT9oZ2t7/8CQ3MOhLSjgL07CVumk=; b=seWERqUkYnbtzW1ItHI6qEoS5S
	raY0YRn1PdGeGkktj/Gc03IZgdbVZied/eYT9SgGOn3izlfMBvK9qBrJ4AbXZ3Z1qddVC9dcFFj1G
	yaG5XFmE4mViG7PTkTeAvzKaocsHTIk9PICTtua3BQgd/18D2ESxbK8JaOcIHbxv5DAklU2rPKUNL
	mrwN4Q+DRsu3oasc5wCVwWBLie/AGl5Adr2+1jztwA9hksseCyFSNcNC4aaUFEHYmPnL4DM98CDA3
	SXC/ZkkqOd4c62DiZ3Z4K9K6Q2HQ68iyigEIoySCLxuBJMJpIgfG4yh6ujxE+6mwJGjxTos2fUAlX
	6Jpwn4Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uizwJ-0000000BA0u-1zqL;
	Mon, 04 Aug 2025 18:29:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytU-0000000B5KN-1R59
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 17:22:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uiytT-0000su-1q; Mon, 04 Aug 2025 19:22:39 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  4 Aug 2025 19:22:32 +0200
Message-Id: <20250804172233.2158462-13-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250804172233.2158462-1-a.fatoum@barebox.org>
References: <20250804172233.2158462-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_102240_381656_4FC55708 
X-CRM114-Status: GOOD (  16.75  )
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
Subject: [PATCH v4 12/13] ARM: mmu64: map memory for barebox proper pagewise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

Map the remainder of the memory explicitly with two level page tables. This is
the place where barebox proper ends at. In barebox proper we'll remap the code
segments readonly/executable and the ro segments readonly/execute never. For this
we need the memory being mapped pagewise. We can't do the split up from section
wise mapping to pagewise mapping later because that would require us to do
a break-before-make sequence which we can't do when barebox proper is running
at the location being remapped.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu_64.c | 40 +++++++++++++++++++++++++++++-----------
 1 file changed, 29 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 54d4a4e9c638..6fd767d983b7 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -10,6 +10,7 @@
 #include <init.h>
 #include <mmu.h>
 #include <errno.h>
+#include <range.h>
 #include <zero_page.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
@@ -128,7 +129,7 @@ static void split_block(uint64_t *pte, int level)
 }
 
 static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
-			    uint64_t attr)
+			    uint64_t attr, bool force_pages)
 {
 	uint64_t *ttb = get_ttb();
 	uint64_t block_size;
@@ -151,14 +152,18 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 	while (size) {
 		table = ttb;
 		for (level = 0; level < 4; level++) {
+			bool block_aligned;
 			block_shift = level2shift(level);
 			idx = (addr & level2mask(level)) >> block_shift;
 			block_size = (1ULL << block_shift);
 
 			pte = table + idx;
 
-			if (size >= block_size && IS_ALIGNED(addr, block_size) &&
-			    IS_ALIGNED(phys, block_size)) {
+			block_aligned = size >= block_size &&
+				        IS_ALIGNED(addr, block_size) &&
+				        IS_ALIGNED(phys, block_size);
+
+			if ((force_pages && level == 3) || (!force_pages && block_aligned)) {
 				type = (level == 3) ?
 					PTE_TYPE_PAGE : PTE_TYPE_BLOCK;
 
@@ -299,14 +304,14 @@ static unsigned long get_pte_attrs(unsigned flags)
 	}
 }
 
-static void early_remap_range(uint64_t addr, size_t size, unsigned flags)
+static void early_remap_range(uint64_t addr, size_t size, unsigned flags, bool force_pages)
 {
 	unsigned long attrs = get_pte_attrs(flags);
 
 	if (WARN_ON(attrs == ~0UL))
 		return;
 
-	create_sections(addr, addr, size, attrs);
+	create_sections(addr, addr, size, attrs, force_pages);
 }
 
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned flags)
@@ -319,7 +324,7 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsign
 	if (flags != MAP_CACHED)
 		flush_cacheable_pages(virt_addr, size);
 
-	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs);
+	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs, false);
 
 	return 0;
 }
@@ -416,7 +421,7 @@ static void init_range(size_t total_level0_tables)
 	uint64_t addr = 0;
 
 	while (total_level0_tables--) {
-		early_remap_range(addr, L0_XLAT_SIZE, MAP_UNCACHED);
+		early_remap_range(addr, L0_XLAT_SIZE, MAP_UNCACHED, false);
 		split_block(ttb, 0);
 		addr += L0_XLAT_SIZE;
 		ttb++;
@@ -427,6 +432,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 {
 	int el;
 	u64 optee_membase;
+	unsigned long barebox_size;
 	unsigned long ttb = arm_mem_ttb(membase + memsize);
 
 	if (get_cr() & CR_M)
@@ -447,14 +453,26 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 */
 	init_range(2);
 
-	early_remap_range(membase, memsize, MAP_CACHED);
+	early_remap_range(membase, memsize, MAP_CACHED, false);
 
-	if (optee_get_membase(&optee_membase))
+	if (optee_get_membase(&optee_membase)) {
                 optee_membase = membase + memsize - OPTEE_SIZE;
 
-	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
+		barebox_size = optee_membase - barebox_start;
 
-	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
+		early_remap_range(optee_membase - barebox_size, barebox_size,
+			     ARCH_MAP_CACHED_RWX, true);
+	} else {
+		barebox_size = membase + memsize - barebox_start;
+
+		early_remap_range(membase + memsize - barebox_size, barebox_size,
+			     ARCH_MAP_CACHED_RWX, true);
+	}
+
+	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT, false);
+
+	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext),
+			  MAP_CACHED, false);
 
 	mmu_enable();
 }
-- 
2.39.5




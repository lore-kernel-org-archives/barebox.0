Delivery-date: Wed, 21 May 2025 19:42:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHnSE-001Eiv-2r
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 19:42:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHnSD-0006ur-Mf
	for lore@pengutronix.de; Wed, 21 May 2025 19:42:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d9Skbmc+EBnXZSN7++GXoFogKQM40M3tlYpv4eW31VU=; b=soCeX8W1mvCKEbmzOoRwfbWJY7
	wyUL97/0GYHylYix7yahdb8sNcYgw2b4Hx7+5D1wUyQfe7BJWV6svQ5hiObVfwrWQLrR9GB+53A9B
	HSx8XTHOZ1BAtVjtV1XGY+5rOu8O4ImVCchL9PNxs2tjwzjBOYxEhnEQGOd8T9Q8OzTpabEn8QLT0
	nLokCA/N3y/ry6JlQyr/UgMw/YiYVAWS9w7pss9z5K/GE/jV87+g0iDsizFfwlfUREn/Gfqw7tQxY
	R2ignFV56Ga/0D2BKXyG0EoMllhhygD0aEEO+tJGKkunnbx+uOmapEP70PboUs32+xUEKQJrqGqZs
	QTgInhkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnRd-0000000Gb39-3ZzP;
	Wed, 21 May 2025 17:41:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnRD-0000000GayA-17wu
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 17:41:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-0006S6-Ei; Wed, 21 May 2025 19:41:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-000bYK-0p;
	Wed, 21 May 2025 19:41:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-006bCu-24;
	Wed, 21 May 2025 19:41:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 May 2025 19:41:04 +0200
Message-Id: <20250521174104.1570239-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250521174104.1570239-1-a.fatoum@pengutronix.de>
References: <20250521174104.1570239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_104107_489954_E29754DF 
X-CRM114-Status: GOOD (  29.06  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] WIP: break before make and don't invalidate uncached regions being remapped
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This needs to be split up and cleaned up, but I include it anyway
to show what needs to be done still, here for arm32 and for arm64 as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 253 +++++++++++++++++++++++++++++++++---------
 1 file changed, 201 insertions(+), 52 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 9f50194c7c2b..d4ed298ac64f 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -70,6 +70,45 @@ static void set_pte(uint32_t *pt, uint32_t val)
 	WRITE_ONCE(*pt, val);
 }
 
+static void set_pte_range(uint32_t *virt, phys_addr_t phys,
+			  size_t count, uint32_t flags,
+			  bool break_before_make)
+{
+	bool made = false;
+
+	if (!break_before_make)
+		goto write_attrs;
+
+	if ((flags & PTE_TYPE_MASK) == PTE_TYPE_FAULT)
+		phys = 0;
+
+	for (int i = 0; i < count; i++) {
+		if (READ_ONCE(virt[i]) == ((phys + i * PAGE_SIZE) | flags))
+			continue;
+		set_pte(&virt[i], PTE_TYPE_FAULT);
+		made = true;
+	}
+
+	if (made) {
+		dma_flush_range( virt, count * sizeof(u32));
+		tlb_invalidate();
+	} else {
+		break_before_make = false;
+	}
+
+write_attrs:
+	for (int i = 0; i < count; i++, phys += PAGE_SIZE)
+		set_pte(&virt[i], phys | flags);
+
+	dma_flush_range(virt, count * sizeof(u32));
+
+#if 0
+	pr_notice("%s(0x%08x+0x%zx -> 0x%08x, flags=0x%x%s)\n", __func__,
+		  (unsigned)virt, count, phys, flags,
+		  made ? " [BBM]" : break_before_make ? " [BBM, but unneeded]" : "");
+#endif
+}
+
 #ifdef __PBL__
 static uint32_t *alloc_pte(void)
 {
@@ -89,30 +128,47 @@ static uint32_t *alloc_pte(void)
 }
 #endif
 
-static u32 *find_pte(unsigned long adr)
+static u32 *__find_pte(uint32_t *ttb, unsigned long adr, int *level)
 {
+	u32 *pgd = (u32 *)&ttb[pgd_index(adr)];
 	u32 *table;
-	uint32_t *ttb = get_ttb();
 
-	if (!pgd_type_table(ttb[pgd_index(adr)]))
-		return NULL;
+	if (!pgd_type_table(*pgd)) {
+		*level = 1;
+		return pgd;
+	}
+
+	*level = 2;
 
 	/* find the coarse page table base address */
-	table = (u32 *)(ttb[pgd_index(adr)] & ~0x3ff);
+	table = (u32 *)(*pgd & ~0x3ff);
 
 	/* find second level descriptor */
 	return &table[(adr >> PAGE_SHIFT) & 0xff];
 }
 
+static u32 *find_pte(unsigned long adr)
+{
+	int level;
+	u32 *pte = __find_pte(get_ttb(), adr, &level);
+
+	return level == 2 ? pte : NULL;
+}
+
+static void dma_flush_range_end(unsigned long start, unsigned long end)
+{
+	__dma_flush_range(start, end);
+
+	if (outer_cache.flush_range)
+		outer_cache.flush_range(start, end);
+}
+
 void dma_flush_range(void *ptr, size_t size)
 {
 	unsigned long start = (unsigned long)ptr;
 	unsigned long end = start + size;
 
-	__dma_flush_range(start, end);
-
-	if (outer_cache.flush_range)
-		outer_cache.flush_range(start, end);
+	dma_flush_range_end(start, end);
 }
 
 void dma_inv_range(void *ptr, size_t size)
@@ -132,11 +188,11 @@ void dma_inv_range(void *ptr, size_t size)
  * Not yet exported, but may be later if someone finds use for it.
  */
 static u32 *arm_create_pte(unsigned long virt, unsigned long phys,
-			   uint32_t flags)
+			   uint32_t flags, bool break_before_make)
 {
 	uint32_t *ttb = get_ttb();
 	u32 *table;
-	int i, ttb_idx;
+	int ttb_idx;
 
 	virt = ALIGN_DOWN(virt, PGDIR_SIZE);
 	phys = ALIGN_DOWN(phys, PGDIR_SIZE);
@@ -145,16 +201,11 @@ static u32 *arm_create_pte(unsigned long virt, unsigned long phys,
 
 	ttb_idx = pgd_index(virt);
 
-	for (i = 0; i < PTRS_PER_PTE; i++) {
-		set_pte(&table[i], phys | PTE_TYPE_SMALL | flags);
-		virt += PAGE_SIZE;
-		phys += PAGE_SIZE;
-	}
-	dma_flush_range(table, PTRS_PER_PTE * sizeof(u32));
+	set_pte_range(table, phys, PTRS_PER_PTE, PTE_TYPE_SMALL | flags,
+		      break_before_make);
 
-	// TODO break-before-make missing
-	set_pte(&ttb[ttb_idx], (unsigned long)table | PMD_TYPE_TABLE);
-	dma_flush_range(&ttb[ttb_idx], sizeof(u32));
+	set_pte_range(&ttb[ttb_idx], (unsigned long)table, 1,
+		      PMD_TYPE_TABLE, break_before_make);
 
 	return table;
 }
@@ -243,6 +294,22 @@ static uint32_t get_pte_flags(int map_type)
 	}
 }
 
+static const char *map_type_tostr(int map_type)
+{
+	switch (map_type) {
+	case MAP_CACHED:
+		return "CACHED";
+	case MAP_UNCACHED:
+		return "UNCACHED";
+	case ARCH_MAP_WRITECOMBINE:
+		return "WRITECOMBINE";
+	case MAP_FAULT:
+		return "FAULT";
+	default:
+		return "<unknown>";
+	}
+}
+
 static uint32_t get_pmd_flags(int map_type)
 {
 	return pte_flags_to_pmd(get_pte_flags(map_type));
@@ -250,6 +317,7 @@ static uint32_t get_pmd_flags(int map_type)
 
 static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
 {
+	bool mmu_on;
 	u32 virt_addr = (u32)_virt_addr;
 	u32 pte_flags, pmd_flags;
 	uint32_t *ttb = get_ttb();
@@ -262,6 +330,13 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 
 	size = PAGE_ALIGN(size);
 
+	mmu_on = get_cr() & CR_M;
+
+	pr_info("[MMU %s]remapping 0x%08x+0x%zx: phys 0x%08lx, type %s\n",
+		  get_cr() & CR_M ? " ON" : "OFF",
+		  virt_addr, size, (ulong)phys_addr,
+		  map_type_tostr(map_type));
+
 	while (size) {
 		const bool pgdir_size_aligned = IS_ALIGNED(virt_addr, PGDIR_SIZE);
 		u32 *pgd = (u32 *)&ttb[pgd_index(virt_addr)];
@@ -270,22 +345,20 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 		if (size >= PGDIR_SIZE && pgdir_size_aligned &&
 		    IS_ALIGNED(phys_addr, PGDIR_SIZE) &&
 		    !pgd_type_table(*pgd)) {
-			u32 val;
+			u32 flags;
 			/*
 			 * TODO: Add code to discard a page table and
 			 * replace it with a section
 			 */
 			chunk = PGDIR_SIZE;
-			val = phys_addr | pmd_flags;
+			flags = pmd_flags;
 			if (map_type != MAP_FAULT)
-				val |= PMD_TYPE_SECT;
-			// TODO break-before-make missing
-			set_pte(pgd, val);
-			dma_flush_range(pgd, sizeof(*pgd));
+				flags |= PMD_TYPE_SECT;
+			set_pte_range(pgd, phys_addr, 1, flags, mmu_on);
 		} else {
 			unsigned int num_ptes;
 			u32 *table = NULL;
-			unsigned int i;
+			u32 flags;
 			u32 *pte;
 			/*
 			 * We only want to cover pages up until next
@@ -313,24 +386,16 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 				 * create a new page table for it
 				 */
 				table = arm_create_pte(virt_addr, phys_addr,
-						       pmd_flags_to_pte(*pgd));
+						       pmd_flags_to_pte(*pgd), mmu_on);
 				pte = find_pte(virt_addr);
 				BUG_ON(!pte);
 			}
 
-			for (i = 0; i < num_ptes; i++) {
-				u32 val;
+			flags = pte_flags;
+			if (map_type != MAP_FAULT)
+				flags |= PTE_TYPE_SMALL;
 
-				val = phys_addr + i * PAGE_SIZE;
-				val |= pte_flags;
-				if (map_type != MAP_FAULT)
-					val |= PTE_TYPE_SMALL;
-
-				// TODO break-before-make missing
-				set_pte(&pte[i], val);
-			}
-
-			dma_flush_range(pte, num_ptes * sizeof(u32));
+			set_pte_range(pte, phys_addr, num_ptes, flags, mmu_on);
 		}
 
 		virt_addr += chunk;
@@ -345,12 +410,99 @@ static void early_remap_range(u32 addr, size_t size, unsigned map_type)
 	__arch_remap_range((void *)addr, addr, size, map_type);
 }
 
+static size_t granule_size(int level)
+{
+	switch (level) {
+	default:
+	case 1:
+		return PGDIR_SIZE;
+	case 2:
+		return PAGE_SIZE;
+	}
+}
+
+static bool pte_is_cacheable(uint32_t pte, int level)
+{
+	return	(level == 2 && (pte & PTE_CACHEABLE)) ||
+		(level == 1 && (pte & PMD_SECT_CACHEABLE));
+}
+
+/**
+ * flush_cacheable_pages - Flush only the cacheable pages in a region
+ * @start: Starting virtual address of the range.
+ * @end:   Ending virtual address of the range.
+ *
+ * This function walks the page table and flushes the data caches for the
+ * specified range only if the memory is marked as normal cacheable in the
+ * page tables. If a non-cacheable or non-normal page is encountered,
+ * it's skipped.
+ */
+static void flush_cacheable_pages(void *start, size_t size)
+{
+	u32 flush_start = ~0UL, flush_end = ~0UL;
+	u32 region_start, region_end;
+	size_t block_size;
+	u32 *ttb;
+
+	region_start = PAGE_ALIGN_DOWN((ulong)start);
+	region_end = PAGE_ALIGN(region_start + size);
+
+	ttb = get_ttb();
+
+	/*
+	 * TODO: This loop could be made more optimal by inlining the page walk,
+	 * so we need not restart address translation from the top every time.
+	 *
+	 * The hope is that with the page tables being cached and the
+	 * windows being remapped being small, the overhead compared to
+	 * actually flushing the ranges isn't too significant.
+	 */
+	for (u32 addr = region_start; addr < region_end; addr += block_size) {
+		int level;
+		u32 *pte = __find_pte(ttb, addr, &level);
+
+		block_size = granule_size(level);
+
+		if (!pte || !pte_is_cacheable(*pte, level))
+			continue;
+
+		if (flush_end == addr) {
+			/*
+			 * While it's safe to flush the whole block_size,
+			 * it's unnecessary time waste to go beyond region_end.
+			 */
+			flush_end = min(flush_end + block_size, region_end);
+			continue;
+		}
+
+		/*
+		 * We don't have a previous contiguous flush area to append to.
+		 * If we recorded any area before, let's flush it now
+		 */
+		if (flush_start != ~0U) {
+			pr_notice("flushing %x-%x\n", flush_start, flush_end);
+			dma_flush_range_end(flush_start, flush_end);
+		}
+
+		/* and start the new contiguous flush area with this page */
+		flush_start = addr;
+		flush_end = min(flush_start + block_size, region_end);
+	}
+
+	/* The previous loop won't flush the last cached range, so do it here */
+	if (flush_start != ~0UL) {
+		pr_notice("flushing %x-%x\n", flush_start, flush_end);
+		dma_flush_range_end(flush_start, flush_end);
+	}
+}
+
 int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
 {
-	__arch_remap_range(virt_addr, phys_addr, size, map_type);
 
-	if (map_type == MAP_UNCACHED)
-		dma_inv_range(virt_addr, size);
+	if (map_type != MAP_CACHED)
+		flush_cacheable_pages(virt_addr, size);
+
+	__arch_remap_range(virt_addr, phys_addr, size, map_type);
 
 	return 0;
 }
@@ -377,13 +529,11 @@ static inline void create_flat_mapping(void)
 
 void *map_io_sections(unsigned long phys, void *_start, size_t size)
 {
-	unsigned long start = (unsigned long)_start, sec;
+	unsigned long start = (unsigned long)_start;
 	uint32_t *ttb = get_ttb();
 
-	for (sec = start; sec < start + size; sec += PGDIR_SIZE, phys += PGDIR_SIZE) {
-		// TODO break-before-make missing
-		set_pte(&ttb[pgd_index(sec)], phys | get_pmd_flags(MAP_UNCACHED));
-	}
+	set_pte_range(&ttb[pgd_index(start)], phys, size / PGDIR_SIZE,
+		      get_pmd_flags(MAP_UNCACHED), true);
 
 	dma_flush_range(ttb, 0x4000);
 	tlb_invalidate();
@@ -424,11 +574,10 @@ static void create_vector_table(unsigned long adr)
 		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
-		arm_create_pte(adr, adr, get_pte_flags(MAP_UNCACHED));
+		arm_create_pte(adr, adr, get_pte_flags(MAP_UNCACHED), true);
 		pte = find_pte(adr);
-		// TODO break-before-make missing
-		set_pte(pte, (u32)vectors | PTE_TYPE_SMALL |
-			get_pte_flags(MAP_CACHED));
+		set_pte_range(pte, (u32)vectors, 1, PTE_TYPE_SMALL |
+			      get_pte_flags(MAP_CACHED), true);
 	}
 
 	arm_fixup_vectors();
-- 
2.39.5




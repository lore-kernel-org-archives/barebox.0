Delivery-date: Wed, 06 Aug 2025 15:06:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqI-007e1A-04
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqF-0005Nv-LL
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sZ9mZACgUJ2PD+Ym+z7TWedq4yL6ZZt1F9G4VEPTTO0=; b=zuoy7SC3Uw22mviGWe6VxMqRhH
	l417CKMl6/cfA/FEs25JphmfXL1Vc4fSRKSuMpIORdZBd6TMfSQWAMqoFbwoca3HMMUfGbsu+XfsF
	JT3WjPzkTwQZ6YdHPLYXZJsd7UR2HGh7LwdjqmpGas7kk0SQBqoUjLwMuVEX9cMRLOfa+Jq5IkwO9
	3nGJ94Xkm9xHZJFWxkjr0wrWIfdWm3f2/9zLjk7kgAkQyPonux2xkqiFdlc7LQ6r6ba3AhRUL68/i
	n55vJkx07Cj7mBebLzsjS/4boeJ3ajydhLw5OI2GcSBEswGfj2/0T5CKeDMWk8ULCxttDgrhkiBPb
	Po1JRt8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdph-0000000FFpQ-0v71;
	Wed, 06 Aug 2025 13:05:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpb-0000000FFlx-0Dd4
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-0004kn-2x; Wed, 06 Aug 2025 15:05:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpY-00CDTE-0m;
	Wed, 06 Aug 2025 15:05:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-3D;
	Wed, 06 Aug 2025 14:37:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:12 +0200
Message-Id: <20250806123714.2092620-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060523_106930_45547C5F 
X-CRM114-Status: GOOD (  16.70  )
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
Subject: [PATCH 20/22] ARM: mmu32: factor out set_pte_range helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By adding a helper that sets multiple PTEs at once, we can generalize
the break-before-make handling into one single place.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 83 ++++++++++++++++++++++---------------------
 1 file changed, 42 insertions(+), 41 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index a76d403e3477..7cf04ea9412a 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -106,6 +106,23 @@ static void set_pte(uint32_t *pt, uint32_t val)
 	WRITE_ONCE(*pt, val);
 }
 
+static void set_pte_range(unsigned level, uint32_t *virt, phys_addr_t phys,
+			  size_t count, uint32_t attrs, bool bbm)
+{
+	unsigned granularity = granule_size(level);
+
+	if (!bbm)
+		goto write_attrs;
+
+	 // TODO break-before-make missing
+
+write_attrs:
+	for (int i = 0; i < count; i++, phys += granularity)
+		set_pte(&virt[i], phys | attrs);
+
+	dma_flush_range(virt, count * sizeof(*virt));
+}
+
 #ifdef __PBL__
 static uint32_t *alloc_pte(void)
 {
@@ -203,11 +220,11 @@ void dma_inv_range(void *ptr, size_t size)
  * Not yet exported, but may be later if someone finds use for it.
  */
 static u32 *arm_create_pte(unsigned long virt, unsigned long phys,
-			   uint32_t flags)
+			   uint32_t flags, bool bbm)
 {
 	uint32_t *ttb = get_ttb();
 	u32 *table;
-	int i, ttb_idx;
+	int ttb_idx;
 
 	virt = ALIGN_DOWN(virt, PGDIR_SIZE);
 	phys = ALIGN_DOWN(phys, PGDIR_SIZE);
@@ -216,16 +233,9 @@ static u32 *arm_create_pte(unsigned long virt, unsigned long phys,
 
 	ttb_idx = pgd_index(virt);
 
-	for (i = 0; i < PTRS_PER_PTE; i++) {
-		set_pte(&table[i], phys | PTE_TYPE_SMALL | flags);
-		virt += PAGE_SIZE;
-		phys += PAGE_SIZE;
-	}
-	dma_flush_range(table, PTRS_PER_PTE * sizeof(u32));
+	set_pte_range(2, table, phys, PTRS_PER_PTE, PTE_TYPE_SMALL | flags, bbm);
 
-	// TODO break-before-make missing
-	set_pte(&ttb[ttb_idx], (unsigned long)table | PMD_TYPE_TABLE);
-	dma_flush_range(&ttb[ttb_idx], sizeof(u32));
+	set_pte_range(1, &ttb[ttb_idx], (unsigned long)table, 1, PMD_TYPE_TABLE, bbm);
 
 	return table;
 }
@@ -335,6 +345,7 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 			       maptype_t map_type)
 {
 	bool force_pages = map_type & ARCH_MAP_FLAG_PAGEWISE;
+	bool mmu_on;
 	u32 virt_addr = (u32)_virt_addr;
 	u32 pte_flags, pmd_flags;
 	uint32_t *ttb = get_ttb();
@@ -351,30 +362,30 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 	if (!size)
 		return;
 
+	mmu_on = get_cr() & CR_M;
+
 	while (size) {
 		const bool pgdir_size_aligned = IS_ALIGNED(virt_addr, PGDIR_SIZE);
 		u32 *pgd = (u32 *)&ttb[pgd_index(virt_addr)];
+		u32 flags;
 		size_t chunk;
 
 		if (size >= PGDIR_SIZE && pgdir_size_aligned &&
 		    IS_ALIGNED(phys_addr, PGDIR_SIZE) &&
 		    !pgd_type_table(*pgd) && !force_pages) {
-			u32 val;
 			/*
 			 * TODO: Add code to discard a page table and
 			 * replace it with a section
 			 */
 			chunk = PGDIR_SIZE;
-			val = phys_addr | pmd_flags;
+			flags = pmd_flags;
 			if (!maptype_is_compatible(map_type, MAP_FAULT))
-				val |= PMD_TYPE_SECT;
-			// TODO break-before-make missing
-			set_pte(pgd, val);
-			dma_flush_range(pgd, sizeof(*pgd));
+				flags |= PMD_TYPE_SECT;
+			set_pte_range(1, pgd, phys_addr, 1, flags, mmu_on);
 		} else {
 			unsigned int num_ptes;
 			u32 *table = NULL;
-			unsigned int i, level;
+			unsigned int level;
 			u32 *pte;
 			/*
 			 * We only want to cover pages up until next
@@ -401,23 +412,14 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 				 * and create a new page table for it
 				 */
 				table = arm_create_pte(virt_addr, phys_addr,
-						       pmd_flags_to_pte(*pgd));
+						       pmd_flags_to_pte(*pgd), mmu_on);
 				pte = find_pte(ttb, virt_addr, NULL);
 			}
 
-			for (i = 0; i < num_ptes; i++) {
-				u32 val;
-
-				val = phys_addr + i * PAGE_SIZE;
-				val |= pte_flags;
-				if (!maptype_is_compatible(map_type, MAP_FAULT))
-					val |= PTE_TYPE_SMALL;
-
-				// TODO break-before-make missing
-				set_pte(&pte[i], val);
-			}
-
-			dma_flush_range(pte, num_ptes * sizeof(u32));
+			flags = pte_flags;
+			if (!maptype_is_compatible(map_type, MAP_FAULT))
+				flags |= PTE_TYPE_SMALL;
+			set_pte_range(2, pte, phys_addr, num_ptes, flags, mmu_on);
 		}
 
 		virt_addr += chunk;
@@ -461,6 +463,7 @@ static void early_create_sections(unsigned long first, unsigned long last,
 	unsigned long ttb_end = pgd_index(last) + 1;
 	unsigned int i, addr = first;
 
+	/* This always runs with MMU disabled, so just opencode the loop */
 	for (i = ttb_start; i < ttb_end; i++) {
 		set_pte(&ttb[i], addr | flags);
 		addr += PGDIR_SIZE;
@@ -475,13 +478,11 @@ static inline void early_create_flat_mapping(void)
 
 void *map_io_sections(unsigned long phys, void *_start, size_t size)
 {
-	unsigned long start = (unsigned long)_start, sec;
+	unsigned long start = (unsigned long)_start;
 	uint32_t *ttb = get_ttb();
 
-	for (sec = start; sec < start + size; sec += PGDIR_SIZE, phys += PGDIR_SIZE) {
-		// TODO break-before-make missing
-		set_pte(&ttb[pgd_index(sec)], phys | get_pmd_flags(MAP_UNCACHED));
-	}
+	set_pte_range(1, &ttb[pgd_index(start)], phys, size / PGDIR_SIZE,
+		      get_pmd_flags(MAP_UNCACHED), true);
 
 	dma_flush_range(ttb, 0x4000);
 	tlb_invalidate();
@@ -523,11 +524,11 @@ static void create_vector_table(unsigned long adr)
 		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
-		arm_create_pte(adr, adr, get_pte_flags(MAP_UNCACHED));
+
+		arm_create_pte(adr, adr, get_pte_flags(MAP_UNCACHED), true);
 		pte = find_pte(get_ttb(), adr, NULL);
-		// TODO break-before-make missing
-		set_pte(pte, (u32)vectors | PTE_TYPE_SMALL |
-			get_pte_flags(MAP_CACHED));
+		set_pte_range(2, pte, (u32)vectors, 1, PTE_TYPE_SMALL |
+			      get_pte_flags(MAP_CACHED), true);
 	}
 
 	arm_fixup_vectors();
-- 
2.39.5




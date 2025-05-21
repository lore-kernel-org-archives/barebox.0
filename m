Delivery-date: Wed, 21 May 2025 19:42:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHnSC-001Ehs-17
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 19:42:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHnSB-0006tl-Il
	for lore@pengutronix.de; Wed, 21 May 2025 19:42:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PXokoH+rBHGxIRkLkLOfDyRYutQbct/iyz8QwlR2SfQ=; b=wkme2VZ8+WIwm5Y2C0wiyIF8Pf
	frXUW0NVJND7Fr/zFQ+mFRU8E3cePYmDjnKC1+MbL9e76+7fjjOebJTQ0q53aC34eLsn+V/xEHHxT
	FUhwFGanl/sUxA51/g3E6eH9iGxfj42y7pm5v9NBiLDWyp5Ks4K+58Y3AwBGglsQ0yWMZ3MSUJxJ5
	gBlZh3jS1LtABtjcbiX/26D6llK0eDGB3K4dwv2cG1a+xHzA5edrSqrvpXHJadNLY909EfxfPrvf7
	3lD2RyCc80dpq9uSpGTRcLSpbVX74qXVqjnRq+XZYJ+cJOUuQQzPqonC/dvJBR0HXuWGQuyjf2tuv
	Sy1M9b5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnRb-0000000Gb1y-47fa;
	Wed, 21 May 2025 17:41:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnRD-0000000Gay9-187v
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 17:41:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-0006S5-DF; Wed, 21 May 2025 19:41:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-000bYH-0h;
	Wed, 21 May 2025 19:41:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-006bCu-1v;
	Wed, 21 May 2025 19:41:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 May 2025 19:41:03 +0200
Message-Id: <20250521174104.1570239-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250521174104.1570239-1-a.fatoum@pengutronix.de>
References: <20250521174104.1570239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_104107_307412_6F43007A 
X-CRM114-Status: GOOD (  18.23  )
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
Subject: [PATCH 3/4] ARM: mmu: ensure PTE is written at once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Writing the PTE with a normal non-volatile access is a bad idea, because
speculation may already use a partially written entry.

Use WRITE_ONCE to turn this into a volatile write via a new set_pte
helper. The extra helper is useful for type enforcement and for future
extension when we start to consistently apply break-before-make[1].

[1]: https://lore.kernel.org/all/87a5btrcyr.wl-maz@kernel.org/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 40 +++++++++++++++++++++++++++++-----------
 arch/arm/cpu/mmu_64.c | 20 +++++++++++++-------
 2 files changed, 42 insertions(+), 18 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index ec6bd27da4e1..9f50194c7c2b 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -65,6 +65,11 @@ static bool pgd_type_table(u32 pgd)
 
 #define PTE_SIZE       (PTRS_PER_PTE * sizeof(u32))
 
+static void set_pte(uint32_t *pt, uint32_t val)
+{
+	WRITE_ONCE(*pt, val);
+}
+
 #ifdef __PBL__
 static uint32_t *alloc_pte(void)
 {
@@ -141,13 +146,14 @@ static u32 *arm_create_pte(unsigned long virt, unsigned long phys,
 	ttb_idx = pgd_index(virt);
 
 	for (i = 0; i < PTRS_PER_PTE; i++) {
-		table[i] = phys | PTE_TYPE_SMALL | flags;
+		set_pte(&table[i], phys | PTE_TYPE_SMALL | flags);
 		virt += PAGE_SIZE;
 		phys += PAGE_SIZE;
 	}
 	dma_flush_range(table, PTRS_PER_PTE * sizeof(u32));
 
-	ttb[ttb_idx] = (unsigned long)table | PMD_TYPE_TABLE;
+	// TODO break-before-make missing
+	set_pte(&ttb[ttb_idx], (unsigned long)table | PMD_TYPE_TABLE);
 	dma_flush_range(&ttb[ttb_idx], sizeof(u32));
 
 	return table;
@@ -264,14 +270,17 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 		if (size >= PGDIR_SIZE && pgdir_size_aligned &&
 		    IS_ALIGNED(phys_addr, PGDIR_SIZE) &&
 		    !pgd_type_table(*pgd)) {
+			u32 val;
 			/*
 			 * TODO: Add code to discard a page table and
 			 * replace it with a section
 			 */
 			chunk = PGDIR_SIZE;
-			*pgd = phys_addr | pmd_flags;
+			val = phys_addr | pmd_flags;
 			if (map_type != MAP_FAULT)
-				*pgd |= PMD_TYPE_SECT;
+				val |= PMD_TYPE_SECT;
+			// TODO break-before-make missing
+			set_pte(pgd, val);
 			dma_flush_range(pgd, sizeof(*pgd));
 		} else {
 			unsigned int num_ptes;
@@ -310,10 +319,15 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 			}
 
 			for (i = 0; i < num_ptes; i++) {
-				pte[i] = phys_addr + i * PAGE_SIZE;
-				pte[i] |= pte_flags;
+				u32 val;
+
+				val = phys_addr + i * PAGE_SIZE;
+				val |= pte_flags;
 				if (map_type != MAP_FAULT)
-					pte[i] |= PTE_TYPE_SMALL;
+					val |= PTE_TYPE_SMALL;
+
+				// TODO break-before-make missing
+				set_pte(&pte[i], val);
 			}
 
 			dma_flush_range(pte, num_ptes * sizeof(u32));
@@ -350,7 +364,7 @@ static void create_sections(unsigned long first, unsigned long last,
 	unsigned int i, addr = first;
 
 	for (i = ttb_start; i < ttb_end; i++) {
-		ttb[i] = addr | flags;
+		set_pte(&ttb[i], addr | flags);
 		addr += PGDIR_SIZE;
 	}
 }
@@ -366,8 +380,10 @@ void *map_io_sections(unsigned long phys, void *_start, size_t size)
 	unsigned long start = (unsigned long)_start, sec;
 	uint32_t *ttb = get_ttb();
 
-	for (sec = start; sec < start + size; sec += PGDIR_SIZE, phys += PGDIR_SIZE)
-		ttb[pgd_index(sec)] = phys | get_pmd_flags(MAP_UNCACHED);
+	for (sec = start; sec < start + size; sec += PGDIR_SIZE, phys += PGDIR_SIZE) {
+		// TODO break-before-make missing
+		set_pte(&ttb[pgd_index(sec)], phys | get_pmd_flags(MAP_UNCACHED));
+	}
 
 	dma_flush_range(ttb, 0x4000);
 	tlb_invalidate();
@@ -410,7 +426,9 @@ static void create_vector_table(unsigned long adr)
 			 vectors, adr);
 		arm_create_pte(adr, adr, get_pte_flags(MAP_UNCACHED));
 		pte = find_pte(adr);
-		*pte = (u32)vectors | PTE_TYPE_SMALL | get_pte_flags(MAP_CACHED);
+		// TODO break-before-make missing
+		set_pte(pte, (u32)vectors | PTE_TYPE_SMALL |
+			get_pte_flags(MAP_CACHED));
 	}
 
 	arm_fixup_vectors();
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index d9b0b74d7314..efd788c93e7b 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -31,12 +31,14 @@ static uint64_t *get_ttb(void)
 	return (uint64_t *)get_ttbr(current_el());
 }
 
+static void set_pte(uint64_t *pt, uint64_t val)
+{
+	WRITE_ONCE(*pt, val);
+}
+
 static void set_table(uint64_t *pt, uint64_t *table_addr)
 {
-	uint64_t val;
-
-	val = PTE_TYPE_TABLE | (uint64_t)table_addr;
-	*pt = val;
+	set_pte(pt, PTE_TYPE_TABLE | (uint64_t)table_addr);
 }
 
 #ifdef __PBL__
@@ -114,14 +116,16 @@ static void split_block(uint64_t *pte, int level)
 
 
 	for (i = 0; i < MAX_PTE_ENTRIES; i++) {
-		new_table[i] = old_pte | (i << levelshift);
+		set_pte(&new_table[i], old_pte | (i << levelshift));
 
 		/* Level 3 block PTEs have the table type */
 		if ((level + 1) == 3)
 			new_table[i] |= PTE_TYPE_TABLE;
 	}
 
-	/* Set the new table into effect */
+	/* Set the new table into effect
+	 * TODO: break-before-make missing
+	 */
 	set_table(pte, new_table);
 }
 
@@ -157,7 +161,9 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 			    IS_ALIGNED(phys, block_size)) {
 				type = (level == 3) ?
 					PTE_TYPE_PAGE : PTE_TYPE_BLOCK;
-				*pte = phys | attr | type;
+
+				/* TODO: break-before-make missing */
+				set_pte(pte, phys | attr | type);
 				addr += block_size;
 				phys += block_size;
 				size -= block_size;
-- 
2.39.5




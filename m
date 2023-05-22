Delivery-date: Mon, 22 May 2023 07:29:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7L-009JAo-1W
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:29:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7I-0002qK-Of
	for lore@pengutronix.de; Mon, 22 May 2023 07:29:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsdEjiylUX0r6L0+p7tZyvgZ7A5e8D7Oyk5QvtHuv3U=; b=QlZo+QVP/tVFZx
	uTKdRtmEiYQDy4M4DHjFk+FY11U9UUnIbrkqC4hgIhpKNVZV4u9V6nyrabWkSOdHEKGA8G0q7kxHp
	9bW4qYmZilVtMaScQ8IUus+fGJyqpw/fh7G6O1SdoCTnGjjDXHiaCi+tK7lLGl4QMDr8orCtvmHwh
	3I3GEdW1eS8q2hPqkwOwnnxgGs7IstnpOlQI9d1gtehb1uT9rjqM4W7unvxn7JRLZm69HwQFr9stY
	9qVa4F0i2IelHMRRH92Q11lU0On8dIE6Mtn0TgA+mjCX37hN8PbFdk8F7DqSk5w4LccBkZZLwuRrr
	XWGlXFWPKOU416sR9M2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6A-005OXB-2Z;
	Mon, 22 May 2023 05:28:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y66-005OUf-0p
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:28:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-0002MM-MF; Mon, 22 May 2023 07:28:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y62-001vvo-UZ; Mon, 22 May 2023 07:28:38 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004MLE-Kc; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:27 +0200
Message-Id: <20230522052835.1039143-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222843_806130_1EE559AA 
X-CRM114-Status: GOOD (  15.37  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/11] ARM: mmu32: support non-1:1 mappings in arch_remap_range
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This makes the function usable as alternative to map_io_sections, but at
4K granularity.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 29 +++++++++++++----------------
 1 file changed, 13 insertions(+), 16 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 68336fc68be0..4168125274f4 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -63,13 +63,6 @@ static inline void tlb_invalidate(void)
 			 PMD_SECT_BUFFERABLE | PMD_SECT_XN)
 #define PGD_FLAGS_UNCACHED_V7 (PMD_SECT_DEF_UNCACHED | PMD_SECT_XN)
 
-/*
- * PTE flags to set cached and uncached areas.
- * This will be determined at runtime.
- */
-
-#define PTE_MASK ((1 << 12) - 1)
-
 static bool pgd_type_table(u32 pgd)
 {
 	return (pgd & PMD_TYPE_MASK) == PMD_TYPE_TABLE;
@@ -140,21 +133,24 @@ void dma_inv_range(void *ptr, size_t size)
  * We initially create a flat uncached mapping on it.
  * Not yet exported, but may be later if someone finds use for it.
  */
-static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
+static u32 *arm_create_pte(unsigned long virt, unsigned long phys,
+			   uint32_t flags)
 {
 	uint32_t *ttb = get_ttb();
 	u32 *table;
 	int i, ttb_idx;
 
 	virt = ALIGN_DOWN(virt, PGDIR_SIZE);
+	phys = ALIGN_DOWN(phys, PGDIR_SIZE);
 
 	table = alloc_pte();
 
 	ttb_idx = pgd_index(virt);
 
 	for (i = 0; i < PTRS_PER_PTE; i++) {
-		table[i] = virt | PTE_TYPE_SMALL | flags;
+		table[i] = phys | PTE_TYPE_SMALL | flags;
 		virt += PAGE_SIZE;
+		phys += PAGE_SIZE;
 	}
 	dma_flush_range(table, PTRS_PER_PTE * sizeof(u32));
 
@@ -259,10 +255,8 @@ int arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsig
 	u32 pte_flags, pmd_flags;
 	uint32_t *ttb = get_ttb();
 
-	if (phys_addr != virt_to_phys(virt_addr))
-		return -ENOSYS;
-
 	BUG_ON(!IS_ALIGNED(virt_addr, PAGE_SIZE));
+	BUG_ON(!IS_ALIGNED(phys_addr, PAGE_SIZE));
 
 	pte_flags = get_pte_flags(map_type);
 	pmd_flags = pte_flags_to_pmd(pte_flags);
@@ -273,13 +267,14 @@ int arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsig
 		size_t chunk;
 
 		if (size >= PGDIR_SIZE && pgdir_size_aligned &&
+		    IS_ALIGNED(phys_addr, PGDIR_SIZE) &&
 		    !pgd_type_table(*pgd)) {
 			/*
 			 * TODO: Add code to discard a page table and
 			 * replace it with a section
 			 */
 			chunk = PGDIR_SIZE;
-			*pgd = virt_addr | pmd_flags | PMD_TYPE_SECT;
+			*pgd = phys_addr | pmd_flags | PMD_TYPE_SECT;
 			dma_flush_range(pgd, sizeof(*pgd));
 		} else {
 			unsigned int num_ptes;
@@ -311,13 +306,14 @@ int arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsig
 				 * we needs to split this section and
 				 * create a new page table for it
 				 */
-				table = arm_create_pte(virt_addr, pmd_flags_to_pte(*pgd));
+				table = arm_create_pte(virt_addr, phys_addr,
+						       pmd_flags_to_pte(*pgd));
 				pte = find_pte(virt_addr);
 				BUG_ON(!pte);
 			}
 
 			for (i = 0; i < num_ptes; i++) {
-				pte[i] &= ~PTE_MASK;
+				pte[i] = phys_addr + i * PAGE_SIZE;
 				pte[i] |= pte_flags | PTE_TYPE_SMALL;
 			}
 
@@ -325,6 +321,7 @@ int arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsig
 		}
 
 		virt_addr += chunk;
+		phys_addr += chunk;
 		size -= chunk;
 	}
 
@@ -399,7 +396,7 @@ static void create_vector_table(unsigned long adr)
 		vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
 		pr_debug("Creating vector table, virt = 0x%p, phys = 0x%08lx\n",
 			 vectors, adr);
-		arm_create_pte(adr, get_pte_flags(MAP_UNCACHED));
+		arm_create_pte(adr, adr, get_pte_flags(MAP_UNCACHED));
 		pte = find_pte(adr);
 		*pte = (u32)vectors | PTE_TYPE_SMALL | get_pte_flags(MAP_CACHED);
 	}
-- 
2.39.2




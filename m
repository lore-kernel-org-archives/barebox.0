Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkmeY-0007vS-R4
 for barebox@lists.infradead.org; Wed, 01 Aug 2018 08:38:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fkmeN-0008Bs-5x
 for barebox@lists.infradead.org; Wed, 01 Aug 2018 10:38:31 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Aug 2018 10:38:28 +0200
Message-Id: <20180801083831.12983-1-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: mmu: fix cache flushing when replacing a section with a
 PTE
To: barebox@lists.infradead.org

When replacing a section with a PTE, we must make sure that the newly
initialized PTE entries are flushed from the cache before changing the
entry in the TTB. Otherwise a L1 TLB miss causes the hardware pagetable
walker to walk into a PTE with undefined content, causing exactly that
behaviour.

Move all the necessary cache flushing to arm_create_pte(), to avoid any
caller getting this wrong in the future.

Fixes: e3e54c644180 (ARM: mmu: Implement on-demand PTE allocation)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 77 +++++++++++++++++++---------------------------
 1 file changed, 32 insertions(+), 45 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index ae189ecdeb16..712c3930fb71 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -85,34 +85,6 @@ static void arm_mmu_not_initialized_error(void)
 	panic("MMU not initialized\n");
 }
 
-/*
- * Create a second level translation table for the given virtual address.
- * We initially create a flat uncached mapping on it.
- * Not yet exported, but may be later if someone finds use for it.
- */
-static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
-{
-	u32 *table;
-	int i;
-
-	virt = ALIGN_DOWN(virt, PGDIR_SIZE);
-
-	table = xmemalign(PTRS_PER_PTE * sizeof(u32),
-			  PTRS_PER_PTE * sizeof(u32));
-
-	if (!ttb)
-		arm_mmu_not_initialized_error();
-
-	ttb[pgd_index(virt)] = (unsigned long)table | PMD_TYPE_TABLE;
-
-	for (i = 0; i < PTRS_PER_PTE; i++) {
-		table[i] = virt | PTE_TYPE_SMALL | flags;
-		virt += PAGE_SIZE;
-	}
-
-	return table;
-}
-
 static bool pgd_type_table(u32 pgd)
 {
 	return (pgd & PMD_TYPE_MASK) == PMD_TYPE_TABLE;
@@ -152,6 +124,38 @@ static void dma_inv_range(unsigned long start, unsigned long end)
 	__dma_inv_range(start, end);
 }
 
+/*
+ * Create a second level translation table for the given virtual address.
+ * We initially create a flat uncached mapping on it.
+ * Not yet exported, but may be later if someone finds use for it.
+ */
+static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
+{
+	u32 *table;
+	int i, ttb_idx;
+
+	virt = ALIGN_DOWN(virt, PGDIR_SIZE);
+
+	table = xmemalign(PTRS_PER_PTE * sizeof(u32),
+			  PTRS_PER_PTE * sizeof(u32));
+
+	if (!ttb)
+		arm_mmu_not_initialized_error();
+
+	ttb_idx = pgd_index(virt);
+
+	for (i = 0; i < PTRS_PER_PTE; i++) {
+		table[i] = virt | PTE_TYPE_SMALL | flags;
+		virt += PAGE_SIZE;
+	}
+	dma_flush_range(table, PTRS_PER_PTE * sizeof(u32));
+
+	ttb[ttb_idx] = (unsigned long)table | PMD_TYPE_TABLE;
+	dma_flush_range(ttb, sizeof(u32));
+
+	return table;
+}
+
 int arch_remap_range(void *start, size_t size, unsigned flags)
 {
 	u32 addr = (u32)start;
@@ -227,12 +231,6 @@ int arch_remap_range(void *start, size_t size, unsigned flags)
 				table = arm_create_pte(addr, pte_flags_cached);
 				pte = find_pte(addr);
 				BUG_ON(!pte);
-				/*
-				 * We just split this section and
-				 * modified it's Level 1 descriptor,
-				 * so it needs to be flushed.
-				 */
-				dma_flush_range(pgd, sizeof(*pgd));
 			}
 
 			for (i = 0; i < num_ptes; i++) {
@@ -240,17 +238,6 @@ int arch_remap_range(void *start, size_t size, unsigned flags)
 				pte[i] |= pte_flags | PTE_TYPE_SMALL;
 			}
 
-			if (table) {
-				/*
-				 * If we just created a new page
-				 * table, the whole table would have
-				 * to be flushed, not just PTEs that
-				 * we touched when re-mapping.
-				 */
-				pte = table;
-				num_ptes = PTRS_PER_PTE;
-			}
-
 			dma_flush_range(pte, num_ptes * sizeof(u32));
 		}
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

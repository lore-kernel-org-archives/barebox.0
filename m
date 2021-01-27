Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1l4lA1-0075Bp-5q
 for barebox@lists.infradead.org; Wed, 27 Jan 2021 13:47:12 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 27 Jan 2021 14:44:12 +0100
Message-Id: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 01/12] ARM: mmu: inherit pte flags from pmd
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

When creating a 2nd level page table from a section inherit the flags
from the section rather than assuming the section was mapped cached
previously. This fixes creating a 2nd level pagetable when the section
was mapped differently than we expected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 28 ++++++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6af228505dd1..6388e1bf14f6 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -138,6 +138,29 @@ static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
 	return table;
 }
 
+static u32 pmd_flags_to_pte(u32 pmd)
+{
+	u32 pte = 0;
+
+	if (pmd & PMD_SECT_BUFFERABLE)
+		pte |= PTE_BUFFERABLE;
+	if (pmd & PMD_SECT_CACHEABLE)
+		pte |= PTE_CACHEABLE;
+	if (pmd & PMD_SECT_nG)
+		pte |= PTE_EXT_NG;
+	if (pmd & PMD_SECT_XN)
+		pte |= PTE_EXT_XN;
+
+	/* TEX[2:0] */
+	pte |= PTE_EXT_TEX((pmd >> 12) & 7);
+	/* AP[1:0] */
+	pte |= ((pmd >> 10) & 0x3) << 4;
+	/* AP[2] */
+	pte |= ((pmd >> 15) & 0x1) << 9;
+
+	return pte;
+}
+
 int arch_remap_range(void *start, size_t size, unsigned flags)
 {
 	u32 addr = (u32)start;
@@ -206,11 +229,8 @@ int arch_remap_range(void *start, size_t size, unsigned flags)
 				 * If PTE is not found it means that
 				 * we needs to split this section and
 				 * create a new page table for it
-				 *
-				 * NOTE: Here we assume that section
-				 * we just split was mapped as cached
 				 */
-				table = arm_create_pte(addr, pte_flags_cached);
+				table = arm_create_pte(addr, pmd_flags_to_pte(*pgd));
 				pte = find_pte(addr);
 				BUG_ON(!pte);
 			}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

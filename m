Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosJ-0008BQ-5U
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 40/78] ARM: aarch64: mmu: use PTE_* definitions from U-Boot
Date: Fri, 16 Mar 2018 13:53:16 +0100
Message-Id: <20180316125354.23462-41-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

'PMD' (Page Middle Directory) is a Linuxism that is not really
helpful in the barebox MMU code. Use the U-Boot definitions
which only use PTE_* and seem to be more consistent for our
usecase.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c            | 22 +++++++------
 arch/arm/include/asm/pgtable64.h | 67 +++++++++++++---------------------------
 2 files changed, 35 insertions(+), 54 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 695a73262d..baa443f9e2 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -34,8 +34,12 @@
 
 #include "mmu.h"
 
-#define CACHED_MEM      (PMD_ATTRINDX(MT_NORMAL) | PMD_SECT_S | PMD_SECT_AF | PMD_TYPE_SECT)
-#define UNCACHED_MEM    (PMD_ATTRINDX(MT_DEVICE_nGnRnE) | PMD_SECT_AF)
+#define CACHED_MEM      (PTE_BLOCK_MEMTYPE(MT_NORMAL) | \
+			 PTE_BLOCK_OUTER_SHARE | \
+			 PTE_BLOCK_AF)
+#define UNCACHED_MEM    (PTE_BLOCK_MEMTYPE(MT_DEVICE_nGnRnE) | \
+			 PTE_BLOCK_OUTER_SHARE | \
+			 PTE_BLOCK_AF)
 
 static uint64_t *ttb;
 
@@ -94,14 +98,14 @@ static uint64_t level2mask(int level)
 
 static int pte_type(uint64_t *pte)
 {
-	return *pte & PMD_TYPE_MASK;
+	return *pte & PTE_TYPE_MASK;
 }
 
 static void set_table(uint64_t *pt, uint64_t *table_addr)
 {
 	uint64_t val;
 
-	val = PMD_TYPE_TABLE | (uint64_t)table_addr;
+	val = PTE_TYPE_TABLE | (uint64_t)table_addr;
 	*pt = val;
 }
 
@@ -119,7 +123,7 @@ static uint64_t *get_level_table(uint64_t *pte)
 {
 	uint64_t *table = (uint64_t *)(*pte & XLAT_ADDR_MASK);
 
-	if (pte_type(pte) != PMD_TYPE_TABLE) {
+	if (pte_type(pte) != PTE_TYPE_TABLE) {
 		table = create_table();
 		set_table(pte, table);
 	}
@@ -141,7 +145,7 @@ static __maybe_unused uint64_t *find_pte(uint64_t addr)
 		idx = (addr & level2mask(i)) >> block_shift;
 		pte += idx;
 
-		if ((pte_type(pte) != PMD_TYPE_TABLE) || (block_shift <= GRANULE_SIZE_SHIFT))
+		if ((pte_type(pte) != PTE_TYPE_TABLE) || (block_shift <= GRANULE_SIZE_SHIFT))
 			break;
 		else
 			pte = (uint64_t *)(*pte & XLAT_ADDR_MASK);
@@ -165,21 +169,21 @@ static void map_region(uint64_t virt, uint64_t phys, uint64_t size, uint64_t att
 
 	addr = virt;
 
-	attr &= ~(PMD_TYPE_SECT);
+	attr &= ~PTE_TYPE_MASK;
 
 	while (size) {
 		table = ttb;
 		for (level = 1; level < 4; level++) {
 			block_shift = level2shift(level);
 			idx = (addr & level2mask(level)) >> block_shift;
-			block_size = (1 << block_shift);
+			block_size = (1ULL << block_shift);
 
 			pte = table + idx;
 
 			if (level == 3)
 				attr |= PTE_TYPE_PAGE;
 			else
-				attr |= PMD_TYPE_SECT;
+				attr |= PTE_TYPE_BLOCK;
 
 			if (size >= block_size && IS_ALIGNED(addr, block_size)) {
 				*pte = phys | attr;
diff --git a/arch/arm/include/asm/pgtable64.h b/arch/arm/include/asm/pgtable64.h
index 7f7efa10ca..f2888c3ccd 100644
--- a/arch/arm/include/asm/pgtable64.h
+++ b/arch/arm/include/asm/pgtable64.h
@@ -47,51 +47,28 @@
 
 #define GRANULE_MASK	GRANULE_SIZE
 
-
-/*
- * Level 2 descriptor (PMD).
- */
-#define PMD_TYPE_MASK		(3 << 0)
-#define PMD_TYPE_FAULT		(0 << 0)
-#define PMD_TYPE_TABLE		(3 << 0)
-#define PMD_TYPE_SECT		(1 << 0)
-#define PMD_TABLE_BIT		(1 << 1)
-
-/*
- * Section
- */
-#define PMD_SECT_VALID		(1 << 0)
-#define PMD_SECT_USER		(1 << 6)		/* AP[1] */
-#define PMD_SECT_RDONLY		(1 << 7)		/* AP[2] */
-#define PMD_SECT_S		(3 << 8)
-#define PMD_SECT_AF		(1 << 10)
-#define PMD_SECT_NG		(1 << 11)
-#define PMD_SECT_CONT		(1 << 52)
-#define PMD_SECT_PXN		(1 << 53)
-#define PMD_SECT_UXN		(1 << 54)
-
-/*
- * AttrIndx[2:0] encoding (mapping attributes defined in the MAIR* registers).
- */
-#define PMD_ATTRINDX(t)		((t) << 2)
-#define PMD_ATTRINDX_MASK	(7 << 2)
-
-/*
- * Level 3 descriptor (PTE).
- */
-#define PTE_TYPE_MASK		(3 << 0)
-#define PTE_TYPE_FAULT		(0 << 0)
-#define PTE_TYPE_PAGE		(3 << 0)
-#define PTE_TABLE_BIT		(1 << 1)
-#define PTE_USER		(1 << 6)		/* AP[1] */
-#define PTE_RDONLY		(1 << 7)		/* AP[2] */
-#define PTE_SHARED		(3 << 8)		/* SH[1:0], inner shareable */
-#define PTE_AF			(1 << 10)	/* Access Flag */
-#define PTE_NG			(1 << 11)	/* nG */
-#define PTE_DBM			(1 << 51)	/* Dirty Bit Management */
-#define PTE_CONT		(1 << 52)	/* Contiguous range */
-#define PTE_PXN			(1 << 53)	/* Privileged XN */
-#define PTE_UXN			(1 << 54)	/* User XN */
+/* Hardware page table definitions */
+#define PTE_TYPE_MASK           (3 << 0)
+#define PTE_TYPE_FAULT          (0 << 0)
+#define PTE_TYPE_TABLE          (3 << 0)
+#define PTE_TYPE_PAGE           (3 << 0)
+#define PTE_TYPE_BLOCK          (1 << 0)
+
+#define PTE_TABLE_PXN           (1UL << 59)
+#define PTE_TABLE_XN            (1UL << 60)
+#define PTE_TABLE_AP            (1UL << 61)
+#define PTE_TABLE_NS            (1UL << 63)
+
+/* Block */
+#define PTE_BLOCK_MEMTYPE(x)    ((x) << 2)
+#define PTE_BLOCK_NS            (1 << 5)
+#define PTE_BLOCK_NON_SHARE     (0 << 8)
+#define PTE_BLOCK_OUTER_SHARE   (2 << 8)
+#define PTE_BLOCK_INNER_SHARE   (3 << 8)
+#define PTE_BLOCK_AF            (1 << 10)
+#define PTE_BLOCK_NG            (1 << 11)
+#define PTE_BLOCK_PXN           (UL(1) << 53)
+#define PTE_BLOCK_UXN           (UL(1) << 54)
 
 /*
  * AttrIndx[2:0] encoding (mapping attributes defined in the MAIR* registers).
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

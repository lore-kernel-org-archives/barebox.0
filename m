Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvas-0002tb-AL
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:34:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:34:48 +0100
Message-Id: <20191127113448.30463-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM64: Switch to 4 level page tables
To: Barebox List <barebox@lists.infradead.org>

3 level page tables only allow to resolve 39 bit addresses. Switch to 4
level page tables to add support for bigger physical address ranges.
This is needed for example on Layerscape SoCs where the PCI windows are
outside the 39bit range.

The early MMU support still uses 39bit addressing. We only use a single
level page table in early MMU support and with 48bit addresses we
wouldn't have enough granularity to map the SDRAM differently then the
rest of the address space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu-early_64.c      | 6 ++++--
 arch/arm/cpu/mmu_64.c            | 7 ++++---
 arch/arm/cpu/mmu_64.h            | 9 +++++----
 arch/arm/include/asm/pgtable64.h | 5 ++++-
 4 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/mmu-early_64.c b/arch/arm/cpu/mmu-early_64.c
index f07d107e0d..94e372637a 100644
--- a/arch/arm/cpu/mmu-early_64.c
+++ b/arch/arm/cpu/mmu-early_64.c
@@ -48,6 +48,8 @@ static void create_sections(void *ttb, uint64_t virt, uint64_t phys,
 	}
 }
 
+#define EARLY_BITS_PER_VA 39
+
 void mmu_early_enable(unsigned long membase, unsigned long memsize,
 		      unsigned long ttb)
 {
@@ -64,8 +66,8 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	memset((void *)ttb, 0, GRANULE_SIZE);
 
 	el = current_el();
-	set_ttbr_tcr_mair(el, ttb, calc_tcr(el), MEMORY_ATTRIBUTES);
-	create_sections((void *)ttb, 0, 0, 1UL << (BITS_PER_VA - 1), UNCACHED_MEM);
+	set_ttbr_tcr_mair(el, ttb, calc_tcr(el, EARLY_BITS_PER_VA), MEMORY_ATTRIBUTES);
+	create_sections((void *)ttb, 0, 0, 1UL << (EARLY_BITS_PER_VA - 1), UNCACHED_MEM);
 	create_sections((void *)ttb, membase, membase, memsize, CACHED_MEM);
 	tlb_invalidate();
 	isb();
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index b45a69661e..f7a13014af 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -64,7 +64,7 @@ static __maybe_unused uint64_t *find_pte(uint64_t addr)
 
 	pte = ttb;
 
-	for (i = 1; i < 4; i++) {
+	for (i = 0; i < 4; i++) {
 		block_shift = level2shift(i);
 		idx = (addr & level2mask(i)) >> block_shift;
 		pte += idx;
@@ -129,7 +129,7 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 
 	while (size) {
 		table = ttb;
-		for (level = 1; level < 4; level++) {
+		for (level = 0; level < 4; level++) {
 			block_shift = level2shift(level);
 			idx = (addr & level2mask(level)) >> block_shift;
 			block_size = (1ULL << block_shift);
@@ -193,7 +193,8 @@ void __mmu_init(bool mmu_on)
 
 	ttb = create_table();
 	el = current_el();
-	set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el), MEMORY_ATTRIBUTES);
+	set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el, BITS_PER_VA),
+			  MEMORY_ATTRIBUTES);
 
 	pr_debug("ttb: 0x%p\n", ttb);
 
diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
index e2e125686d..a2a5477569 100644
--- a/arch/arm/cpu/mmu_64.h
+++ b/arch/arm/cpu/mmu_64.h
@@ -75,7 +75,9 @@ static inline uint64_t level2mask(int level)
 {
 	uint64_t mask = -EINVAL;
 
-	if (level == 1)
+	if (level == 0)
+		mask = L0_ADDR_MASK;
+	else if (level == 1)
 		mask = L1_ADDR_MASK;
 	else if (level == 2)
 		mask = L2_ADDR_MASK;
@@ -85,13 +87,12 @@ static inline uint64_t level2mask(int level)
 	return mask;
 }
 
-static inline uint64_t calc_tcr(int el)
+static inline uint64_t calc_tcr(int el, int va_bits)
 {
-	u64 ips, va_bits;
+	u64 ips;
 	u64 tcr;
 
 	ips = 2;
-	va_bits = BITS_PER_VA;
 
 	if (el == 1)
 		tcr = (ips << 32) | TCR_EPD1_DISABLE;
diff --git a/arch/arm/include/asm/pgtable64.h b/arch/arm/include/asm/pgtable64.h
index d8382505d0..d142612d0d 100644
--- a/arch/arm/include/asm/pgtable64.h
+++ b/arch/arm/include/asm/pgtable64.h
@@ -21,7 +21,7 @@
 #define UNUSED_DESC                0x6EbAAD0BBADbA6E0
 
 #define VA_START                   0x0
-#define BITS_PER_VA                39
+#define BITS_PER_VA                48
 
 /* Granule size of 4KB is being used */
 #define GRANULE_SIZE_SHIFT         12
@@ -30,11 +30,13 @@
 #define GRANULE_SIZE_MASK          ((1 << GRANULE_SIZE_SHIFT) - 1)
 
 #define BITS_RESOLVED_PER_LVL   (GRANULE_SIZE_SHIFT - 3)
+#define L0_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LVL * 3)
 #define L1_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LVL * 2)
 #define L2_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LVL * 1)
 #define L3_ADDR_SHIFT           (GRANULE_SIZE_SHIFT + BITS_RESOLVED_PER_LVL * 0)
 
 
+#define L0_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L0_ADDR_SHIFT)
 #define L1_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L1_ADDR_SHIFT)
 #define L2_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L2_ADDR_SHIFT)
 #define L3_ADDR_MASK     (((1UL << BITS_RESOLVED_PER_LVL) - 1) << L3_ADDR_SHIFT)
@@ -44,6 +46,7 @@
 #define L3_XLAT_SIZE               (1UL << L3_ADDR_SHIFT)
 #define L2_XLAT_SIZE               (1UL << L2_ADDR_SHIFT)
 #define L1_XLAT_SIZE               (1UL << L1_ADDR_SHIFT)
+#define L0_XLAT_SIZE               (1UL << L0_ADDR_SHIFT)
 
 #define GRANULE_MASK	GRANULE_SIZE
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

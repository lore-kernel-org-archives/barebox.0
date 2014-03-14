Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WONKn-0003fb-El
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 08:19:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 09:18:53 +0100
Message-Id: <1394785133-21262-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: MMU: Add some debugging aids and hints
To: barebox@lists.infradead.org

- If we have no memory registered in mmu_init() it's a critical bug.
  panic in this case.
- If we do not have a ttb when dma_alloc_coherent or remap_range is
  called it's also a critical bug. Panic in this case.
- if find_pte is called with an address outside our memory banks dump
  the memory banks and the address to give more clue what went wrong.

Also add some hints what might went wrong to the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 57 ++++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 55 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index fae83f3..84daa3d 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -92,6 +92,17 @@ uint32_t mmu_get_pte_uncached_flags()
 	return pte_flags_uncached;
 }
 
+static void arm_mmu_not_initialized_error(void)
+{
+	/*
+	 * This means:
+	 * - one of the MMU functions like dma_alloc_coherent
+	 *   or remap_range is called too early, before the MMU is initialized
+	 * - Or the MMU initialization has failed earlier
+	 */
+	panic("MMU not initialized\n");
+}
+
 /*
  * Create a second level translation table for the given virtual address.
  * We initially create a flat uncached mapping on it.
@@ -104,6 +115,9 @@ static u32 *arm_create_pte(unsigned long virt)
 
 	table = memalign(0x400, 0x400);
 
+	if (!ttb)
+		arm_mmu_not_initialized_error();
+
 	ttb[virt >> 20] = (unsigned long)table | PMD_TYPE_TABLE;
 
 	for (i = 0; i < 256; i++) {
@@ -118,8 +132,26 @@ static u32 *find_pte(unsigned long adr)
 {
 	u32 *table;
 
-	if ((ttb[adr >> 20] & PMD_TYPE_MASK) != PMD_TYPE_TABLE)
+	if (!ttb)
+		arm_mmu_not_initialized_error();
+
+	if ((ttb[adr >> 20] & PMD_TYPE_MASK) != PMD_TYPE_TABLE) {
+		struct memory_bank *bank;
+		int i = 0;
+
+		/*
+		 * This should only be called for page mapped memory inside our
+		 * memory banks. It's a bug to call it with section mapped memory
+		 * locations.
+		 */
+		pr_crit("%s: TTB for address 0x%08lx is not of type table\n",
+				__func__, adr);
+		pr_crit("Memory banks:\n");
+		for_each_memory_bank(bank)
+			pr_crit("#%d 0x%08lx - 0x%08lx\n", i, bank->start,
+					bank->start + bank->size - 1);
 		BUG();
+	}
 
 	/* find the coarse page table base address */
 	table = (u32 *)(ttb[adr >> 20] & ~0x3ff);
@@ -268,6 +300,15 @@ static int mmu_init(void)
 	struct memory_bank *bank;
 	int i;
 
+	if (list_empty(&memory_banks))
+		/*
+		 * If you see this it means you have no memory registered.
+		 * This can be done either with arm_add_mem_device() in an
+		 * initcall prior to mmu_initcall or via devicetree in the
+		 * memory node.
+		 */
+		panic("MMU: No memory bank found! Cannot continue\n");
+
 	arm_set_cache_functions();
 
 	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
@@ -279,13 +320,25 @@ static int mmu_init(void)
 	}
 
 	if (get_cr() & CR_M) {
+		/*
+		 * Early MMU code has already enabled the MMU. We assume a
+		 * flat 1:1 section mapping in this case.
+		 */
 		asm volatile ("mrc  p15,0,%0,c2,c0,0" : "=r"(ttb));
 
 		/* Clear unpredictable bits [13:0] */
 		ttb = (unsigned long *)((unsigned long)ttb & ~0x3fff);
 
 		if (!request_sdram_region("ttb", (unsigned long)ttb, SZ_16K))
-			pr_err("Error: Can't request SDRAM region for ttb at %p\n", ttb);
+			/*
+			 * This can mean that:
+			 * - the early MMU code has put the ttb into a place
+			 *   which we don't have inside our available memory
+			 * - Somebody else has occupied the ttb region which means
+			 *   the ttb will get corrupted.
+			 */
+			pr_crit("Critical Error: Can't request SDRAM region for ttb at %p\n",
+					ttb);
 	} else {
 		ttb = memalign(0x10000, 0x4000);
 	}
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

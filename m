Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJDxV-0005Uc-NI
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 10:17:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Mar 2020 12:17:17 +0200
Message-Id: <20200331101717.13616-1-s.hauer@pengutronix.de>
In-Reply-To: <20200331080109.24402-3-s.hauer@pengutronix.de>
References: <20200331080109.24402-3-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] arm64: Set PXN/UXN attributes for uncached mem
To: Barebox List <barebox@lists.infradead.org>

The attributes should be set to avoid speculative access to memory-mapped
peripherals.

The patch has been tested with:

noinline unsigned long nox(void)
{
	return get_pc();
}

static void xn_test(void)
{
	void *adr = (void *)SOME_SRAM_ADDRESS;
	unsigned long ret;
	unsigned long (*fn)(void) = adr;

	memcpy(adr, nox, 0x1000);

	sync_caches_for_execution();

	ret = fn();
	printf("pc: 0x%08lx\n", ret);
}

Without this patch nox() gets executed in SRAM, with it runs into a
abort as expected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes since v1:
- Select correct PXN/UXN bits based on current exception level

 arch/arm/cpu/mmu-early_64.c |  3 ++-
 arch/arm/cpu/mmu_64.c       |  4 ++--
 arch/arm/cpu/mmu_64.h       | 17 +++++++++++++++++
 3 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu-early_64.c b/arch/arm/cpu/mmu-early_64.c
index 94e372637a..a7598f28aa 100644
--- a/arch/arm/cpu/mmu-early_64.c
+++ b/arch/arm/cpu/mmu-early_64.c
@@ -67,7 +67,8 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 
 	el = current_el();
 	set_ttbr_tcr_mair(el, ttb, calc_tcr(el, EARLY_BITS_PER_VA), MEMORY_ATTRIBUTES);
-	create_sections((void *)ttb, 0, 0, 1UL << (EARLY_BITS_PER_VA - 1), UNCACHED_MEM);
+	create_sections((void *)ttb, 0, 0, 1UL << (EARLY_BITS_PER_VA - 1),
+			attrs_uncached_mem());
 	create_sections((void *)ttb, membase, membase, memsize, CACHED_MEM);
 	tlb_invalidate();
 	isb();
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 8181658952..14d955cd96 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -165,7 +165,7 @@ int arch_remap_range(void *_start, size_t size, unsigned flags)
 		attrs = CACHED_MEM;
 		break;
 	case MAP_UNCACHED:
-		attrs = UNCACHED_MEM;
+		attrs = attrs_uncached_mem();
 		break;
 	default:
 		return -EINVAL;
@@ -201,7 +201,7 @@ void __mmu_init(bool mmu_on)
 	pr_debug("ttb: 0x%p\n", ttb);
 
 	/* create a flat mapping */
-	create_sections(0, 0, 1UL << (BITS_PER_VA - 1), UNCACHED_MEM);
+	create_sections(0, 0, 1UL << (BITS_PER_VA - 1), attrs_uncached_mem());
 
 	/* Map sdram cached. */
 	for_each_memory_bank(bank)
diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
index a2a5477569..9bbb62fc6b 100644
--- a/arch/arm/cpu/mmu_64.h
+++ b/arch/arm/cpu/mmu_64.h
@@ -8,6 +8,23 @@
 			 PTE_BLOCK_OUTER_SHARE | \
 			 PTE_BLOCK_AF)
 
+static inline unsigned long attrs_uncached_mem(void)
+{
+	unsigned long attrs = UNCACHED_MEM;
+
+	switch (current_el()) {
+	case 3:
+	case 2:
+		attrs |= PTE_BLOCK_UXN;
+		break;
+	default:
+		attrs |= PTE_BLOCK_UXN | PTE_BLOCK_PXN;
+		break;
+	}
+
+	return attrs;
+}
+
 /*
  * Do it the simple way for now and invalidate the entire tlb
  */
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

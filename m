Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVj4d-0004hP-Hn
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 13:52:28 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 0A9BABF0E0
 for <barebox@lists.infradead.org>; Fri, 26 Apr 2013 15:50:36 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 26 Apr 2013 15:52:18 +0200
Message-Id: <1366984338-6649-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] ARM: mmu: Use PAGE_ALIGN in dma_free_coherent
To: barebox@lists.infradead.org

We PAGE_ALIGN the size in dma_alloc_coherent so do it also when free the memory.
Use PAGE_SIZE instead of magic numbers.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/cpu/mmu.c |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 34fe5c3..e3ea3b6 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -189,7 +189,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 			ptes, ttb_start, ttb_end);
 
 	for (i = 0; i < num_ptes; i++) {
-		ptes[i] = (phys + i * 4096) | PTE_TYPE_SMALL |
+		ptes[i] = (phys + i * PAGE_SIZE) | PTE_TYPE_SMALL |
 			pte_flags_cached;
 	}
 
@@ -300,7 +300,7 @@ static int mmu_init(void)
 	asm volatile ("mcr  p15,0,%0,c3,c0,0" : : "r"(i) /*:*/);
 
 	/* create a flat mapping using 1MiB sections */
-	create_sections(0, 0, 4096, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
+	create_sections(0, 0, PAGE_SIZE, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ |
 			PMD_TYPE_SECT);
 
 	vectors_init();
@@ -332,7 +332,7 @@ void *dma_alloc_coherent(size_t size)
 	void *ret;
 
 	size = PAGE_ALIGN(size);
-	ret = xmemalign(4096, size);
+	ret = xmemalign(PAGE_SIZE, size);
 
 	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
 
@@ -353,6 +353,7 @@ void *phys_to_virt(unsigned long phys)
 
 void dma_free_coherent(void *mem, size_t size)
 {
+	size = PAGE_ALIGN(size);
 	remap_range(mem, size, pte_flags_cached);
 
 	free(mem);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fpw8n-0007LH-N4
 for barebox@lists.infradead.org; Wed, 15 Aug 2018 13:47:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Aug 2018 15:46:59 +0200
Message-Id: <20180815134659.32553-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: MMU: fix wrong dma_flush_range in arm_create_pte()
To: Barebox List <barebox@lists.infradead.org>

Since 7ba0f2d299 arm_create_pte() flushes the page table entries itself
and it's no longer done in arch_remap_range(). Unfortunately it does
not flush the modified 1st level page table entry, but instead the base
of the page table. Fix it up.

Fixes: 7ba0f2d299 ARM: mmu: fix cache flushing when replacing a section with a PTE

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 88ee11cb48..f6c44e3e25 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -151,7 +151,7 @@ static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
 	dma_flush_range(table, PTRS_PER_PTE * sizeof(u32));
 
 	ttb[ttb_idx] = (unsigned long)table | PMD_TYPE_TABLE;
-	dma_flush_range(ttb, sizeof(u32));
+	dma_flush_range(&ttb[ttb_idx], sizeof(u32));
 
 	return table;
 }
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

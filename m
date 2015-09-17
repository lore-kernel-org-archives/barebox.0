Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZcWhU-0000jt-F4
 for barebox@lists.infradead.org; Thu, 17 Sep 2015 10:46:01 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Thu, 17 Sep 2015 12:45:10 +0200
Message-Id: <1442486711-6841-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <lya8smdz5d.fsf@ensc-virt.intern.sigma-chemnitz.de>
References: <lya8smdz5d.fsf@ensc-virt.intern.sigma-chemnitz.de>
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
Subject: [PATCH 1/2] ARM: MMU: fixed dma_flush_range() call
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

dma_flush_range() expects an address as second argument, not a size.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 arch/arm/cpu/mmu.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 37bfa05..8ceb450 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -246,7 +246,8 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 	}
 
 	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
-	dma_flush_range((unsigned long)ptes, num_ptes * sizeof(u32));
+	dma_flush_range((unsigned long)ptes,
+			(unsigned long)ptes + num_ptes * sizeof(u32));
 
 	tlb_invalidate();
 
-- 
2.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

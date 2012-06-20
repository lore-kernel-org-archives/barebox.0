Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShJXZ-0002Fc-0J
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 11:57:43 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 20 Jun 2012 13:57:30 +0200
Message-Id: <1340193455-2229-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1340193455-2229-1-git-send-email-mkl@pengutronix.de>
References: <1340193455-2229-1-git-send-email-mkl@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 1/6] ARM mmu: don't use CONFIG_MMU to disable mmu code,
 there are static inline versions
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/cpu/mmu.c |    4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index c19f931..55b07a4 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -299,11 +299,9 @@ void *dma_alloc_coherent(size_t size)
 	size = PAGE_ALIGN(size);
 	ret = xmemalign(4096, size);
 
-#ifdef CONFIG_MMU
 	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
 
 	remap_range(ret, size, PTE_FLAGS_UNCACHED);
-#endif
 
 	return ret;
 }
@@ -320,9 +318,7 @@ void *phys_to_virt(unsigned long phys)
 
 void dma_free_coherent(void *mem, size_t size)
 {
-#ifdef CONFIG_MMU
 	remap_range(mem, size, PTE_FLAGS_CACHED);
-#endif
 
 	free(mem);
 }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2GZ-0003LR-AK
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:59:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:11 +0200
Message-Id: <20181018065827.19973-5-s.hauer@pengutronix.de>
In-Reply-To: <20181018065827.19973-1-s.hauer@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/20] ARM: mmu: rename dma_alloc
To: Barebox List <barebox@lists.infradead.org>

a function named dma_alloc is already declared in include/dma.h, so when
we want to include that file we must rename the function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index f6c44e3e25..3f00acdb29 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -497,7 +497,7 @@ void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-static void *dma_alloc(size_t size, dma_addr_t *dma_handle, unsigned flags)
+static void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
 {
 	void *ret;
 
@@ -515,12 +515,12 @@ static void *dma_alloc(size_t size, dma_addr_t *dma_handle, unsigned flags)
 
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
-	return dma_alloc(size, dma_handle, MAP_UNCACHED);
+	return dma_alloc_map(size, dma_handle, MAP_UNCACHED);
 }
 
 void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 {
-	return dma_alloc(size, dma_handle, ARCH_MAP_WRITECOMBINE);
+	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
 
 unsigned long virt_to_phys(volatile void *virt)
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhst-00019Q-Nk
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:40:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:40:08 +0200
Message-Id: <1438954809-5962-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438954809-5962-1-git-send-email-s.hauer@pengutronix.de>
References: <1438954809-5962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: implement dma_alloc_writecombine
To: Barebox List <barebox@lists.infradead.org>

Writecombined memory is nice for video framebuffers, so implement it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 20 ++++++++++++++++++++
 include/dma.h      |  1 +
 2 files changed, 21 insertions(+)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 37bfa05..2d00fa7 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -66,6 +66,7 @@ static inline void tlb_invalidate(void)
 }
 
 #define PTE_FLAGS_CACHED_V7 (PTE_EXT_TEX(1) | PTE_BUFFERABLE | PTE_CACHEABLE)
+#define PTE_FLAGS_WC_V7 PTE_EXT_TEX(1)
 #define PTE_FLAGS_UNCACHED_V7 (0)
 #define PTE_FLAGS_CACHED_V4 (PTE_SMALL_AP_UNO_SRW | PTE_BUFFERABLE | PTE_CACHEABLE)
 #define PTE_FLAGS_UNCACHED_V4 PTE_SMALL_AP_UNO_SRW
@@ -75,6 +76,7 @@ static inline void tlb_invalidate(void)
  * This will be determined at runtime.
  */
 static uint32_t pte_flags_cached;
+static uint32_t pte_flags_wc;
 static uint32_t pte_flags_uncached;
 
 #define PTE_MASK ((1 << 12) - 1)
@@ -325,9 +327,11 @@ static int mmu_init(void)
 
 	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
 		pte_flags_cached = PTE_FLAGS_CACHED_V7;
+		pte_flags_wc = PTE_FLAGS_WC_V7;
 		pte_flags_uncached = PTE_FLAGS_UNCACHED_V7;
 	} else {
 		pte_flags_cached = PTE_FLAGS_CACHED_V4;
+		pte_flags_wc = PTE_FLAGS_UNCACHED_V4;
 		pte_flags_uncached = PTE_FLAGS_UNCACHED_V4;
 	}
 
@@ -408,6 +412,22 @@ void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 	return ret;
 }
 
+void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
+{
+	void *ret;
+
+	size = PAGE_ALIGN(size);
+	ret = xmemalign(PAGE_SIZE, size);
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)ret;
+
+	dma_inv_range((unsigned long)ret, (unsigned long)ret + size);
+
+	remap_range(ret, size, pte_flags_wc);
+
+	return ret;
+}
+
 unsigned long virt_to_phys(volatile void *virt)
 {
 	return (unsigned long)virt;
diff --git a/include/dma.h b/include/dma.h
index 800d8b1..4d31797 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -39,5 +39,6 @@ void dma_sync_single_for_device(unsigned long address, size_t size,
 
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle);
 void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size);
+void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle);
 
 #endif /* __DMA_H */
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

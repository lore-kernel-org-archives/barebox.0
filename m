Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1WD-0008JT-50
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:41:57 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id F007926C200A
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:16 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:40:00 +0100
Message-Id: <1423777200-22965-25-git-send-email-dev@lynxeye.de>
In-Reply-To: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH RFT 24/24] ARM: MMU: unexport cache maintenance functions
To: barebox@lists.infradead.org

Those should only be used internally. All users should rather
use the streaming DMA API, which does proper cache maintenance.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/cpu/mmu.c         | 35 ++++++++++++++---------------------
 arch/arm/include/asm/mmu.h | 14 --------------
 2 files changed, 14 insertions(+), 35 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index e3c06cd..53d0446 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -159,6 +159,20 @@ static u32 *find_pte(unsigned long adr)
 	return &table[(adr >> PAGE_SHIFT) & 0xff];
 }
 
+static void dma_flush_range(unsigned long start, unsigned long end)
+{
+	if (outer_cache.flush_range)
+		outer_cache.flush_range(start, end);
+	__dma_flush_range(start, end);
+}
+
+static void dma_inv_range(unsigned long start, unsigned long end)
+{
+	if (outer_cache.inv_range)
+		outer_cache.inv_range(start, end);
+	__dma_inv_range(start, end);
+}
+
 void remap_range(void *_start, size_t size, uint32_t flags)
 {
 	unsigned long start = (unsigned long)_start;
@@ -412,27 +426,6 @@ void dma_free_coherent(void *mem, size_t size)
 	free(mem);
 }
 
-void dma_clean_range(unsigned long start, unsigned long end)
-{
-	if (outer_cache.clean_range)
-		outer_cache.clean_range(start, end);
-	__dma_clean_range(start, end);
-}
-
-void dma_flush_range(unsigned long start, unsigned long end)
-{
-	if (outer_cache.flush_range)
-		outer_cache.flush_range(start, end);
-	__dma_flush_range(start, end);
-}
-
-void dma_inv_range(unsigned long start, unsigned long end)
-{
-	if (outer_cache.inv_range)
-		outer_cache.inv_range(start, end);
-	__dma_inv_range(start, end);
-}
-
 void dma_sync_single_for_cpu(unsigned long address, size_t size,
 			     enum dma_data_direction dir)
 {
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index 01c20bd..97bb0db 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -27,26 +27,12 @@ static inline void setup_dma_coherent(unsigned long offset)
 }
 
 #ifdef CONFIG_MMU
-void dma_clean_range(unsigned long, unsigned long);
-void dma_flush_range(unsigned long, unsigned long);
-void dma_inv_range(unsigned long, unsigned long);
 void remap_range(void *_start, size_t size, uint32_t flags);
 void *map_io_sections(unsigned long physaddr, void *start, size_t size);
 uint32_t mmu_get_pte_cached_flags(void);
 uint32_t mmu_get_pte_uncached_flags(void);
 
 #else
-static inline void dma_clean_range(unsigned long s, unsigned long e)
-{
-}
-
-static inline void dma_flush_range(unsigned long s, unsigned long e)
-{
-}
-
-static inline void dma_inv_range(unsigned long s, unsigned long e)
-{
-}
 
 static inline void remap_range(void *_start, size_t size, uint32_t flags)
 {
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

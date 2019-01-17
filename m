Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gk1KP-00047r-Ho
 for barebox@lists.infradead.org; Thu, 17 Jan 2019 06:39:08 +0000
Received: by mail-pl1-x643.google.com with SMTP id y1so4252202plp.9
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2019 22:39:01 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 Jan 2019 22:38:37 -0800
Message-Id: <20190117063840.13674-10-andrew.smirnov@gmail.com>
In-Reply-To: <20190117063840.13674-1-andrew.smirnov@gmail.com>
References: <20190117063840.13674-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/12] ARM: mmu: Share code for dma_sync_single_for_cpu()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both ARM and ARM64 have identical code for
dma_sync_single_for_cpu(). Move it to mmu-common.c so it can be shared.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-common.c | 8 ++++++++
 arch/arm/cpu/mmu.c        | 7 -------
 arch/arm/cpu/mmu_64.c     | 7 -------
 3 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 8c7d61447..a7d3b5b11 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -8,6 +8,14 @@
 
 #include "mmu.h"
 
+
+void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
+			     enum dma_data_direction dir)
+{
+	if (dir != DMA_TO_DEVICE)
+		dma_inv_range((void *)address, size);
+}
+
 dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
 			  enum dma_data_direction dir)
 {
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 35ac00a8f..97c459ff0 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -506,13 +506,6 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 	return dma_alloc_map(size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
 
-void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-			     enum dma_data_direction dir)
-{
-	if (dir != DMA_TO_DEVICE)
-		dma_inv_range((void *)address, size);
-}
-
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
 				enum dma_data_direction dir)
 {
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index ed4aa00a8..2cb62370e 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -256,13 +256,6 @@ void dma_inv_range(void *ptr, size_t size)
 	v8_inv_dcache_range(start, end);
 }
 
-void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-                             enum dma_data_direction dir)
-{
-	if (dir != DMA_TO_DEVICE)
-		v8_inv_dcache_range(address, address + size - 1);
-}
-
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
                                 enum dma_data_direction dir)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

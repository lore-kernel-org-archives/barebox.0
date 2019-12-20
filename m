Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJKd-0003rv-6h
 for barebox@lists.infradead.org; Fri, 20 Dec 2019 14:32:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Dec 2019 15:32:25 +0100
Message-Id: <20191220143232.28354-4-s.hauer@pengutronix.de>
In-Reply-To: <20191220143232.28354-1-s.hauer@pengutronix.de>
References: <20191220143232.28354-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] device: Introduce dma_offset
To: Barebox List <barebox@lists.infradead.org>

For devices that do not have a 1:1 mapping between DMA and CPU we need a
dma_offset. This adds dma_offset to struct device_d and starts honoring
it in ARM dma_(un)map_single(). Also we add some comments to functions
that would normally need a device argument to make the DMA <-> CPU
translations device specific.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c | 33 +++++++++++++++++++++++++++++++--
 arch/arm/cpu/mmu.c        |  4 ++++
 arch/arm/cpu/mmu_64.c     |  4 ++++
 include/driver.h          |  2 ++
 4 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index aeefbb2daa..287622b203 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -11,9 +11,32 @@
 #include "mmu.h"
 
 
+static inline dma_addr_t cpu_to_dma(struct device_d *dev, unsigned long cpu_addr)
+{
+	dma_addr_t dma_addr = cpu_addr;
+
+	if (dev)
+		dma_addr -= dev->dma_offset;
+
+	return dma_addr;
+}
+
+static inline unsigned long dma_to_cpu(struct device_d *dev, dma_addr_t addr)
+{
+	unsigned long cpu_addr = addr;
+
+	if (dev)
+		cpu_addr += dev->dma_offset;
+
+	return cpu_addr;
+}
+
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir)
 {
+	/*
+	 * FIXME: This function needs a device argument to support non 1:1 mappings
+	 */
 	if (dir != DMA_TO_DEVICE)
 		dma_inv_range((void *)address, size);
 }
@@ -25,12 +48,14 @@ dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
 
 	dma_sync_single_for_device(addr, size, dir);
 
-	return addr;
+	return cpu_to_dma(dev, addr);
 }
 
-void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
+void dma_unmap_single(struct device_d *dev, dma_addr_t dma_addr, size_t size,
 		      enum dma_data_direction dir)
 {
+	unsigned long addr = dma_to_cpu(dev, dma_addr);
+
 	dma_sync_single_for_cpu(addr, size, dir);
 }
 
@@ -53,6 +78,10 @@ void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags)
 
 void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
+	/*
+	 * FIXME: This function needs a device argument to support non 1:1 mappings
+	 */
+
 	return dma_alloc_map(size, dma_handle, MAP_UNCACHED);
 }
 
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 158b130b57..1f97c28ec6 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -491,6 +491,10 @@ void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
 				enum dma_data_direction dir)
 {
+	/*
+	 * FIXME: This function needs a device argument to support non 1:1 mappings
+	 */
+
 	if (dir == DMA_FROM_DEVICE) {
 		__dma_inv_range(address, address + size);
 		if (outer_cache.inv_range)
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index f7a13014af..98cd4c754e 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -245,6 +245,10 @@ void dma_flush_range(void *ptr, size_t size)
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
                                 enum dma_data_direction dir)
 {
+	/*
+	 * FIXME: This function needs a device argument to support non 1:1 mappings
+	 */
+
 	if (dir == DMA_FROM_DEVICE)
 		v8_inv_dcache_range(address, address + size - 1);
 	else
diff --git a/include/driver.h b/include/driver.h
index ad59ce90c3..74be1b3e8e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -93,6 +93,8 @@ struct device_d {
 
 	u64 dma_mask;
 
+	unsigned long dma_offset;
+
 	void    (*info) (struct device_d *);
 	/*
 	 * For devices which take longer to probe this is called
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

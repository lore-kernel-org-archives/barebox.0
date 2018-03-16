Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0008BU-MW
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:27 +0100
Message-Id: <20180316125354.23462-52-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 51/78] ARM: aarch64: implement dma operations
To: Barebox List <barebox@lists.infradead.org>

For proper DMA support dma_alloc_coherent and DMA sync operations are
needed. Implement them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 55 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 6606405b21..20f6c387f3 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -365,3 +365,58 @@ void *phys_to_virt(unsigned long phys)
 {
 	return (void *)phys;
 }
+
+void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	void *ret;
+
+	size = PAGE_ALIGN(size);
+	ret = xmemalign(PAGE_SIZE, size);
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)ret;
+
+	map_region((unsigned long)ret, (unsigned long)ret, size, UNCACHED_MEM);
+	tlb_invalidate();
+
+	return ret;
+}
+
+void dma_free_coherent(void *mem, dma_addr_t dma_handle, size_t size)
+{
+	size = PAGE_ALIGN(size);
+
+	map_region((unsigned long)mem, (unsigned long)mem, size, CACHED_MEM);
+
+	free(mem);
+}
+
+void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
+                             enum dma_data_direction dir)
+{
+	if (dir != DMA_TO_DEVICE)
+		v8_inv_dcache_range(address, address + size - 1);
+}
+
+void dma_sync_single_for_device(dma_addr_t address, size_t size,
+                                enum dma_data_direction dir)
+{
+	if (dir == DMA_FROM_DEVICE)
+		v8_inv_dcache_range(address, address + size - 1);
+	v8_flush_dcache_range(address, address + size - 1);
+}
+
+dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
+			  enum dma_data_direction dir)
+{
+	unsigned long addr = (unsigned long)ptr;
+
+	dma_sync_single_for_device(addr, size, dir);
+
+	return addr;
+}
+
+void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
+		      enum dma_data_direction dir)
+{
+	dma_sync_single_for_cpu(addr, size, dir);
+}
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

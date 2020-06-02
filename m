Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2gh-0006zY-Ux
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 08:54:27 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 10:54:01 +0200
Message-Id: <20200602085412.16554-15-a.fatoum@pengutronix.de>
In-Reply-To: <20200602085412.16554-1-a.fatoum@pengutronix.de>
References: <20200602085412.16554-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 14/25] sandbox: asm: implement stub DMA functions
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

For compile-testing drivers that use DMA operations under sandbox,
we want stub implementations of these. Provide them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/include/asm/dma.h | 53 +++++++++++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
index 459536779e0a..5e72d8e7df2d 100644
--- a/arch/sandbox/include/asm/dma.h
+++ b/arch/sandbox/include/asm/dma.h
@@ -8,6 +8,57 @@
 #ifndef __ASM_DMA_H
 #define __ASM_DMA_H
 
-/* empty*/
+#include <linux/kernel.h>
+#include <linux/string.h>
+#include <driver.h>
+
+#define dma_alloc dma_alloc
+static inline void *dma_alloc(size_t size)
+{
+	return xmemalign(64, ALIGN(size, 64));
+}
+
+static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
+{
+	void *ret = xmemalign(4096, size);
+	if (dma_handle)
+		*dma_handle = (dma_addr_t)ret;
+
+	memset(ret, 0, size);
+
+	return ret;
+}
+
+static inline void *dma_alloc_writecombine(size_t size, dma_addr_t *dma_handle)
+{
+	return dma_alloc_coherent(size, dma_handle);
+}
+
+static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
+				     size_t size)
+{
+	free(mem);
+}
+
+static inline dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
+					enum dma_data_direction dir)
+{
+	return (dma_addr_t)ptr;
+}
+
+static inline void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
+				    enum dma_data_direction dir)
+{
+}
+
+static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
+					   enum dma_data_direction dir)
+{
+}
+
+static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
+					      enum dma_data_direction dir)
+{
+}
 
 #endif /* __ASM_DMA_H */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

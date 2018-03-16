Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosH-0008BT-NP
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 49/78] dma: Add prototypes for dma mapping functions
Date: Fri, 16 Mar 2018 13:53:25 +0100
Message-Id: <20180316125354.23462-50-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

Right now we only have the dma_sync_single_* functions, but no functions
for actually mapping a pointer. The mapping functions become necessary
when casting a pointer to unsigned long to get a dma address is not
enough. (I'm not even going so far that we'll add IOMMU support, but on
some architectures we need a place where we can check if a pointer is
DMA mappable at all)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/dma.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/dma.h b/include/dma.h
index 29d94c0a52..5fdcb1733c 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -30,6 +30,18 @@ static inline void dma_free(void *mem)
 }
 #endif
 
+dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
+			  enum dma_data_direction dir);
+void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
+		      enum dma_data_direction dir);
+
+#define DMA_ERROR_CODE  (~(dma_addr_t)0)
+
+static inline int dma_mapping_error(struct device_d *dev, dma_addr_t dma_addr)
+{
+	return dma_addr == DMA_ERROR_CODE;
+}
+
 /* streaming DMA - implement the below calls to support HAS_DMA */
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir);
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

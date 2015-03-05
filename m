Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdfv-00077Z-M9
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:51:26 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 9622126C2003
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:25 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:49:53 +0100
Message-Id: <1425592221-23774-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
References: <1425592221-23774-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 02/27] NIOS2: use dma_addr_t in dma_alloc_coherent
To: barebox@lists.infradead.org

This allows to consolidate the prototype of this function across
architectures. Also guard against calles that pass in NULL as the
dma handle pointer.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/nios2/include/asm/dma-mapping.h | 13 +++++++------
 arch/nios2/include/asm/types.h       |  2 ++
 drivers/net/altera_tse.c             |  2 +-
 3 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/arch/nios2/include/asm/dma-mapping.h b/arch/nios2/include/asm/dma-mapping.h
index 620c207..5ecc1ed 100644
--- a/arch/nios2/include/asm/dma-mapping.h
+++ b/arch/nios2/include/asm/dma-mapping.h
@@ -14,24 +14,25 @@
  */
 
 #if (DCACHE_SIZE != 0)
-static inline void *dma_alloc_coherent(size_t len, unsigned long *handle)
+static inline void *dma_alloc_coherent(size_t len, dma_addr_t *handle)
 {
 	void *addr = malloc(len + DCACHE_LINE_SIZE);
 	if (!addr)
 		return 0;
 	flush_dcache_range((unsigned long)addr,(unsigned long)addr + len + DCACHE_LINE_SIZE);
-	*handle = ((unsigned long)addr +
-		   (DCACHE_LINE_SIZE - 1)) &
-		~(DCACHE_LINE_SIZE - 1) & ~(IO_REGION_BASE);
+	if (handle)
+		*handle = ((dma_addr_t)addr + (DCACHE_LINE_SIZE - 1)) &
+			  ~(DCACHE_LINE_SIZE - 1) & ~(IO_REGION_BASE);
 	return (void *)(*handle | IO_REGION_BASE);
 }
 #else
-static inline void *dma_alloc_coherent(size_t len, unsigned long *handle)
+static inline void *dma_alloc_coherent(size_t len, dma_addr_t *handle)
 {
 	void *addr = malloc(len);
 	if (!addr)
 		return 0;
-	*handle = (unsigned long)addr;
+	if (handle)
+		*handle = (dma_addr_t)addr;
 	return (void *)(*handle | IO_REGION_BASE);
 }
 #endif
diff --git a/arch/nios2/include/asm/types.h b/arch/nios2/include/asm/types.h
index 1f613d1..21c3415 100644
--- a/arch/nios2/include/asm/types.h
+++ b/arch/nios2/include/asm/types.h
@@ -3,5 +3,7 @@
 
 #include <asm/int-ll64.h>
 
+typedef u32 dma_addr_t;
+
 #endif
 
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
index ecbb9f8..3c49c09 100644
--- a/drivers/net/altera_tse.c
+++ b/drivers/net/altera_tse.c
@@ -520,7 +520,7 @@ static int tse_probe(struct device_d *dev)
 		return PTR_ERR(tx_desc);
 	rx_desc = tx_desc + 2;
 #else
-	tx_desc = dma_alloc_coherent(sizeof(*tx_desc) * (3 + PKTBUFSRX), (unsigned long *)&dma_handle);
+	tx_desc = dma_alloc_coherent(sizeof(*tx_desc) * (3 + PKTBUFSRX), (dma_addr_t *)&dma_handle);
 	rx_desc = tx_desc + 2;
 
 	if (!tx_desc) {
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

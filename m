Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTdgm-0007hj-2J
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 21:52:21 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id BF34C26C200C
 for <barebox@lists.infradead.org>; Thu,  5 Mar 2015 22:50:28 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  5 Mar 2015 22:50:02 +0100
Message-Id: <1425592221-23774-12-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 08/27] ARM: implement streaming DMA ops
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/cpu/mmu.c         | 24 ++++++++++++++++++++++++
 arch/arm/include/asm/dma.h | 10 ++++++++++
 2 files changed, 34 insertions(+)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index c480e07..f1ebd29 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -18,6 +18,7 @@
 #define pr_fmt(fmt)	"mmu: " fmt
 
 #include <common.h>
+#include <dma-dir.h>
 #include <init.h>
 #include <asm/mmu.h>
 #include <errno.h>
@@ -434,3 +435,26 @@ void dma_inv_range(unsigned long start, unsigned long end)
 	__dma_inv_range(start, end);
 }
 
+void dma_sync_single_for_cpu(unsigned long address, size_t size,
+			     enum dma_data_direction dir)
+{
+	if (dir != DMA_TO_DEVICE) {
+		if (outer_cache.inv_range)
+			outer_cache.inv_range(address, address + size);
+		__dma_inv_range(address, address + size);
+	}
+}
+
+void dma_sync_single_for_device(unsigned long address, size_t size,
+				enum dma_data_direction dir)
+{
+	if (dir == DMA_FROM_DEVICE) {
+		__dma_inv_range(address, address + size);
+		if (outer_cache.inv_range)
+			outer_cache.inv_range(address, address + size);
+	} else {
+		__dma_clean_range(address, address + size);
+		if (outer_cache.clean_range)
+			outer_cache.clean_range(address, address + size);
+	}
+}
diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index 48a9c6e..d9bce3d 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -28,4 +28,14 @@ static inline void dma_free_coherent(void *mem, dma_addr_t dma_handle,
 {
 	free(mem);
 }
+
+static inline void dma_sync_single_for_cpu(unsigned long address, size_t size,
+					   enum dma_data_direction dir)
+{
+}
+
+static inline void dma_sync_single_for_device(unsigned long address, size_t size,
+					      enum dma_data_direction dir)
+{
+}
 #endif
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

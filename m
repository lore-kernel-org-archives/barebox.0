Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1VO-00083p-6o
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:41:02 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id 4521F26C2006
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:09 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:39:41 +0100
Message-Id: <1423777200-22965-6-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH RFT 05/24] ARM: implement streaming DMA ops
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/cpu/mmu.c         | 24 ++++++++++++++++++++++++
 arch/arm/include/asm/dma.h | 10 ++++++++++
 2 files changed, 34 insertions(+)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index e733ec4..e3c06cd 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -18,6 +18,7 @@
 #define pr_fmt(fmt)	"mmu: " fmt
 
 #include <common.h>
+#include <dma-dir.h>
 #include <init.h>
 #include <asm/mmu.h>
 #include <errno.h>
@@ -432,3 +433,26 @@ void dma_inv_range(unsigned long start, unsigned long end)
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
index 47e6a91..897c2ed 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -23,4 +23,14 @@ static inline void dma_free_coherent(void *mem, size_t size)
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

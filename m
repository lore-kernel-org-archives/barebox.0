Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM1VJ-00083E-MQ
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 21:40:59 +0000
Received: from tellur.intern.lynxeye.de (p57B5FBCA.dip0.t-ipconnect.de
 [87.181.251.202]) by lynxeye.de (Postfix) with ESMTPA id BF34126C2002
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 22:40:07 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 12 Feb 2015 22:39:39 +0100
Message-Id: <1423777200-22965-4-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH RFT 03/24] dma: add streaming DMA ops
To: barebox@lists.infradead.org

This will allow us to implement cache maintenance in a platform
agnostic way.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 include/dma-dir.h |  6 ++++++
 include/dma.h     | 11 +++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 include/dma-dir.h

diff --git a/include/dma-dir.h b/include/dma-dir.h
new file mode 100644
index 0000000..ba107f1
--- /dev/null
+++ b/include/dma-dir.h
@@ -0,0 +1,6 @@
+enum dma_data_direction {
+	DMA_BIDIRECTIONAL = 0,
+	DMA_TO_DEVICE = 1,
+	DMA_FROM_DEVICE = 2,
+	DMA_NONE = 3,
+};
diff --git a/include/dma.h b/include/dma.h
index 899f831..4274520 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -11,6 +11,7 @@
 #include <malloc.h>
 #include <xfuncs.h>
 
+#include <dma-dir.h>
 #include <asm/dma.h>
 
 #ifndef dma_alloc
@@ -27,4 +28,14 @@ static inline void dma_free(void *mem)
 }
 #endif
 
+/* streaming DMA - implement the below calls to support HAS_DMA */
+void dma_sync_single_for_cpu(unsigned long address, size_t size,
+			     enum dma_data_direction dir);
+
+void dma_sync_single_for_device(unsigned long address, size_t size,
+				enum dma_data_direction dir);
+
+void *dma_alloc_coherent(size_t size);
+void dma_free_coherent(void *mem, size_t size);
+
 #endif /* __DMA_H */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

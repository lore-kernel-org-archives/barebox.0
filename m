Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sgxff-00056F-Dm
 for barebox@lists.infradead.org; Tue, 19 Jun 2012 12:36:37 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 19 Jun 2012 14:36:28 +0200
Message-Id: <1340109391-22794-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1340109391-22794-1-git-send-email-mkl@pengutronix.de>
References: <1340109391-22794-1-git-send-email-mkl@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/6] nios: add dma_alloc, dma_free and asm/dma.h
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

Some drivers call dma_inv_range() on buffers, on arm these buffers must
be cache line aligned.  This patch add dma_alloc, dma_free to existing
dma-mapping.h. On nios the mem is aligned to DCACHE_LINE_SIZE.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/nios2/include/asm/dma-mapping.h |   10 ++++++++++
 arch/nios2/include/asm/dma.h         |    8 ++++++++
 2 files changed, 18 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/dma.h

diff --git a/arch/nios2/include/asm/dma-mapping.h b/arch/nios2/include/asm/dma-mapping.h
index 5b70f4c..0ec9c89 100644
--- a/arch/nios2/include/asm/dma-mapping.h
+++ b/arch/nios2/include/asm/dma-mapping.h
@@ -22,4 +22,14 @@ static inline void *dma_alloc_coherent(size_t len, unsigned long *handle)
 	return (void *)(*handle | IO_REGION_BASE);
 }
 
+static inline void *dma_alloc(size_t size)
+{
+	return xmemalign(DCACHE_LINE_SIZE, size);
+}
+
+static inline void dma_free(void *mem)
+{
+	free(mem);
+}
+
 #endif /* __ASM_NIOS2_DMA_MAPPING_H */
diff --git a/arch/nios2/include/asm/dma.h b/arch/nios2/include/asm/dma.h
new file mode 100644
index 0000000..8f709d2
--- /dev/null
+++ b/arch/nios2/include/asm/dma.h
@@ -0,0 +1,8 @@
+/*
+ * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#include <asm/dma-mapping.h>
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

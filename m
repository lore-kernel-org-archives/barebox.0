Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sgxff-00056E-76
 for barebox@lists.infradead.org; Tue, 19 Jun 2012 12:36:36 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 19 Jun 2012 14:36:27 +0200
Message-Id: <1340109391-22794-3-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/6] ARM mmu: introduce dma_alloc, dma_free
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

dma_alloc() allocates memory aligned to cache lines. We have to use
cache line aligned buffers if a driver calls dma_inv_range on the
buffer. Add dma_free() for documentation reasons, too.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/include/asm/dma.h |    8 ++++++++
 arch/arm/include/asm/mmu.h |   10 ++++++++++
 2 files changed, 18 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/include/asm/dma.h

diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
new file mode 100644
index 0000000..cb9cd1b
--- /dev/null
+++ b/arch/arm/include/asm/dma.h
@@ -0,0 +1,8 @@
+/*
+ * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#include <asm/mmu.h>
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index f5ae7a8..cc3529f 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -23,6 +23,16 @@ static inline void setup_dma_coherent(unsigned long offset)
 {
 }
 
+static inline void *dma_alloc(size_t size)
+{
+	return xmemalign(64, size);
+}
+
+static inline void dma_free(void *mem)
+{
+	free(mem);
+}
+
 #ifdef CONFIG_MMU
 void *dma_alloc_coherent(size_t size);
 void dma_free_coherent(void *mem, size_t size);
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

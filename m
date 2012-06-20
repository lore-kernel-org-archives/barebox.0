Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShJXZ-0002Fh-1L
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 11:57:44 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 20 Jun 2012 13:57:33 +0200
Message-Id: <1340193455-2229-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1340193455-2229-1-git-send-email-mkl@pengutronix.de>
References: <1340193455-2229-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 4/6] ARM mmu: add dma_alloc
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

dma_alloc() allocates memory aligned to cache lines. We have to use
cache line aligned buffers if a driver calls dma_inv_range on the
buffer.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/include/asm/dma.h |    8 ++++++++
 arch/arm/include/asm/mmu.h |   13 +++++++++++--
 2 files changed, 19 insertions(+), 2 deletions(-)
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
index f5ae7a8..a66da8c 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -1,9 +1,12 @@
 #ifndef __ASM_MMU_H
 #define __ASM_MMU_H
 
-#include <asm/pgtable.h>
-#include <malloc.h>
+#include <common.h>
 #include <errno.h>
+#include <malloc.h>
+#include <xfuncs.h>
+
+#include <asm/pgtable.h>
 
 #define PMD_SECT_DEF_UNCACHED (PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT)
 #define PMD_SECT_DEF_CACHED (PMD_SECT_WB | PMD_SECT_DEF_UNCACHED)
@@ -23,6 +26,12 @@ static inline void setup_dma_coherent(unsigned long offset)
 {
 }
 
+#define dma_alloc dma_alloc
+static inline void *dma_alloc(size_t size)
+{
+	return xmemalign(64, ALIGN(size, 64));
+}
+
 #ifdef CONFIG_MMU
 void *dma_alloc_coherent(size_t size);
 void dma_free_coherent(void *mem, size_t size);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

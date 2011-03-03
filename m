Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUV-0003S6-H1
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:36 +0000
Received: by mail-ww0-f49.google.com with SMTP id 40so1440274wwj.18
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:27 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:44 +0100
Message-Id: <4d701d43.9009d80a.2cd3.5e91@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 30/54] Add arch/nios2/include/asm/dma-mapping.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/dma-mapping.h

---
 arch/nios2/include/asm/dma-mapping.h |   25 +++++++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/dma-mapping.h

diff --git a/arch/nios2/include/asm/dma-mapping.h b/arch/nios2/include/asm/dma-mapping.h
new file mode 100644
index 0000000..f9159c5
--- /dev/null
+++ b/arch/nios2/include/asm/dma-mapping.h
@@ -0,0 +1,25 @@
+#ifndef __ASM_NIOS2_DMA_MAPPING_H
+#define __ASM_NIOS2_DMA_MAPPING_H
+
+#include <asm/cache.h>
+
+/* dma_alloc_coherent() return cache-line aligned allocation which is mapped
+ * to uncached io region.
+ *
+ * IO_REGION_BASE should be defined in board config header file
+ *   0x80000000 for nommu, 0xe0000000 for mmu
+ */
+
+static inline void *dma_alloc_coherent(size_t len, unsigned long *handle)
+{
+	void *addr = malloc(len + DCACHE_LINE_SIZE);
+	if (!addr)
+		return 0;
+	flush_dcache((unsigned long)addr, len + DCACHE_LINE_SIZE);
+	*handle = ((unsigned long)addr +
+		   (DCACHE_LINE_SIZE - 1)) &
+		~(DCACHE_LINE_SIZE - 1) & ~(IO_REGION_BASE);
+	return (void *)(*handle | IO_REGION_BASE);
+}
+
+#endif /* __ASM_NIOS2_DMA_MAPPING_H */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

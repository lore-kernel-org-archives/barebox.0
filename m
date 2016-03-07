Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFb-0004vh-3A
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:10 +0000
Received: by mail-lb0-x232.google.com with SMTP id xr8so33351631lbb.1
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:46 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:18 +0300
Message-Id: <1457357426-9868-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 07/15] MIPS: implement dma_sync_* functions
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

From: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/Kconfig                   |  1 +
 arch/mips/include/asm/dma-mapping.h | 11 ++++++-
 arch/mips/lib/Makefile              |  1 +
 arch/mips/lib/dma-default.c         | 57 +++++++++++++++++++++++++++++++++++++
 4 files changed, 69 insertions(+), 1 deletion(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index fdf62e8..06a516d 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -6,6 +6,7 @@ config MIPS
 	select HAS_KALLSYMS
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_CONFIGURABLE_TEXT_BASE
+	select HAS_DMA
 	default y
 
 config SYS_SUPPORTS_BIG_ENDIAN
diff --git a/arch/mips/include/asm/dma-mapping.h b/arch/mips/include/asm/dma-mapping.h
index 6395112..c71a087 100644
--- a/arch/mips/include/asm/dma-mapping.h
+++ b/arch/mips/include/asm/dma-mapping.h
@@ -1,10 +1,12 @@
 #ifndef _ASM_DMA_MAPPING_H
 #define _ASM_DMA_MAPPING_H
 
+#include <common.h>
 #include <xfuncs.h>
 #include <asm/addrspace.h>
 #include <asm/types.h>
 #include <malloc.h>
+#include <asm/io.h>
 
 static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 {
@@ -12,16 +14,23 @@ static inline void *dma_alloc_coherent(size_t size, dma_addr_t *dma_handle)
 
 	ret = xmemalign(PAGE_SIZE, size);
 
+	memset(ret, 0, size);
+
 	if (dma_handle)
 		*dma_handle = CPHYSADDR(ret);
 
+	dma_flush_range((unsigned long)ret, (unsigned long)(ret + size));
+
 	return (void *)CKSEG1ADDR(ret);
 }
 
 static inline void dma_free_coherent(void *vaddr, dma_addr_t dma_handle,
 				     size_t size)
 {
-	free(vaddr);
+	if (IS_ENABLED(CONFIG_MMU))
+		free((void *)CKSEG0ADDR(vaddr));
+	else
+		free(vaddr);
 }
 
 #endif /* _ASM_DMA_MAPPING_H */
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 43f7af7..d25d096 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -7,6 +7,7 @@ obj-y += cpu-probe.o
 obj-y += traps.o
 obj-y += genex.o
 obj-y += shutdown.o
+obj-y += dma-default.o
 
 obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) += memcpy.o
 obj-$(CONFIG_MIPS_OPTIMIZED_STRING_FUNCTIONS) += memset.o
diff --git a/arch/mips/lib/dma-default.c b/arch/mips/lib/dma-default.c
new file mode 100644
index 0000000..9b2fe7d
--- /dev/null
+++ b/arch/mips/lib/dma-default.c
@@ -0,0 +1,57 @@
+/*
+ * (C) Copyright 2015, 2016 Peter Mamonov <pmamonov@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <dma.h>
+#include <asm/io.h>
+
+#if defined(CONFIG_CPU_MIPS32) || \
+	defined(CONFIG_CPU_MIPS64)
+static inline void __dma_sync_mips(unsigned long addr, size_t size,
+				   enum dma_data_direction direction)
+{
+	switch (direction) {
+	case DMA_TO_DEVICE:
+		dma_flush_range(addr, addr + size);
+		break;
+
+	case DMA_FROM_DEVICE:
+		dma_inv_range(addr, addr + size);
+		break;
+
+	case DMA_BIDIRECTIONAL:
+		dma_flush_range(addr, addr + size);
+		break;
+
+	default:
+		BUG();
+	}
+}
+#else
+static inline void __dma_sync_mips(void *addr, size_t size,
+	enum dma_data_direction direction)
+{
+}
+#endif
+
+void dma_sync_single_for_cpu(unsigned long address, size_t size,
+			     enum dma_data_direction dir)
+{
+	__dma_sync_mips(address, size, dir);
+}
+
+void dma_sync_single_for_device(unsigned long address, size_t size,
+				enum dma_data_direction dir)
+{
+	__dma_sync_mips(address, size, dir);
+}
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

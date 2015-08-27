Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZV5bB-0004AB-MF
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 22:24:47 +0000
Received: by labia3 with SMTP id ia3so21640575lab.3
 for <barebox@lists.infradead.org>; Thu, 27 Aug 2015 15:24:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Aug 2015 01:24:05 +0300
Message-Id: <1440714250-28080-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 4/9] MIPS: add trivial dma support
To: barebox@lists.infradead.org
Cc: Antony Pavlov <antony@niisi.msk.ru>, Peter Mamonov <pmamonov@gmail.com>

From: Antony Pavlov <antony@niisi.msk.ru>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                   |  1 +
 arch/mips/include/asm/dma-mapping.h |  1 +
 arch/mips/include/asm/dma.h         |  5 +++++
 arch/mips/lib/Makefile              |  1 +
 arch/mips/lib/dma-default.c         | 28 ++++++++++++++++++++++++++++
 5 files changed, 36 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index aeb5c04..e806baa 100644
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
index 6395112..eb516a1 100644
--- a/arch/mips/include/asm/dma-mapping.h
+++ b/arch/mips/include/asm/dma-mapping.h
@@ -1,6 +1,7 @@
 #ifndef _ASM_DMA_MAPPING_H
 #define _ASM_DMA_MAPPING_H
 
+#include <common.h>
 #include <xfuncs.h>
 #include <asm/addrspace.h>
 #include <asm/types.h>
diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
index 30a58c7..f68df13 100644
--- a/arch/mips/include/asm/dma.h
+++ b/arch/mips/include/asm/dma.h
@@ -10,4 +10,9 @@
 
 #include "asm/dma-mapping.h"
 
+void dma_sync_single_for_cpu(unsigned long address, size_t size,
+					   enum dma_data_direction dir);
+void dma_sync_single_for_device(unsigned long address, size_t size,
+					      enum dma_data_direction dir);
+
 #endif /* __ASM_DMA_H */
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 71c4f6b..d2fc3f8 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -6,6 +6,7 @@ obj-y += ashrdi3.o
 obj-y += cpu-probe.o
 obj-y += traps.o
 obj-y += genex.o
+obj-y += dma-default.o
 
 obj-$(CONFIG_CPU_MIPS32) += c-r4k.o
 obj-$(CONFIG_CPU_MIPS64) += c-r4k.o
diff --git a/arch/mips/lib/dma-default.c b/arch/mips/lib/dma-default.c
new file mode 100644
index 0000000..5e77ae1
--- /dev/null
+++ b/arch/mips/lib/dma-default.c
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2015 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+
+void dma_sync_single_for_cpu(unsigned long address, size_t size,
+			     enum dma_data_direction dir)
+{
+}
+
+void dma_sync_single_for_device(unsigned long address, size_t size,
+				enum dma_data_direction dir)
+{
+}
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

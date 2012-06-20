Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShJXY-0002Fe-SQ
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 11:57:45 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 20 Jun 2012 13:57:31 +0200
Message-Id: <1340193455-2229-3-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 2/6] blackfin, mips, openrisc, ppc, sandbox,
 x86: add generic dma_alloc, dma_free inlines
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

Some drivers call dma_inv_range() on buffers, on arm these buffers must
be cache line aligned. This patch introduces a generic dma_alloc,
dma_free. Archs can implement in their own functions in "asm/dma.h" and add a:

	#define dma_alloc dma_alloc
	#define dma_free dma_free

On all other archs the generic versions, which translate into xmalloc
and free are used.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/blackfin/include/asm/dma.h |   13 +++++++++++++
 arch/mips/include/asm/dma.h     |   13 +++++++++++++
 arch/openrisc/include/asm/dma.h |   13 +++++++++++++
 arch/ppc/include/asm/dma.h      |   13 +++++++++++++
 arch/sandbox/include/asm/dma.h  |   13 +++++++++++++
 arch/x86/include/asm/dma.h      |   13 +++++++++++++
 include/dma.h                   |   30 ++++++++++++++++++++++++++++++
 7 files changed, 108 insertions(+)
 create mode 100644 arch/blackfin/include/asm/dma.h
 create mode 100644 arch/mips/include/asm/dma.h
 create mode 100644 arch/openrisc/include/asm/dma.h
 create mode 100644 arch/ppc/include/asm/dma.h
 create mode 100644 arch/sandbox/include/asm/dma.h
 create mode 100644 arch/x86/include/asm/dma.h
 create mode 100644 include/dma.h

diff --git a/arch/blackfin/include/asm/dma.h b/arch/blackfin/include/asm/dma.h
new file mode 100644
index 0000000..27d269f
--- /dev/null
+++ b/arch/blackfin/include/asm/dma.h
@@ -0,0 +1,13 @@
+/*
+ * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __ASM_DMA_H
+#define __ASM_DMA_H
+
+/* empty */
+
+#endif /* __ASM_DMA_H */
diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
new file mode 100644
index 0000000..27d269f
--- /dev/null
+++ b/arch/mips/include/asm/dma.h
@@ -0,0 +1,13 @@
+/*
+ * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __ASM_DMA_H
+#define __ASM_DMA_H
+
+/* empty */
+
+#endif /* __ASM_DMA_H */
diff --git a/arch/openrisc/include/asm/dma.h b/arch/openrisc/include/asm/dma.h
new file mode 100644
index 0000000..27d269f
--- /dev/null
+++ b/arch/openrisc/include/asm/dma.h
@@ -0,0 +1,13 @@
+/*
+ * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __ASM_DMA_H
+#define __ASM_DMA_H
+
+/* empty */
+
+#endif /* __ASM_DMA_H */
diff --git a/arch/ppc/include/asm/dma.h b/arch/ppc/include/asm/dma.h
new file mode 100644
index 0000000..27d269f
--- /dev/null
+++ b/arch/ppc/include/asm/dma.h
@@ -0,0 +1,13 @@
+/*
+ * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __ASM_DMA_H
+#define __ASM_DMA_H
+
+/* empty */
+
+#endif /* __ASM_DMA_H */
diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
new file mode 100644
index 0000000..4595367
--- /dev/null
+++ b/arch/sandbox/include/asm/dma.h
@@ -0,0 +1,13 @@
+/*
+ * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __ASM_DMA_H
+#define __ASM_DMA_H
+
+/* empty*/
+
+#endif /* __ASM_DMA_H */
diff --git a/arch/x86/include/asm/dma.h b/arch/x86/include/asm/dma.h
new file mode 100644
index 0000000..27d269f
--- /dev/null
+++ b/arch/x86/include/asm/dma.h
@@ -0,0 +1,13 @@
+/*
+ * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __ASM_DMA_H
+#define __ASM_DMA_H
+
+/* empty */
+
+#endif /* __ASM_DMA_H */
diff --git a/include/dma.h b/include/dma.h
new file mode 100644
index 0000000..899f831
--- /dev/null
+++ b/include/dma.h
@@ -0,0 +1,30 @@
+/*
+ * Copyright (C) 2012 by Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ */
+
+#ifndef __DMA_H
+#define __DMA_H
+
+#include <malloc.h>
+#include <xfuncs.h>
+
+#include <asm/dma.h>
+
+#ifndef dma_alloc
+static inline void *dma_alloc(size_t size)
+{
+	return xmalloc(size);
+}
+#endif
+
+#ifndef dma_free
+static inline void dma_free(void *mem)
+{
+	free(mem);
+}
+#endif
+
+#endif /* __DMA_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

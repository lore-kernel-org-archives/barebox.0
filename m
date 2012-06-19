Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sgxff-00056G-M4
 for barebox@lists.infradead.org; Tue, 19 Jun 2012 12:36:38 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 19 Jun 2012 14:36:29 +0200
Message-Id: <1340109391-22794-5-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 4/6] blackfin, mips, openrisc, ppc, sandbox,
 x86: add transparent dma_alloc, dma_free inlines
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

Some drivers call dma_inv_range() on buffers, on arm these buffers must
be cache line aligned. This patch introduces transparent dma_alloc,
dma_free for blackfin, mips, openrisc, ppc, sandbox, x86 architectures
which translate into xmemalign and free. The arm version uses xmemalign.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/blackfin/include/asm/dma.h |   21 +++++++++++++++++++++
 arch/mips/include/asm/dma.h     |   21 +++++++++++++++++++++
 arch/openrisc/include/asm/dma.h |   21 +++++++++++++++++++++
 arch/ppc/include/asm/dma.h      |   21 +++++++++++++++++++++
 arch/sandbox/include/asm/dma.h  |   21 +++++++++++++++++++++
 arch/x86/include/asm/dma.h      |   21 +++++++++++++++++++++
 6 files changed, 126 insertions(+), 0 deletions(-)
 create mode 100644 arch/blackfin/include/asm/dma.h
 create mode 100644 arch/mips/include/asm/dma.h
 create mode 100644 arch/openrisc/include/asm/dma.h
 create mode 100644 arch/ppc/include/asm/dma.h
 create mode 100644 arch/sandbox/include/asm/dma.h
 create mode 100644 arch/x86/include/asm/dma.h

diff --git a/arch/blackfin/include/asm/dma.h b/arch/blackfin/include/asm/dma.h
new file mode 100644
index 0000000..c46d320
--- /dev/null
+++ b/arch/blackfin/include/asm/dma.h
@@ -0,0 +1,21 @@
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
+static inline void *dma_alloc(size_t size)
+{
+	return xmalloc(size);
+}
+
+static inline void dma_free(void *mem)
+{
+	free(mem);
+}
+
+#endif /* __ASM_DMA_H */
diff --git a/arch/mips/include/asm/dma.h b/arch/mips/include/asm/dma.h
new file mode 100644
index 0000000..c46d320
--- /dev/null
+++ b/arch/mips/include/asm/dma.h
@@ -0,0 +1,21 @@
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
+static inline void *dma_alloc(size_t size)
+{
+	return xmalloc(size);
+}
+
+static inline void dma_free(void *mem)
+{
+	free(mem);
+}
+
+#endif /* __ASM_DMA_H */
diff --git a/arch/openrisc/include/asm/dma.h b/arch/openrisc/include/asm/dma.h
new file mode 100644
index 0000000..c46d320
--- /dev/null
+++ b/arch/openrisc/include/asm/dma.h
@@ -0,0 +1,21 @@
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
+static inline void *dma_alloc(size_t size)
+{
+	return xmalloc(size);
+}
+
+static inline void dma_free(void *mem)
+{
+	free(mem);
+}
+
+#endif /* __ASM_DMA_H */
diff --git a/arch/ppc/include/asm/dma.h b/arch/ppc/include/asm/dma.h
new file mode 100644
index 0000000..c46d320
--- /dev/null
+++ b/arch/ppc/include/asm/dma.h
@@ -0,0 +1,21 @@
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
+static inline void *dma_alloc(size_t size)
+{
+	return xmalloc(size);
+}
+
+static inline void dma_free(void *mem)
+{
+	free(mem);
+}
+
+#endif /* __ASM_DMA_H */
diff --git a/arch/sandbox/include/asm/dma.h b/arch/sandbox/include/asm/dma.h
new file mode 100644
index 0000000..c46d320
--- /dev/null
+++ b/arch/sandbox/include/asm/dma.h
@@ -0,0 +1,21 @@
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
+static inline void *dma_alloc(size_t size)
+{
+	return xmalloc(size);
+}
+
+static inline void dma_free(void *mem)
+{
+	free(mem);
+}
+
+#endif /* __ASM_DMA_H */
diff --git a/arch/x86/include/asm/dma.h b/arch/x86/include/asm/dma.h
new file mode 100644
index 0000000..c46d320
--- /dev/null
+++ b/arch/x86/include/asm/dma.h
@@ -0,0 +1,21 @@
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
+static inline void *dma_alloc(size_t size)
+{
+	return xmalloc(size);
+}
+
+static inline void dma_free(void *mem)
+{
+	free(mem);
+}
+
+#endif /* __ASM_DMA_H */
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

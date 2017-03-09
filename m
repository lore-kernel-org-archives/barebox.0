Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo1.mail-out.ovh.net ([178.33.110.239])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clvG6-0004Wp-I9
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 10:25:25 +0000
Received: from player730.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 250945E487
 for <barebox@lists.infradead.org>; Thu,  9 Mar 2017 11:24:58 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Mar 2017 11:31:09 +0100
Message-Id: <1489055471-12836-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] import linux __iowrite32/64_copy support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/io.h | 27 +++++++++++++++++++++
 lib/Makefile       |  1 +
 lib/iomap_copy.c   | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 98 insertions(+)
 create mode 100644 include/linux/io.h
 create mode 100644 lib/iomap_copy.c

diff --git a/include/linux/io.h b/include/linux/io.h
new file mode 100644
index 000000000..a87501c6c
--- /dev/null
+++ b/include/linux/io.h
@@ -0,0 +1,27 @@
+/*
+ * Copyright 2006 PathScale, Inc.  All Rights Reserved.
+ *
+ * This file is free software; you can redistribute it and/or modify
+ * it under the terms of version 2 of the GNU General Public License
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software Foundation,
+ * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
+ */
+
+#ifndef _LINUX_IO_H
+#define _LINUX_IO_H
+
+#include <linux/types.h>
+#include <asm/io.h>
+
+void __iowrite32_copy(void __iomem *to, const void *from, size_t count);
+void __iowrite64_copy(void __iomem *to, const void *from, size_t count);
+
+#endif /* _LINUX_IO_H */
diff --git a/lib/Makefile b/lib/Makefile
index 1be174249..052fe10f2 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -1,6 +1,7 @@
 obj-y			+= bcd.o
 obj-$(CONFIG_BOOTSTRAP)	+= bootstrap/
 obj-y			+= ctype.o
+obj-y			+= iomap_copy.o
 obj-y			+= rbtree.o
 obj-y			+= display_options.o
 obj-y			+= string.o
diff --git a/lib/iomap_copy.c b/lib/iomap_copy.c
new file mode 100644
index 000000000..8732ae0e1
--- /dev/null
+++ b/lib/iomap_copy.c
@@ -0,0 +1,70 @@
+/*
+ * Copyright 2006 PathScale, Inc.  All Rights Reserved.
+ *
+ * This file is free software; you can redistribute it and/or modify
+ * it under the terms of version 2 of the GNU General Public License
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software Foundation,
+ * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
+ */
+
+#include <module.h>
+#include <linux/io.h>
+
+/**
+ * __iowrite32_copy - copy data to MMIO space, in 32-bit units
+ * @to: destination, in MMIO space (must be 32-bit aligned)
+ * @from: source (must be 32-bit aligned)
+ * @count: number of 32-bit quantities to copy
+ *
+ * Copy data from kernel space to MMIO space, in units of 32 bits at a
+ * time.  Order of access is not guaranteed, nor is a memory barrier
+ * performed afterwards.
+ */
+void __attribute__((weak)) __iowrite32_copy(void __iomem *to,
+					    const void *from,
+					    size_t count)
+{
+	u32 __iomem *dst = to;
+	const u32 *src = from;
+	const u32 *end = src + count;
+
+	while (src < end)
+		__raw_writel(*src++, dst++);
+}
+EXPORT_SYMBOL_GPL(__iowrite32_copy);
+
+/**
+ * __iowrite64_copy - copy data to MMIO space, in 64-bit or 32-bit units
+ * @to: destination, in MMIO space (must be 64-bit aligned)
+ * @from: source (must be 64-bit aligned)
+ * @count: number of 64-bit quantities to copy
+ *
+ * Copy data from kernel space to MMIO space, in units of 32 or 64 bits at a
+ * time.  Order of access is not guaranteed, nor is a memory barrier
+ * performed afterwards.
+ */
+void __attribute__((weak)) __iowrite64_copy(void __iomem *to,
+					    const void *from,
+					    size_t count)
+{
+#ifdef CONFIG_64BIT
+	u64 __iomem *dst = to;
+	const u64 *src = from;
+	const u64 *end = src + count;
+
+	while (src < end)
+		__raw_writeq(*src++, dst++);
+#else
+	__iowrite32_copy(to, from, count * 2);
+#endif
+}
+
+EXPORT_SYMBOL_GPL(__iowrite64_copy);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

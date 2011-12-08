Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYeZv-0001LV-Eh
 for barebox@lists.infradead.org; Thu, 08 Dec 2011 14:04:04 +0000
Received: by mail-bw0-f49.google.com with SMTP id je16so2142926bkc.36
 for <barebox@lists.infradead.org>; Thu, 08 Dec 2011 06:04:03 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  8 Dec 2011 18:03:49 +0400
Message-Id: <1323353029-17281-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1323353029-17281-1-git-send-email-antonynpavlov@gmail.com>
References: <1323353029-17281-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH 3/3] add tlsf-based malloc implementation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/Kconfig       |    3 ++
 common/Makefile      |    2 +
 common/memory.c      |    8 +++++
 common/tlsf_malloc.c |   78 ++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 91 insertions(+), 0 deletions(-)
 create mode 100644 common/tlsf_malloc.c

diff --git a/common/Kconfig b/common/Kconfig
index 27464d1..71f092c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -159,6 +159,9 @@ choice
 config MALLOC_DLMALLOC
 	bool "dlmalloc"
 
+config MALLOC_TLSF
+	bool "tlsf"
+
 config MALLOC_DUMMY
 	bool "dummy malloc"
 	depends on SHELL_NONE
diff --git a/common/Makefile b/common/Makefile
index 9bce479..467c666 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -14,6 +14,8 @@ obj-$(CONFIG_OFTREE)		+= oftree.o
 
 obj-y += memory.o
 obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
+obj-$(CONFIG_MALLOC_TLSF) += tlsf_malloc.o
+obj-$(CONFIG_MALLOC_TLSF) += tlsf.o
 obj-$(CONFIG_MALLOC_DUMMY) += dummy_malloc.o
 obj-y += clock.o
 obj-y += version.o
diff --git a/common/memory.c b/common/memory.c
index f0ae1cc..faff33b 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -47,11 +47,19 @@ unsigned long mem_malloc_end(void)
 	return malloc_end;
 }
 
+#ifdef CONFIG_MALLOC_TLSF
+#include <tlsf.h>
+tlsf_pool tlsf_mem_pool;
+#endif
+
 void mem_malloc_init(void *start, void *end)
 {
 	malloc_start = (unsigned long)start;
 	malloc_end = (unsigned long)end;
 	malloc_brk = malloc_start;
+#ifdef CONFIG_MALLOC_TLSF
+	tlsf_mem_pool = tlsf_create(start, (char *)end - (char *)start);
+#endif
 }
 
 #ifndef __SANDBOX__
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
new file mode 100644
index 0000000..a6f82ba
--- /dev/null
+++ b/common/tlsf_malloc.c
@@ -0,0 +1,78 @@
+/*
+ * tlsf wrapper for barebox
+ *
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <config.h>
+#include <malloc.h>
+#include <string.h>
+#include <malloc.h>
+
+#include <stdio.h>
+#include <module.h>
+#include <tlsf.h>
+
+extern tlsf_pool tlsf_mem_pool;
+
+void *malloc(size_t bytes)
+{
+	return tlsf_malloc(tlsf_mem_pool, bytes);
+}
+EXPORT_SYMBOL(malloc);
+
+/*
+ * calloc calls malloc, then zeroes out the allocated chunk.
+ */
+void *calloc(size_t n, size_t elem_size)
+{
+	void *mem;
+	size_t sz;
+
+	sz = n * elem_size;
+	mem = malloc(sz);
+	memset(mem, 0, sz);
+
+	return mem;
+}
+EXPORT_SYMBOL(calloc);
+
+void free(void *mem)
+{
+	tlsf_free(tlsf_mem_pool, mem);
+}
+EXPORT_SYMBOL(free);
+
+void *realloc(void *oldmem, size_t bytes)
+{
+	return tlsf_realloc(tlsf_mem_pool, oldmem, bytes);
+}
+EXPORT_SYMBOL(realloc);
+
+void *memalign(size_t alignment, size_t bytes)
+{
+	return tlsf_memalign(tlsf_mem_pool, alignment, bytes);
+}
+EXPORT_SYMBOL(memalign);
+
+#ifdef CONFIG_CMD_MEMINFO
+void malloc_stats(void)
+{
+}
+#endif /* CONFIG_CMD_MEMINFO */
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

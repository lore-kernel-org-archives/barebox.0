Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3xYr-00022w-LH
	for barebox@lists.infradead.org; Wed, 14 Sep 2011 22:04:06 +0000
Received: by fxg7 with SMTP id 7so33892fxg.36
	for <barebox@lists.infradead.org>; Wed, 14 Sep 2011 15:04:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 15 Sep 2011 02:03:52 +0400
Message-Id: <1316037832-3536-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1316037832-3536-1-git-send-email-antonynpavlov@gmail.com>
References: <1316037832-3536-1-git-send-email-antonynpavlov@gmail.com>
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
 common/memory.c      |    7 +++++
 common/tlsf_malloc.c |   71 ++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 83 insertions(+), 0 deletions(-)
 create mode 100644 common/tlsf_malloc.c

diff --git a/common/Kconfig b/common/Kconfig
index 422d185..83cb842 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -150,6 +150,9 @@ choice
 config MALLOC_DLMALLOC
 	bool "dlmalloc"
 
+config MALLOC_TLSF
+	bool "tlsf"
+
 config MALLOC_DUMMY
 	bool "dummy malloc"
 	depends on SHELL_NONE
diff --git a/common/Makefile b/common/Makefile
index 74946e9..2e33176 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -11,6 +11,8 @@ obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 
 obj-y += memory.o
 obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
+obj-$(CONFIG_MALLOC_TLSF) += tlsf_malloc.o
+obj-$(CONFIG_MALLOC_TLSF) += tlsf.o
 obj-$(CONFIG_MALLOC_DUMMY) += dummy_malloc.o
 obj-y += clock.o
 obj-y += version.o
diff --git a/common/memory.c b/common/memory.c
index 8f4a768..56c80bc 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -39,11 +39,18 @@ unsigned long mem_malloc_end(void)
 	return malloc_end;
 }
 
+#ifdef CONFIG_MALLOC_TLSF
+#include <tlsf.h>
+#endif
+
 void mem_malloc_init(void *start, void *end)
 {
 	malloc_start = (unsigned long)start;
 	malloc_end = (unsigned long)end;
 	malloc_brk = malloc_start;
+#ifdef CONFIG_MALLOC_TLSF
+	init_memory_pool((char *)end - (char *)start, start);
+#endif
 }
 
 static void *sbrk_no_zero(ptrdiff_t increment)
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
new file mode 100644
index 0000000..2380d18
--- /dev/null
+++ b/common/tlsf_malloc.c
@@ -0,0 +1,71 @@
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
+#include <mem_malloc.h>
+
+#include <stdio.h>
+#include <module.h>
+#include <tlsf.h>
+
+void *malloc(size_t bytes)
+{
+	return tlsf_malloc(bytes);
+}
+EXPORT_SYMBOL(malloc);
+
+/*
+ * calloc calls malloc, then zeroes out the allocated chunk.
+ */
+void *calloc(size_t n, size_t elem_size)
+{
+	return tlsf_calloc(n, elem_size);
+}
+EXPORT_SYMBOL(calloc);
+
+void free(void *mem)
+{
+	tlsf_free(mem);
+}
+EXPORT_SYMBOL(free);
+
+void *realloc(void *oldmem, size_t bytes)
+{
+	return tlsf_realloc(oldmem, bytes);
+
+}
+EXPORT_SYMBOL(realloc);
+
+/* FIXME */
+void *memalign(size_t alignment, size_t bytes)
+{
+	return malloc(bytes);
+}
+EXPORT_SYMBOL(memalign);
+
+#ifdef CONFIG_CMD_MEMINFO
+void malloc_stats(void)
+{
+}
+#endif /* CONFIG_CMD_MEMINFO */
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

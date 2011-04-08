Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8D6k-000196-RT
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:56:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:56:16 +0200
Message-Id: <1302274579-11158-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
References: <1302274579-11158-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] malloc: put common memory functions to seperate file
To: barebox@lists.infradead.org

These functions are needed independently of the specific
malloc implementation, so move them out.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile   |    1 +
 common/dlmalloc.c |   50 -------------------------------------
 common/memory.c   |   71 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/malloc.h  |    1 +
 4 files changed, 73 insertions(+), 50 deletions(-)
 create mode 100644 common/memory.c

diff --git a/common/Makefile b/common/Makefile
index 6a04460..aa2c222 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_BLOCK)		+= block.o
 
+obj-y += memory.o
 obj-y += dlmalloc.o
 obj-y += clock.o
 obj-y += version.o
diff --git a/common/dlmalloc.c b/common/dlmalloc.c
index ff63fbe..f9e1828 100644
--- a/common/dlmalloc.c
+++ b/common/dlmalloc.c
@@ -882,56 +882,6 @@ static mbinptr av_[NAV * 2 + 2] = {
 
 /* ----------------------------------------------------------------------- */
 
-/*
- * Begin and End of memory area for malloc(), and current "brk"
- */
-static ulong malloc_start;
-static ulong malloc_end;
-static ulong malloc_brk;
-
-ulong mem_malloc_start(void)
-{
-	return malloc_start;
-}
-
-ulong mem_malloc_end(void)
-{
-	return malloc_end;
-}
-
-void mem_malloc_init(void *start, void *end)
-{
-	malloc_start = (ulong)start;
-	malloc_end = (ulong)end;
-	malloc_brk = malloc_start;
-}
-
-static void *sbrk_no_zero(ptrdiff_t increment)
-{
-	ulong old = malloc_brk;
-	ulong new = old + increment;
-
-	if ((new < malloc_start) || (new > malloc_end))
-		return NULL;
-
-	malloc_brk = new;
-
-	return (void *)old;
-}
-
-static void *sbrk(ptrdiff_t increment)
-{
-	void *old = sbrk_no_zero(increment);
-
-	/* Only clear increment, if valid address was returned */
-	if (old != NULL)
-		memset(old, 0, increment);
-
-	return old;
-}
-
-/* ----------------------------------------------------------------------- */
-
 /*  Other static bookkeeping data */
 
 /* variables holding tunable values */
diff --git a/common/memory.c b/common/memory.c
new file mode 100644
index 0000000..8f4a768
--- /dev/null
+++ b/common/memory.c
@@ -0,0 +1,71 @@
+/*
+ * memory.c
+ *
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+
+/*
+ * Begin and End of memory area for malloc(), and current "brk"
+ */
+static unsigned long malloc_start;
+static unsigned long malloc_end;
+static unsigned long malloc_brk;
+
+unsigned long mem_malloc_start(void)
+{
+	return malloc_start;
+}
+
+unsigned long mem_malloc_end(void)
+{
+	return malloc_end;
+}
+
+void mem_malloc_init(void *start, void *end)
+{
+	malloc_start = (unsigned long)start;
+	malloc_end = (unsigned long)end;
+	malloc_brk = malloc_start;
+}
+
+static void *sbrk_no_zero(ptrdiff_t increment)
+{
+	unsigned long old = malloc_brk;
+	unsigned long new = old + increment;
+
+	if ((new < malloc_start) || (new > malloc_end))
+		return NULL;
+
+	malloc_brk = new;
+
+	return (void *)old;
+}
+
+void *sbrk(ptrdiff_t increment)
+{
+	void *old = sbrk_no_zero(increment);
+
+	/* Only clear increment, if valid address was returned */
+	if (old != NULL)
+		memset(old, 0, increment);
+
+	return old;
+}
diff --git a/include/malloc.h b/include/malloc.h
index 4b0567e..7b9b062 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -18,6 +18,7 @@ size_t malloc_usable_size(void*);
 void malloc_stats(void);
 int mallopt(int, int);
 struct mallinfo mallinfo(void);
+void *sbrk(ptrdiff_t increment);
 
 #endif
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

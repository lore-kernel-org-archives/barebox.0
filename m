Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gC6ER-0003T3-EK
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 17:00:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id u6-v6so6860123plz.4
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 10:00:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 15 Oct 2018 10:00:17 -0700
Message-Id: <20181015170021.22617-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/5] tlsf_malloc: dummy_malloc: Share code for calloc()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Calloc() implementation for TLSF does not correctly check for malloc()
failure which can result in a NULL pointer exception when trying to
calloc() extra large buffers.

Since both TLSF and dummy malloc implementations of calloc() are
exactly the same, pick implementation for the latter (which does
aforementioned check) and share it between the two.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/Makefile       |  4 ++--
 common/calloc.c       | 19 +++++++++++++++++++
 common/dummy_malloc.c | 13 -------------
 common/tlsf_malloc.c  | 16 ----------------
 4 files changed, 21 insertions(+), 31 deletions(-)
 create mode 100644 common/calloc.c

diff --git a/common/Makefile b/common/Makefile
index 13920cc5a..861365bd5 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -34,8 +34,8 @@ obj-$(CONFIG_GLOBALVAR)		+= globalvar.o
 obj-$(CONFIG_GREGORIAN_CALENDER) += date.o
 obj-$(CONFIG_KALLSYMS)		+= kallsyms.o
 obj-$(CONFIG_MALLOC_DLMALLOC)	+= dlmalloc.o
-obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o tlsf.o
-obj-$(CONFIG_MALLOC_DUMMY)	+= dummy_malloc.o
+obj-$(CONFIG_MALLOC_TLSF)	+= tlsf_malloc.o tlsf.o calloc.o
+obj-$(CONFIG_MALLOC_DUMMY)	+= dummy_malloc.o calloc.o
 obj-$(CONFIG_MEMINFO)		+= meminfo.o
 obj-$(CONFIG_MENU)		+= menu.o
 obj-$(CONFIG_MODULES)		+= module.o
diff --git a/common/calloc.c b/common/calloc.c
new file mode 100644
index 000000000..2b933ec27
--- /dev/null
+++ b/common/calloc.c
@@ -0,0 +1,19 @@
+#include <common.h>
+#include <malloc.h>
+
+/*
+ * calloc calls malloc, then zeroes out the allocated chunk.
+ */
+void *calloc(size_t n, size_t elem_size)
+{
+	size_t size = elem_size * n;
+	void *r = malloc(size);
+
+	if (!r)
+		return r;
+
+	memset(r, 0x0, size);
+
+	return r;
+}
+EXPORT_SYMBOL(calloc);
diff --git a/common/dummy_malloc.c b/common/dummy_malloc.c
index 641baa125..fa4f5d126 100644
--- a/common/dummy_malloc.c
+++ b/common/dummy_malloc.c
@@ -50,16 +50,3 @@ void *realloc(void *ptr, size_t size)
 {
 	BUG();
 }
-
-void *calloc(size_t n, size_t elem_size)
-{
-	size_t size = elem_size * n;
-	void *r = malloc(size);
-
-	if (!r)
-		return r;
-
-	memset(r, 0x0, size);
-
-	return r;
-}
diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index a3541d825..aa3ab2397 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -39,22 +39,6 @@ void *malloc(size_t bytes)
 }
 EXPORT_SYMBOL(malloc);
 
-/*
- * calloc calls malloc, then zeroes out the allocated chunk.
- */
-void *calloc(size_t n, size_t elem_size)
-{
-	void *mem;
-	size_t sz;
-
-	sz = n * elem_size;
-	mem = malloc(sz);
-	memset(mem, 0, sz);
-
-	return mem;
-}
-EXPORT_SYMBOL(calloc);
-
 void free(void *mem)
 {
 	tlsf_free(tlsf_mem_pool, mem);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

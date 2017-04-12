Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cyFNN-00073y-IR
 for barebox@lists.infradead.org; Wed, 12 Apr 2017 10:19:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Apr 2017 12:19:27 +0200
Message-Id: <20170412101927.27440-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] xfuncs: Be more informative when out of memory panic occurs
To: Barebox List <barebox@lists.infradead.org>

When one of the xfuncs panics we can be a bit more informative. We
can at least print the amount of bytes we wanted to allocate and
how much memory we have left.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/xfuncs.c | 32 ++++++++++++++++++++++++--------
 1 file changed, 24 insertions(+), 8 deletions(-)

diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index 1dc2ea92d8..1bcaa5e10e 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -18,18 +18,30 @@
  * GNU General Public License for more details.
  *
  */
+#define pr_fmt(fmt) "xfuncs: " fmt
 
 #include <common.h>
 #include <malloc.h>
 #include <module.h>
 #include <wchar.h>
 
+static void __noreturn enomem_panic(size_t size)
+{
+	pr_emerg("out of memory\n");
+	if (size)
+		pr_emerg("Unable to allocate %d bytes\n", size);
+
+	malloc_stats();
+
+	panic("out of memory");
+}
+
 void *xmalloc(size_t size)
 {
 	void *p = NULL;
 
 	if (!(p = malloc(size)))
-		panic("ERROR: out of memory\n");
+		enomem_panic(size);
 
 	return p;
 }
@@ -40,7 +52,7 @@ void *xrealloc(void *ptr, size_t size)
 	void *p = NULL;
 
 	if (!(p = realloc(ptr, size)))
-		panic("ERROR: out of memory\n");
+		enomem_panic(size);
 
 	return p;
 }
@@ -63,7 +75,7 @@ char *xstrdup(const char *s)
 
 	p = strdup(s);
 	if (!p)
-		panic("ERROR: out of memory\n");
+		enomem_panic(strlen(s) + 1);
 
 	return p;
 }
@@ -95,7 +107,8 @@ void* xmemalign(size_t alignment, size_t bytes)
 {
 	void *p = memalign(alignment, bytes);
 	if (!p)
-		panic("ERROR: out of memory\n");
+		enomem_panic(bytes);
+
 	return p;
 }
 EXPORT_SYMBOL(xmemalign);
@@ -116,7 +129,7 @@ char *xvasprintf(const char *fmt, va_list ap)
 
 	p = bvasprintf(fmt, ap);
 	if (!p)
-		panic("ERROR: out of memory\n");
+		enomem_panic(0);
 	return p;
 }
 EXPORT_SYMBOL(xvasprintf);
@@ -139,7 +152,8 @@ wchar_t *xstrdup_wchar(const wchar_t *s)
 	wchar_t *p = strdup_wchar(s);
 
 	if (!p)
-		panic("ERROR: out of memory\n");
+		enomem_panic((wcslen(s) + 1) * sizeof(wchar_t));
+
 	return p;
 }
 EXPORT_SYMBOL(xstrdup_wchar);
@@ -149,7 +163,8 @@ wchar_t *xstrdup_char_to_wchar(const char *s)
 	wchar_t *p = strdup_char_to_wchar(s);
 
 	if (!p)
-		panic("ERROR: out of memory\n");
+		enomem_panic((strlen(s) + 1) * sizeof(wchar_t));
+
 	return p;
 }
 EXPORT_SYMBOL(xstrdup_char_to_wchar);
@@ -159,7 +174,8 @@ char *xstrdup_wchar_to_char(const wchar_t *s)
 	char *p = strdup_wchar_to_char(s);
 
 	if (!p)
-		panic("ERROR: out of memory\n");
+		enomem_panic((wcslen(s) + 1) * sizeof(wchar_t));
+
 	return p;
 }
 EXPORT_SYMBOL(xstrdup_wchar_to_char);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEE-0002SL-TC
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:29 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:35 +0200
Message-Id: <1437160969-31517-3-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 02/16] xfuncs: add wrapper for wchar strdup functions
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 include/xfuncs.h |  5 +++++
 lib/xfuncs.c     | 31 +++++++++++++++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/include/xfuncs.h b/include/xfuncs.h
index c7c0203f375b..b53cfdcddd31 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -3,6 +3,7 @@
 
 #include <linux/types.h>
 #include <stdarg.h>
+#include <wchar.h>
 
 void *xmalloc(size_t size);
 void *xrealloc(void *ptr, size_t size);
@@ -13,4 +14,8 @@ void* xmemdup(const void *orig, size_t size);
 char *xasprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 char *xvasprintf(const char *fmt, va_list ap);
 
+wchar_t *xstrdup_wchar(const wchar_t *src);
+wchar_t *xstrdup_char_to_wchar(const char *src);
+char *xstrdup_wchar_to_char(const wchar_t *src);
+
 #endif /* __XFUNCS_H */
diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index ce89169547a4..c8c1da7dad7f 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -22,6 +22,7 @@
 #include <common.h>
 #include <malloc.h>
 #include <module.h>
+#include <wchar.h>
 
 void *xmalloc(size_t size)
 {
@@ -105,3 +106,33 @@ char *xasprintf(const char *fmt, ...)
 	return p;
 }
 EXPORT_SYMBOL(xasprintf);
+
+wchar_t *xstrdup_wchar(const wchar_t *s)
+{
+	wchar_t *p = strdup_wchar(s);
+
+	if (!p)
+		panic("ERROR: out of memory\n");
+	return p;
+}
+EXPORT_SYMBOL(xstrdup_wchar);
+
+wchar_t *xstrdup_char_to_wchar(const char *s)
+{
+	wchar_t *p = strdup_char_to_wchar(s);
+
+	if (!p)
+		panic("ERROR: out of memory\n");
+	return p;
+}
+EXPORT_SYMBOL(xstrdup_char_to_wchar);
+
+char *xstrdup_wchar_to_char(const wchar_t *s)
+{
+	char *p = strdup_wchar_to_char(s);
+
+	if (!p)
+		panic("ERROR: out of memory\n");
+	return p;
+}
+EXPORT_SYMBOL(xstrdup_wchar_to_char);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEE-0002SJ-TJ
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:27 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:34 +0200
Message-Id: <1437160969-31517-2-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 01/16] xfuncs: add xasprintf() and xvasprintf()
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 include/xfuncs.h |  3 +++
 lib/xfuncs.c     | 24 ++++++++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/include/xfuncs.h b/include/xfuncs.h
index 8efc99dbc455..c7c0203f375b 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -2,6 +2,7 @@
 #define __XFUNCS_H
 
 #include <linux/types.h>
+#include <stdarg.h>
 
 void *xmalloc(size_t size);
 void *xrealloc(void *ptr, size_t size);
@@ -9,5 +10,7 @@ void *xzalloc(size_t size);
 char *xstrdup(const char *s);
 void* xmemalign(size_t alignment, size_t bytes);
 void* xmemdup(const void *orig, size_t size);
+char *xasprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+char *xvasprintf(const char *fmt, va_list ap);
 
 #endif /* __XFUNCS_H */
diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index 0e78b670a5d4..ce89169547a4 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -81,3 +81,27 @@ void *xmemdup(const void *orig, size_t size)
 	return buf;
 }
 EXPORT_SYMBOL(xmemdup);
+
+char *xvasprintf(const char *fmt, va_list ap)
+{
+	char *p;
+
+	p = vasprintf(fmt, ap);
+	if (!p)
+		panic("ERROR: out of memory\n");
+	return p;
+}
+EXPORT_SYMBOL(xvasprintf)
+
+char *xasprintf(const char *fmt, ...)
+{
+	va_list ap;
+	char *p;
+
+	va_start(ap, fmt);
+	p = xvasprintf(fmt, ap);
+	va_end(ap);
+
+	return p;
+}
+EXPORT_SYMBOL(xasprintf);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

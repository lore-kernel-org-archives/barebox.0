Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgT61-0006I2-KY
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 01:48:44 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  4 Aug 2010 03:43:54 +0200
Message-Id: <1280886239-19133-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100804014227.GA16337@game.jcrosoft.org>
References: <20100804014227.GA16337@game.jcrosoft.org>
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
Subject: [PATCH 1/6] string: add strlcpy support
To: barebox@lists.infradead.org
Cc: Andrea GALLO <andrea.gallo@stericsson.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Andrea GALLO <andrea.gallo@stericsson.com>
Cc: Gael SALLES <gael.salles@stericsson.com>
---
 include/linux/string.h |    3 +++
 include/stdio.h        |    1 +
 lib/string.c           |   26 ++++++++++++++++++++++++++
 3 files changed, 30 insertions(+), 0 deletions(-)

diff --git a/include/linux/string.h b/include/linux/string.h
index 20b0829..62d743e 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -38,6 +38,9 @@ extern char * strcpy(char *,const char *);
 #ifndef __HAVE_ARCH_STRNCPY
 extern char * strncpy(char *,const char *, __kernel_size_t);
 #endif
+#ifndef __HAVE_ARCH_STRLCPY
+size_t strlcpy(char *, const char *, size_t);
+#endif
 #ifndef __HAVE_ARCH_STRCAT
 extern char * strcat(char *, const char *);
 #endif
diff --git a/include/stdio.h b/include/stdio.h
index d591b6a..8bc45fa 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -36,6 +36,7 @@ int	vsprintf(char *buf, const char *fmt, va_list args);
 char	*asprintf(const char *fmt, ...);
 char	*vasprintf(const char *fmt, va_list ap);
 int	vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
+int	vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
 
 /* stderr */
 #define eputc(c)		console_putc(CONSOLE_STDERR, c)
diff --git a/lib/string.c b/lib/string.c
index cbb13d3..77435aa 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -62,6 +62,32 @@ char * strncpy(char * dest,const char *src,size_t count)
 #endif
 EXPORT_SYMBOL(strncpy);
 
+#ifndef __HAVE_ARCH_STRLCPY
+/**
+ * strlcpy - Copy a %NUL terminated string into a sized buffer
+ * @dest: Where to copy the string to
+ * @src: Where to copy the string from
+ * @size: size of destination buffer
+ *
+ * Compatible with *BSD: the result is always a valid
+ * NUL-terminated string that fits in the buffer (unless,
+ * of course, the buffer size is zero). It does not pad
+ * out the result like strncpy() does.
+ */
+size_t strlcpy(char *dest, const char *src, size_t size)
+{
+	size_t ret = strlen(src);
+
+	if (size) {
+		size_t len = (ret >= size) ? size - 1 : ret;
+		memcpy(dest, src, len);
+		dest[len] = '\0';
+	}
+	return ret;
+}
+EXPORT_SYMBOL(strlcpy);
+#endif
+
 #ifndef __HAVE_ARCH_STRCAT
 /**
  * strcat - Append one %NUL-terminated string to another
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

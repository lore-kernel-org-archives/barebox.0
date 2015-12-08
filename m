Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6EkO-0002fX-Ix
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 09:39:51 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Tue,  8 Dec 2015 10:39:27 +0100
Message-Id: <1449567572-21758-5-git-send-email-mpa@pengutronix.de>
In-Reply-To: <1449567572-21758-1-git-send-email-mpa@pengutronix.de>
References: <1449567572-21758-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 4/9] vsprintf: Add scnprintf from kernel
To: barebox@lists.infradead.org

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 include/stdio.h |  1 +
 lib/vsprintf.c  | 24 ++++++++++++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/include/stdio.h b/include/stdio.h
index f1909117621d..d0817bd0715a 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -13,6 +13,7 @@ void	serial_printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2
 
 int	sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
 int	snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
+int	scnprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
 int	vsprintf(char *buf, const char *fmt, va_list args);
 char	*asprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 char	*vasprintf(const char *fmt, va_list ap);
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 800ded7939eb..9b8e8cf5f8e3 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -595,6 +595,30 @@ int snprintf(char *buf, size_t size, const char *fmt, ...)
 }
 EXPORT_SYMBOL(snprintf);
 
+/**
+ * scnprintf - Format a string and place it in a buffer
+ * @buf: The buffer to place the result into
+ * @size: The size of the buffer, including the trailing null space
+ * @fmt: The format string to use
+ * @...: Arguments for the format string
+ *
+ * The return value is the number of characters written into @buf not including
+ * the trailing '\0'. If @size is == 0 the function returns 0.
+ */
+
+int scnprintf(char *buf, size_t size, const char *fmt, ...)
+{
+	va_list args;
+	int i;
+
+	va_start(args, fmt);
+	i = vscnprintf(buf, size, fmt, args);
+	va_end(args);
+
+	return i;
+}
+EXPORT_SYMBOL(scnprintf);
+
 /* Simplified asprintf. */
 char *vasprintf(const char *fmt, va_list ap)
 {
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

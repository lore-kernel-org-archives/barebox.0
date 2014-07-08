Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6n-0006Vi-T1
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:50:05 +0200
Message-Id: <1404809417-21477-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/21] Add beginning wchar support
To: barebox@lists.infradead.org

EFI uses 16 bit character strings. Add beginning support for this.
Since barebox uses 8 bit strings internally we need conversion functions
to convert between 16 bit and 8 bit strings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/wchar.h | 16 ++++++++++++
 lib/Makefile    |  1 +
 lib/misc.c      |  1 +
 lib/wchar.c     | 80 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 98 insertions(+)
 create mode 100644 include/wchar.h
 create mode 100644 lib/wchar.c

diff --git a/include/wchar.h b/include/wchar.h
new file mode 100644
index 0000000..278a189
--- /dev/null
+++ b/include/wchar.h
@@ -0,0 +1,16 @@
+#ifndef __WCHAR_H
+#define __WCHAR_H
+
+#include <linux/types.h>
+
+typedef u16 wchar_t;
+
+char *strcpy_wchar_to_char(char *dst, const wchar_t *src);
+
+wchar_t *strcpy_char_to_wchar(wchar_t *dst, const char *src);
+
+wchar_t *strdup_char_to_wchar(const char *src);
+
+char *strdup_wchar_to_char(const wchar_t *src);
+
+#endif /* __WCHAR_H */
diff --git a/lib/Makefile b/lib/Makefile
index e8769a9..48c953d 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -44,3 +44,4 @@ obj-y			+= gui/
 obj-$(CONFIG_XYMODEM)	+= xymodem.o
 obj-y			+= unlink-recursive.o
 obj-$(CONFIG_STMP_DEVICE) += stmp-device.o
+obj-y			+= wchar.o
diff --git a/lib/misc.c b/lib/misc.c
index 9f2067c..87626c1 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -21,6 +21,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <fs.h>
+#include <string.h>
 #include <linux/ctype.h>
 
 /*
diff --git a/lib/wchar.c b/lib/wchar.c
new file mode 100644
index 0000000..6368a01
--- /dev/null
+++ b/lib/wchar.c
@@ -0,0 +1,80 @@
+/*
+ * wchar.c - wide character support
+ *
+ * Copyright (c) 2014 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+ */
+
+#include <wchar.h>
+#include <malloc.h>
+#include <string.h>
+
+size_t wcslen(const wchar_t *s)
+{
+	size_t len = 0;
+
+	while (*s++)
+		len++;
+
+	return len;
+}
+
+char *strcpy_wchar_to_char(char *dst, const wchar_t *src)
+{
+	char *ret = dst;
+
+	while (*src)
+		*dst++ = *src++ & 0xff;
+
+	*dst = 0;
+
+	return ret;
+}
+
+wchar_t *strcpy_char_to_wchar(wchar_t *dst, const char *src)
+{
+	wchar_t *ret = dst;
+
+	while (*src)
+		*dst++ = *src++;
+
+	*dst = 0;
+
+	return ret;
+}
+
+wchar_t *strdup_char_to_wchar(const char *src)
+{
+	wchar_t *dst = malloc((strlen(src) + 1) * sizeof(wchar_t));
+
+	if (!dst)
+		return NULL;
+
+	strcpy_char_to_wchar(dst, src);
+
+	return dst;
+}
+
+char *strdup_wchar_to_char(const wchar_t *src)
+{
+	char *dst = malloc((wcslen(src) + 1));
+
+	if (!dst)
+		return NULL;
+
+	strcpy_wchar_to_char(dst, src);
+
+	return dst;
+}
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

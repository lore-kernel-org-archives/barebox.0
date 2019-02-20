Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKY-0003aI-S5
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:25 +0000
Received: by mail-pg1-x544.google.com with SMTP id u9so7896358pgo.7
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:10 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:28 -0800
Message-Id: <20190220072930.14300-24-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 23/25] lib: Port basic Linux kernel NLS functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port basic Linux kernel NLS functions: utf8_to_utf32() and
utf8s_to_utf16s() in order to support porting kernel code that uses
them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/nls.h |  40 ++++++++++++++
 lib/Kconfig         |   3 +
 lib/Makefile        |   1 +
 lib/nls_base.c      | 131 ++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 175 insertions(+)
 create mode 100644 include/linux/nls.h
 create mode 100644 lib/nls_base.c

diff --git a/include/linux/nls.h b/include/linux/nls.h
new file mode 100644
index 000000000..62fb7b5a9
--- /dev/null
+++ b/include/linux/nls.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_NLS_H
+#define _LINUX_NLS_H
+
+/* Unicode has changed over the years.  Unicode code points no longer
+ * fit into 16 bits; as of Unicode 5 valid code points range from 0
+ * to 0x10ffff (17 planes, where each plane holds 65536 code points).
+ *
+ * The original decision to represent Unicode characters as 16-bit
+ * wchar_t values is now outdated.  But plane 0 still includes the
+ * most commonly used characters, so we will retain it.  The newer
+ * 32-bit unicode_t type can be used when it is necessary to
+ * represent the full Unicode character set.
+ */
+
+/* Plane-0 Unicode character */
+typedef u16 wchar_t;
+#define MAX_WCHAR_T	0xffff
+
+/* Arbitrary Unicode character */
+typedef u32 unicode_t;
+
+/* this value hold the maximum octet of charset */
+#define NLS_MAX_CHARSET_SIZE 6 /* for UTF-8 */
+
+/* Byte order for UTF-16 strings */
+enum utf16_endian {
+	UTF16_HOST_ENDIAN,
+	UTF16_LITTLE_ENDIAN,
+	UTF16_BIG_ENDIAN
+};
+
+/* nls_base.c */
+
+extern int utf8_to_utf32(const u8 *s, int len, unicode_t *pu);
+extern int utf8s_to_utf16s(const u8 *s, int len,
+		enum utf16_endian endian, wchar_t *pwcs, int maxlen);
+
+#endif /* _LINUX_NLS_H */
+
diff --git a/lib/Kconfig b/lib/Kconfig
index e048aded8..44f30d824 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -148,4 +148,7 @@ config GENERIC_LIB_LSHRDI3
 config GENERIC_LIB_MULDI3
 	bool
 
+config NLS
+        bool "Native language support"
+
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index e72aa6655..763516d41 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -67,6 +67,7 @@ obj-y			+= parseopt.o
 obj-y			+= clz_ctz.o
 obj-$(CONFIG_CRC_CCITT) += crc-ccitt.o
 obj-$(CONFIG_CRC8)	+= crc8.o
+obj-$(CONFIG_NLS)	+= nls_base.o
 
 # GCC library routines
 obj-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
diff --git a/lib/nls_base.c b/lib/nls_base.c
new file mode 100644
index 000000000..cd6a5ff12
--- /dev/null
+++ b/lib/nls_base.c
@@ -0,0 +1,131 @@
+/*
+ * linux/fs/nls/nls_base.c
+ *
+ * Native language support--charsets and unicode translations.
+ * By Gordon Chaffee 1996, 1997
+ *
+ * Unicode based case conversion 1999 by Wolfram Pienkoss
+ *
+ */
+#include <common.h>
+#include <linux/nls.h>
+
+/*
+ * Sample implementation from Unicode home page.
+ * http://www.stonehand.com/unicode/standard/fss-utf.html
+ */
+struct utf8_table {
+	int     cmask;
+	int     cval;
+	int     shift;
+	long    lmask;
+	long    lval;
+};
+
+static const struct utf8_table utf8_table[] =
+{
+    {0x80,  0x00,   0*6,    0x7F,           0,         /* 1 byte sequence */},
+    {0xE0,  0xC0,   1*6,    0x7FF,          0x80,      /* 2 byte sequence */},
+    {0xF0,  0xE0,   2*6,    0xFFFF,         0x800,     /* 3 byte sequence */},
+    {0xF8,  0xF0,   3*6,    0x1FFFFF,       0x10000,   /* 4 byte sequence */},
+    {0xFC,  0xF8,   4*6,    0x3FFFFFF,      0x200000,  /* 5 byte sequence */},
+    {0xFE,  0xFC,   5*6,    0x7FFFFFFF,     0x4000000, /* 6 byte sequence */},
+    {0,						       /* end of table    */}
+};
+
+#define UNICODE_MAX	0x0010ffff
+#define PLANE_SIZE	0x00010000
+
+#define SURROGATE_MASK	0xfffff800
+#define SURROGATE_PAIR	0x0000d800
+#define SURROGATE_LOW	0x00000400
+#define SURROGATE_BITS	0x000003ff
+
+int utf8_to_utf32(const u8 *s, int inlen, unicode_t *pu)
+{
+	unsigned long l;
+	int c0, c, nc;
+	const struct utf8_table *t;
+
+	nc = 0;
+	c0 = *s;
+	l = c0;
+	for (t = utf8_table; t->cmask; t++) {
+		nc++;
+		if ((c0 & t->cmask) == t->cval) {
+			l &= t->lmask;
+			if (l < t->lval || l > UNICODE_MAX ||
+					(l & SURROGATE_MASK) == SURROGATE_PAIR)
+				return -1;
+			*pu = (unicode_t) l;
+			return nc;
+		}
+		if (inlen <= nc)
+			return -1;
+		s++;
+		c = (*s ^ 0x80) & 0xFF;
+		if (c & 0xC0)
+			return -1;
+		l = (l << 6) | c;
+	}
+	return -1;
+}
+EXPORT_SYMBOL(utf8_to_utf32);
+
+static inline void put_utf16(wchar_t *s, unsigned c, enum utf16_endian endian)
+{
+	switch (endian) {
+	default:
+		*s = (wchar_t) c;
+		break;
+	case UTF16_LITTLE_ENDIAN:
+		*s = __cpu_to_le16(c);
+		break;
+	case UTF16_BIG_ENDIAN:
+		*s = __cpu_to_be16(c);
+		break;
+	}
+}
+
+int utf8s_to_utf16s(const u8 *s, int inlen, enum utf16_endian endian,
+		wchar_t *pwcs, int maxout)
+{
+	u16 *op;
+	int size;
+	unicode_t u;
+
+	op = pwcs;
+	while (inlen > 0 && maxout > 0 && *s) {
+		if (*s & 0x80) {
+			size = utf8_to_utf32(s, inlen, &u);
+			if (size < 0)
+				return -EINVAL;
+			s += size;
+			inlen -= size;
+
+			if (u >= PLANE_SIZE) {
+				if (maxout < 2)
+					break;
+				u -= PLANE_SIZE;
+				put_utf16(op++, SURROGATE_PAIR |
+						((u >> 10) & SURROGATE_BITS),
+						endian);
+				put_utf16(op++, SURROGATE_PAIR |
+						SURROGATE_LOW |
+						(u & SURROGATE_BITS),
+						endian);
+				maxout -= 2;
+			} else {
+				put_utf16(op++, u, endian);
+				maxout--;
+			}
+		} else {
+			put_utf16(op++, *s++, endian);
+			inlen--;
+			maxout--;
+		}
+	}
+	return op - pwcs;
+}
+EXPORT_SYMBOL(utf8s_to_utf16s);
+
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

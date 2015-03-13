Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YWJwo-0004gW-8r
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 07:23:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Mar 2015 08:23:30 +0100
Message-Id: <1426231410-14049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] lib: Add hex2bin and bin2hex implementations
To: Barebox List <barebox@lists.infradead.org>

Taken from the Kernel, put into the same place as in the kernel,
although the hexdump.c does not actually contain hexdum functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/kernel.h |  4 +++
 lib/Makefile           |  1 +
 lib/hexdump.c          | 74 ++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/misc.c             |  2 --
 4 files changed, 79 insertions(+), 2 deletions(-)
 create mode 100644 lib/hexdump.c

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 5b6b448..945e063 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -246,6 +246,10 @@ static inline char *hex_byte_pack_upper(char *buf, u8 byte)
 	return buf;
 }
 
+extern int hex_to_bin(char ch);
+extern int __must_check hex2bin(u8 *dst, const char *src, size_t count);
+extern char *bin2hex(char *dst, const void *src, size_t count);
+
 /**
  * container_of - cast a member of a structure out to the containing structure
  * @ptr:	the pointer to the member.
diff --git a/lib/Makefile b/lib/Makefile
index f08ac59..6a3e9fd 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -53,3 +53,4 @@ obj-y			+= wchar.o
 obj-y			+= libfile.o
 obj-y			+= bitmap.o
 obj-y			+= gcd.o
+obj-y			+= hexdump.o
diff --git a/lib/hexdump.c b/lib/hexdump.c
new file mode 100644
index 0000000..3b1d5e6
--- /dev/null
+++ b/lib/hexdump.c
@@ -0,0 +1,74 @@
+/*
+ * lib/hexdump.c
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation. See README and COPYING for
+ * more details.
+ */
+
+#include <common.h>
+#include <linux/kernel.h>
+#include <linux/ctype.h>
+
+const char hex_asc[] = "0123456789abcdef";
+EXPORT_SYMBOL(hex_asc);
+const char hex_asc_upper[] = "0123456789ABCDEF";
+EXPORT_SYMBOL(hex_asc_upper);
+
+/**
+ * hex_to_bin - convert a hex digit to its real value
+ * @ch: ascii character represents hex digit
+ *
+ * hex_to_bin() converts one hex digit to its actual value or -1 in case of bad
+ * input.
+ */
+int hex_to_bin(char ch)
+{
+	if ((ch >= '0') && (ch <= '9'))
+		return ch - '0';
+	ch = tolower(ch);
+	if ((ch >= 'a') && (ch <= 'f'))
+		return ch - 'a' + 10;
+	return -1;
+}
+EXPORT_SYMBOL(hex_to_bin);
+
+/**
+ * hex2bin - convert an ascii hexadecimal string to its binary representation
+ * @dst: binary result
+ * @src: ascii hexadecimal string
+ * @count: result length
+ *
+ * Return 0 on success, -1 in case of bad input.
+ */
+int hex2bin(u8 *dst, const char *src, size_t count)
+{
+	while (count--) {
+		int hi = hex_to_bin(*src++);
+		int lo = hex_to_bin(*src++);
+
+		if ((hi < 0) || (lo < 0))
+			return -1;
+
+		*dst++ = (hi << 4) | lo;
+	}
+	return 0;
+}
+EXPORT_SYMBOL(hex2bin);
+
+/**
+ * bin2hex - convert binary data to an ascii hexadecimal string
+ * @dst: ascii hexadecimal result
+ * @src: binary data
+ * @count: binary data length
+ */
+char *bin2hex(char *dst, const void *src, size_t count)
+{
+	const unsigned char *_src = src;
+
+	while (count--)
+		dst = hex_byte_pack(dst, *_src++);
+	return dst;
+}
+EXPORT_SYMBOL(bin2hex);
diff --git a/lib/misc.c b/lib/misc.c
index 87626c1..62ddd66 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -114,5 +114,3 @@ int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 	return -1;
 }
 EXPORT_SYMBOL(parse_area_spec);
-
-const char hex_asc[] = "0123456789abcdef";
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

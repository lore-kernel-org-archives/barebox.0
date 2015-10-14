Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZmMHs-0004bE-9e
 for barebox@lists.infradead.org; Wed, 14 Oct 2015 13:40:17 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 14 Oct 2015 15:39:34 +0200
Message-Id: <1444829979-1100-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/6] lib: add base64 helpers
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Import the busybox-1.23.1 uuencode/base64 helper functions.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/base64.h |   9 ++++
 lib/Kconfig      |   3 ++
 lib/Makefile     |   1 +
 lib/base64.c     | 154 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 167 insertions(+)
 create mode 100644 include/base64.h
 create mode 100644 lib/base64.c

diff --git a/include/base64.h b/include/base64.h
new file mode 100644
index 000000000000..0df510281df4
--- /dev/null
+++ b/include/base64.h
@@ -0,0 +1,9 @@
+#ifndef __BASE64_H
+#define __BASE64_H
+
+void uuencode(char *p, const char *src, int length);
+int decode_base64(char *dst, int dst_len, const char *src);
+
+#define BASE64_LENGTH(len)	(4 * (((len) + 2) / 3))
+
+#endif /* __BASE64_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index fbf9f0f34849..c5f81e8a187e 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -22,6 +22,9 @@ config XZ_DECOMPRESS
 	bool "include xz uncompression support"
 	select UNCOMPRESS
 
+config BASE64
+	bool "include base64 encode/decode support"
+
 config GENERIC_FIND_NEXT_BIT
 	def_bool n
 
diff --git a/lib/Makefile b/lib/Makefile
index abb34cfbdbeb..fdcf74d9757b 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -56,3 +56,4 @@ obj-y			+= gcd.o
 obj-y			+= hexdump.o
 obj-$(CONFIG_FONTS)	+= fonts/
 obj-$(CONFIG_BAREBOX_LOGO)     += logo/
+obj-$(CONFIG_BASE64)	+= base64.o
diff --git a/lib/base64.c b/lib/base64.c
new file mode 100644
index 000000000000..e7242864bb79
--- /dev/null
+++ b/lib/base64.c
@@ -0,0 +1,154 @@
+/*
+ * Code based on busybox-1.23.2
+ *
+ * Copyright 2003, Glenn McGrath
+ * Copyright 2006, Rob Landley <rob@landley.net>
+ * Copyright 2010, Denys Vlasenko
+ *
+ * Licensed under GPLv2 or later, see file LICENSE in this tarball for details.
+ */
+
+#include <common.h>
+#include <base64.h>
+
+/* Conversion table.  for base 64 */
+static const char const uuenc_tbl_base64[65 + 1] = {
+	'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
+	'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
+	'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
+	'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
+	'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
+	'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
+	'w', 'x', 'y', 'z', '0', '1', '2', '3',
+	'4', '5', '6', '7', '8', '9', '+', '/',
+	'=' /* termination character */,
+	'\0' /* needed for uudecode.c only */
+};
+
+/*
+ * Encode bytes at S of length LENGTH to uuencode or base64 format and place it
+ * to STORE.  STORE will be 0-terminated, and must point to a writable
+ * buffer of at least 1+BASE64_LENGTH(length) bytes.
+ * where BASE64_LENGTH(len) = (4 * ((LENGTH + 2) / 3))
+ */
+void uuencode(char *p, const char *src, int length)
+{
+	const unsigned char *s = src;
+	const char *tbl = uuenc_tbl_base64;
+
+	/* Transform the 3x8 bits to 4x6 bits */
+	while (length > 0) {
+		unsigned s1, s2;
+
+		/* Are s[1], s[2] valid or should be assumed 0? */
+		s1 = s2 = 0;
+		length -= 3; /* can be >=0, -1, -2 */
+		if (length >= -1) {
+			s1 = s[1];
+			if (length >= 0)
+				s2 = s[2];
+		}
+		*p++ = tbl[s[0] >> 2];
+		*p++ = tbl[((s[0] & 3) << 4) + (s1 >> 4)];
+		*p++ = tbl[((s1 & 0xf) << 2) + (s2 >> 6)];
+		*p++ = tbl[s2 & 0x3f];
+		s += 3;
+	}
+	/* Zero-terminate */
+	*p = '\0';
+	/* If length is -2 or -1, pad last char or two */
+	while (length) {
+		*--p = tbl[64];
+		length++;
+	}
+}
+EXPORT_SYMBOL(uuencode);
+
+/*
+ * Decode base64 encoded string. Stops on '\0'.
+ *
+ */
+int decode_base64(char *p_dst, int dst_len, const char *src)
+{
+	const char *src_tail;
+	char *dst = p_dst;
+	int length = 0;
+
+	while (dst_len > 0) {
+		unsigned char six_bit[4];
+		int count = 0;
+
+		/* Fetch up to four 6-bit values */
+		src_tail = src;
+		while (count < 4) {
+			const char *table_ptr;
+			int ch;
+
+			/*
+			 * Get next _valid_ character.
+			 * uuenc_tbl_base64[] contains this string:
+			 *  0         1         2         3         4         5         6
+			 *  01234567890123456789012345678901234567890123456789012345678901234
+			 * "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="
+			 */
+			do {
+				ch = *src;
+				if (ch == '\0') {
+					/*
+					 * Example:
+					 * If we decode "QUJD <NUL>", we want
+					 * to return ptr to NUL, not to ' ',
+					 * because we did fully decode
+					 * the string (to "ABC").
+					 */
+					if (count == 0)
+						src_tail = src;
+					goto ret;
+				}
+				src++;
+				table_ptr = strchr(uuenc_tbl_base64, ch);
+			} while (!table_ptr);
+
+			/* Convert encoded character to decimal */
+			ch = table_ptr - uuenc_tbl_base64;
+
+			/* ch is 64 if char was '=', otherwise 0..63 */
+			if (ch == 64)
+				break;
+
+			six_bit[count] = ch;
+			count++;
+		}
+
+		/*
+		 * Transform 6-bit values to 8-bit ones.
+		 * count can be < 4 when we decode the tail:
+		 * "eQ==" -> "y", not "y NUL NUL".
+		 * Note that (count > 1) is always true,
+		 * "x===" encoding is not valid:
+		 * even a single zero byte encodes as "AA==".
+		 * However, with current logic we come here with count == 1
+		 * when we decode "==" tail.
+		 */
+		if (count > 1)
+			*dst++ = six_bit[0] << 2 | six_bit[1] >> 4;
+		if (count > 2)
+			*dst++ = six_bit[1] << 4 | six_bit[2] >> 2;
+		if (count > 3)
+			*dst++ = six_bit[2] << 6 | six_bit[3];
+		/*
+		 * Note that if we decode "AA==" and ate first '=',
+		 * we just decoded one char (count == 2) and now we'll
+		 * do the loop once more to decode second '='.
+		 */
+		dst_len -= count-1;
+		/* last character was "=" */
+		if (count != 0)
+			length += count - 1;
+	}
+ret:
+	p_dst = dst;
+
+	return length;
+}
+EXPORT_SYMBOL(decode_base64);
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

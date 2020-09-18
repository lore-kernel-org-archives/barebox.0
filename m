Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJC1P-0004MW-GO
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 08:45:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Sep 2020 10:45:24 +0200
Message-Id: <20200918084532.2794-2-s.hauer@pengutronix.de>
In-Reply-To: <20200918084532.2794-1-s.hauer@pengutronix.de>
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] Add print_hex_dump kernel implementation
To: Barebox List <barebox@lists.infradead.org>

This gives us proper support of the different DUMP_PREFIX_* flags
and also the ability to print hexdumps to buffers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/printk.h |  20 +++--
 lib/hexdump.c    | 212 +++++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 216 insertions(+), 16 deletions(-)

diff --git a/include/printk.h b/include/printk.h
index 6a027175ab..9941ddb12c 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -115,14 +115,6 @@ int __pr_memory_display(int level, const void *addr, loff_t offs, unsigned nbyte
 				(offs), (nbytes), (size), (swab), pr_fmt("")) : 0; \
 	 })
 
-#define DUMP_PREFIX_OFFSET 0
-static inline void print_hex_dump(const char *level, const char *prefix_str,
-		int prefix_type, int rowsize, int groupsize,
-		const void *buf, size_t len, bool ascii)
-{
-	memory_display(buf, 0, len, groupsize, 0);
-}
-
 struct log_entry {
 	struct list_head list;
 	char *msg;
@@ -156,4 +148,16 @@ struct va_format {
 	va_list *va;
 };
 
+enum {
+	DUMP_PREFIX_NONE,
+	DUMP_PREFIX_ADDRESS,
+	DUMP_PREFIX_OFFSET
+};
+extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
+			      int groupsize, char *linebuf, size_t linebuflen,
+			      bool ascii);
+extern void print_hex_dump(const char *level, const char *prefix_str,
+			   int prefix_type, int rowsize, int groupsize,
+			   const void *buf, size_t len, bool ascii);
+
 #endif
diff --git a/lib/hexdump.c b/lib/hexdump.c
index 3b1d5e6736..93f345e881 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -1,15 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * lib/hexdump.c
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * published by the Free Software Foundation. See README and COPYING for
- * more details.
  */
 
 #include <common.h>
-#include <linux/kernel.h>
+#include <linux/types.h>
 #include <linux/ctype.h>
+#include <linux/log2.h>
+#include <printk.h>
+#include <asm/unaligned.h>
 
 const char hex_asc[] = "0123456789abcdef";
 EXPORT_SYMBOL(hex_asc);
@@ -40,7 +39,7 @@ EXPORT_SYMBOL(hex_to_bin);
  * @src: ascii hexadecimal string
  * @count: result length
  *
- * Return 0 on success, -1 in case of bad input.
+ * Return 0 on success, -EINVAL in case of bad input.
  */
 int hex2bin(u8 *dst, const char *src, size_t count)
 {
@@ -49,7 +48,7 @@ int hex2bin(u8 *dst, const char *src, size_t count)
 		int lo = hex_to_bin(*src++);
 
 		if ((hi < 0) || (lo < 0))
-			return -1;
+			return -EINVAL;
 
 		*dst++ = (hi << 4) | lo;
 	}
@@ -72,3 +71,200 @@ char *bin2hex(char *dst, const void *src, size_t count)
 	return dst;
 }
 EXPORT_SYMBOL(bin2hex);
+
+/**
+ * hex_dump_to_buffer - convert a blob of data to "hex ASCII" in memory
+ * @buf: data blob to dump
+ * @len: number of bytes in the @buf
+ * @rowsize: number of bytes to print per line; must be 16 or 32
+ * @groupsize: number of bytes to print at a time (1, 2, 4, 8; default = 1)
+ * @linebuf: where to put the converted data
+ * @linebuflen: total size of @linebuf, including space for terminating NUL
+ * @ascii: include ASCII after the hex output
+ *
+ * hex_dump_to_buffer() works on one "line" of output at a time, i.e.,
+ * 16 or 32 bytes of input data converted to hex + ASCII output.
+ *
+ * Given a buffer of u8 data, hex_dump_to_buffer() converts the input data
+ * to a hex + ASCII dump at the supplied memory location.
+ * The converted output is always NUL-terminated.
+ *
+ * E.g.:
+ *   hex_dump_to_buffer(frame->data, frame->len, 16, 1,
+ *			linebuf, sizeof(linebuf), true);
+ *
+ * example output buffer:
+ * 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f  @ABCDEFGHIJKLMNO
+ *
+ * Return:
+ * The amount of bytes placed in the buffer without terminating NUL. If the
+ * output was truncated, then the return value is the number of bytes
+ * (excluding the terminating NUL) which would have been written to the final
+ * string if enough space had been available.
+ */
+int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
+		       char *linebuf, size_t linebuflen, bool ascii)
+{
+	const u8 *ptr = buf;
+	int ngroups;
+	u8 ch;
+	int j, lx = 0;
+	int ascii_column;
+	int ret;
+
+	if (rowsize != 16 && rowsize != 32)
+		rowsize = 16;
+
+	if (len > rowsize)		/* limit to one line at a time */
+		len = rowsize;
+	if (!is_power_of_2(groupsize) || groupsize > 8)
+		groupsize = 1;
+	if ((len % groupsize) != 0)	/* no mixed size output */
+		groupsize = 1;
+
+	ngroups = len / groupsize;
+	ascii_column = rowsize * 2 + rowsize / groupsize + 1;
+
+	if (!linebuflen)
+		goto overflow1;
+
+	if (!len)
+		goto nil;
+
+	if (groupsize == 8) {
+		const u64 *ptr8 = buf;
+
+		for (j = 0; j < ngroups; j++) {
+			ret = snprintf(linebuf + lx, linebuflen - lx,
+				       "%s%16.16llx", j ? " " : "",
+				       get_unaligned(ptr8 + j));
+			if (ret >= linebuflen - lx)
+				goto overflow1;
+			lx += ret;
+		}
+	} else if (groupsize == 4) {
+		const u32 *ptr4 = buf;
+
+		for (j = 0; j < ngroups; j++) {
+			ret = snprintf(linebuf + lx, linebuflen - lx,
+				       "%s%8.8x", j ? " " : "",
+				       get_unaligned(ptr4 + j));
+			if (ret >= linebuflen - lx)
+				goto overflow1;
+			lx += ret;
+		}
+	} else if (groupsize == 2) {
+		const u16 *ptr2 = buf;
+
+		for (j = 0; j < ngroups; j++) {
+			ret = snprintf(linebuf + lx, linebuflen - lx,
+				       "%s%4.4x", j ? " " : "",
+				       get_unaligned(ptr2 + j));
+			if (ret >= linebuflen - lx)
+				goto overflow1;
+			lx += ret;
+		}
+	} else {
+		for (j = 0; j < len; j++) {
+			if (linebuflen < lx + 2)
+				goto overflow2;
+			ch = ptr[j];
+			linebuf[lx++] = hex_asc_hi(ch);
+			if (linebuflen < lx + 2)
+				goto overflow2;
+			linebuf[lx++] = hex_asc_lo(ch);
+			if (linebuflen < lx + 2)
+				goto overflow2;
+			linebuf[lx++] = ' ';
+		}
+		if (j)
+			lx--;
+	}
+	if (!ascii)
+		goto nil;
+
+	while (lx < ascii_column) {
+		if (linebuflen < lx + 2)
+			goto overflow2;
+		linebuf[lx++] = ' ';
+	}
+	for (j = 0; j < len; j++) {
+		if (linebuflen < lx + 2)
+			goto overflow2;
+		ch = ptr[j];
+		linebuf[lx++] = (isascii(ch) && isprint(ch)) ? ch : '.';
+	}
+nil:
+	linebuf[lx] = '\0';
+	return lx;
+overflow2:
+	linebuf[lx++] = '\0';
+overflow1:
+	return ascii ? ascii_column + len : (groupsize * 2 + 1) * ngroups - 1;
+}
+EXPORT_SYMBOL(hex_dump_to_buffer);
+
+/**
+ * print_hex_dump - print a text hex dump to syslog for a binary blob of data
+ * @level: kernel log level (e.g. KERN_DEBUG)
+ * @prefix_str: string to prefix each line with;
+ *  caller supplies trailing spaces for alignment if desired
+ * @prefix_type: controls whether prefix of an offset, address, or none
+ *  is printed (%DUMP_PREFIX_OFFSET, %DUMP_PREFIX_ADDRESS, %DUMP_PREFIX_NONE)
+ * @rowsize: number of bytes to print per line; must be 16 or 32
+ * @groupsize: number of bytes to print at a time (1, 2, 4, 8; default = 1)
+ * @buf: data blob to dump
+ * @len: number of bytes in the @buf
+ * @ascii: include ASCII after the hex output
+ *
+ * Given a buffer of u8 data, print_hex_dump() prints a hex + ASCII dump
+ * to the kernel log at the specified kernel log level, with an optional
+ * leading prefix.
+ *
+ * print_hex_dump() works on one "line" of output at a time, i.e.,
+ * 16 or 32 bytes of input data converted to hex + ASCII output.
+ * print_hex_dump() iterates over the entire input @buf, breaking it into
+ * "line size" chunks to format and print.
+ *
+ * E.g.:
+ *   print_hex_dump(KERN_DEBUG, "raw data: ", DUMP_PREFIX_ADDRESS,
+ *		    16, 1, frame->data, frame->len, true);
+ *
+ * Example output using %DUMP_PREFIX_OFFSET and 1-byte mode:
+ * 0009ab42: 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f  @ABCDEFGHIJKLMNO
+ * Example output using %DUMP_PREFIX_ADDRESS and 4-byte mode:
+ * ffffffff88089af0: 73727170 77767574 7b7a7978 7f7e7d7c  pqrstuvwxyz{|}~.
+ */
+void print_hex_dump(const char *level, const char *prefix_str, int prefix_type,
+		    int rowsize, int groupsize,
+		    const void *buf, size_t len, bool ascii)
+{
+	const u8 *ptr = buf;
+	int i, linelen, remaining = len;
+	unsigned char linebuf[32 * 3 + 2 + 32 + 1];
+
+	if (rowsize != 16 && rowsize != 32)
+		rowsize = 16;
+
+	for (i = 0; i < len; i += rowsize) {
+		linelen = min(remaining, rowsize);
+		remaining -= rowsize;
+
+		hex_dump_to_buffer(ptr + i, linelen, rowsize, groupsize,
+				   linebuf, sizeof(linebuf), ascii);
+
+		switch (prefix_type) {
+		case DUMP_PREFIX_ADDRESS:
+			printk("%s%s%p: %s\n",
+			       level, prefix_str, ptr + i, linebuf);
+			break;
+		case DUMP_PREFIX_OFFSET:
+			printk("%s%s%.8x: %s\n", level, prefix_str, i, linebuf);
+			break;
+		default:
+			printk("%s%s%s\n", level, prefix_str, linebuf);
+			break;
+		}
+	}
+}
+EXPORT_SYMBOL(print_hex_dump);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

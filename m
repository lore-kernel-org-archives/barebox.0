Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo1.mail-out.ovh.net ([87.98.158.110]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UxZZF-00056x-2P
 for barebox@lists.infradead.org; Fri, 12 Jul 2013 09:23:10 +0000
Received: from mail194.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 05C31FFA362
 for <barebox@lists.infradead.org>; Fri, 12 Jul 2013 11:22:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 12 Jul 2013 11:22:37 +0200
Message-Id: <1373620959-20431-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130712091455.GD19197@ns203013.ovh.net>
References: <20130712091455.GD19197@ns203013.ovh.net>
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
Subject: [PATCH 1/3] decompressor: Add LZ4 decompressor module
To: barebox@lists.infradead.org
Cc: Kyungsik Lee <kyungsik.lee@lge.com>

From: Kyungsik Lee <kyungsik.lee@lge.com>

This patch adds support for LZ4 decompression in the Linux Kernel.
LZ4 Decompression APIs for kernel are based on LZ4 implementation
by Yann Collet.

LZ4 homepage : http://fastcompression.blogspot.com/p/lz4.html
LZ4 source repository : http://code.google.com/p/lz4/

Signed-off-by: Kyungsik Lee <kyungsik.lee@lge.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/lz4.h      |  87 +++++++++++++
 lib/lz4/lz4_decompress.c | 326 +++++++++++++++++++++++++++++++++++++++++++++++
 lib/lz4/lz4defs.h        | 156 +++++++++++++++++++++++
 3 files changed, 569 insertions(+)
 create mode 100644 include/linux/lz4.h
 create mode 100644 lib/lz4/lz4_decompress.c
 create mode 100644 lib/lz4/lz4defs.h

diff --git a/include/linux/lz4.h b/include/linux/lz4.h
new file mode 100644
index 0000000..d21c13f
--- /dev/null
+++ b/include/linux/lz4.h
@@ -0,0 +1,87 @@
+#ifndef __LZ4_H__
+#define __LZ4_H__
+/*
+ * LZ4 Kernel Interface
+ *
+ * Copyright (C) 2013, LG Electronics, Kyungsik Lee <kyungsik.lee@lge.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#define LZ4_MEM_COMPRESS	(4096 * sizeof(unsigned char *))
+#define LZ4HC_MEM_COMPRESS	(65538 * sizeof(unsigned char *))
+
+/*
+ * lz4_compressbound()
+ * Provides the maximum size that LZ4 may output in a "worst case" scenario
+ * (input data not compressible)
+ */
+static inline size_t lz4_compressbound(size_t isize)
+{
+	return isize + (isize / 255) + 16;
+}
+
+/*
+ * lz4_compress()
+ *	src     : source address of the original data
+ *	src_len : size of the original data
+ *	dst	: output buffer address of the compressed data
+ *		This requires 'dst' of size LZ4_COMPRESSBOUND.
+ *	dst_len : is the output size, which is returned after compress done
+ *	workmem : address of the working memory.
+ *		This requires 'workmem' of size LZ4_MEM_COMPRESS.
+ *	return  : Success if return 0
+ *		  Error if return (< 0)
+ *	note :  Destination buffer and workmem must be already allocated with
+ *		the defined size.
+ */
+int lz4_compress(const unsigned char *src, size_t src_len,
+		unsigned char *dst, size_t *dst_len, void *wrkmem);
+
+ /*
+  * lz4hc_compress()
+  *	 src	 : source address of the original data
+  *	 src_len : size of the original data
+  *	 dst	 : output buffer address of the compressed data
+  *		This requires 'dst' of size LZ4_COMPRESSBOUND.
+  *	 dst_len : is the output size, which is returned after compress done
+  *	 workmem : address of the working memory.
+  *		This requires 'workmem' of size LZ4HC_MEM_COMPRESS.
+  *	 return  : Success if return 0
+  *		   Error if return (< 0)
+  *	 note :  Destination buffer and workmem must be already allocated with
+  *		 the defined size.
+  */
+int lz4hc_compress(const unsigned char *src, size_t src_len,
+		unsigned char *dst, size_t *dst_len, void *wrkmem);
+
+/*
+ * lz4_decompress()
+ *	src     : source address of the compressed data
+ *	src_len : is the input size, whcih is returned after decompress done
+ *	dest	: output buffer address of the decompressed data
+ *	actual_dest_len: is the size of uncompressed data, supposing it's known
+ *	return  : Success if return 0
+ *		  Error if return (< 0)
+ *	note :  Destination buffer must be already allocated.
+ *		slightly faster than lz4_decompress_unknownoutputsize()
+ */
+int lz4_decompress(const char *src, size_t *src_len, char *dest,
+		size_t actual_dest_len);
+
+/*
+ * lz4_decompress_unknownoutputsize()
+ *	src     : source address of the compressed data
+ *	src_len : is the input size, therefore the compressed size
+ *	dest	: output buffer address of the decompressed data
+ *	dest_len: is the max size of the destination buffer, which is
+ *			returned with actual size of decompressed data after
+ *			decompress done
+ *	return  : Success if return 0
+ *		  Error if return (< 0)
+ *	note :  Destination buffer must be already allocated.
+ */
+int lz4_decompress_unknownoutputsize(const char *src, size_t src_len,
+		char *dest, size_t *dest_len);
+#endif
diff --git a/lib/lz4/lz4_decompress.c b/lib/lz4/lz4_decompress.c
new file mode 100644
index 0000000..d3414ea
--- /dev/null
+++ b/lib/lz4/lz4_decompress.c
@@ -0,0 +1,326 @@
+/*
+ * LZ4 Decompressor for Linux kernel
+ *
+ * Copyright (C) 2013, LG Electronics, Kyungsik Lee <kyungsik.lee@lge.com>
+ *
+ * Based on LZ4 implementation by Yann Collet.
+ *
+ * LZ4 - Fast LZ compression algorithm
+ * Copyright (C) 2011-2012, Yann Collet.
+ * BSD 2-Clause License (http://www.opensource.org/licenses/bsd-license.php)
+ *
+ * Redistribution and use in source and binary forms, with or without
+ * modification, are permitted provided that the following conditions are
+ * met:
+ *
+ *     * Redistributions of source code must retain the above copyright
+ * notice, this list of conditions and the following disclaimer.
+ *     * Redistributions in binary form must reproduce the above
+ * copyright notice, this list of conditions and the following disclaimer
+ * in the documentation and/or other materials provided with the
+ * distribution.
+ *
+ * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
+ * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
+ * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
+ * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
+ * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
+ * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
+ * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
+ * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
+ * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
+ * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ *  You can contact the author at :
+ *  - LZ4 homepage : http://fastcompression.blogspot.com/p/lz4.html
+ *  - LZ4 source repository : http://code.google.com/p/lz4/
+ */
+
+#ifndef STATIC
+#include <linux/module.h>
+#include <linux/kernel.h>
+#endif
+#include <linux/lz4.h>
+
+#include <asm/unaligned.h>
+
+#include "lz4defs.h"
+
+static int lz4_uncompress(const char *source, char *dest, int osize)
+{
+	const BYTE *ip = (const BYTE *) source;
+	const BYTE *ref;
+	BYTE *op = (BYTE *) dest;
+	BYTE * const oend = op + osize;
+	BYTE *cpy;
+	unsigned token;
+	size_t length;
+	size_t dec32table[] = {0, 3, 2, 3, 0, 0, 0, 0};
+#if LZ4_ARCH64
+	size_t dec64table[] = {0, 0, 0, -1, 0, 1, 2, 3};
+#endif
+
+	while (1) {
+
+		/* get runlength */
+		token = *ip++;
+		length = (token >> ML_BITS);
+		if (length == RUN_MASK) {
+			size_t len;
+
+			len = *ip++;
+			for (; len == 255; length += 255)
+				len = *ip++;
+			length += len;
+		}
+
+		/* copy literals */
+		cpy = op + length;
+		if (unlikely(cpy > oend - COPYLENGTH)) {
+			/*
+			 * Error: not enough place for another match
+			 * (min 4) + 5 literals
+			 */
+			if (cpy != oend)
+				goto _output_error;
+
+			memcpy(op, ip, length);
+			ip += length;
+			break; /* EOF */
+		}
+		LZ4_WILDCOPY(ip, op, cpy);
+		ip -= (op - cpy);
+		op = cpy;
+
+		/* get offset */
+		LZ4_READ_LITTLEENDIAN_16(ref, cpy, ip);
+		ip += 2;
+
+		/* Error: offset create reference outside destination buffer */
+		if (unlikely(ref < (BYTE *const) dest))
+			goto _output_error;
+
+		/* get matchlength */
+		length = token & ML_MASK;
+		if (length == ML_MASK) {
+			for (; *ip == 255; length += 255)
+				ip++;
+			length += *ip++;
+		}
+
+		/* copy repeated sequence */
+		if (unlikely((op - ref) < STEPSIZE)) {
+#if LZ4_ARCH64
+			size_t dec64 = dec64table[op - ref];
+#else
+			const int dec64 = 0;
+#endif
+			op[0] = ref[0];
+			op[1] = ref[1];
+			op[2] = ref[2];
+			op[3] = ref[3];
+			op += 4;
+			ref += 4;
+			ref -= dec32table[op-ref];
+			PUT4(ref, op);
+			op += STEPSIZE - 4;
+			ref -= dec64;
+		} else {
+			LZ4_COPYSTEP(ref, op);
+		}
+		cpy = op + length - (STEPSIZE - 4);
+		if (cpy > (oend - COPYLENGTH)) {
+
+			/* Error: request to write beyond destination buffer */
+			if (cpy > oend)
+				goto _output_error;
+			LZ4_SECURECOPY(ref, op, (oend - COPYLENGTH));
+			while (op < cpy)
+				*op++ = *ref++;
+			op = cpy;
+			/*
+			 * Check EOF (should never happen, since last 5 bytes
+			 * are supposed to be literals)
+			 */
+			if (op == oend)
+				goto _output_error;
+			continue;
+		}
+		LZ4_SECURECOPY(ref, op, cpy);
+		op = cpy; /* correction */
+	}
+	/* end of decoding */
+	return (int) (((char *)ip) - source);
+
+	/* write overflow error detected */
+_output_error:
+	return (int) (-(((char *)ip) - source));
+}
+
+static int lz4_uncompress_unknownoutputsize(const char *source, char *dest,
+				int isize, size_t maxoutputsize)
+{
+	const BYTE *ip = (const BYTE *) source;
+	const BYTE *const iend = ip + isize;
+	const BYTE *ref;
+
+
+	BYTE *op = (BYTE *) dest;
+	BYTE * const oend = op + maxoutputsize;
+	BYTE *cpy;
+
+	size_t dec32table[] = {0, 3, 2, 3, 0, 0, 0, 0};
+#if LZ4_ARCH64
+	size_t dec64table[] = {0, 0, 0, -1, 0, 1, 2, 3};
+#endif
+
+	/* Main Loop */
+	while (ip < iend) {
+
+		unsigned token;
+		size_t length;
+
+		/* get runlength */
+		token = *ip++;
+		length = (token >> ML_BITS);
+		if (length == RUN_MASK) {
+			int s = 255;
+			while ((ip < iend) && (s == 255)) {
+				s = *ip++;
+				length += s;
+			}
+		}
+		/* copy literals */
+		cpy = op + length;
+		if ((cpy > oend - COPYLENGTH) ||
+			(ip + length > iend - COPYLENGTH)) {
+
+			if (cpy > oend)
+				goto _output_error;/* writes beyond buffer */
+
+			if (ip + length != iend)
+				goto _output_error;/*
+						    * Error: LZ4 format requires
+						    * to consume all input
+						    * at this stage
+						    */
+			memcpy(op, ip, length);
+			op += length;
+			break;/* Necessarily EOF, due to parsing restrictions */
+		}
+		LZ4_WILDCOPY(ip, op, cpy);
+		ip -= (op - cpy);
+		op = cpy;
+
+		/* get offset */
+		LZ4_READ_LITTLEENDIAN_16(ref, cpy, ip);
+		ip += 2;
+		if (ref < (BYTE * const) dest)
+			goto _output_error;
+			/*
+			 * Error : offset creates reference
+			 * outside of destination buffer
+			 */
+
+		/* get matchlength */
+		length = (token & ML_MASK);
+		if (length == ML_MASK) {
+			while (ip < iend) {
+				int s = *ip++;
+				length += s;
+				if (s == 255)
+					continue;
+				break;
+			}
+		}
+
+		/* copy repeated sequence */
+		if (unlikely((op - ref) < STEPSIZE)) {
+#if LZ4_ARCH64
+			size_t dec64 = dec64table[op - ref];
+#else
+			const int dec64 = 0;
+#endif
+				op[0] = ref[0];
+				op[1] = ref[1];
+				op[2] = ref[2];
+				op[3] = ref[3];
+				op += 4;
+				ref += 4;
+				ref -= dec32table[op - ref];
+				PUT4(ref, op);
+				op += STEPSIZE - 4;
+				ref -= dec64;
+		} else {
+			LZ4_COPYSTEP(ref, op);
+		}
+		cpy = op + length - (STEPSIZE-4);
+		if (cpy > oend - COPYLENGTH) {
+			if (cpy > oend)
+				goto _output_error; /* write outside of buf */
+
+			LZ4_SECURECOPY(ref, op, (oend - COPYLENGTH));
+			while (op < cpy)
+				*op++ = *ref++;
+			op = cpy;
+			/*
+			 * Check EOF (should never happen, since last 5 bytes
+			 * are supposed to be literals)
+			 */
+			if (op == oend)
+				goto _output_error;
+			continue;
+		}
+		LZ4_SECURECOPY(ref, op, cpy);
+		op = cpy; /* correction */
+	}
+	/* end of decoding */
+	return (int) (((char *) op) - dest);
+
+	/* write overflow error detected */
+_output_error:
+	return (int) (-(((char *) ip) - source));
+}
+
+int lz4_decompress(const char *src, size_t *src_len, char *dest,
+		size_t actual_dest_len)
+{
+	int ret = -1;
+	int input_len = 0;
+
+	input_len = lz4_uncompress(src, dest, actual_dest_len);
+	if (input_len < 0)
+		goto exit_0;
+	*src_len = input_len;
+
+	return 0;
+exit_0:
+	return ret;
+}
+#ifndef STATIC
+EXPORT_SYMBOL_GPL(lz4_decompress);
+#endif
+
+int lz4_decompress_unknownoutputsize(const char *src, size_t src_len,
+		char *dest, size_t *dest_len)
+{
+	int ret = -1;
+	int out_len = 0;
+
+	out_len = lz4_uncompress_unknownoutputsize(src, dest, src_len,
+					*dest_len);
+	if (out_len < 0)
+		goto exit_0;
+	*dest_len = out_len;
+
+	return 0;
+exit_0:
+	return ret;
+}
+#ifndef STATIC
+EXPORT_SYMBOL_GPL(lz4_decompress_unknownoutputsize);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("LZ4 Decompressor");
+#endif
diff --git a/lib/lz4/lz4defs.h b/lib/lz4/lz4defs.h
new file mode 100644
index 0000000..abcecdc
--- /dev/null
+++ b/lib/lz4/lz4defs.h
@@ -0,0 +1,156 @@
+/*
+ * lz4defs.h -- architecture specific defines
+ *
+ * Copyright (C) 2013, LG Electronics, Kyungsik Lee <kyungsik.lee@lge.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+/*
+ * Detects 64 bits mode
+ */
+#if (defined(__x86_64__) || defined(__x86_64) || defined(__amd64__) \
+	|| defined(__ppc64__) || defined(__LP64__))
+#define LZ4_ARCH64 1
+#else
+#define LZ4_ARCH64 0
+#endif
+
+/*
+ * Architecture-specific macros
+ */
+#define BYTE	u8
+typedef struct _U16_S { u16 v; } U16_S;
+typedef struct _U32_S { u32 v; } U32_S;
+typedef struct _U64_S { u64 v; } U64_S;
+#if defined(CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS)		\
+	|| defined(CONFIG_ARM) && __LINUX_ARM_ARCH__ >= 6	\
+	&& defined(ARM_EFFICIENT_UNALIGNED_ACCESS)
+
+#define A16(x) (((U16_S *)(x))->v)
+#define A32(x) (((U32_S *)(x))->v)
+#define A64(x) (((U64_S *)(x))->v)
+
+#define PUT4(s, d) (A32(d) = A32(s))
+#define PUT8(s, d) (A64(d) = A64(s))
+#define LZ4_WRITE_LITTLEENDIAN_16(p, v)	\
+	do {	\
+		A16(p) = v; \
+		p += 2; \
+	} while (0)
+#else /* CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS */
+
+#define A64(x) get_unaligned((u64 *)&(((U16_S *)(x))->v))
+#define A32(x) get_unaligned((u32 *)&(((U16_S *)(x))->v))
+#define A16(x) get_unaligned((u16 *)&(((U16_S *)(x))->v))
+
+#define PUT4(s, d) \
+	put_unaligned(get_unaligned((const u32 *) s), (u32 *) d)
+#define PUT8(s, d) \
+	put_unaligned(get_unaligned((const u64 *) s), (u64 *) d)
+
+#define LZ4_WRITE_LITTLEENDIAN_16(p, v)	\
+	do {	\
+		put_unaligned(v, (u16 *)(p)); \
+		p += 2; \
+	} while (0)
+#endif
+
+#define COPYLENGTH 8
+#define ML_BITS  4
+#define ML_MASK  ((1U << ML_BITS) - 1)
+#define RUN_BITS (8 - ML_BITS)
+#define RUN_MASK ((1U << RUN_BITS) - 1)
+#define MEMORY_USAGE	14
+#define MINMATCH	4
+#define SKIPSTRENGTH	6
+#define LASTLITERALS	5
+#define MFLIMIT		(COPYLENGTH + MINMATCH)
+#define MINLENGTH	(MFLIMIT + 1)
+#define MAXD_LOG	16
+#define MAXD		(1 << MAXD_LOG)
+#define MAXD_MASK	(u32)(MAXD - 1)
+#define MAX_DISTANCE	(MAXD - 1)
+#define HASH_LOG	(MAXD_LOG - 1)
+#define HASHTABLESIZE	(1 << HASH_LOG)
+#define MAX_NB_ATTEMPTS	256
+#define OPTIMAL_ML	(int)((ML_MASK-1)+MINMATCH)
+#define LZ4_64KLIMIT	((1<<16) + (MFLIMIT - 1))
+#define HASHLOG64K	((MEMORY_USAGE - 2) + 1)
+#define HASH64KTABLESIZE	(1U << HASHLOG64K)
+#define LZ4_HASH_VALUE(p)	(((A32(p)) * 2654435761U) >> \
+				((MINMATCH * 8) - (MEMORY_USAGE-2)))
+#define LZ4_HASH64K_VALUE(p)	(((A32(p)) * 2654435761U) >> \
+				((MINMATCH * 8) - HASHLOG64K))
+#define HASH_VALUE(p)		(((A32(p)) * 2654435761U) >> \
+				((MINMATCH * 8) - HASH_LOG))
+
+#if LZ4_ARCH64/* 64-bit */
+#define STEPSIZE 8
+
+#define LZ4_COPYSTEP(s, d)	\
+	do {			\
+		PUT8(s, d);	\
+		d += 8;		\
+		s += 8;		\
+	} while (0)
+
+#define LZ4_COPYPACKET(s, d)	LZ4_COPYSTEP(s, d)
+
+#define LZ4_SECURECOPY(s, d, e)			\
+	do {					\
+		if (d < e) {			\
+			LZ4_WILDCOPY(s, d, e);	\
+		}				\
+	} while (0)
+#define HTYPE u32
+
+#ifdef __BIG_ENDIAN
+#define LZ4_NBCOMMONBYTES(val) (__builtin_clzll(val) >> 3)
+#else
+#define LZ4_NBCOMMONBYTES(val) (__builtin_ctzll(val) >> 3)
+#endif
+
+#else	/* 32-bit */
+#define STEPSIZE 4
+
+#define LZ4_COPYSTEP(s, d)	\
+	do {			\
+		PUT4(s, d);	\
+		d += 4;		\
+		s += 4;		\
+	} while (0)
+
+#define LZ4_COPYPACKET(s, d)		\
+	do {				\
+		LZ4_COPYSTEP(s, d);	\
+		LZ4_COPYSTEP(s, d);	\
+	} while (0)
+
+#define LZ4_SECURECOPY	LZ4_WILDCOPY
+#define HTYPE const u8*
+
+#ifdef __BIG_ENDIAN
+#define LZ4_NBCOMMONBYTES(val) (__builtin_clz(val) >> 3)
+#else
+#define LZ4_NBCOMMONBYTES(val) (__builtin_ctz(val) >> 3)
+#endif
+
+#endif
+
+#define LZ4_READ_LITTLEENDIAN_16(d, s, p) \
+	(d = s - get_unaligned_le16(p))
+
+#define LZ4_WILDCOPY(s, d, e)		\
+	do {				\
+		LZ4_COPYPACKET(s, d);	\
+	} while (d < e)
+
+#define LZ4_BLINDCOPY(s, d, l)	\
+	do {	\
+		u8 *e = (d) + l;	\
+		LZ4_WILDCOPY(s, d, e);	\
+		d = e;	\
+	} while (0)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

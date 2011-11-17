Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RR9do-00007d-Lf
 for barebox@lists.infradead.org; Thu, 17 Nov 2011 21:37:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 17 Nov 2011 22:36:52 +0100
Message-Id: <1321565812-335-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fix unlzo support
To: barebox@lists.infradead.org

unlzo support is broken for files > 256k (more than one block)
since commit a3463cc12877f6527624972c190a80ebb787a604
(lib/decompress_unlzo: use fill and full to read and write data)
This patch updates unlzo support to the latest version of the kernel
plus a small buffer free fix.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/decompress_unlzo.c |  216 ++++++++++++++++++++++++++++++++++++------------
 1 files changed, 162 insertions(+), 54 deletions(-)

diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
index fc5c49f..0ae3d4d 100644
--- a/lib/decompress_unlzo.c
+++ b/lib/decompress_unlzo.c
@@ -46,14 +46,25 @@ static const unsigned char lzop_magic[] = {
 
 #define LZO_BLOCK_SIZE        (256*1024l)
 #define HEADER_HAS_FILTER      0x00000800L
+#define HEADER_SIZE_MIN       (9 + 7     + 4 + 8     + 1       + 4)
+#define HEADER_SIZE_MAX       (9 + 7 + 1 + 8 + 8 + 4 + 1 + 255 + 4)
 
-static inline int parse_header(u8 *input, u8 *skip)
+static inline int parse_header(u8 *input, int *skip, int in_len)
 {
 	int l;
 	u8 *parse = input;
+	u8 *end = input + in_len;
 	u8 level = 0;
 	u16 version;
 
+	/*
+	 * Check that there's enough input to possibly have a valid header.
+	 * Then it is possible to parse several fields until the minimum
+	 * size may have been used.
+	 */
+	if (in_len < HEADER_SIZE_MIN)
+		return 0;
+
 	/* read magic: 9 first bits */
 	for (l = 0; l < 9; l++) {
 		if (*parse++ != lzop_magic[l])
@@ -71,6 +82,15 @@ static inline int parse_header(u8 *input, u8 *skip)
 	else
 		parse += 4; /* flags */
 
+	/*
+	 * At least mode, mtime_low, filename length, and checksum must
+	 * be left to be parsed. If also mtime_high is present, it's OK
+	 * because the next input buffer check is after reading the
+	 * filename length.
+	 */
+	if (end - parse < 8 + 1 + 4)
+		return 0;
+
 	/* skip mode and mtime_low */
 	parse += 8;
 	if (version >= 0x0940)
@@ -78,108 +98,191 @@ static inline int parse_header(u8 *input, u8 *skip)
 
 	l = *parse++;
 	/* don't care about the file name, and skip checksum */
+	if (end - parse < l + 4)
+		return 0;
 	parse += l + 4;
 
 	*skip = parse - input;
 	return 1;
 }
 
-static int __unlzo(int *dest_len,
-			int (*fill) (void *, unsigned int),
-			int (*flush) (void *, unsigned int))
+static inline int __unlzo(u8 *input, int in_len,
+				int (*fill) (void *, unsigned int),
+				int (*flush) (void *, unsigned int),
+				u8 *output, int *posp,
+				void (*error) (char *x))
 {
-	u8 skip = 0, r = 0;
+	u8 r = 0;
+	int skip = 0;
 	u32 src_len, dst_len;
 	size_t tmp;
-	u8 *in_buf, *in_buf_save, *out_buf, *out_buf_save;
-	int obytes_processed = 0;
+	u8 *in_buf, *in_buf_save, *out_buf;
 	int ret = -1;
 
-	out_buf = xmalloc(LZO_BLOCK_SIZE);
-	in_buf = xmalloc(lzo1x_worst_compress(LZO_BLOCK_SIZE));
+	if (output) {
+		out_buf = output;
+	} else if (!flush) {
+		error("NULL output pointer and no flush function provided");
+		goto exit;
+	} else {
+		out_buf = malloc(LZO_BLOCK_SIZE);
+		if (!out_buf) {
+			error("Could not allocate output buffer");
+			goto exit;
+		}
+	}
 
+	if (input && fill) {
+		error("Both input pointer and fill function provided, don't know what to do");
+		goto exit_1;
+	} else if (input) {
+		in_buf = input;
+	} else if (!fill) {
+		error("NULL input pointer and missing fill function");
+		goto exit_1;
+	} else {
+		in_buf = malloc(lzo1x_worst_compress(LZO_BLOCK_SIZE));
+		if (!in_buf) {
+			error("Could not allocate input buffer");
+			goto exit_1;
+		}
+	}
 	in_buf_save = in_buf;
-	out_buf_save = out_buf;
 
-	ret = fill(in_buf, lzo1x_worst_compress(LZO_BLOCK_SIZE));
-	if (ret < 0)
-		goto exit_free;
-
-	if (!parse_header(in_buf, &skip))
-		return -EINVAL;
+	if (posp)
+		*posp = 0;
+
+	if (fill) {
+		/*
+		 * Start from in_buf + HEADER_SIZE_MAX to make it possible
+		 * to use memcpy() to copy the unused data to the beginning
+		 * of the buffer. This way memmove() isn't needed which
+		 * is missing from pre-boot environments of most archs.
+		 */
+		in_buf += HEADER_SIZE_MAX;
+		in_len = fill(in_buf, HEADER_SIZE_MAX);
+	}
 
+	if (!parse_header(in_buf, &skip, in_len)) {
+		error("invalid header");
+		goto exit_2;
+	}
 	in_buf += skip;
+	in_len -= skip;
+
+	if (fill) {
+		/* Move the unused data to the beginning of the buffer. */
+		memcpy(in_buf_save, in_buf, in_len);
+		in_buf = in_buf_save;
+	}
+
+	if (posp)
+		*posp = skip;
 
 	for (;;) {
 		/* read uncompressed block size */
+		if (fill && in_len < 4) {
+			skip = fill(in_buf + in_len, 4 - in_len);
+			if (skip > 0)
+				in_len += skip;
+		}
+		if (in_len < 4) {
+			error("file corrupted");
+			goto exit_2;
+		}
 		dst_len = get_unaligned_be32(in_buf);
 		in_buf += 4;
+		in_len -= 4;
 
 		/* exit if last block */
-		if (dst_len == 0)
+		if (dst_len == 0) {
+			if (posp)
+				*posp += 4;
 			break;
+		}
 
 		if (dst_len > LZO_BLOCK_SIZE) {
-			printf("dest len longer than block size");
-			goto exit_free;
+			error("dest len longer than block size");
+			goto exit_2;
 		}
 
 		/* read compressed block size, and skip block checksum info */
+		if (fill && in_len < 8) {
+			skip = fill(in_buf + in_len, 8 - in_len);
+			if (skip > 0)
+				in_len += skip;
+		}
+		if (in_len < 8) {
+			error("file corrupted");
+			goto exit_2;
+		}
 		src_len = get_unaligned_be32(in_buf);
 		in_buf += 8;
+		in_len -= 8;
 
 		if (src_len <= 0 || src_len > dst_len) {
-			printf("file corrupted");
-			goto exit_free;
+			error("file corrupted");
+			goto exit_2;
 		}
 
 		/* decompress */
+		if (fill && in_len < src_len) {
+			skip = fill(in_buf + in_len, src_len - in_len);
+			if (skip > 0)
+				in_len += skip;
+		}
+		if (in_len < src_len) {
+			error("file corrupted");
+			goto exit_2;
+		}
 		tmp = dst_len;
 
 		/* When the input data is not compressed at all,
 		 * lzo1x_decompress_safe will fail, so call memcpy()
 		 * instead */
-		if (unlikely(dst_len == src_len)) {
-			if (src_len != dst_len) {
-				printf("Compressed data violation");
-				goto exit_free;
-			}
-			out_buf = in_buf;
-		} else {
+		if (unlikely(dst_len == src_len))
+			memcpy(out_buf, in_buf, src_len);
+		else {
 			r = lzo1x_decompress_safe((u8 *) in_buf, src_len,
 						out_buf, &tmp);
 
 			if (r != LZO_E_OK || dst_len != tmp) {
-				printf("Compressed data violation");
-				goto exit_free;
+				error("Compressed data violation");
+				goto exit_2;
 			}
 		}
 
-		ret = flush(out_buf, dst_len);
-		if (ret < 0)
-			goto exit_free;
-
-		out_buf = in_buf + src_len;
-		in_buf = in_buf_save;
-		ret = fill(in_buf, lzo1x_worst_compress(LZO_BLOCK_SIZE));
-		if (ret < 0)
-			goto exit_free;
-
-		if (ret == 0)
-			in_buf = out_buf;
-
-		out_buf = out_buf_save;
-
-		obytes_processed += dst_len;
-
+		if (flush && flush(out_buf, dst_len) != dst_len)
+			goto exit_2;
+		if (output)
+			out_buf += dst_len;
+		if (posp)
+			*posp += src_len + 12;
+
+		in_buf += src_len;
+		in_len -= src_len;
+		if (fill) {
+			/*
+			 * If there happens to still be unused data left in
+			 * in_buf, move it to the beginning of the buffer.
+			 * Use a loop to avoid memmove() dependency.
+			 */
+			if (in_len > 0)
+				for (skip = 0; skip < in_len; ++skip)
+					in_buf_save[skip] = in_buf[skip];
+			in_buf = in_buf_save;
+		}
 	}
 
-exit_free:
-	free(in_buf);
-	free(out_buf);
-
-	*dest_len = obytes_processed;
-	return 0;
+	ret = 0;
+exit_2:
+	if (!input)
+		free(in_buf_save);
+exit_1:
+	if (!output)
+		free(out_buf);
+exit:
+	return ret;
 }
 
 static int in_fd;
@@ -195,9 +298,14 @@ static int unlzo_flush(void *buf, unsigned int len)
 	return write(out_fd, buf, len);
 }
 
+static void unlzo_error(char *s)
+{
+	printf("%s\n", s);
+}
+
 int unlzo(int _in_fd, int _out_fd, int *dest_len)
 {
 	in_fd = _in_fd;
 	out_fd = _out_fd;
-	return __unlzo(dest_len, unlzo_fill, unlzo_flush);
+	return __unlzo(NULL, 0, unlzo_fill, unlzo_flush, NULL, NULL, unlzo_error);
 }
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

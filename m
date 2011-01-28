Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PilMN-0002V5-Er
	for barebox@lists.infradead.org; Fri, 28 Jan 2011 10:15:21 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 28 Jan 2011 11:13:24 +0100
Message-Id: <1296209604-29790-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] lib/decompress_unlzo: use fill and full to read and write data
To: barebox@lists.infradead.org

this will all to simplify the sync with the kernel and later easly add the
self decompression support to barebox

as example with a lzo compression will reduce barebox from 180224 to 99863
bytes so 55.41%
-rwxr-xr-x 1 root root  99863 Jan 28 02:17 build/versatilepb/barebox.bin.lzo

we also reduce the binary size by 224 bytes

Old version
# ls -al build/versatilepb/barebox.bin
-rwxr-xr-x 1 root root 180468 Jan 28 02:14 build/versatilepb/barebox.bin

New version
# ls -al build/versatilepb/barebox*
-rwxr-xr-x 1 root root 180244 Jan 28 02:13 build/versatilepb/barebox.bin

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/decompress_unlzo.c |  180 ++++++++++++++++++++++++-----------------------
 1 files changed, 92 insertions(+), 88 deletions(-)

diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
index 8f9cdcf..fc5c49f 100644
--- a/lib/decompress_unlzo.c
+++ b/lib/decompress_unlzo.c
@@ -47,98 +47,73 @@ static const unsigned char lzop_magic[] = {
 #define LZO_BLOCK_SIZE        (256*1024l)
 #define HEADER_HAS_FILTER      0x00000800L
 
-static inline int parse_header(int in_fd)
+static inline int parse_header(u8 *input, u8 *skip)
 {
-	u8 l;
+	int l;
+	u8 *parse = input;
+	u8 level = 0;
 	u16 version;
-	int ret;
-	unsigned char buf[256]; /* maximum filename length + 1 */
 
-	/* read magic (9), library version (2), 'need to be extracted'
-	 * version (2) and method (1)
-	 */
-	ret = read(in_fd, buf, 9);
-	if (ret < 0)
-		return ret;
-
-	/* check magic */
+	/* read magic: 9 first bits */
 	for (l = 0; l < 9; l++) {
-		if (buf[l] != lzop_magic[l])
-			return -EINVAL;
+		if (*parse++ != lzop_magic[l])
+			return 0;
 	}
-
-	ret = read(in_fd, buf, 4); /* version, lib_version */
-	if (ret < 0)
-		return ret;
-	version = get_unaligned_be16(buf);
-
-	if (version >= 0x0940) {
-		ret = read(in_fd, buf, 2); /* version to extract */
-		if (ret < 0)
-			return ret;
-	}
-
-	ret = read(in_fd, buf, 1); /* method */
-	if (ret < 0)
-		return ret;
-
+	/* get version (2bytes), skip library version (2),
+	 * 'need to be extracted' version (2) and
+	 * method (1) */
+	version = get_unaligned_be16(parse);
+	parse += 7;
 	if (version >= 0x0940)
-		read(in_fd, buf, 1); /* level */
-
-	ret = read(in_fd, buf, 4); /* flags */
-	if (ret < 0)
-		return ret;
-
-	if (get_unaligned_be32(buf) & HEADER_HAS_FILTER) {
-		ret = read(in_fd, buf, 4); /* skip filter info */
-		if (ret < 0)
-			return ret;
-	}
+		level = *parse++;
+	if (get_unaligned_be32(parse) & HEADER_HAS_FILTER)
+		parse += 8; /* flags + filter info */
+	else
+		parse += 4; /* flags */
 
 	/* skip mode and mtime_low */
-	ret = read(in_fd, buf, 8);
-	if (ret < 0)
-		return ret;
-
-	if (version >= 0x0940) {
-		ret = read(in_fd, buf, 4); /* skip mtime_high */
-		if (ret < 0)
-			return ret;
-	}
+	parse += 8;
+	if (version >= 0x0940)
+		parse += 4;	/* skip mtime_high */
 
-	ret = read(in_fd, &l, 1);
-	if (ret < 0)
-		return ret;
+	l = *parse++;
 	/* don't care about the file name, and skip checksum */
-	ret = read(in_fd, buf, l + 4);
-	if (ret < 0)
-		return ret;
+	parse += l + 4;
 
-	return 0;
+	*skip = parse - input;
+	return 1;
 }
 
-int unlzo(int in_fd, int out_fd, int *dest_len)
+static int __unlzo(int *dest_len,
+			int (*fill) (void *, unsigned int),
+			int (*flush) (void *, unsigned int))
 {
-	u8 r = 0;
+	u8 skip = 0, r = 0;
 	u32 src_len, dst_len;
 	size_t tmp;
-	u8 *in_buf, *out_buf;
+	u8 *in_buf, *in_buf_save, *out_buf, *out_buf_save;
 	int obytes_processed = 0;
-	unsigned char buf[8];
-	int ret;
-
-	if (parse_header(in_fd))
-		return -EINVAL;
+	int ret = -1;
 
 	out_buf = xmalloc(LZO_BLOCK_SIZE);
 	in_buf = xmalloc(lzo1x_worst_compress(LZO_BLOCK_SIZE));
 
+	in_buf_save = in_buf;
+	out_buf_save = out_buf;
+
+	ret = fill(in_buf, lzo1x_worst_compress(LZO_BLOCK_SIZE));
+	if (ret < 0)
+		goto exit_free;
+
+	if (!parse_header(in_buf, &skip))
+		return -EINVAL;
+
+	in_buf += skip;
+
 	for (;;) {
 		/* read uncompressed block size */
-		ret = read(in_fd, buf, 4);
-		if (ret < 0)
-			goto exit_free;
-		dst_len = get_unaligned_be32(buf);
+		dst_len = get_unaligned_be32(in_buf);
+		in_buf += 4;
 
 		/* exit if last block */
 		if (dst_len == 0)
@@ -150,43 +125,53 @@ int unlzo(int in_fd, int out_fd, int *dest_len)
 		}
 
 		/* read compressed block size, and skip block checksum info */
-		ret = read(in_fd, buf, 8);
-		if (ret < 0)
-			goto exit_free;
-
-		src_len = get_unaligned_be32(buf);
+		src_len = get_unaligned_be32(in_buf);
+		in_buf += 8;
 
 		if (src_len <= 0 || src_len > dst_len) {
 			printf("file corrupted");
 			goto exit_free;
 		}
-		ret = read(in_fd, in_buf, src_len);
-		if (ret < 0)
-			goto exit_free;
 
 		/* decompress */
 		tmp = dst_len;
-		if (src_len < dst_len) {
-			r = lzo1x_decompress_safe((u8 *) in_buf, src_len,
-						out_buf, &tmp);
-			if (r != LZO_E_OK || dst_len != tmp) {
+
+		/* When the input data is not compressed at all,
+		 * lzo1x_decompress_safe will fail, so call memcpy()
+		 * instead */
+		if (unlikely(dst_len == src_len)) {
+			if (src_len != dst_len) {
 				printf("Compressed data violation");
 				goto exit_free;
 			}
-			ret = write(out_fd, out_buf, dst_len);
-			if (ret < 0)
-				goto exit_free;
+			out_buf = in_buf;
 		} else {
-			if (src_len != dst_len) {
+			r = lzo1x_decompress_safe((u8 *) in_buf, src_len,
+						out_buf, &tmp);
+
+			if (r != LZO_E_OK || dst_len != tmp) {
 				printf("Compressed data violation");
 				goto exit_free;
 			}
-			ret = write(out_fd, in_buf, dst_len);
-			if (ret < 0)
-				goto exit_free;
 		}
 
+		ret = flush(out_buf, dst_len);
+		if (ret < 0)
+			goto exit_free;
+
+		out_buf = in_buf + src_len;
+		in_buf = in_buf_save;
+		ret = fill(in_buf, lzo1x_worst_compress(LZO_BLOCK_SIZE));
+		if (ret < 0)
+			goto exit_free;
+
+		if (ret == 0)
+			in_buf = out_buf;
+
+		out_buf = out_buf_save;
+
 		obytes_processed += dst_len;
+
 	}
 
 exit_free:
@@ -197,3 +182,22 @@ exit_free:
 	return 0;
 }
 
+static int in_fd;
+static int out_fd;
+
+static int unlzo_fill(void *buf, unsigned int len)
+{
+	return read(in_fd, buf, len);
+}
+
+static int unlzo_flush(void *buf, unsigned int len)
+{
+	return write(out_fd, buf, len);
+}
+
+int unlzo(int _in_fd, int _out_fd, int *dest_len)
+{
+	in_fd = _in_fd;
+	out_fd = _out_fd;
+	return __unlzo(dest_len, unlzo_fill, unlzo_flush);
+}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

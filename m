Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6gz9-0005cL-2L
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 13:07:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Aug 2013 15:07:07 +0200
Message-Id: <1375794428-29577-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
References: <1375794428-29577-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] Add deflate_decompress function
To: barebox@lists.infradead.org

Needed to implement decompressors for gzip without headers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/zlib.h     |  4 ++++
 lib/decompress_inflate.c | 39 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 43 insertions(+)

diff --git a/include/linux/zlib.h b/include/linux/zlib.h
index d8bd20c..a3e006b 100644
--- a/include/linux/zlib.h
+++ b/include/linux/zlib.h
@@ -31,6 +31,7 @@
 #define _ZLIB_H
 
 #include <linux/zconf.h>
+#include <linux/types.h>
 
 /* zlib deflate based on ZLIB_VERSION "1.1.3" */
 /* zlib inflate based on ZLIB_VERSION "1.2.3" */
@@ -708,4 +709,7 @@ extern int zlib_inflateInit2(z_streamp strm, int  windowBits);
  * return len or negative error code. */
 extern int zlib_inflate_blob(void *dst, unsigned dst_sz, const void *src, unsigned src_sz);
 
+int deflate_decompress(struct z_stream_s *s, const u8 *src, unsigned int slen,
+		u8 *dst, unsigned int *dlen);
+
 #endif /* _ZLIB_H */
diff --git a/lib/decompress_inflate.c b/lib/decompress_inflate.c
index 5c1ebb6..d5ea01a 100644
--- a/lib/decompress_inflate.c
+++ b/lib/decompress_inflate.c
@@ -183,4 +183,43 @@ gunzip_nomem1:
 	return rc; /* returns Z_OK (0) if successful */
 }
 
+int deflate_decompress(struct z_stream_s *stream, const u8 *src, unsigned int slen, u8 *dst,
+		unsigned int *dlen)
+{
+
+	int ret = 0;
+
+	ret = zlib_inflateReset(stream);
+	if (ret != Z_OK) {
+		ret = -EINVAL;
+		goto out;
+	}
+
+	stream->next_in = (u8 *)src;
+	stream->avail_in = slen;
+	stream->next_out = (u8 *)dst;
+	stream->avail_out = *dlen;
+
+	ret = zlib_inflate(stream, Z_SYNC_FLUSH);
+	/*
+	 * Work around a bug in zlib, which sometimes wants to taste an extra
+	 * byte when being used in the (undocumented) raw deflate mode.
+	 * (From USAGI).
+	 */
+	if (ret == Z_OK && !stream->avail_in && stream->avail_out) {
+		u8 zerostuff = 0;
+		stream->next_in = &zerostuff;
+		stream->avail_in = 1;
+		ret = zlib_inflate(stream, Z_FINISH);
+	}
+	if (ret != Z_STREAM_END) {
+		ret = -EINVAL;
+		goto out;
+	}
+	ret = 0;
+	*dlen = stream->total_out;
+out:
+	return ret;
+}
+
 #define decompress gunzip
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

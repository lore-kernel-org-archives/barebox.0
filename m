Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srlr9-0005KF-Hh
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 08:13:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jul 2012 10:12:54 +0200
Message-Id: <1342685582-13244-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] lzo: Allow for static inlining
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/lzo.h              |    8 ++++++--
 lib/decompress_unlzo.c     |    9 +++++++--
 lib/lzo/lzo1x_decompress.c |    2 +-
 3 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/include/lzo.h b/include/lzo.h
index 0530a68..ceacfba 100644
--- a/include/lzo.h
+++ b/include/lzo.h
@@ -19,12 +19,16 @@
 
 #define lzo1x_worst_compress(x) ((x) + ((x) / 16) + 64 + 3)
 
+#ifndef STATIC
+#define STATIC
+#endif
+
 /* This requires 'workmem' of size LZO1X_1_MEM_COMPRESS */
 int lzo1x_1_compress(const unsigned char *src, size_t src_len,
 			unsigned char *dst, size_t *dst_len, void *wrkmem);
 
 /* safe decompression with overrun testing */
-int lzo1x_decompress_safe(const unsigned char *src, size_t src_len,
+STATIC int lzo1x_decompress_safe(const unsigned char *src, size_t src_len,
 			unsigned char *dst, size_t *dst_len);
 
 /*
@@ -41,7 +45,7 @@ int lzo1x_decompress_safe(const unsigned char *src, size_t src_len,
 #define LZO_E_INPUT_NOT_CONSUMED	(-8)
 #define LZO_E_NOT_YET_IMPLEMENTED	(-9)
 
-int decompress_unlzo(u8 *input, int in_len,
+STATIC int decompress_unlzo(u8 *input, int in_len,
 		int (*fill) (void *, unsigned int),
 		int (*flush) (void *, unsigned int),
 		u8 *output, int *posp,
diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
index 000bd70..0e6a7ad 100644
--- a/lib/decompress_unlzo.c
+++ b/lib/decompress_unlzo.c
@@ -33,11 +33,16 @@
 #include <common.h>
 #include <malloc.h>
 #include <linux/types.h>
-#include <lzo.h>
 #include <errno.h>
 #include <fs.h>
 #include <xfuncs.h>
 
+#ifdef STATIC
+#include "lzo/lzo1x_decompress.c"
+#endif
+
+#include <lzo.h>
+
 #include <linux/compiler.h>
 #include <asm/unaligned.h>
 
@@ -106,7 +111,7 @@ static inline int parse_header(u8 *input, int *skip, int in_len)
 	return 1;
 }
 
-int decompress_unlzo(u8 *input, int in_len,
+STATIC int decompress_unlzo(u8 *input, int in_len,
 				int (*fill) (void *, unsigned int),
 				int (*flush) (void *, unsigned int),
 				u8 *output, int *posp,
diff --git a/lib/lzo/lzo1x_decompress.c b/lib/lzo/lzo1x_decompress.c
index af94382..7f1451f 100644
--- a/lib/lzo/lzo1x_decompress.c
+++ b/lib/lzo/lzo1x_decompress.c
@@ -23,7 +23,7 @@
 #define COPY4(dst, src)	\
 		put_unaligned(get_unaligned((const u32 *)(src)), (u32 *)(dst))
 
-int lzo1x_decompress_safe(const unsigned char *in, size_t in_len,
+STATIC int lzo1x_decompress_safe(const unsigned char *in, size_t in_len,
 			unsigned char *out, size_t *out_len)
 {
 	const unsigned char * const ip_end = in + in_len;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyfA8-0004eL-NH
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 12:15:05 +0000
Received: by lfaz4 with SMTP id z4so4241558lfa.0
 for <barebox@lists.infradead.org>; Tue, 17 Nov 2015 04:14:41 -0800 (PST)
From: Sergey Koshechkin <serge.koshechkin@gmail.com>
Date: Tue, 17 Nov 2015 15:14:12 +0300
Message-Id: <1447762452-13433-1-git-send-email-serge.koshechkin@gmail.com>
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
Subject: [PATCH 1/3] crypto: crc32: fix warnings: no previous prototype for
 'crc32', 'crc32_no_comp', 'file_crc'
To: barebox@lists.infradead.org
Cc: Sergey Koshechkin <serge.koshechkin@gmail.com>

Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
---
 crypto/crc32.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/crypto/crc32.c b/crypto/crc32.c
index e7b1bd7..58637bd 100644
--- a/crypto/crc32.c
+++ b/crypto/crc32.c
@@ -16,6 +16,9 @@
 #include <malloc.h>
 #include <linux/ctype.h>
 #include <errno.h>
+#define STATIC
+#else
+#define STATIC static inline
 #endif
 
 #ifdef CONFIG_DYNAMIC_CRC_TABLE
@@ -138,7 +141,7 @@ static const ulong crc_table[256] = {
 #define DO8(buf)  DO4(buf); DO4(buf);
 
 /* ========================================================================= */
-uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
+STATIC uint32_t crc32(uint32_t crc, const void *_buf, unsigned int len)
 {
     const unsigned char *buf = _buf;
 
@@ -164,7 +167,7 @@ EXPORT_SYMBOL(crc32);
 /* No ones complement version. JFFS2 (and other things ?)
  * don't use ones compliment in their CRC calculations.
  */
-uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
+STATIC uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
 {
    const unsigned char *buf = _buf;
 
@@ -184,7 +187,7 @@ uint32_t crc32_no_comp(uint32_t crc, const void *_buf, unsigned int len)
     return crc;
 }
 
-int file_crc(char *filename, ulong start, ulong size, ulong *crc,
+STATIC int file_crc(char *filename, ulong start, ulong size, ulong *crc,
 		    ulong *total)
 {
 	int fd, now;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

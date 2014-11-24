Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XsrUK-00011P-Uj
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 11:07:26 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XsrTx-0000NZ-HX
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:07:01 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 24 Nov 2014 12:07:00 +0100
Message-Id: <1416827220-3103-21-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 20/20] lib: decompress_xz: fix function header to match
 prototype
To: barebox@lists.infradead.org

Fixes:
lib/uncompress.c:124:10: warning: assignment from incompatible pointer type

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/linux/xz.h    | 8 ++++----
 lib/decompress_unxz.c | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/include/linux/xz.h b/include/linux/xz.h
index a3c2b7766ae1..d1afab056242 100644
--- a/include/linux/xz.h
+++ b/include/linux/xz.h
@@ -262,10 +262,10 @@ XZ_EXTERN void xz_crc32_init(void);
 XZ_EXTERN uint32_t xz_crc32(const uint8_t *buf, size_t size, uint32_t crc);
 #endif
 
-STATIC int decompress_unxz(unsigned char *in, long in_size,
-		     long (*fill)(void *dest, unsigned long size),
-		     long (*flush)(void *src, unsigned long size),
-		     unsigned char *out, long *in_used,
+STATIC int decompress_unxz(unsigned char *in, int in_size,
+		     int (*fill)(void *dest, unsigned int size),
+		     int (*flush)(void *src, unsigned int size),
+		     unsigned char *out, int *in_used,
 		     void (*error)(char *x));
 
 #endif
diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
index 0b6bc834ad56..1ddcee38ee89 100644
--- a/lib/decompress_unxz.c
+++ b/lib/decompress_unxz.c
@@ -227,10 +227,10 @@ static void memzero(void *buf, size_t size)
  * both input and output buffers are available as a single chunk, i.e. when
  * fill() and flush() won't be used.
  */
-STATIC int decompress_unxz(unsigned char *in, long in_size,
-		     long (*fill)(void *dest, unsigned long size),
-		     long (*flush)(void *src, unsigned long size),
-		     unsigned char *out, long *in_used,
+STATIC int decompress_unxz(unsigned char *in, int in_size,
+		     int (*fill)(void *dest, unsigned int size),
+		     int (*flush)(void *src, unsigned int size),
+		     unsigned char *out, int *in_used,
 		     void (*error)(char *x))
 {
 	struct xz_buf b;
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

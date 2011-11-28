Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RV9PE-0007kI-UG
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 22:10:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 23:10:08 +0100
Message-Id: <1322518209-2965-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
References: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/16] remove now unused unlzo function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/lzo.h          |    2 --
 lib/decompress_unlzo.c |   25 -------------------------
 2 files changed, 0 insertions(+), 27 deletions(-)

diff --git a/include/lzo.h b/include/lzo.h
index b4a514f..0530a68 100644
--- a/include/lzo.h
+++ b/include/lzo.h
@@ -41,8 +41,6 @@ int lzo1x_decompress_safe(const unsigned char *src, size_t src_len,
 #define LZO_E_INPUT_NOT_CONSUMED	(-8)
 #define LZO_E_NOT_YET_IMPLEMENTED	(-9)
 
-int unlzo(int in_fd, int out_fd, int *dest_len);
-
 int decompress_unlzo(u8 *input, int in_len,
 		int (*fill) (void *, unsigned int),
 		int (*flush) (void *, unsigned int),
diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
index 5c0587e..000bd70 100644
--- a/lib/decompress_unlzo.c
+++ b/lib/decompress_unlzo.c
@@ -284,28 +284,3 @@ exit_1:
 exit:
 	return ret;
 }
-
-static int in_fd;
-static int out_fd;
-
-static int unlzo_fill(void *buf, unsigned int len)
-{
-	return read(in_fd, buf, len);
-}
-
-static int unlzo_flush(void *buf, unsigned int len)
-{
-	return write(out_fd, buf, len);
-}
-
-static void unlzo_error(char *s)
-{
-	printf("%s\n", s);
-}
-
-int unlzo(int _in_fd, int _out_fd, int *dest_len)
-{
-	in_fd = _in_fd;
-	out_fd = _out_fd;
-	return decompress_unlzo(NULL, 0, unlzo_fill, unlzo_flush, NULL, NULL, unlzo_error);
-}
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

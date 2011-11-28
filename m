Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RV9PF-0007kT-59
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 22:10:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 23:10:04 +0100
Message-Id: <1322518209-2965-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/16] lzo: export decompress_unlzo function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/lzo.h          |    6 ++++++
 lib/decompress_unlzo.c |    4 ++--
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/include/lzo.h b/include/lzo.h
index 5694985..b4a514f 100644
--- a/include/lzo.h
+++ b/include/lzo.h
@@ -43,4 +43,10 @@ int lzo1x_decompress_safe(const unsigned char *src, size_t src_len,
 
 int unlzo(int in_fd, int out_fd, int *dest_len);
 
+int decompress_unlzo(u8 *input, int in_len,
+		int (*fill) (void *, unsigned int),
+		int (*flush) (void *, unsigned int),
+		u8 *output, int *posp,
+		void (*error) (char *x));
+
 #endif
diff --git a/lib/decompress_unlzo.c b/lib/decompress_unlzo.c
index 0ae3d4d..5c0587e 100644
--- a/lib/decompress_unlzo.c
+++ b/lib/decompress_unlzo.c
@@ -106,7 +106,7 @@ static inline int parse_header(u8 *input, int *skip, int in_len)
 	return 1;
 }
 
-static inline int __unlzo(u8 *input, int in_len,
+int decompress_unlzo(u8 *input, int in_len,
 				int (*fill) (void *, unsigned int),
 				int (*flush) (void *, unsigned int),
 				u8 *output, int *posp,
@@ -307,5 +307,5 @@ int unlzo(int _in_fd, int _out_fd, int *dest_len)
 {
 	in_fd = _in_fd;
 	out_fd = _out_fd;
-	return __unlzo(NULL, 0, unlzo_fill, unlzo_flush, NULL, NULL, unlzo_error);
+	return decompress_unlzo(NULL, 0, unlzo_fill, unlzo_flush, NULL, NULL, unlzo_error);
 }
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

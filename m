Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oy2ua-0006y7-Lp
	for barebox@lists.infradead.org; Tue, 21 Sep 2010 13:29:33 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 21 Sep 2010 15:28:09 +0200
Message-Id: <1285075689-11071-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285075689-11071-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285075689-11071-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] sha1/sha256: use be32_to_cpu and cpu_to_be32
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/sha1.c   |   20 +++-----------------
 lib/sha256.c |   19 +++----------------
 2 files changed, 6 insertions(+), 33 deletions(-)

diff --git a/lib/sha1.c b/lib/sha1.c
index 0e8aed1..b4e2abc 100644
--- a/lib/sha1.c
+++ b/lib/sha1.c
@@ -29,6 +29,7 @@
 #include <digest.h>
 #include <init.h>
 #include <linux/string.h>
+#include <asm/byteorder.h>
 
 #define SHA1_SUM_POS	-0x20
 #define SHA1_SUM_LEN	20
@@ -44,23 +45,8 @@ sha1_context;
 /*
  * 32-bit integer manipulation macros (big endian)
  */
-#ifndef GET_UINT32_BE
-#define GET_UINT32_BE(n,b,i) {				\
-	(n) = ( (uint32_t) (b)[(i)    ] << 24 )	\
-	    | ( (uint32_t) (b)[(i) + 1] << 16 )	\
-	    | ( (uint32_t) (b)[(i) + 2] <<  8 )	\
-	    | ( (uint32_t) (b)[(i) + 3]       );	\
-}
-#endif
-
-#ifndef PUT_UINT32_BE
-#define PUT_UINT32_BE(n,b,i) {				\
-	(b)[(i)    ] = (unsigned char) ( (n) >> 24 );	\
-	(b)[(i) + 1] = (unsigned char) ( (n) >> 16 );	\
-	(b)[(i) + 2] = (unsigned char) ( (n) >>  8 );	\
-	(b)[(i) + 3] = (unsigned char) ( (n)       );	\
-}
-#endif
+#define GET_UINT32_BE(n,b,i) (n) = be32_to_cpu(((uint32_t*)(b))[i / 4])
+#define PUT_UINT32_BE(n,b,i) ((uint32_t*)(b))[i / 4] = cpu_to_be32(n)
 
 /*
  * SHA-1 context setup
diff --git a/lib/sha256.c b/lib/sha256.c
index 78064da..975ebe9 100644
--- a/lib/sha256.c
+++ b/lib/sha256.c
@@ -22,6 +22,7 @@
 #include <digest.h>
 #include <init.h>
 #include <linux/string.h>
+#include <asm/byteorder.h>
 
 #define SHA256_SUM_LEN	32
 
@@ -34,22 +35,8 @@ typedef struct {
 /*
  * 32-bit integer manipulation macros (big endian)
  */
-#ifndef GET_UINT32_BE
-#define GET_UINT32_BE(n,b,i) {				\
-	(n) = ( (unsigned long) (b)[(i)    ] << 24 )	\
-	    | ( (unsigned long) (b)[(i) + 1] << 16 )	\
-	    | ( (unsigned long) (b)[(i) + 2] <<  8 )	\
-	    | ( (unsigned long) (b)[(i) + 3]       );	\
-}
-#endif
-#ifndef PUT_UINT32_BE
-#define PUT_UINT32_BE(n,b,i) {				\
-	(b)[(i)    ] = (unsigned char) ( (n) >> 24 );	\
-	(b)[(i) + 1] = (unsigned char) ( (n) >> 16 );	\
-	(b)[(i) + 2] = (unsigned char) ( (n) >>  8 );	\
-	(b)[(i) + 3] = (unsigned char) ( (n)       );	\
-}
-#endif
+#define GET_UINT32_BE(n,b,i) (n) = be32_to_cpu(((uint32_t*)(b))[i / 4])
+#define PUT_UINT32_BE(n,b,i) ((uint32_t*)(b))[i / 4] = cpu_to_be32(n)
 
 static void sha256_starts(sha256_context * ctx)
 {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

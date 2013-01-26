Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tz3rP-0004Wd-5r
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 11:23:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 26 Jan 2013 12:23:23 +0100
Message-Id: <1359199403-27664-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359199403-27664-1-git-send-email-s.hauer@pengutronix.de>
References: <1359199403-27664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] pbl string: Fix no previous prototype warnings
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/string.c |   10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/pbl/string.c b/pbl/string.c
index 6787e82..b773f5c 100644
--- a/pbl/string.c
+++ b/pbl/string.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/types.h>
+#include <linux/string.h>
 
 void *memcpy(void *__dest, __const void *__src, size_t __n)
 {
@@ -103,7 +104,7 @@ void *memchr(const void *s, int c, size_t count)
 	return NULL;
 }
 
-char *strchr(const char *s, int c)
+char *_strchr(const char *s, int c)
 {
 	while (*s != (char)c)
 		if (*s++ == '\0')
@@ -111,8 +112,6 @@ char *strchr(const char *s, int c)
 	return (char *)s;
 }
 
-#undef memset
-
 void *memset(void *s, int c, size_t count)
 {
 	char *xs = s;
@@ -120,8 +119,3 @@ void *memset(void *s, int c, size_t count)
 		*xs++ = c;
 	return s;
 }
-
-void __memzero(void *s, size_t count)
-{
-	memset(s, 0, count);
-}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJC1P-0004MV-GQ
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 08:45:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Sep 2020 10:45:28 +0200
Message-Id: <20200918084532.2794-6-s.hauer@pengutronix.de>
In-Reply-To: <20200918084532.2794-1-s.hauer@pengutronix.de>
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/9] pbl: Alias memcpy and memset
To: Barebox List <barebox@lists.infradead.org>

With KASan the memcpy/memset functions are instrumented as well, but
some code will still have to call the non instrumented versions __memcpy
and __memset. Add aliases for them to PBL to make them available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/string.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/pbl/string.c b/pbl/string.c
index 46bf0b32b3..e6c0997ebc 100644
--- a/pbl/string.c
+++ b/pbl/string.c
@@ -6,6 +6,7 @@
 
 #include <linux/types.h>
 #include <linux/string.h>
+#include <linux/compiler.h>
 
 void *memcpy(void *__dest, __const void *__src, size_t __n)
 {
@@ -41,6 +42,9 @@ void *memcpy(void *__dest, __const void *__src, size_t __n)
 	return __dest;
 }
 
+void *__memcpy(void *__dest, __const void *__src, size_t __n)
+	__alias(memcpy);
+
 void *memmove(void *__dest, __const void *__src, size_t count)
 {
 	unsigned char *d = __dest;
@@ -120,6 +124,9 @@ void *memset(void *s, int c, size_t count)
 	return s;
 }
 
+void *__memset(void *s, int c, size_t count)
+	__alias(memset);
+
 /**
  * strnlen - Find the length of a length-limited string
  * @s: The string to be sized
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

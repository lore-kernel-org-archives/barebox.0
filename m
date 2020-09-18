Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJC1X-0004Pk-7V
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 08:45:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Sep 2020 10:45:29 +0200
Message-Id: <20200918084532.2794-7-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] string: Add nokasan variants of default memcpy/memset
To: Barebox List <barebox@lists.infradead.org>

Add nokasan variants of __default_memcpy and default_memset.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/string.h |  4 ++++
 lib/string.c     | 28 +++++++++++++++++++++++++---
 2 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/include/string.h b/include/string.h
index 120a613d46..727bc51934 100644
--- a/include/string.h
+++ b/include/string.h
@@ -7,6 +7,10 @@
 int strtobool(const char *str, int *val);
 
 void *__default_memset(void *, int, __kernel_size_t);
+void *__nokasan_default_memset(void *, int, __kernel_size_t);
+
 void *__default_memcpy(void * dest,const void *src,size_t count);
+void *__nokasan_default_memcpy(void * dest,const void *src,size_t count);
+
 
 #endif /* __STRING_H */
diff --git a/lib/string.c b/lib/string.c
index 7548fd3581..b950dbfd5f 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -491,7 +491,18 @@ char *strswab(const char *s)
  *
  * Do not use memset() to access IO space, use memset_io() instead.
  */
-void *__default_memset(void * s,int c,size_t count)
+void *__default_memset(void * s, int c, size_t count)
+{
+	char *xs = (char *) s;
+
+	while (count--)
+		*xs++ = c;
+
+	return s;
+}
+EXPORT_SYMBOL(__default_memset);
+
+void __no_sanitize_address *__nokasan_default_memset(void * s, int c, size_t count)
 {
 	char *xs = (char *) s;
 
@@ -515,7 +526,18 @@ void *memset(void *s, int c, size_t count) __alias(__default_memset);
  * You should not use this function to access IO space, use memcpy_toio()
  * or memcpy_fromio() instead.
  */
-void *__default_memcpy(void * dest,const void *src,size_t count)
+void *__default_memcpy(void * dest,const void *src, size_t count)
+{
+	char *tmp = (char *) dest, *s = (char *) src;
+
+	while (count--)
+		*tmp++ = *s++;
+
+	return dest;
+}
+
+void __no_sanitize_address *__nokasan_default_memcpy(void * dest,
+						     const void *src, size_t count)
 {
 	char *tmp = (char *) dest, *s = (char *) src;
 
@@ -524,7 +546,7 @@ void *__default_memcpy(void * dest,const void *src,size_t count)
 
 	return dest;
 }
-EXPORT_SYMBOL(memcpy);
+EXPORT_SYMBOL(__default_memcpy);
 
 #ifndef __HAVE_ARCH_MEMCPY
 void *memcpy(void * dest, const void *src, size_t count)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnLQo-0002xo-Br
 for barebox@lists.infradead.org; Thu, 22 May 2014 05:20:42 +0000
Received: by mail-lb0-f181.google.com with SMTP id q8so2223791lbi.26
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 22:20:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 May 2014 09:20:04 +0400
Message-Id: <1400736004-6488-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] vsprintf: fix formatting
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 lib/vsprintf.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index c73db73..066338b 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -370,7 +370,7 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 		/* get the precision */
 		precision = -1;
 		if (*fmt == '.') {
-			++fmt;	
+			++fmt;
 			if (isdigit(*fmt))
 				precision = skip_atoi(&fmt);
 			else if (*fmt == '*') {
@@ -534,7 +534,8 @@ int vscnprintf(char *buf, size_t size, const char *fmt, va_list args)
 {
 	int i;
 
-	i=vsnprintf(buf,size,fmt,args);
+	i = vsnprintf(buf, size, fmt, args);
+
 	return (i >= size) ? (size - 1) : i;
 }
 EXPORT_SYMBOL(vscnprintf);
@@ -566,13 +567,13 @@ int sprintf(char * buf, const char *fmt, ...)
 	int i;
 
 	va_start(args, fmt);
-	i=vsprintf(buf,fmt,args);
+	i = vsprintf(buf, fmt, args);
 	va_end(args);
 	return i;
 }
 EXPORT_SYMBOL(sprintf);
 
-int snprintf(char * buf, size_t size, const char *fmt, ...)
+int snprintf(char *buf, size_t size, const char *fmt, ...)
 {
 	va_list args;
 	int i;
@@ -620,7 +621,7 @@ EXPORT_SYMBOL(asprintf);
 
 void __noreturn panic(const char *fmt, ...)
 {
-	va_list	args;
+	va_list args;
 	va_start(args, fmt);
 	vprintf(fmt, args);
 	putchar('\n');
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

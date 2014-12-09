Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyPMO-0003f8-UD
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 18:18:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 19:17:39 +0100
Message-Id: <1418149064-26448-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
References: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] printf: use local isdigit/isalnum implementation
To: barebox@lists.infradead.org

To be independent of the _ctype array. This makes it possible
to add printf support to the PBL without adding _ctype aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/vsprintf.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index b474202..7f6b161 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -21,6 +21,8 @@
 
 /* we use this so that we can do without the ctype library */
 #define is_digit(c)	((c) >= '0' && (c) <= '9')
+#define is_alpha(c)	(((c) >= 'A' && (c) <= 'Z') || ((c) >= 'a' && (c) <= 'z'))
+#define is_alnum(c)	(is_digit(c) || is_alpha(c))
 
 static int skip_atoi(const char **s)
 {
@@ -351,7 +353,7 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 
 		/* get field width */
 		field_width = -1;
-		if (isdigit(*fmt))
+		if (is_digit(*fmt))
 			field_width = skip_atoi(&fmt);
 		else if (*fmt == '*') {
 			++fmt;
@@ -367,7 +369,7 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 		precision = -1;
 		if (*fmt == '.') {
 			++fmt;
-			if (isdigit(*fmt))
+			if (is_digit(*fmt))
 				precision = skip_atoi(&fmt);
 			else if (*fmt == '*') {
 				++fmt;
@@ -422,7 +424,7 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 						va_arg(args, void *),
 						field_width, precision, flags);
 				/* Skip all alphanumeric pointer suffixes */
-				while (isalnum(fmt[1]))
+				while (is_alnum(fmt[1]))
 					fmt++;
 				continue;
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

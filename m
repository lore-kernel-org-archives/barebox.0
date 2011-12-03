Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RWiSL-0004rm-5H
 for barebox@lists.infradead.org; Sat, 03 Dec 2011 05:48:14 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 3084D100C90F
 for <barebox@lists.infradead.org>; Sat,  3 Dec 2011 06:48:12 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  3 Dec 2011 06:44:44 +0100
Message-Id: <1322891084-446-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1322891084-446-1-git-send-email-plagnioj@jcrosoft.com>
References: <1322891084-446-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] stdio: convert __attribute__ ((format(printf, a,
 b))) to __printf(a, b)
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/stdio.h |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index 4901bc7..94e810f 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -9,7 +9,7 @@
  */
 
 /* serial stuff */
-void	serial_printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+void	serial_printf(const char *fmt, ...) __printf(1, 2);
 
 /* stdin */
 int	tstc(void);
@@ -30,12 +30,12 @@ static inline void putchar(char c)
 	console_putc(CONSOLE_STDOUT, c);
 }
 
-int	printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+int	printf(const char *fmt, ...) __printf(1, 2);
 int	vprintf(const char *fmt, va_list args);
-int	sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
-int	snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
+int	sprintf(char *buf, const char *fmt, ...) __printf(2, 3);
+int	snprintf(char *buf, size_t size, const char *fmt, ...) __printf(3, 4);
 int	vsprintf(char *buf, const char *fmt, va_list args);
-char	*asprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+char	*asprintf(const char *fmt, ...) __printf(1, 2);
 char	*vasprintf(const char *fmt, va_list ap);
 int	vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
 int	vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
@@ -54,7 +54,7 @@ int	vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
 #define stderr		2
 #define MAX_FILES	128
 
-int	fprintf(int file, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
+int	fprintf(int file, const char *fmt, ...) __printf(2, 3);
 int	fputs(int file, const char *s);
 int	fputc(int file, const char c);
 int	ftstc(int file);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

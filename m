Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQE3-00037O-5L
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:52 +0200
Message-Id: <1461051412-25711-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
References: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/14] stdio: Whitespace cleanup
To: Barebox List <barebox@lists.infradead.org>

Replace the tabs with spaces before the function names.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/stdio.h | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index 5e61571..7b2a42b 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -9,30 +9,30 @@
  */
 
 /* serial stuff */
-void	serial_printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+void serial_printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 
-int	sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
-int	snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
-int	scnprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
-int	vsprintf(char *buf, const char *fmt, va_list args);
+int sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
+int snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
+int scnprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
+int vsprintf(char *buf, const char *fmt, va_list args);
 char *basprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 int asprintf(char **strp, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
 char *bvasprintf(const char *fmt, va_list ap);
 int vasprintf(char **strp, const char *fmt, va_list ap);
-int	vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
-int	vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
+int vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
+int vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
 
 #ifndef CONFIG_CONSOLE_NONE
 /* stdin */
-int	tstc(void);
+int tstc(void);
 
 /* stdout */
-void	console_putc(unsigned int ch, const char c);
-int	getchar(void);
-int	console_puts(unsigned int ch, const char *s);
-void	console_flush(void);
+void console_putc(unsigned int ch, const char c);
+int getchar(void);
+int console_puts(unsigned int ch, const char *s);
+void console_flush(void);
 
-int	vprintf(const char *fmt, va_list args);
+int vprintf(const char *fmt, va_list args);
 #else
 static inline int tstc(void)
 {
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

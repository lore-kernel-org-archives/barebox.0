Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP1-00088k-BC
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:36:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:18 +0200
Message-Id: <1269855383-22716-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] add snprintf function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/stdio.h |    1 +
 lib/vsprintf.c  |   12 ++++++++++++
 2 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index c23dfc6..cd1a913 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -31,6 +31,7 @@ static inline void putchar(char c) {
 int	printf(const char *fmt, ...);
 int	vprintf(const char *fmt, va_list args);
 int	sprintf(char * buf, const char *fmt, ...);
+int	snprintf(char *buf, size_t size, const char *fmt, ...);
 int	vsprintf(char *buf, const char *fmt, va_list args);
 char	*asprintf(const char *fmt, ...);
 char	*vasprintf(const char *fmt, va_list ap);
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 6008305..26fcaa7 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -547,6 +547,18 @@ int sprintf(char * buf, const char *fmt, ...)
 }
 EXPORT_SYMBOL(sprintf);
 
+int snprintf(char * buf, size_t size, const char *fmt, ...)
+{
+	va_list args;
+	int i;
+
+	va_start(args, fmt);
+	i = vsnprintf(buf, size, fmt, args);
+	va_end(args);
+	return i;
+}
+EXPORT_SYMBOL(sprintf);
+
 /* Simplified asprintf. */
 char *vasprintf(const char *fmt, va_list ap)
 {
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

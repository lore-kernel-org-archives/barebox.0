Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZE2-0004AL-KX
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 09:24:21 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  5 Aug 2019 11:23:50 +0200
Message-Id: <b63b6c52b301f7dee2f1b19c3092c9154e50c284.1564997015.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
References: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 11/16] stdio: puts and putchar static inline wrappers
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add static inline wrappers for puts and putchar. This allows the usage
of puts and putchar within the PBL even if the PBL_CONSOLE is disabled.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 include/stdio.h | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/include/stdio.h b/include/stdio.h
index 7b2a42b..46e2778 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -71,23 +71,32 @@ static inline int ctrlc (void)
 #if (!defined(__PBL__) && !defined(CONFIG_CONSOLE_NONE)) || \
 	(defined(__PBL__) && defined(CONFIG_PBL_CONSOLE))
 int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+
+static inline int puts(const char *s)
+{
+	return console_puts(CONSOLE_STDOUT, s);
+}
+
+static inline void putchar(char c)
+{
+	console_putc(CONSOLE_STDOUT, c);
+}
 #else
 static int printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 static inline int printf(const char *fmt, ...)
 {
 	return 0;
 }
-#endif
-
 static inline int puts(const char *s)
 {
-	return console_puts(CONSOLE_STDOUT, s);
+	return 0;
 }
 
 static inline void putchar(char c)
 {
-	console_putc(CONSOLE_STDOUT, c);
+	return;
 }
+#endif
 
 /*
  * FILE based functions
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

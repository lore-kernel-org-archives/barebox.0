Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCwv5-0002SK-Bt
 for barebox@lists.infradead.org; Sun, 18 Jan 2015 20:58:04 +0000
Received: from antimon.intern.lynxeye.de.Speedport_W_504V_Typ_A
 (p4FD7DEA0.dip0.t-ipconnect.de [79.215.222.160])
 by lynxeye.de (Postfix) with ESMTPA id 65B0826C2001
 for <barebox@lists.infradead.org>; Sun, 18 Jan 2015 21:57:09 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 18 Jan 2015 21:57:02 +0100
Message-Id: <1421614624-14656-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/3] common: console_console: put functions under correct ifdef
To: barebox@lists.infradead.org

So they aren't build when no console support is selected.

Fixes:
In function `console_get_by_dev': undefined reference to `console_list'

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 common/console_common.c | 70 ++++++++++++++++++++++++-------------------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index df1b085982ad..d88e678aadb5 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -247,6 +247,41 @@ int vprintf(const char *fmt, va_list args)
 }
 EXPORT_SYMBOL(vprintf);
 
+struct console_device *console_get_by_dev(struct device_d *dev)
+{
+	struct console_device *cdev;
+
+	for_each_console(cdev) {
+		if (cdev->dev == dev)
+			return cdev;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(console_get_by_dev);
+
+/*
+ * @brief returns current used console device
+ *
+ * @return console device which is registered with CONSOLE_STDIN and
+ * CONSOLE_STDOUT
+ */
+struct console_device *console_get_first_active(void)
+{
+	struct console_device *cdev;
+	/*
+	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
+	 * same output console
+	 */
+	for_each_console(cdev) {
+		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
+			return cdev;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL(console_get_first_active);
+
 #endif /* !CONFIG_CONSOLE_NONE */
 
 int fprintf(int file, const char *fmt, ...)
@@ -291,38 +326,3 @@ int fputc(int fd, char c)
 	return 0;
 }
 EXPORT_SYMBOL(fputc);
-
-struct console_device *console_get_by_dev(struct device_d *dev)
-{
-	struct console_device *cdev;
-
-	for_each_console(cdev) {
-		if (cdev->dev == dev)
-			return cdev;
-	}
-
-	return NULL;
-}
-EXPORT_SYMBOL(console_get_by_dev);
-
-/*
- * @brief returns current used console device
- *
- * @return console device which is registered with CONSOLE_STDIN and
- * CONSOLE_STDOUT
- */
-struct console_device *console_get_first_active(void)
-{
-	struct console_device *cdev;
-	/*
-	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
-	 * same output console
-	 */
-	for_each_console(cdev) {
-		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
-			return cdev;
-	}
-
-	return NULL;
-}
-EXPORT_SYMBOL(console_get_first_active);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

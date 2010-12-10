Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PR2QY-0001Oq-JM
	for barebox@lists.infradead.org; Fri, 10 Dec 2010 12:50:23 +0000
Received: by wyf22 with SMTP id 22so3409716wyf.36
	for <barebox@lists.infradead.org>; Fri, 10 Dec 2010 04:50:19 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
Date: Fri, 10 Dec 2010 13:50:12 +0100
Message-Id: <1291985412-7645-1-git-send-email-jacmet@sunsite.dk>
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
Subject: [PATCH] console_simple: add fprintf / console_list for
	commands/loadb.c
To: barebox@lists.infradead.org

commands/loadb.c doesn't build with CONFIG_CONSOLE_SIMPLE, because it uses
fprintf / for_each_console (which uses console_list).

Fix it by adding trivial implementations of both in console_simple.

Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
---
 common/console_simple.c |   26 +++++++++++++++++++++++++-
 1 files changed, 25 insertions(+), 1 deletions(-)

diff --git a/common/console_simple.c b/common/console_simple.c
index 7695e05..1b58dea 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -3,6 +3,8 @@
 #include <fs.h>
 #include <errno.h>
 
+LIST_HEAD(console_list);
+EXPORT_SYMBOL(console_list);
 static struct console_device *console;
 
 int printf (const char *fmt, ...)
@@ -43,6 +45,25 @@ int vprintf (const char *fmt, va_list args)
 }
 EXPORT_SYMBOL(vprintf);
 
+void fprintf (int file, const char *fmt, ...)
+{
+	va_list args;
+	uint i;
+	char printbuffer[CFG_PBSIZE];
+
+	va_start (args, fmt);
+
+	/* For this to work, printbuffer must be larger than
+	 * anything we ever want to print.
+	 */
+	i = vsprintf (printbuffer, fmt, args);
+	va_end (args);
+
+	/* Print the string */
+	fputs(file, printbuffer);
+}
+EXPORT_SYMBOL(fprintf);
+
 void console_puts(unsigned int ch, const char *str)
 {
 	const char *s = str;
@@ -127,7 +148,10 @@ EXPORT_SYMBOL(ctrlc);
 
 int console_register(struct console_device *newcdev)
 {
-	if (!console)
+	if (!console) {
 		console = newcdev;
+		console_list.prev = console_list.next = &newcdev->list;
+		newcdev->list.prev = newcdev->list.next = &console_list;
+	}
 	return 0;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmA0-0006VS-Hr
 for barebox@lists.infradead.org; Tue, 09 Jul 2019 09:11:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jul 2019 11:11:30 +0200
Message-Id: <20190709091131.12298-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] pstore: Only capture log messages
To: Barebox List <barebox@lists.infradead.org>

With this pstore only captures barebox log messages printed with pr_*
and dev_*, but no longer anything printed with printf and friends.

When capturing the barebox output with pstore only the log messages are
of interest, but not the ones printed with printf and certainly not
the things typed interactively on the command line. These are logged
currently because we register pstore as a barebox console. Instead, hook
into pr_puts which only outputs the barebox log messages.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_common.c |  4 ++
 fs/pstore/platform.c    | 85 ++++++++++++-----------------------------
 include/linux/pstore.h  |  4 ++
 3 files changed, 33 insertions(+), 60 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index a4d2636753..6916f651e5 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -29,6 +29,7 @@
 #include <password.h>
 #include <clock.h>
 #include <malloc.h>
+#include <linux/pstore.h>
 #include <asm-generic/div64.h>
 
 #ifndef CONFIG_CONSOLE_NONE
@@ -116,7 +117,10 @@ static void pr_puts(int level, const char *str)
 			barebox_logbuf_num_messages++;
 		}
 	}
+
+	pstore_log(str);
 nolog:
+
 	if (level > barebox_loglevel)
 		return;
 
diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 755363c309..aafa5559dc 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -44,76 +44,40 @@ void pstore_set_kmsg_bytes(int bytes)
 	kmsg_bytes = bytes;
 }
 
-#ifdef CONFIG_FS_PSTORE_CONSOLE
-static void pstore_console_write(const char *s, unsigned c)
-{
-	const char *e = s + c;
-
-	while (s < e) {
-		struct pstore_record record = {
-			.type = PSTORE_TYPE_CONSOLE,
-			.psi = psinfo,
-		};
-
-		if (c > psinfo->bufsize)
-			c = psinfo->bufsize;
-
-		record.buf = (char *)s;
-		record.size = c;
-		psinfo->write_buf(PSTORE_TYPE_CONSOLE, 0, &record.id, 0,
-				  record.buf, 0, record.size, psinfo);
-		s += c;
-		c = e - s;
-	}
-}
-
-static int pstore_console_puts(struct console_device *cdev, const char *s)
-{
-	pstore_console_write(s, strlen(s));
-	return strlen(s);
-}
+static int pstore_ready;
 
-static void pstore_console_putc(struct console_device *cdev, char c)
-{
-	const char s[1] = { c };
-
-	pstore_console_write(s, 1);
-}
-
-static void pstore_console_capture_log(void)
+void pstore_log(const char *str)
 {
-	struct log_entry *log;
+	uint64_t id;
+	static int in_pstore;
 
-	list_for_each_entry(log, &barebox_logbuf, list)
-		pstore_console_write(log->msg, strlen(log->msg));
-}
+	if (!IS_ENABLED(CONFIG_FS_PSTORE_CONSOLE))
+		return;
 
-static struct console_device *pstore_cdev;
+	if (!pstore_ready)
+		return;
 
-static void pstore_register_console(void)
-{
-	struct console_device *cdev;
-	int ret;
+	if (in_pstore)
+		return;
 
-	cdev = xzalloc(sizeof(struct console_device));
-	pstore_cdev = cdev;
+	in_pstore = 1;
 
-	cdev->puts = pstore_console_puts;
-	cdev->putc = pstore_console_putc;
-	cdev->devname = "pstore";
-	cdev->devid = DEVICE_ID_SINGLE;
+	psinfo->write_buf(PSTORE_TYPE_CONSOLE, 0, &id, 0,
+			  str, 0, strlen(str), psinfo);
 
-        ret = console_register(cdev);
-        if (ret)
-                pr_err("registering failed with %s\n", strerror(-ret));
+	in_pstore = 0;
+}
 
-	pstore_console_capture_log();
+static void pstore_console_capture_log(void)
+{
+	uint64_t id;
+	struct log_entry *log, *tmp;
 
-	console_set_active(pstore_cdev, CONSOLE_STDOUT);
+	list_for_each_entry_safe(log, tmp, &barebox_logbuf, list) {
+		psinfo->write_buf(PSTORE_TYPE_CONSOLE, 0, &id, 0,
+				  log->msg, 0, strlen(log->msg), psinfo);
+	}
 }
-#else
-static void pstore_register_console(void) {}
-#endif
 
 static int pstore_write_compat(struct pstore_record *record)
 {
@@ -151,7 +115,8 @@ int pstore_register(struct pstore_info *psi)
 
 	pstore_get_records(0);
 
-	pstore_register_console();
+	pstore_console_capture_log();
+	pstore_ready = 1;
 
 	pr_info("Registered %s as persistent store backend\n", psi->name);
 
diff --git a/include/linux/pstore.h b/include/linux/pstore.h
index 15e1e3d6fa..dabb639111 100644
--- a/include/linux/pstore.h
+++ b/include/linux/pstore.h
@@ -85,6 +85,7 @@ struct pstore_info {
 #ifdef CONFIG_FS_PSTORE
 extern int pstore_register(struct pstore_info *);
 extern bool pstore_cannot_block_path(enum kmsg_dump_reason reason);
+extern void pstore_log(const char *msg);
 #else
 static inline int
 pstore_register(struct pstore_info *psi)
@@ -96,6 +97,9 @@ pstore_cannot_block_path(enum kmsg_dump_reason reason)
 {
 	return false;
 }
+static inline void pstore_log(const char *msg)
+{
+}
 #endif
 
 #endif /*_LINUX_PSTORE_H*/
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

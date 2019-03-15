Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h4iva-0004sM-5J
 for barebox@lists.infradead.org; Fri, 15 Mar 2019 09:15:02 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 15 Mar 2019 10:14:47 +0100
Message-Id: <20190315091453.22393-9-jbe@pengutronix.de>
In-Reply-To: <20190315091453.22393-1-jbe@pengutronix.de>
References: <20190315091453.22393-1-jbe@pengutronix.de>
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
Subject: [PATCH 09/15] pstore: add console support
To: barebox@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

Add support for writing console messages to pstore.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Documentation-added-by: Juergen Borleis <jbe@pengutronix.de>
---
 Documentation/filesystems/pstore.rst |  4 ++
 fs/pstore/Kconfig                    |  6 +++
 fs/pstore/platform.c                 | 74 ++++++++++++++++++++++++++++++++++++
 3 files changed, 84 insertions(+)

diff --git a/Documentation/filesystems/pstore.rst b/Documentation/filesystems/pstore.rst
index 6215f2296c..c128daae9f 100644
--- a/Documentation/filesystems/pstore.rst
+++ b/Documentation/filesystems/pstore.rst
@@ -75,3 +75,7 @@ All pstore files that could be found are added to the /pstore directory. This is
 a read-only filesystem. If you disable the Kconfig option FS_PSTORE_RAMOOPS_RO,
 the RAMOOPS area is reset and its ECC recalculated. But that does not allow any
 writes from Barebox into that area.
+
+If the menu entry ``FS_PSTORE_CONSOLE`` is enabled, Barebox itself will add all
+its own console output to the *ramoops:console* part, which enables the regular
+userland later on to have access to the bootloaders output.
diff --git a/fs/pstore/Kconfig b/fs/pstore/Kconfig
index 0e042cb162..30c2de19c8 100644
--- a/fs/pstore/Kconfig
+++ b/fs/pstore/Kconfig
@@ -8,6 +8,12 @@ menuconfig FS_PSTORE
 
 if FS_PSTORE
 
+config FS_PSTORE_CONSOLE
+	bool
+	prompt "Log console messages"
+	help
+	  When the option is enabled, pstore will log console messages.
+
 config FS_PSTORE_RAMOOPS
 	bool
 	depends on RELOCATABLE
diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 6eebad63de..5d0018693b 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -25,6 +25,7 @@
 #include <linux/kernel.h>
 #include <linux/spinlock.h>
 #include <linux/mutex.h>
+#include <console.h>
 #include <malloc.h>
 #include <printk.h>
 #include <module.h>
@@ -43,6 +44,77 @@ void pstore_set_kmsg_bytes(int bytes)
 	kmsg_bytes = bytes;
 }
 
+#ifdef CONFIG_FS_PSTORE_CONSOLE
+static void pstore_console_write(const char *s, unsigned c)
+{
+	const char *e = s + c;
+
+	while (s < e) {
+		struct pstore_record record = {
+			.type = PSTORE_TYPE_CONSOLE,
+			.psi = psinfo,
+		};
+
+		if (c > psinfo->bufsize)
+			c = psinfo->bufsize;
+
+		record.buf = (char *)s;
+		record.size = c;
+		psinfo->write_buf(PSTORE_TYPE_CONSOLE, 0, &record.id, 0,
+				  record.buf, 0, record.size, psinfo);
+		s += c;
+		c = e - s;
+	}
+}
+
+static int pstore_console_puts(struct console_device *cdev, const char *s)
+{
+	pstore_console_write(s, strlen(s));
+	return strlen(s);
+}
+
+static void pstore_console_putc(struct console_device *cdev, char c)
+{
+	const char s[1] = { c };
+
+	pstore_console_write(s, 1);
+}
+
+static void pstore_console_capture_log(void)
+{
+	struct log_entry *log;
+
+	list_for_each_entry(log, &barebox_logbuf, list)
+		pstore_console_write(log->msg, strlen(log->msg));
+}
+
+static struct console_device *pstore_cdev;
+
+static void pstore_register_console(void)
+{
+	struct console_device *cdev;
+	int ret;
+
+	cdev = xzalloc(sizeof(struct console_device));
+	pstore_cdev = cdev;
+
+	cdev->puts = pstore_console_puts;
+	cdev->putc = pstore_console_putc;
+	cdev->devname = "pstore";
+	cdev->devid = DEVICE_ID_SINGLE;
+
+        ret = console_register(cdev);
+        if (ret)
+                pr_err("registering failed with %s\n", strerror(-ret));
+
+	pstore_console_capture_log();
+
+	console_set_active(pstore_cdev, CONSOLE_STDOUT);
+}
+#else
+static void pstore_register_console(void) {}
+#endif
+
 static int pstore_write_compat(enum pstore_type_id type,
 			       enum kmsg_dump_reason reason,
 			       u64 *id, unsigned int part, int count,
@@ -81,6 +153,8 @@ int pstore_register(struct pstore_info *psi)
 
 	pstore_get_records(0);
 
+	pstore_register_console();
+
 	pr_info("Registered %s as persistent store backend\n", psi->name);
 
 	return 0;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

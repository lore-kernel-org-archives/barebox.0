Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5ESJ-0006Et-4O
 for barebox@lists.infradead.org; Mon, 20 Jan 2014 12:59:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 Jan 2014 13:59:30 +0100
Message-Id: <1390222770-5396-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] console: Set Linux console parameter automatically
To: barebox@lists.infradead.org

Linux specifies the linux,stdout-path property in the /chosen node
in the devicetree. Unfortunately this is ignored in most cases.
For cases in which barebox uses this property for its own use we
translate this into a Linux boot arg with:

- the console name provided by the serial driver
- the the instance from the 'serial' alias
- the baudrate from the actual baudrate.

So with this it's for devicetee enabled boards no longer necessary
to manually assign a console= parameter. Should a user not want
to use the automatically assigned parameter it should do:

global.linux.bootargs.console=

in the environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c                | 29 ++++++++++++++++++++++++++++-
 defaultenv-2/base/bin/init      |  1 +
 drivers/serial/serial_imx.c     |  1 +
 drivers/serial/serial_ns16550.c |  3 +++
 include/console.h               |  2 ++
 5 files changed, 35 insertions(+), 1 deletion(-)

diff --git a/common/console.c b/common/console.c
index 329bc72..aa9e3ce 100644
--- a/common/console.c
+++ b/common/console.c
@@ -31,6 +31,8 @@
 #include <kfifo.h>
 #include <module.h>
 #include <poller.h>
+#include <magicvar.h>
+#include <globalvar.h>
 #include <linux/list.h>
 #include <linux/stringify.h>
 #include <debug_ll.h>
@@ -140,6 +142,26 @@ static void console_init_early(void)
 	initialized = CONSOLE_INITIALIZED_BUFFER;
 }
 
+static void console_set_stdoutpath(struct console_device *cdev)
+{
+	int id;
+	char *str;
+
+	if (!cdev->linux_console_name)
+		return;
+
+	id = of_alias_get_id(cdev->dev->device_node, "serial");
+	if (id < 0)
+		return;
+
+	str = asprintf("console=%s%d,%dn8", cdev->linux_console_name,
+			id, cdev->baudrate);
+
+	globalvar_add_simple("linux.bootargs.console", str);
+
+	free(str);
+}
+
 int console_register(struct console_device *newcdev)
 {
 	struct device_d *dev = &newcdev->class_dev;
@@ -169,8 +191,10 @@ int console_register(struct console_device *newcdev)
 		activate = 1;
 	}
 
-	if (newcdev->dev && of_device_is_stdout_path(newcdev->dev))
+	if (newcdev->dev && of_device_is_stdout_path(newcdev->dev)) {
 		activate = 1;
+		console_set_stdoutpath(newcdev);
+	}
 
 	list_add_tail(&newcdev->list, &console_list);
 
@@ -357,3 +381,6 @@ int ctrlc (void)
 }
 EXPORT_SYMBOL(ctrlc);
 #endif /* ARCH_HAS_CTRC */
+
+BAREBOX_MAGICVAR_NAMED(global_linux_bootargs_console, global.linux.bootargs.console,
+		"console= argument for Linux from the linux,stdout-path property in /chosen node");
diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index d7bd0cb..3a0e93b 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -8,6 +8,7 @@ global autoboot_timeout
 global boot.default
 global allow_color
 global linux.bootargs.base
+global linux.bootargs.console
 #linux.bootargs.dyn.* will be cleared at the beginning of boot
 global linux.bootargs.dyn.ip
 global linux.bootargs.dyn.root
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 8468fa0..e0bd185 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -336,6 +336,7 @@ static int imx_serial_probe(struct device_d *dev)
 	cdev->getc = imx_serial_getc;
 	cdev->flush = imx_serial_flush;
 	cdev->setbrg = imx_serial_setbaudrate;
+	cdev->linux_console_name = "ttymxc";
 
 	imx_serial_init_port(cdev);
 
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index a8487b0..f1da44b 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -57,6 +57,7 @@ static inline struct ns16550_priv *to_ns16550_priv(struct console_device *cdev)
 
 struct ns16550_drvdata {
 	void (*init_port)(struct console_device *cdev);
+	const char *linux_console_name;
 };
 
 /**
@@ -251,6 +252,7 @@ static struct ns16550_drvdata ns16550_drvdata = {
 
 static __maybe_unused struct ns16550_drvdata omap_drvdata = {
 	.init_port = ns16550_omap_init_port,
+	.linux_console_name = "ttyO",
 };
 
 /**
@@ -312,6 +314,7 @@ static int ns16550_probe(struct device_d *dev)
 	cdev->putc = ns16550_putc;
 	cdev->getc = ns16550_getc;
 	cdev->setbrg = ns16550_setbaudrate;
+	cdev->linux_console_name = devtype->linux_console_name;
 
 	devtype->init_port(cdev);
 
diff --git a/include/console.h b/include/console.h
index 550b440..6da0199 100644
--- a/include/console.h
+++ b/include/console.h
@@ -49,6 +49,8 @@ struct console_device {
 	unsigned char f_active;
 
 	unsigned int baudrate;
+
+	const char *linux_console_name;
 };
 
 int console_register(struct console_device *cdev);
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

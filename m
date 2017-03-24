Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crMLt-0000Ry-He
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 10:21:51 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 24 Mar 2017 11:21:22 +0100
Message-Id: <20170324102123.9564-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 1/2] usb: gadget: start usbgadget automatically
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

... if global variable configured to do it.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/usb/gadget/Kconfig     |  6 ++++
 drivers/usb/gadget/Makefile    |  1 +
 drivers/usb/gadget/autostart.c | 67 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 74 insertions(+)
 create mode 100644 drivers/usb/gadget/autostart.c

diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index eb279ae8d..dd5d4a75a 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -30,6 +30,12 @@ config USB_GADGET_DRIVER_PXA27X
 	default y
 	select USB_GADGET_DUALSPEED
 
+config USB_GADGET_AUTOSTART
+	bool
+	default y
+	select ENVIRONMENT_VARIABLES
+	prompt "Automatically start usbgadget on boot"
+
 comment "USB Gadget drivers"
 
 config USB_GADGET_DFU
diff --git a/drivers/usb/gadget/Makefile b/drivers/usb/gadget/Makefile
index 9ef594575..e74cf0266 100644
--- a/drivers/usb/gadget/Makefile
+++ b/drivers/usb/gadget/Makefile
@@ -1,5 +1,6 @@
 
 obj-$(CONFIG_USB_GADGET) += composite.o config.o usbstring.o epautoconf.o udc-core.o functions.o config.o multi.o
+obj-$(CONFIG_USB_GADGET_AUTOSTART) += autostart.o
 obj-$(CONFIG_USB_GADGET_SERIAL) += u_serial.o serial.o f_serial.o f_acm.o
 obj-$(CONFIG_USB_GADGET_DFU) += dfu.o
 obj-$(CONFIG_USB_GADGET_FASTBOOT) += f_fastboot.o
diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autostart.c
new file mode 100644
index 000000000..43c2ba23d
--- /dev/null
+++ b/drivers/usb/gadget/autostart.c
@@ -0,0 +1,67 @@
+/*
+ * Copyright (c) 2017 Oleksij Rempel <o.rempel@pengutronix.de>, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <command.h>
+#include <errno.h>
+#include <malloc.h>
+#include <getopt.h>
+#include <fs.h>
+#include <xfuncs.h>
+#include <usb/usbserial.h>
+#include <usb/dfu.h>
+#include <usb/gadget-multi.h>
+#include <globalvar.h>
+#include <magicvar.h>
+
+static int autostart;
+static int acm;
+static char *fastboot_function;
+
+static int usbgadget_autostart(void)
+{
+	struct f_multi_opts opts = {};
+
+	if (!autostart)
+		return 0;
+
+	if (fastboot_function)
+		opts.fastboot_opts.files = file_list_parse(fastboot_function);
+
+	opts.create_acm = acm;
+
+	return usb_multi_register(&opts);
+}
+postenvironment_initcall(usbgadget_autostart);
+
+static int usbgadget_globalvars_init(void)
+{
+
+	globalvar_add_simple_bool("usbgadget.autostart", &autostart);
+	globalvar_add_simple_bool("usbgadget.acm", &acm);
+	globalvar_add_simple_string("usbgadget.fastboot_function",
+				    &fastboot_function);
+
+	return 0;
+}
+device_initcall(usbgadget_globalvars_init);
+
+BAREBOX_MAGICVAR_NAMED(global_usbgadget_autostart,
+		       global.usbgadget.autostart,
+		       "usbgadget: Automatically start usbgadget on boot");
+BAREBOX_MAGICVAR_NAMED(global_usbgadget_acm,
+		       global.usbgadget.acm,
+		       "usbgadget: Create CDC ACM function");
+BAREBOX_MAGICVAR_NAMED(global_usbgadget_fastboot_function,
+		       global.usbgadget.fastboot_function,
+		       "usbgadget: Create Android Fastboot function");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

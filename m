Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co7-0000rz-8i
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:37:01 +0200
Message-Id: <1302273422-6987-16-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 15/16] commands: seperate usb command from usb core
To: barebox@lists.infradead.org

This patch makes the USB command optional and makes usb_rescan a
global function. This way we can use USB in noninteractive
environments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig       |    8 ++++++++
 commands/Makefile      |    1 +
 commands/usb.c         |   41 +++++++++++++++++++++++++++++++++++++++++
 drivers/usb/core/usb.c |   21 +--------------------
 include/usb/usb.h      |    2 ++
 5 files changed, 53 insertions(+), 20 deletions(-)
 create mode 100644 commands/usb.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 40213d2..9d0c72d 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -393,4 +393,12 @@ config CMD_LED_TRIGGER
 	  The trigger command allows to control LED triggers from the command
 	  line.
 
+config CMD_USB
+	bool
+	depends on USB
+	prompt "usb command"
+	default y
+	help
+	  The usb command allows to rescan for USB devices.
+
 endmenu
diff --git a/commands/Makefile b/commands/Makefile
index fb1b0ca..f7ef9a8 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -55,3 +55,4 @@ obj-$(CONFIG_CMD_PASSWD)	+= passwd.o
 obj-$(CONFIG_CMD_LOGIN)		+= login.o
 obj-$(CONFIG_CMD_LED)		+= led.o
 obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
+obj-$(CONFIG_CMD_USB)		+= usb.o
diff --git a/commands/usb.c b/commands/usb.c
new file mode 100644
index 0000000..0aac78e
--- /dev/null
+++ b/commands/usb.c
@@ -0,0 +1,41 @@
+/*
+ * usb.c - rescan for USB devices
+ *
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+#include <common.h>
+#include <command.h>
+#include <usb/usb.h>
+
+static int do_usb(struct command *cmdtp, int argc, char *argv[])
+{
+	usb_rescan();
+
+	return 0;
+}
+
+static const __maybe_unused char cmd_usb_help[] =
+"Usage: usb\n"
+"(re-)detect USB devices\n";
+
+BAREBOX_CMD_START(usb)
+	.cmd		= do_usb,
+	.usage		= "(re-)detect USB devices",
+	BAREBOX_CMD_HELP(cmd_usb_help)
+BAREBOX_CMD_END
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 76e033e..df4e9e0 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -449,7 +449,7 @@ static struct usb_device *usb_alloc_new_device(void)
 	return usbdev;
 }
 
-static int __usb_init(void)
+void usb_rescan(void)
 {
 	struct usb_device *dev, *tmp;
 	struct usb_host *host;
@@ -477,27 +477,8 @@ static int __usb_init(void)
 	}
 
 	printf("%d USB Device(s) found\n", dev_index);
-
-	return 0;
 }
 
-static int do_usb(struct command *cmdtp, int argc, char *argv[])
-{
-	__usb_init();
-
-	return 0;
-}
-
-static const __maybe_unused char cmd_usb_help[] =
-"Usage: usb\n"
-"(re-)detect USB devices\n";
-
-BAREBOX_CMD_START(usb)
-	.cmd		= do_usb,
-	.usage		= "(re-)detect USB devices",
-	BAREBOX_CMD_HELP(cmd_usb_help)
-BAREBOX_CMD_END
-
 /*
  * disables the asynch behaviour of the control message. This is used for data
  * transfers that uses the exclusiv access to the control and bulk messages.
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 1e4d750..6ef9977 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -252,6 +252,8 @@ int usb_clear_halt(struct usb_device *dev, int pipe);
 int usb_string(struct usb_device *dev, int index, char *buf, size_t size);
 int usb_set_interface(struct usb_device *dev, int interface, int alternate);
 
+void usb_rescan(void);
+
 /* big endian -> little endian conversion */
 /* some CPUs are already little endian e.g. the ARM920T */
 #define __swap_16(x) \
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

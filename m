Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe2j9-00049l-76
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 10:19:36 +0000
Received: by eyh6 with SMTP id 6so2190436eyh.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 03:19:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Jul 2011 14:19:24 +0400
Message-Id: <1309861164-11327-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309861164-11327-1-git-send-email-antonynpavlov@gmail.com>
References: <1309861164-11327-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v1-very-draft 5/5] PCI: add draft lspci command
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/Kconfig  |    8 +++++++
 commands/Makefile |    1 +
 commands/lspci.c  |   54 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 63 insertions(+), 0 deletions(-)
 create mode 100644 commands/lspci.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 30eeff9..50faee9 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -432,6 +432,14 @@ config CMD_USB
 	help
 	  The usb command allows to rescan for USB devices.
 
+config CMD_LSPCI
+	bool
+	depends on PCI
+	prompt "lspci command"
+	default y
+	help
+	  The lspci command allows to list all PCI devices.
+
 endmenu
 
 endif
diff --git a/commands/Makefile b/commands/Makefile
index 8ee4aba..37c40bc 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -57,3 +57,4 @@ obj-$(CONFIG_CMD_LOGIN)		+= login.o
 obj-$(CONFIG_CMD_LED)		+= led.o
 obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
 obj-$(CONFIG_CMD_USB)		+= usb.o
+obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
diff --git a/commands/lspci.c b/commands/lspci.c
new file mode 100644
index 0000000..01c3398
--- /dev/null
+++ b/commands/lspci.c
@@ -0,0 +1,54 @@
+/*
+ * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
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
+
+#include <common.h>
+#include <init.h>
+#include <linux/pci.h>
+
+#include <command.h>
+
+extern struct pci_bus * pci_root;
+
+static int do_lspci(struct command *cmdtp, int argc, char *argv[])
+{
+	struct pci_dev * dev;
+
+	if (!pci_present()) {
+		printf("no pci!\n");
+		return 1;
+	}
+
+	list_for_each_entry(dev, &pci_root->devices, bus_list) {
+		printf("%02x: %04x: %04x:%04x (rev %02x)\n",
+			      dev->devfn,
+			      (dev->class >> 8) & 0xffff,
+			      dev->vendor,
+			      dev->device,
+			      dev->revision);
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_START(lspci)
+	.cmd            = do_lspci,
+	.usage          = "Show PCI info",
+BAREBOX_CMD_END
+
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

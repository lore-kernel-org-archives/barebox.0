Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2oXn-0006Ea-Qd
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 21:27:52 +0000
Received: by mail-la0-f44.google.com with SMTP id ty20so600164lab.17
 for <barebox@lists.infradead.org>; Thu, 03 Jul 2014 14:27:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  4 Jul 2014 01:27:03 +0400
Message-Id: <1404422826-6589-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
References: <1404422826-6589-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v5 4/7] commands: add 'lspci' command
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/Kconfig  |  8 ++++++++
 commands/Makefile |  1 +
 commands/lspci.c  | 52 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 61 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index eed6fbd..c98dbc5 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -207,6 +207,14 @@ config CMD_REGULATOR
 	  the regulator command lists the currently registered regulators and
 	  their current state.
 
+config CMD_LSPCI
+	bool
+	depends on PCI
+	prompt "lspci command"
+	default y
+	help
+	  The lspci command allows to list all PCI devices.
+
 config CMD_VERSION
 	tristate
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index a84d333..d42aca5 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -99,3 +99,4 @@ obj-$(CONFIG_CMD_READF)		+= readf.o
 obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
 obj-$(CONFIG_CMD_2048)		+= 2048.o
 obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
+obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
diff --git a/commands/lspci.c b/commands/lspci.c
new file mode 100644
index 0000000..c00b57f
--- /dev/null
+++ b/commands/lspci.c
@@ -0,0 +1,52 @@
+/*
+ * Copyright (C) 2011-2014 Antony Pavlov <antonynpavlov@gmail.com>
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
+ */
+
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <linux/pci.h>
+
+static int do_lspci(int argc, char *argv[])
+{
+	struct pci_bus *root_bus;
+	struct pci_dev *dev;
+
+	if (list_empty(&pci_root_buses)) {
+		printf("No PCI bus detected\n");
+		return 1;
+	}
+
+	list_for_each_entry(root_bus, &pci_root_buses, node) {
+		list_for_each_entry(dev, &root_bus->devices, bus_list) {
+			printf("%02x: %04x: %04x:%04x (rev %02x)\n",
+				      dev->devfn,
+				      (dev->class >> 8) & 0xffff,
+				      dev->vendor,
+				      dev->device,
+				      dev->revision);
+		}
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_START(lspci)
+	.cmd            = do_lspci,
+	BAREBOX_CMD_DESC("Show PCI info")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzvkY-0006xz-JL
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 22:33:07 +0000
Received: by mail-la0-f47.google.com with SMTP id s18so1271635lam.34
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 15:32:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 26 Jun 2014 02:32:15 +0400
Message-Id: <1403735538-25437-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403735538-25437-1-git-send-email-antonynpavlov@gmail.com>
References: <1403735538-25437-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v3 2/5] commands: add 'lspci' command
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20Leger?= <cleger@kalray.eu>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/Kconfig  |  8 ++++++++
 commands/Makefile |  1 +
 commands/lspci.c  | 49 +++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 58 insertions(+)
 create mode 100644 commands/lspci.c

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
index 0000000..5e1f6dd
--- /dev/null
+++ b/commands/lspci.c
@@ -0,0 +1,49 @@
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
+	struct pci_dev *dev;
+
+	if (!pci_root) {
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
+	BAREBOX_CMD_DESC("Show PCI info")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

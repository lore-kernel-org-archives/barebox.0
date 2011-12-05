Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXULJ-0003jx-Uk
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 08:56:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 09:55:59 +0100
Message-Id: <1323075361-27455-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323075361-27455-1-git-send-email-s.hauer@pengutronix.de>
References: <1323075361-27455-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] add iomem command to show iomem usage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |    7 ++++++
 commands/Makefile |    1 +
 commands/iomem.c  |   56 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 64 insertions(+), 0 deletions(-)
 create mode 100644 commands/iomem.c

diff --git a/commands/Kconfig b/commands/Kconfig
index c2492fa..2badea3 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -215,6 +215,13 @@ config CMD_MEMINFO
 	tristate
 	prompt "meminfo"
 
+config CMD_IOMEM
+	tristate
+	prompt "iomem"
+	help
+	  Show information about iomem usage. Pendant to 'cat /proc/iomem'
+	  under Linux.
+
 config CMD_MEMORY
 	bool
 	default y
diff --git a/commands/Makefile b/commands/Makefile
index f82dcfa..e95fdc3 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -60,3 +60,4 @@ obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
 obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
 obj-$(CONFIG_CMD_MAGICVAR)	+= magicvar.o
+obj-$(CONFIG_CMD_IOMEM)		+= iomem.o
diff --git a/commands/iomem.c b/commands/iomem.c
new file mode 100644
index 0000000..78566c1
--- /dev/null
+++ b/commands/iomem.c
@@ -0,0 +1,56 @@
+/*
+ * iomem.c - barebox iomem command
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
+ * Foundation.
+ */
+#include <common.h>
+#include <command.h>
+
+static void __print_resources(struct resource *res, int indent)
+{
+	struct resource *r;
+	int i;
+
+	for (i = 0; i < indent; i++)
+		printf("  ");
+
+	printf("0x%08x - 0x%08x (size 0x%08x) %s\n", res->start,
+			res->start + res->size - 1,
+			res->size, res->name);
+
+	list_for_each_entry(r, &res->children, sibling)
+		__print_resources(r, indent + 1);
+}
+
+static void print_resources(struct resource *res)
+{
+	__print_resources(res, 0);
+}
+
+static int do_iomem(struct command *cmdtp, int argc, char *argv[])
+{
+	print_resources(&iomem_resource);
+
+	return 0;
+}
+
+BAREBOX_CMD_START(iomem)
+	.cmd		= do_iomem,
+	.usage		= "show iomem usage",
+BAREBOX_CMD_END
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

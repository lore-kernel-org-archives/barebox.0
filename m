Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SetTM-0003D3-SP
 for barebox@lists.infradead.org; Wed, 13 Jun 2012 19:43:21 +0000
Received: by laap9 with SMTP id p9so748381laa.36
 for <barebox@lists.infradead.org>; Wed, 13 Jun 2012 12:43:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 13 Jun 2012 23:43:07 +0400
Message-Id: <1339616588-16636-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1339616588-16636-1-git-send-email-antonynpavlov@gmail.com>
References: <1339616588-16636-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] add 'poweroff' command
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/Kconfig    |    9 +++++++++
 commands/Makefile   |    1 +
 commands/poweroff.c |   37 +++++++++++++++++++++++++++++++++++++
 include/common.h    |    1 +
 4 files changed, 48 insertions(+)
 create mode 100644 commands/poweroff.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 52e1f17..e9f6e25 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -6,6 +6,10 @@ config COMMAND_SUPPORT
 	depends on !SHELL_NONE
 	default y
 
+config HAS_POWEROFF
+	bool
+	default n
+
 if COMMAND_SUPPORT
 
 menu "commands                      "
@@ -422,6 +426,11 @@ config CMD_RESET
 	tristate
 	prompt "reset"
 
+config CMD_POWEROFF
+	tristate
+	depends on HAS_POWEROFF
+	prompt "poweroff"
+
 config CMD_GO
 	tristate
 	prompt "go"
diff --git a/commands/Makefile b/commands/Makefile
index d39c466..ad3480c 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_CMD_EDIT)		+= edit.o
 obj-$(CONFIG_CMD_EXEC)		+= exec.o
 obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
 obj-$(CONFIG_CMD_RESET)		+= reset.o
+obj-$(CONFIG_CMD_POWEROFF)	+= poweroff.o
 obj-$(CONFIG_CMD_GO)		+= go.o
 obj-$(CONFIG_NET)		+= net.o
 obj-$(CONFIG_CMD_PARTITION)	+= partition.o
diff --git a/commands/poweroff.c b/commands/poweroff.c
new file mode 100644
index 0000000..cd5542b
--- /dev/null
+++ b/commands/poweroff.c
@@ -0,0 +1,37 @@
+/*
+ * poweroff.c - turn board's power off
+ *
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
+#include <command.h>
+
+static int cmd_poweroff(struct command *cmdtp, int argc, char *argv[])
+{
+	poweroff();
+
+	/* Not reached */
+	return 1;
+}
+
+BAREBOX_CMD_START(poweroff)
+	.cmd		= cmd_poweroff,
+	.usage		= "Perform POWER OFF of the board",
+BAREBOX_CMD_END
diff --git a/include/common.h b/include/common.h
index d2347f8..9745aeb 100644
--- a/include/common.h
+++ b/include/common.h
@@ -102,6 +102,7 @@ long	get_ram_size  (volatile long *, long);
 
 /* $(CPU)/cpu.c */
 void __noreturn reset_cpu(unsigned long addr);
+void __noreturn poweroff(void);
 
 /* lib_$(ARCH)/time.c */
 void	udelay (unsigned long);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

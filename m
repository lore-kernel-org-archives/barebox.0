Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe2Ji-0003bp-1n
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 09:53:24 +0000
Received: by bwf12 with SMTP id 12so5981973bwf.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 02:53:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Jul 2011 13:52:49 +0400
Message-Id: <1309859569-11119-12-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309859569-11119-1-git-send-email-antonynpavlov@gmail.com>
References: <1309859569-11119-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 12/12 v4-draft] MIPS: add draft cpuinfo command
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig       |   11 +++++++++++
 arch/mips/lib/Makefile  |    3 +++
 arch/mips/lib/cpuinfo.c |   38 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 52 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/lib/cpuinfo.c

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index d5e05cc..bb1d9d3 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -197,6 +197,17 @@ config 64BIT
 
 endchoice
 
+menu "MIPS specific settings        "
+
+config CMD_MIPS_CPUINFO
+	bool "cpuinfo command"
+	default y
+	help
+	  Say yes here to get a cpuinfo command to show some
+	  information about the cpu model.
+
+endmenu
+
 source common/Kconfig
 source commands/Kconfig
 source net/Kconfig
diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 67e4e8a..44fb360 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -4,3 +4,6 @@ obj-y += lshrdi3.o
 obj-y += ashldi3.o
 obj-y += ashrdi3.o
 obj-y += memory.o
+
+#obj-$(CONFIG_CMD_MIPS_CPUINFO) += cpuinfo.o
+obj-y += cpuinfo.o
diff --git a/arch/mips/lib/cpuinfo.c b/arch/mips/lib/cpuinfo.c
new file mode 100644
index 0000000..7bdb02b
--- /dev/null
+++ b/arch/mips/lib/cpuinfo.c
@@ -0,0 +1,38 @@
+/*
+ * cpuinfo - show information about MIPS CPU
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
+#include <asm/mipsregs.h>
+
+static int do_cpuinfo(struct command *cmdtp, int argc, char *argv[])
+{
+	printf("CP0_PRID = 0x%08x\n", read_c0_prid());
+	printf("CP0_CONFIG = 0x%08x\n", read_c0_config());
+
+	return 0;
+}
+
+BAREBOX_CMD_START(cpuinfo)
+	.cmd            = do_cpuinfo,
+	.usage          = "Show info about CPU",
+BAREBOX_CMD_END
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

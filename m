Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from canuck.infradead.org ([2001:4978:20e::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShjsN-0001uk-Rq
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 16:04:55 +0000
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShjsL-0008Bc-Hy
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 16:04:55 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 21 Jun 2012 18:04:44 +0200
Message-Id: <1340294684-20457-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] mmuinfo: add a command do display the result of virtual to
 physical translation
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/Kconfig       |   10 ++++-
 arch/arm/cpu/Makefile  |    1 +
 arch/arm/cpu/mmuinfo.c |  107 ++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 117 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/cpu/mmuinfo.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8a4e1a2..2f35738 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -123,7 +123,15 @@ config CMD_ARM_CPUINFO
 	default y
 	help
 	  Say yes here to get a cpuinfo command to show some
-	  information about the cp15 registers
+	  CPU information using the cp15 registers
+
+config CMD_ARM_MMUINFO
+	bool "mmuinfo command"
+	depends on CPU_V7
+	default n
+	help
+	  Say yes here to get a mmuinfo command to show some
+	  MMU and cache information using the cp15 registers
 
 config CPU_V7_DCACHE_SKIP
 	bool "Skip DCache Invalidate"
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index e30ae1c..93a34a9 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -7,6 +7,7 @@ obj-y += start.o
 # Any variants can be called as start-armxyz.S
 #
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
+obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
 obj-$(CONFIG_MMU) += mmu.o
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
 obj-$(CONFIG_CPU_32v5) += cache-armv5.o
diff --git a/arch/arm/cpu/mmuinfo.c b/arch/arm/cpu/mmuinfo.c
new file mode 100644
index 0000000..6177785
--- /dev/null
+++ b/arch/arm/cpu/mmuinfo.c
@@ -0,0 +1,107 @@
+/*
+ * mmuinfo.c - Show MMU/cache information from cp15 registers
+ *
+ * Copyright (c) Jan Luebbe <j.luebbe@pengutronix.de>, Pengutronix
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
+
+#include <common.h>
+#include <command.h>
+
+static char *inner_attr[] = {
+	"0b000 Non-cacheable",
+	"0b001 Strongly-ordered",
+	"0b010 (reserved)",
+	"0b011 Device",
+	"0b100 (reserved)",
+	"0b101 Write-Back, Write-Allocate",
+	"0b110 Write-Through",
+	"0b111 Write-Back, no Write-Allocate",
+};
+
+static char *outer_attr[] = {
+	"0b00 Non-cacheable",
+	"0b01 Write-Back, Write-Allocate",
+	"0b10 Write-Through, no Write-Allocate",
+	"0b11 Write-Back, no Write-Allocate",
+};
+
+static void decode_par(unsigned long par)
+{
+	printf("  Physical Address [31:12]: 0x%08lx\n", par & 0xFFFFF000);
+	printf("  Reserved [11]:            0x%lx\n", (par >> 11) & 0x1);
+	printf("  Not Outer Shareable [10]: 0x%lx\n", (par >> 10) & 0x1);
+	printf("  Non-Secure [9]:           0x%lx\n", (par >> 9) & 0x1);
+	printf("  Impl. def. [8]:           0x%lx\n", (par >> 8) & 0x1);
+	printf("  Shareable [7]:            0x%lx\n", (par >> 7) & 0x1);
+	printf("  Inner mem. attr. [6:4]:   0x%lx (%s)\n", (par >> 4) & 0x7,
+		inner_attr[(par >> 4) & 0x7]);
+	printf("  Outer mem. attr. [3:2]:   0x%lx (%s)\n", (par >> 2) & 0x3,
+		outer_attr[(par >> 2) & 0x3]);
+	printf("  SuperSection [1]:         0x%lx\n", (par >> 1) & 0x1);
+	printf("  Failure [0]:              0x%lx\n", (par >> 0) & 0x1);
+}
+
+static int do_mmuinfo(int argc, char *argv[])
+{
+	unsigned long addr = 0, priv_read, priv_write;
+
+	if (argc < 2)
+		return 1;
+
+	addr = strtoul_suffix(argv[1], NULL, 0);
+
+	__asm__ __volatile__(
+		"mcr    p15, 0, %0, c7, c8, 0   @ write VA to PA translation (priv read)\n"
+		:
+		: "r" (addr)
+		: "memory");
+
+	__asm__ __volatile__(
+		"mrc    p15, 0, %0, c7, c4, 0   @ read PAR\n"
+		: "=r" (priv_read)
+		:
+		: "memory");
+
+
+	__asm__ __volatile__(
+		"mcr    p15, 0, %0, c7, c8, 1   @ write VA to PA translation (priv write)\n"
+		:
+		: "r" (addr)
+		: "memory");
+
+	__asm__ __volatile__(
+		"mrc    p15, 0, %0, c7, c4, 0   @ read PAR\n"
+		: "=r" (priv_write)
+		:
+		: "memory");
+
+	printf("PAR result for 0x%08lx: \n", addr);
+	printf(" privileged read: 0x%08lx\n", priv_read);
+	decode_par(priv_read);
+	printf(" privileged write: 0x%08lx\n", priv_write);
+	decode_par(priv_write);
+
+	return 0;
+}
+
+BAREBOX_CMD_START(mmuinfo)
+	.cmd            = do_mmuinfo,
+	.usage          = "Show info about MMU",
+BAREBOX_CMD_END
+
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

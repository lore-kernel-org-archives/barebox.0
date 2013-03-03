Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBxdj-0006yY-Ar
 for barebox@lists.infradead.org; Sun, 03 Mar 2013 01:23:01 +0000
Message-Id: <d088ba9d26fbcd8f9b4cd3ba129ec5c556d88307.1362273612.git.joshc@eso.teric.us>
In-Reply-To: <cover.1362273612.git.joshc@eso.teric.us>
References: <cover.1362273612.git.joshc@eso.teric.us>
From: Josh Cartwright <joshc@eso.teric.us>
Date: Sat, 2 Mar 2013 18:48:57 -0600
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
Subject: [PATCH 5/5] ARM: zynq: add support for zc702 development board
To: barebox@lists.infradead.org
Cc: Michal Simek <monstr@monstr.eu>

Signed-off-by: Josh Cartwright <joshc@eso.teric.us>
---
 arch/arm/Makefile                     |  2 +
 arch/arm/boards/zynq-zc702/Makefile   |  1 +
 arch/arm/boards/zynq-zc702/config.h   |  0
 arch/arm/boards/zynq-zc702/devices.c  | 70 +++++++++++++++++++++++++++++++++++
 arch/arm/boards/zynq-zc702/lowlevel.c | 28 ++++++++++++++
 arch/arm/mach-zynq/Kconfig            | 19 ++++++++++
 6 files changed, 120 insertions(+)
 create mode 100644 arch/arm/boards/zynq-zc702/Makefile
 create mode 100644 arch/arm/boards/zynq-zc702/config.h
 create mode 100644 arch/arm/boards/zynq-zc702/devices.c
 create mode 100644 arch/arm/boards/zynq-zc702/lowlevel.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index fcb2969..9073a55 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -64,6 +64,7 @@ machine-$(CONFIG_ARCH_PXA)		:= pxa
 machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
 machine-$(CONFIG_ARCH_TEGRA)		:= tegra
+machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
 
 # Board directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
@@ -157,6 +158,7 @@ board-$(CONFIG_MACH_SABRELITE)			:= freescale-mx6-sabrelite
 board-$(CONFIG_MACH_TX53)			:= karo-tx53
 board-$(CONFIG_MACH_GUF_VINCELL)		:= guf-vincell
 board-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		:= efika-mx-smartbook
+board-$(CONFIG_MACH_ZYNQ_ZC702)			:= zynq-zc702
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/zynq-zc702/Makefile b/arch/arm/boards/zynq-zc702/Makefile
new file mode 100644
index 0000000..385bd9f
--- /dev/null
+++ b/arch/arm/boards/zynq-zc702/Makefile
@@ -0,0 +1 @@
+obj-y += lowlevel.o devices.o
diff --git a/arch/arm/boards/zynq-zc702/config.h b/arch/arm/boards/zynq-zc702/config.h
new file mode 100644
index 0000000..e69de29
diff --git a/arch/arm/boards/zynq-zc702/devices.c b/arch/arm/boards/zynq-zc702/devices.c
new file mode 100644
index 0000000..b9ec9f3
--- /dev/null
+++ b/arch/arm/boards/zynq-zc702/devices.c
@@ -0,0 +1,70 @@
+/*
+ * Copyright (c) 2013 Josh Cartwright <joshc@eso.teric.us>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <sizes.h>
+
+#include <asm/memory.h>
+
+static struct resource smp_twd_resource = {
+	.name	= "smp_twd_base",
+	.start	= 0xF8F00600,
+	.end	= 0xF8F00610,
+	.flags	= IORESOURCE_MEM,
+};
+
+static struct device_d zynq_smp_twd = {
+	.id		= DEVICE_ID_DYNAMIC,
+	.name		= "smp_twd",
+	.num_resources	= 1,
+	.resource	= &smp_twd_resource,
+};
+
+static struct resource zynq_serial_resource = {
+	.name	= "zynq_serial_base",
+	.start	= 0xE0001000,
+	.end	= 0xE0001048,
+	.flags	= IORESOURCE_MEM,
+};
+
+static struct device_d zynq_serial = {
+	.id		= DEVICE_ID_DYNAMIC,
+	.name		= "zynq_serial",
+	.num_resources	= 1,
+	.resource	= &zynq_serial_resource,
+};
+
+static int zc702_console_init(void)
+{
+	platform_device_register(&zynq_serial);
+	return 0;
+}
+console_initcall(zc702_console_init);
+
+static int zc702_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0, SZ_128M);
+	return 0;
+}
+mem_initcall(zc702_mem_init);
+
+static int zc702_twd_init(void)
+{
+	platform_device_register(&zynq_smp_twd);
+	return 0;
+}
+coredevice_initcall(zc702_twd_init);
diff --git a/arch/arm/boards/zynq-zc702/lowlevel.c b/arch/arm/boards/zynq-zc702/lowlevel.c
new file mode 100644
index 0000000..662d969
--- /dev/null
+++ b/arch/arm/boards/zynq-zc702/lowlevel.c
@@ -0,0 +1,28 @@
+/*
+ * Copyright (c) 2013 Josh Cartwright <joshc@eso.teric.us>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License along with
+ * this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+#include <common.h>
+#include <init.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+
+#include <mach/slcr.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	slcr_unlock();
+	arm_cpu_lowlevel_init();
+	barebox_arm_entry(0x8000, SZ_128M, 0);
+}
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 90b17f3..992a485 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -1,3 +1,22 @@
 if ARCH_ZYNQ
 
+config ARCH_TEXT_BASE
+	hex
+	default 0x04000000 if MACH_ZYNQ_ZC702
+
+config ZYNQ_PS_CLK_FREQ
+	int
+	default 33333330 if MACH_ZYNQ_ZC702
+
+config BOARDINFO
+	default "Xilinx Zynq zc702 dev board" if MACH_ZYNQ_ZC702
+
+choice
+	prompt "Xilinx Zynq zc702 dev board"
+
+config MACH_ZYNQ_ZC702
+	bool "zc702 development board"
+
+endchoice
+
 endif
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

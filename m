Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22d.google.com ([2a00:1450:4013:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ubctd-0007gv-VU
 for barebox@lists.infradead.org; Sun, 12 May 2013 20:29:31 +0000
Received: by mail-ea0-f173.google.com with SMTP id n15so296348ead.32
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 13:29:07 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 12 May 2013 22:28:53 +0200
Message-Id: <1368390533-18750-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1368364146-6024-5-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368364146-6024-5-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 4/5] arm: add basic support for SolidRun CuBox
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

The SolidRun CuBox is a small cubic platform based on the Marvell
Dove SoC. There is nothing more than a console, yet.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- remove debug_ll include
- remove some empty lines

Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/Makefile                               |    1 +
 arch/arm/boards/solidrun-cubox/Makefile         |    2 ++
 arch/arm/boards/solidrun-cubox/config.h         |    4 +++
 arch/arm/boards/solidrun-cubox/kwbimage.cfg     |   39 +++++++++++++++++++++++
 arch/arm/boards/solidrun-cubox/lowlevel.c       |   26 +++++++++++++++
 arch/arm/boards/solidrun-cubox/solidrun-cubox.c |   25 +++++++++++++++
 arch/arm/configs/solidrun_cubox_defconfig       |    9 ++++++
 arch/arm/mach-mvebu/Kconfig                     |    5 +++
 8 files changed, 111 insertions(+)
 create mode 100644 arch/arm/boards/solidrun-cubox/Makefile
 create mode 100644 arch/arm/boards/solidrun-cubox/config.h
 create mode 100644 arch/arm/boards/solidrun-cubox/kwbimage.cfg
 create mode 100644 arch/arm/boards/solidrun-cubox/lowlevel.c
 create mode 100644 arch/arm/boards/solidrun-cubox/solidrun-cubox.c
 create mode 100644 arch/arm/configs/solidrun_cubox_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index ce0921d..ce2de8d 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -147,6 +147,7 @@ board-$(CONFIG_MACH_MINI6410)			:= friendlyarm-mini6410
 board-$(CONFIG_MACH_TINY6410)			:= friendlyarm-tiny6410
 board-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	:= plathome-openblocks-ax3
 board-$(CONFIG_MACH_QIL_A9260)			:= qil-a9260
+board-$(CONFIG_MACH_SOLIDRUN_CUBOX)		:= solidrun-cubox
 board-$(CONFIG_MACH_TNY_A9260)			:= tny-a926x
 board-$(CONFIG_MACH_TNY_A9263)			:= tny-a926x
 board-$(CONFIG_MACH_TNY_A9G20)			:= tny-a926x
diff --git a/arch/arm/boards/solidrun-cubox/Makefile b/arch/arm/boards/solidrun-cubox/Makefile
new file mode 100644
index 0000000..6dfe2c8
--- /dev/null
+++ b/arch/arm/boards/solidrun-cubox/Makefile
@@ -0,0 +1,2 @@
+obj-y = solidrun-cubox.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/solidrun-cubox/config.h b/arch/arm/boards/solidrun-cubox/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/solidrun-cubox/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/solidrun-cubox/kwbimage.cfg b/arch/arm/boards/solidrun-cubox/kwbimage.cfg
new file mode 100644
index 0000000..cb0c360
--- /dev/null
+++ b/arch/arm/boards/solidrun-cubox/kwbimage.cfg
@@ -0,0 +1,39 @@
+VERSION 0
+BOOT_FROM spi
+DESTADDR ffffffff # overwritten by kwbimage -c
+EXECADDR ffffffff # overwritten by kwbimage -c
+DATA d0020104 00000000
+DATA d0800020 00022430
+DATA d0800030 00022430
+DATA d0800050 911500c3
+DATA d0800060 646602c4
+DATA d0800190 c2003053
+DATA d08001c0 34f4a187
+DATA d0800650 000f0121
+DATA d0800660 04040200
+DATA d0800080 00000000
+DATA d0800090 00080000
+DATA d08000f0 c0000000
+DATA d08001a0 20c0c009
+DATA d0800280 010e0202
+DATA d0800760 00000000
+DATA d0800770 0000000a
+DATA d0800140 20004044
+DATA d08001d0 133c2339
+DATA d08001e0 07700330
+DATA d08001f0 00000033
+DATA d0800200 0011311c
+DATA d0800210 00300000
+DATA d0800240 80000000
+DATA d0800510 010e0101
+DATA d0800230 2028006a
+DATA d0800e10 00280062
+DATA d0800e20 00280062
+DATA d0800e30 00280062
+DATA d0800100 000d0001
+DATA d0800110 200d0001
+DATA d0020104 00000000
+DATA d0020104 00000000
+DATA d0020104 00000000
+DATA d0020104 00000000
+DATA d0020104 00000000
diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
new file mode 100644
index 0000000..8a06cbc
--- /dev/null
+++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright
+ * (C) 2013 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <mach/dove.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	dove_barebox_entry();
+}
diff --git a/arch/arm/boards/solidrun-cubox/solidrun-cubox.c b/arch/arm/boards/solidrun-cubox/solidrun-cubox.c
new file mode 100644
index 0000000..1abce2f
--- /dev/null
+++ b/arch/arm/boards/solidrun-cubox/solidrun-cubox.c
@@ -0,0 +1,25 @@
+/*
+ * Copyright
+ * (C) 2013 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <mach/dove.h>
+
+static int solidrun_cubox_console_init(void)
+{
+	return dove_add_uart(0);
+}
+console_initcall(solidrun_cubox_console_init);
diff --git a/arch/arm/configs/solidrun_cubox_defconfig b/arch/arm/configs/solidrun_cubox_defconfig
new file mode 100644
index 0000000..1a27d81
--- /dev/null
+++ b/arch/arm/configs/solidrun_cubox_defconfig
@@ -0,0 +1,9 @@
+CONFIG_ARCH_MVEBU=y
+CONFIG_ARCH_DOVE=y
+CONFIG_AEABI=y
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_CLK=y
+CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index c02eea1..3d8c2c3 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -5,11 +5,13 @@ config ARCH_TEXT_BASE
 	default 0x2000000 if MACH_PLATHOME_OPENBLOCKS_AX3
 	default 0x2000000 if MACH_GLOBALSCALE_MIRABOX
 	default 0x2000000 if MACH_MARVELL_ARMADA_XP_GP
+	default 0x2000000 if MACH_SOLIDRUN_CUBOX
 
 config BOARDINFO
 	default "PlatHome OpenBlocks AX3" if MACH_PLATHOME_OPENBLOCKS_AX3
 	default "Globalscale Mirabox" if MACH_GLOBALSCALE_MIRABOX
 	default "Marvell Armada XP GP" if MACH_MARVELL_ARMADA_XP_GP
+	default "SolidRun CuBox" if MACH_SOLIDRUN_CUBOX
 
 choice
 	prompt "Marvell EBU Processor"
@@ -63,6 +65,9 @@ if ARCH_DOVE
 choice
 	prompt "Dove 88AP510 Board Type"
 
+config MACH_SOLIDRUN_CUBOX
+	bool "SolidRun CuBox"
+
 endchoice
 
 endif # ARCH_DOVE
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

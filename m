Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWH2-0000tv-9I
 for barebox@lists.infradead.org; Wed, 15 May 2013 07:37:25 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed, 15 May 2013 09:36:35 +0200
Message-Id: <1368603396-27887-10-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368603396-27887-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCHv2 09/10] arm: mvebu: add basic support for Globalscale
 Guruplug board
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

The Globalscale Guruplug board is a small NAS-type plug platform that
uses a Marvell Kirkwood SoC.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/globalscale-guruplug/Makefile      |    2 ++
 arch/arm/boards/globalscale-guruplug/config.h      |    4 +++
 .../globalscale-guruplug/globalscale-guruplug.c    |   26 +++++++++++++++++++
 arch/arm/boards/globalscale-guruplug/kwbimage.cfg  |   27 ++++++++++++++++++++
 arch/arm/boards/globalscale-guruplug/lowlevel.c    |   26 +++++++++++++++++++
 arch/arm/configs/globalscale_guruplug_defconfig    |    6 +++++
 arch/arm/mach-mvebu/Kconfig                        |    5 ++++
 8 files changed, 97 insertions(+)
 create mode 100644 arch/arm/boards/globalscale-guruplug/Makefile
 create mode 100644 arch/arm/boards/globalscale-guruplug/config.h
 create mode 100644 arch/arm/boards/globalscale-guruplug/globalscale-guruplug.c
 create mode 100644 arch/arm/boards/globalscale-guruplug/kwbimage.cfg
 create mode 100644 arch/arm/boards/globalscale-guruplug/lowlevel.c
 create mode 100644 arch/arm/configs/globalscale_guruplug_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 8f17e7e..1e7ace4 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -103,6 +103,7 @@ board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
 board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
 board-$(CONFIG_MACH_GE863)			:= telit-evk-pro3
 board-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)        := globalscale-mirabox
+board-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)       := globalscale-guruplug
 board-$(CONFIG_MACH_HIGHBANK)			:= highbank
 board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
 board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
diff --git a/arch/arm/boards/globalscale-guruplug/Makefile b/arch/arm/boards/globalscale-guruplug/Makefile
new file mode 100644
index 0000000..3b48b32
--- /dev/null
+++ b/arch/arm/boards/globalscale-guruplug/Makefile
@@ -0,0 +1,2 @@
+obj-y = globalscale-guruplug.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/globalscale-guruplug/config.h b/arch/arm/boards/globalscale-guruplug/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/globalscale-guruplug/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/globalscale-guruplug/globalscale-guruplug.c b/arch/arm/boards/globalscale-guruplug/globalscale-guruplug.c
new file mode 100644
index 0000000..dfc1d1a
--- /dev/null
+++ b/arch/arm/boards/globalscale-guruplug/globalscale-guruplug.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
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
+#include <sizes.h>
+#include <mach/kirkwood.h>
+
+static int globalscale_guruplug_console_init(void)
+{
+	return kirkwood_add_uart0();
+}
+
+console_initcall(globalscale_guruplug_console_init);
diff --git a/arch/arm/boards/globalscale-guruplug/kwbimage.cfg b/arch/arm/boards/globalscale-guruplug/kwbimage.cfg
new file mode 100644
index 0000000..d0f3bdb
--- /dev/null
+++ b/arch/arm/boards/globalscale-guruplug/kwbimage.cfg
@@ -0,0 +1,27 @@
+VERSION 0
+BOOT_FROM nand
+NAND_ECCMODE default
+NAND_PAGESZ 00000800
+DATA ffd100e0 1b1b9b9b
+DATA ffd01400 43000c30
+DATA ffd01404 37543000
+DATA ffd01408 22125451
+DATA ffd0140c 00000a33
+DATA ffd01410 000000cc
+DATA ffd01414 00000000
+DATA ffd01418 00000000
+DATA ffd0141c 00000c52
+DATA ffd01420 00000040
+DATA ffd01424 0000f17f
+DATA ffd01428 00085520
+DATA ffd0147c 00008552
+DATA ffd01500 00000000
+DATA ffd01504 0ffffff1
+DATA ffd01508 10000000
+DATA ffd0150c 0ffffff5
+DATA ffd01514 00000000
+DATA ffd0151c 00000000
+DATA ffd01494 00030000
+DATA ffd01498 00000000
+DATA ffd0149c 0000e803
+DATA ffd01480 00000001
diff --git a/arch/arm/boards/globalscale-guruplug/lowlevel.c b/arch/arm/boards/globalscale-guruplug/lowlevel.c
new file mode 100644
index 0000000..d270cda
--- /dev/null
+++ b/arch/arm/boards/globalscale-guruplug/lowlevel.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
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
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/kirkwood.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	kirkwood_barebox_entry();
+}
diff --git a/arch/arm/configs/globalscale_guruplug_defconfig b/arch/arm/configs/globalscale_guruplug_defconfig
new file mode 100644
index 0000000..d21de45
--- /dev/null
+++ b/arch/arm/configs/globalscale_guruplug_defconfig
@@ -0,0 +1,6 @@
+CONFIG_ARCH_MVEBU=y
+CONFIG_ARCH_KIRKWOOD=y
+CONFIG_TEXT_BASE=0x2000000
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_RESET=y
+CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 92ba009..1d46f87 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -4,12 +4,14 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x2000000 if MACH_PLATHOME_OPENBLOCKS_AX3
 	default 0x2000000 if MACH_GLOBALSCALE_MIRABOX
+	default 0x2000000 if MACH_GLOBALSCALE_GURUPLUG
 	default 0x2000000 if MACH_MARVELL_ARMADA_XP_GP
 	default 0x2000000 if MACH_SOLIDRUN_CUBOX
 
 config BOARDINFO
 	default "PlatHome OpenBlocks AX3" if MACH_PLATHOME_OPENBLOCKS_AX3
 	default "Globalscale Mirabox" if MACH_GLOBALSCALE_MIRABOX
+	default "Globalscale Guruplug" if MACH_GLOBALSCALE_GURUPLUG
 	default "Marvell Armada XP GP" if MACH_MARVELL_ARMADA_XP_GP
 	default "SolidRun CuBox" if MACH_SOLIDRUN_CUBOX
 
@@ -82,6 +84,9 @@ if ARCH_KIRKWOOD
 choice
 	prompt "Kirkwood Board Type"
 
+config MACH_GLOBALSCALE_GURUPLUG
+	bool "Guruplug"
+
 endchoice
 
 endif # ARCH_KIRKWOOD
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

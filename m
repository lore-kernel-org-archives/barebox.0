Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaNXj-0002FC-73
 for barebox@lists.infradead.org; Thu, 09 May 2013 09:53:45 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Thu,  9 May 2013 11:52:50 +0200
Message-Id: <1368093171-17845-7-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368093171-17845-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368093171-17845-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH v3 6/7] arm: add basic support for the Armada 370 Mirabox
 platform
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Lior Amsalem <alior@marvell.com>, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

The Mirabox is a platform manufactured by Globalscale, and based on
the Marvell Armada 370 SoC.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/globalscale-mirabox/Makefile       |    2 ++
 arch/arm/boards/globalscale-mirabox/config.h       |    4 +++
 .../globalscale-mirabox/globalscale-mirabox.c      |   26 ++++++++++++++++++++
 arch/arm/boards/globalscale-mirabox/kwbimage.cfg   |    5 ++++
 arch/arm/boards/globalscale-mirabox/lowlevel.c     |   26 ++++++++++++++++++++
 arch/arm/configs/globalscale_mirabox_defconfig     |    8 ++++++
 arch/arm/mach-mvebu/Kconfig                        |    5 ++++
 8 files changed, 77 insertions(+)
 create mode 100644 arch/arm/boards/globalscale-mirabox/Makefile
 create mode 100644 arch/arm/boards/globalscale-mirabox/config.h
 create mode 100644 arch/arm/boards/globalscale-mirabox/globalscale-mirabox.c
 create mode 100644 arch/arm/boards/globalscale-mirabox/kwbimage.cfg
 create mode 100644 arch/arm/boards/globalscale-mirabox/lowlevel.c
 create mode 100644 arch/arm/configs/globalscale_mirabox_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 913dfed..575ea6b 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -102,6 +102,7 @@ board-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		:= eukrea_cpuimx51
 board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
 board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
 board-$(CONFIG_MACH_GE863)			:= telit-evk-pro3
+board-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)        := globalscale-mirabox
 board-$(CONFIG_MACH_HIGHBANK)			:= highbank
 board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
 board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
diff --git a/arch/arm/boards/globalscale-mirabox/Makefile b/arch/arm/boards/globalscale-mirabox/Makefile
new file mode 100644
index 0000000..bd5d47e
--- /dev/null
+++ b/arch/arm/boards/globalscale-mirabox/Makefile
@@ -0,0 +1,2 @@
+obj-y = globalscale-mirabox.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/globalscale-mirabox/config.h b/arch/arm/boards/globalscale-mirabox/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/globalscale-mirabox/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/globalscale-mirabox/globalscale-mirabox.c b/arch/arm/boards/globalscale-mirabox/globalscale-mirabox.c
new file mode 100644
index 0000000..b8f4bff
--- /dev/null
+++ b/arch/arm/boards/globalscale-mirabox/globalscale-mirabox.c
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
+#include <mach/mvebu.h>
+
+static int globalscale_mirabox_console_init(void)
+{
+	return mvebu_add_uart0();
+}
+
+console_initcall(globalscale_mirabox_console_init);
diff --git a/arch/arm/boards/globalscale-mirabox/kwbimage.cfg b/arch/arm/boards/globalscale-mirabox/kwbimage.cfg
new file mode 100644
index 0000000..72283d9
--- /dev/null
+++ b/arch/arm/boards/globalscale-mirabox/kwbimage.cfg
@@ -0,0 +1,5 @@
+VERSION 1
+BOOT_FROM nand
+NAND_BLKSZ 00020000
+NAND_BADBLK_LOCATION 01
+BINARY globalscale-mirabox-binary.0 0000005b 00000068
diff --git a/arch/arm/boards/globalscale-mirabox/lowlevel.c b/arch/arm/boards/globalscale-mirabox/lowlevel.c
new file mode 100644
index 0000000..3ca202e
--- /dev/null
+++ b/arch/arm/boards/globalscale-mirabox/lowlevel.c
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
+#include <mach/mvebu.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	mvebu_barebox_entry();
+}
diff --git a/arch/arm/configs/globalscale_mirabox_defconfig b/arch/arm/configs/globalscale_mirabox_defconfig
new file mode 100644
index 0000000..ed9d94d
--- /dev/null
+++ b/arch/arm/configs/globalscale_mirabox_defconfig
@@ -0,0 +1,8 @@
+CONFIG_ARCH_MVEBU=y
+CONFIG_AEABI=y
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_CLK=y
+CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 9196251..8489335 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -3,9 +3,11 @@ if ARCH_MVEBU
 config ARCH_TEXT_BASE
 	hex
 	default 0x2000000 if MACH_PLATHOME_OPENBLOCKS_AX3
+	default 0x2000000 if MACH_GLOBALSCALE_MIRABOX
 
 config BOARDINFO
 	default "PlatHome OpenBlocks AX3" if MACH_PLATHOME_OPENBLOCKS_AX3
+	default "Globalscale Mirabox" if MACH_GLOBALSCALE_MIRABOX
 
 choice
 	prompt "Marvell EBU Processor"
@@ -25,6 +27,9 @@ if ARCH_ARMADA_370
 choice
 	prompt "Armada 370 Board Type"
 
+config MACH_GLOBALSCALE_MIRABOX
+	bool "Globalscale Mirabox"
+
 endchoice
 
 endif # ARCH_ARMADA_370
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

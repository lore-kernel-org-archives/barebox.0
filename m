Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaBdl-0002UQ-Fv
 for barebox@lists.infradead.org; Wed, 08 May 2013 21:11:10 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Wed,  8 May 2013 23:10:22 +0200
Message-Id: <1368047422-3397-8-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1368047422-3397-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1368047422-3397-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH v2 7/7] arm: add basic support for the Armada XP GP platform
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Lior Amsalem <alior@marvell.com>, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

The Armada XP GP platform is an evaluation platform designed by
Marvell, that uses the MV78460 quad-core SoC from the Armada XP
family.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/marvell-armada-xp-gp/Makefile      |    2 ++
 arch/arm/boards/marvell-armada-xp-gp/config.h      |    4 ++++
 arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg  |    3 +++
 arch/arm/boards/marvell-armada-xp-gp/lowlevel.c    |   25 ++++++++++++++++++++
 .../marvell-armada-xp-gp/marvell-armada-xp-gp.c    |   25 ++++++++++++++++++++
 arch/arm/configs/marvell_armada_xp_gp_defconfig    |   10 ++++++++
 arch/arm/mach-mvebu/Kconfig                        |    5 ++++
 8 files changed, 75 insertions(+)
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/Makefile
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/config.h
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
 create mode 100644 arch/arm/boards/marvell-armada-xp-gp/marvell-armada-xp-gp.c
 create mode 100644 arch/arm/configs/marvell_armada_xp_gp_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c8bdba7..a46e3b3 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -107,6 +107,7 @@ board-$(CONFIG_MACH_HIGHBANK)			:= highbank
 board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
 board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
 board-$(CONFIG_MACH_IMX233_OLINUXINO)	:= imx233-olinuxino
+board-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)	:= marvell-armada-xp-gp
 board-$(CONFIG_MACH_MIOA701)			:= mioa701
 board-$(CONFIG_MACH_MMCCPU)			:= mmccpu
 board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
diff --git a/arch/arm/boards/marvell-armada-xp-gp/Makefile b/arch/arm/boards/marvell-armada-xp-gp/Makefile
new file mode 100644
index 0000000..ea89963
--- /dev/null
+++ b/arch/arm/boards/marvell-armada-xp-gp/Makefile
@@ -0,0 +1,2 @@
+obj-y = marvell-armada-xp-gp.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/marvell-armada-xp-gp/config.h b/arch/arm/boards/marvell-armada-xp-gp/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/marvell-armada-xp-gp/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg b/arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg
new file mode 100644
index 0000000..05d398c
--- /dev/null
+++ b/arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg
@@ -0,0 +1,3 @@
+VERSION 1
+BOOT_FROM spi
+BINARY binary.0 0000005b 00000068
diff --git a/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
new file mode 100644
index 0000000..e9b2e30
--- /dev/null
+++ b/arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
@@ -0,0 +1,25 @@
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
+#include <mach/mvebu.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	mvebu_barebox_entry();
+}
diff --git a/arch/arm/boards/marvell-armada-xp-gp/marvell-armada-xp-gp.c b/arch/arm/boards/marvell-armada-xp-gp/marvell-armada-xp-gp.c
new file mode 100644
index 0000000..7351329
--- /dev/null
+++ b/arch/arm/boards/marvell-armada-xp-gp/marvell-armada-xp-gp.c
@@ -0,0 +1,25 @@
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
+#include <mach/mvebu.h>
+
+static int marvell_armada_xp_gp_console_init(void)
+{
+	return mvebu_add_uart0();
+}
+
+console_initcall(marvell_armada_xp_gp_console_init);
diff --git a/arch/arm/configs/marvell_armada_xp_gp_defconfig b/arch/arm/configs/marvell_armada_xp_gp_defconfig
new file mode 100644
index 0000000..5a7ef52
--- /dev/null
+++ b/arch/arm/configs/marvell_armada_xp_gp_defconfig
@@ -0,0 +1,10 @@
+CONFIG_ARCH_MVEBU=y
+CONFIG_ARCH_ARMADA_XP=y
+CONFIG_MACH_MARVELL_ARMADA_XP_GP=y
+CONFIG_AEABI=y
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_CLK=y
+CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 8489335..e553e2d 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -4,10 +4,12 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x2000000 if MACH_PLATHOME_OPENBLOCKS_AX3
 	default 0x2000000 if MACH_GLOBALSCALE_MIRABOX
+	default 0x2000000 if MACH_MARVELL_ARMADA_XP_GP
 
 config BOARDINFO
 	default "PlatHome OpenBlocks AX3" if MACH_PLATHOME_OPENBLOCKS_AX3
 	default "Globalscale Mirabox" if MACH_GLOBALSCALE_MIRABOX
+	default "Marvell Armada XP GP" if MACH_MARVELL_ARMADA_XP_GP
 
 choice
 	prompt "Marvell EBU Processor"
@@ -42,6 +44,9 @@ choice
 config MACH_PLATHOME_OPENBLOCKS_AX3
 	bool "PlatHome OpenBlocks AX3"
 
+config MACH_MARVELL_ARMADA_XP_GP
+	bool "Marvell Armada XP GP"
+
 endchoice
 
 endif # ARCH_ARMADA_XP
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaNXj-0002FD-74
 for barebox@lists.infradead.org; Thu, 09 May 2013 09:53:44 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Thu,  9 May 2013 11:52:49 +0200
Message-Id: <1368093171-17845-6-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH v3 5/7] arm: add basic support for Armada XP OpenBlocks AX3
 platform
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Lior Amsalem <alior@marvell.com>, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

The OpenBlocks AX3 platform is manufactured by PlatHome and uses the
MV78260 dual-core SoC from the Armada XP family.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/plathome-openblocks-ax3/Makefile   |    2 ++
 arch/arm/boards/plathome-openblocks-ax3/config.h   |    4 ++++
 .../boards/plathome-openblocks-ax3/kwbimage.cfg    |    3 +++
 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c |   25 ++++++++++++++++++++
 .../plathome-openblocks-ax3.c                      |   25 ++++++++++++++++++++
 arch/arm/configs/plathome_openblocks_ax3_defconfig |    9 +++++++
 arch/arm/mach-mvebu/Kconfig                        |    6 ++++-
 8 files changed, 74 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/Makefile
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/config.h
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
 create mode 100644 arch/arm/boards/plathome-openblocks-ax3/plathome-openblocks-ax3.c
 create mode 100644 arch/arm/configs/plathome_openblocks_ax3_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d9e0cf1..913dfed 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -143,6 +143,7 @@ board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= friendlyarm-mini2440
 board-$(CONFIG_MACH_MINI6410)			:= friendlyarm-mini6410
 board-$(CONFIG_MACH_TINY6410)			:= friendlyarm-tiny6410
+board-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	:= plathome-openblocks-ax3
 board-$(CONFIG_MACH_QIL_A9260)			:= qil-a9260
 board-$(CONFIG_MACH_TNY_A9260)			:= tny-a926x
 board-$(CONFIG_MACH_TNY_A9263)			:= tny-a926x
diff --git a/arch/arm/boards/plathome-openblocks-ax3/Makefile b/arch/arm/boards/plathome-openblocks-ax3/Makefile
new file mode 100644
index 0000000..91dc764
--- /dev/null
+++ b/arch/arm/boards/plathome-openblocks-ax3/Makefile
@@ -0,0 +1,2 @@
+obj-y = plathome-openblocks-ax3.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/plathome-openblocks-ax3/config.h b/arch/arm/boards/plathome-openblocks-ax3/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/plathome-openblocks-ax3/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
new file mode 100644
index 0000000..69fd1fd
--- /dev/null
+++ b/arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
@@ -0,0 +1,3 @@
+VERSION 1
+BOOT_FROM spi
+BINARY plathome-openblocks-ax3-binary.0 0000005b 00000068
diff --git a/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
new file mode 100644
index 0000000..e9b2e30
--- /dev/null
+++ b/arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
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
diff --git a/arch/arm/boards/plathome-openblocks-ax3/plathome-openblocks-ax3.c b/arch/arm/boards/plathome-openblocks-ax3/plathome-openblocks-ax3.c
new file mode 100644
index 0000000..9daf020
--- /dev/null
+++ b/arch/arm/boards/plathome-openblocks-ax3/plathome-openblocks-ax3.c
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
+static int plathome_openblocks_ax3_console_init(void)
+{
+	return mvebu_add_uart0();
+}
+
+console_initcall(plathome_openblocks_ax3_console_init);
diff --git a/arch/arm/configs/plathome_openblocks_ax3_defconfig b/arch/arm/configs/plathome_openblocks_ax3_defconfig
new file mode 100644
index 0000000..95449c9
--- /dev/null
+++ b/arch/arm/configs/plathome_openblocks_ax3_defconfig
@@ -0,0 +1,9 @@
+CONFIG_ARCH_MVEBU=y
+CONFIG_ARCH_ARMADA_XP=y
+CONFIG_AEABI=y
+CONFIG_DEBUG_LL=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_CLK=y
+CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 4cbe546..9196251 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -2,9 +2,10 @@ if ARCH_MVEBU
 
 config ARCH_TEXT_BASE
 	hex
+	default 0x2000000 if MACH_PLATHOME_OPENBLOCKS_AX3
 
 config BOARDINFO
-	default
+	default "PlatHome OpenBlocks AX3" if MACH_PLATHOME_OPENBLOCKS_AX3
 
 choice
 	prompt "Marvell EBU Processor"
@@ -33,6 +34,9 @@ if ARCH_ARMADA_XP
 choice
 	prompt "Armada XP Board Type"
 
+config MACH_PLATHOME_OPENBLOCKS_AX3
+	bool "PlatHome OpenBlocks AX3"
+
 endchoice
 
 endif # ARCH_ARMADA_XP
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

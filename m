Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R9HEC-0002PU-BY
	for barebox@lists.infradead.org; Thu, 29 Sep 2011 14:04:46 +0000
Received: by mail-bw0-f49.google.com with SMTP id t2so845753bka.36
	for <barebox@lists.infradead.org>; Thu, 29 Sep 2011 07:04:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 29 Sep 2011 18:04:33 +0400
Message-Id: <1317305076-3334-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
References: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH 3/6] ARM: Tegra: add Toshiba AC100 support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Makefile                        |    1 +
 arch/arm/boards/toshiba-ac100/Kconfig    |    9 ++++++
 arch/arm/boards/toshiba-ac100/Makefile   |    2 +
 arch/arm/boards/toshiba-ac100/board.c    |   34 +++++++++++++++++++++++
 arch/arm/boards/toshiba-ac100/config.h   |    5 +++
 arch/arm/boards/toshiba-ac100/serial.c   |   43 ++++++++++++++++++++++++++++++
 arch/arm/configs/toshiba_ac100_defconfig |   34 +++++++++++++++++++++++
 arch/arm/mach-tegra/Kconfig              |   12 ++++++++
 8 files changed, 140 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/toshiba-ac100/Kconfig
 create mode 100644 arch/arm/boards/toshiba-ac100/Makefile
 create mode 100644 arch/arm/boards/toshiba-ac100/board.c
 create mode 100644 arch/arm/boards/toshiba-ac100/config.h
 create mode 100644 arch/arm/boards/toshiba-ac100/serial.c
 create mode 100644 arch/arm/configs/toshiba_ac100_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1af73b9..6503fa2 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -111,6 +111,7 @@ board-$(CONFIG_MACH_USB_A9263)			:= usb-a926x
 board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
 board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
 board-$(CONFIG_MACH_TX25)			:= karo-tx25
+board-$(CONFIG_MACH_TOSHIBA_AC100)		:= toshiba-ac100
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/toshiba-ac100/Kconfig b/arch/arm/boards/toshiba-ac100/Kconfig
new file mode 100644
index 0000000..abba2cc
--- /dev/null
+++ b/arch/arm/boards/toshiba-ac100/Kconfig
@@ -0,0 +1,9 @@
+if MACH_TOSHIBA_AC100
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x01000000
+
+config BOARDINFO
+	default "Toshiba AC100 (Tegra2)"
+endif
diff --git a/arch/arm/boards/toshiba-ac100/Makefile b/arch/arm/boards/toshiba-ac100/Makefile
new file mode 100644
index 0000000..9e14763
--- /dev/null
+++ b/arch/arm/boards/toshiba-ac100/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
diff --git a/arch/arm/boards/toshiba-ac100/board.c b/arch/arm/boards/toshiba-ac100/board.c
new file mode 100644
index 0000000..e3a5eba
--- /dev/null
+++ b/arch/arm/boards/toshiba-ac100/board.c
@@ -0,0 +1,34 @@
+/*
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
+#include <types.h>
+#include <driver.h>
+#include <init.h>
+#include <asm/armlinux.h>
+#include <sizes.h>
+
+static int ac100_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x0, SZ_512M);
+
+	return 0;
+}
+mem_initcall(ac100_mem_init);
diff --git a/arch/arm/boards/toshiba-ac100/config.h b/arch/arm/boards/toshiba-ac100/config.h
new file mode 100644
index 0000000..25bb18f
--- /dev/null
+++ b/arch/arm/boards/toshiba-ac100/config.h
@@ -0,0 +1,5 @@
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/toshiba-ac100/serial.c b/arch/arm/boards/toshiba-ac100/serial.c
new file mode 100644
index 0000000..2ed0e39
--- /dev/null
+++ b/arch/arm/boards/toshiba-ac100/serial.c
@@ -0,0 +1,43 @@
+/*
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
+#include <types.h>
+#include <driver.h>
+#include <init.h>
+#include <ns16550.h>
+#include <asm/io.h>
+#include <asm/common.h>
+#include <mach/iomap.h>
+
+static struct NS16550_plat serial_plat = {
+	.clock = 0x75 * 115200 * 16 /* MODE_X_DIV */,
+	.shift = 2,
+};
+
+static int ac100_serial_console_init(void)
+{
+	/* Register the serial port */
+	add_ns16550_device(-1, TEGRA_UARTA_BASE, 8 << serial_plat.shift,
+			IORESOURCE_MEM_8BIT, &serial_plat);
+
+	return 0;
+}
+console_initcall(ac100_serial_console_init);
diff --git a/arch/arm/configs/toshiba_ac100_defconfig b/arch/arm/configs/toshiba_ac100_defconfig
new file mode 100644
index 0000000..7d4627a
--- /dev/null
+++ b/arch/arm/configs/toshiba_ac100_defconfig
@@ -0,0 +1,34 @@
+CONFIG_ARCH_TEGRA=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_TEXT_BASE=0x01000000
+CONFIG_BROKEN=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_PROMPT="toshiba ac100> "
+CONFIG_LONGHELP=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+# CONFIG_ERRNO_MESSAGES is not set
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_POLLER=y
+CONFIG_ENABLE_DEVICE_NOISE=y
+CONFIG_CMD_SLEEP=y
+# CONFIG_CMD_TRUE is not set
+# CONFIG_CMD_FALSE is not set
+# CONFIG_CMD_RM is not set
+# CONFIG_CMD_MKDIR is not set
+# CONFIG_CMD_RMDIR is not set
+# CONFIG_CMD_CP is not set
+# CONFIG_CMD_PWD is not set
+# CONFIG_CMD_MOUNT is not set
+# CONFIG_CMD_UMOUNT is not set
+# CONFIG_CMD_CLEAR is not set
+# CONFIG_CMD_ECHO is not set
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_MEMINFO=y
+# CONFIG_CMD_BOOTM is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+# CONFIG_SPI is not set
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index b0cc3cd..eda786b 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -4,4 +4,16 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x31fc0000
 
+choice
+	prompt "Tegra Board Type"
+
+config MACH_TOSHIBA_AC100
+	bool "Toshiba AC100"
+	help
+	  Say Y here if you are using Toshiba AC100 smartbook.
+
+endchoice
+
+source arch/arm/boards/toshiba-ac100/Kconfig
+
 endif
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

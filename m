Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RJmQ4-0006DE-R7
	for barebox@lists.infradead.org; Fri, 28 Oct 2011 13:24:26 +0000
Received: by bke11 with SMTP id 11so1504117bke.36
	for <barebox@lists.infradead.org>; Fri, 28 Oct 2011 06:24:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Oct 2011 17:24:10 +0400
Message-Id: <1319808253-16693-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1319808253-16693-1-git-send-email-antonynpavlov@gmail.com>
References: <1319808253-16693-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH V2 3/6] ARM: Tegra: add Toshiba AC100 support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Makefile                      |    1 +
 arch/arm/boards/toshiba-ac100/Kconfig  |    9 ++++++
 arch/arm/boards/toshiba-ac100/Makefile |    2 +
 arch/arm/boards/toshiba-ac100/board.c  |   34 +++++++++++++++++++++++++
 arch/arm/boards/toshiba-ac100/config.h |    5 +++
 arch/arm/boards/toshiba-ac100/serial.c |   43 ++++++++++++++++++++++++++++++++
 arch/arm/mach-tegra/Kconfig            |   12 +++++++++
 7 files changed, 106 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/toshiba-ac100/Kconfig
 create mode 100644 arch/arm/boards/toshiba-ac100/Makefile
 create mode 100644 arch/arm/boards/toshiba-ac100/board.c
 create mode 100644 arch/arm/boards/toshiba-ac100/config.h
 create mode 100644 arch/arm/boards/toshiba-ac100/serial.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 78a8a44..54d6b04 100644
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
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SYv4T-0007yY-R0
 for barebox@lists.infradead.org; Mon, 28 May 2012 08:12:59 +0000
Received: by lbbgg6 with SMTP id gg6so2338973lbb.36
 for <barebox@lists.infradead.org>; Mon, 28 May 2012 01:12:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 28 May 2012 12:12:33 +0400
Message-Id: <1338192756-3688-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
References: <1338192756-3688-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v20120528 2/5] ARM: Tegra: add Toshiba AC100 support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards.dox                        |    1 +
 arch/arm/Makefile                               |    1 +
 arch/arm/boards/toshiba-ac100/Kconfig           |    9 +++++
 arch/arm/boards/toshiba-ac100/Makefile          |    2 ++
 arch/arm/boards/toshiba-ac100/board.c           |   34 ++++++++++++++++++
 arch/arm/boards/toshiba-ac100/config.h          |    5 +++
 arch/arm/boards/toshiba-ac100/serial.c          |   43 +++++++++++++++++++++++
 arch/arm/boards/toshiba-ac100/toshiba-ac100.dox |   37 +++++++++++++++++++
 arch/arm/mach-tegra/Kconfig                     |   12 +++++++
 9 files changed, 144 insertions(+)
 create mode 100644 arch/arm/boards/toshiba-ac100/Kconfig
 create mode 100644 arch/arm/boards/toshiba-ac100/Makefile
 create mode 100644 arch/arm/boards/toshiba-ac100/board.c
 create mode 100644 arch/arm/boards/toshiba-ac100/config.h
 create mode 100644 arch/arm/boards/toshiba-ac100/serial.c
 create mode 100644 arch/arm/boards/toshiba-ac100/toshiba-ac100.dox

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 7fcba9c..5241f5b 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -37,6 +37,7 @@ ARM type:
 @li @subpage edb9315a
 @li @subpage board_cupid
 @li @subpage phycard-a-l1
+@li @subpage toshiba-ac100
 
 Blackfin type:
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index ddff124..2407b69 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -134,6 +134,7 @@ board-$(CONFIG_MACH_TX25)			:= karo-tx25
 board-$(CONFIG_MACH_TQMA53)			:= tqma53
 board-$(CONFIG_MACH_TX51)			:= karo-tx51
 board-$(CONFIG_MACH_MX6Q_ARM2)			:= freescale-mx6-arm2
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
diff --git a/arch/arm/boards/toshiba-ac100/toshiba-ac100.dox b/arch/arm/boards/toshiba-ac100/toshiba-ac100.dox
new file mode 100644
index 0000000..7c50f3c
--- /dev/null
+++ b/arch/arm/boards/toshiba-ac100/toshiba-ac100.dox
@@ -0,0 +1,37 @@
+/** @page toshiba-ac100 Toshiba AC100
+
+Toshiba AC100 is a Tegra2-based netbook.
+
+The netbook has
+@li NVidia Tegra 250 SoC;
+@li 512 MiB DDR2 RAM;
+@li 8 GiB internal e-MMC Flash Memory (some models have 32 GiB);
+@li RS232 serial interface (LV-TTL levels on the board!);
+@li SD card slot;
+@li 2xUSB interface (miniUSB-B and USB-A connectors);
+@li 10" LCD display (1024x600);
+@li HDMI-interface;
+@li touchpad and keyboard connected via I2C; the ENE KB926QF keyboard controller is used;
+@li web camera;
+@li some models have 3G-modem.
+
+U-Boot master branch is working on AC100, but there's no support for the keyboard or the display.
+
+barebox-toshiba-ac100 mini-howto:
+
+1. Connect to the netbook's UART (see http://pecourt.ovh.org/wiki-tegra/doku.php?id=hardware);
+
+2. Start U-Boot loader. See http://ac100.grandou.net/uboot and http://ac100.grandou.net/swarren_brain_dump for details.
+
+3. If you use U-Boot with turned on display support, then switch to serial console:
+@verbatim
+    Tegra2 (ac100) # setenv stdout serial
+@endverbatim
+
+4. Upload barebox.bin via Ymodem and start it:
+@verbatim
+    Tegra2 (ac100) # loady 0x01f00000
+    Tegra2 (ac100) # go 0x01f00000
+@endverbatim
+
+*/
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
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOvzh-0002gK-Gl
 for barebox@lists.infradead.org; Thu, 18 Oct 2012 19:43:04 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so5176039wgb.18
 for <barebox@lists.infradead.org>; Thu, 18 Oct 2012 12:43:01 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Thu, 18 Oct 2012 21:42:43 +0200
Message-Id: <1350589363-82697-6-git-send-email-carlo.caione@gmail.com>
In-Reply-To: <1350589363-82697-1-git-send-email-carlo.caione@gmail.com>
References: <1350589363-82697-1-git-send-email-carlo.caione@gmail.com>
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
Subject: [PATCH 5/5] Raspberry-Pi: add support (board)
To: barebox@lists.infradead.org

Tested-By: Jan Luebbe <jlu@pengutronix.de>
Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 arch/arm/Makefile                                  |  1 +
 arch/arm/boards/raspberry-pi/Makefile              |  1 +
 arch/arm/boards/raspberry-pi/config.h              |  4 ++
 .../arm/boards/raspberry-pi/env/init/bootargs-base |  8 ++++
 arch/arm/boards/raspberry-pi/env/init/hostname     |  8 ++++
 arch/arm/boards/raspberry-pi/rpi.c                 | 44 ++++++++++++++++++++++
 arch/arm/configs/rpi_defconfig                     | 41 ++++++++++++++++++++
 arch/arm/mach-bcm2835/Kconfig                      | 15 ++++++++
 8 files changed, 122 insertions(+)
 create mode 100644 arch/arm/boards/raspberry-pi/Makefile
 create mode 100644 arch/arm/boards/raspberry-pi/config.h
 create mode 100644 arch/arm/boards/raspberry-pi/env/init/bootargs-base
 create mode 100644 arch/arm/boards/raspberry-pi/env/init/hostname
 create mode 100644 arch/arm/boards/raspberry-pi/rpi.c
 create mode 100644 arch/arm/configs/rpi_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 3449fd7..ec9898c 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -114,6 +114,7 @@ board-$(CONFIG_MACH_PCM043)			:= pcm043
 board-$(CONFIG_MACH_PM9261)			:= pm9261
 board-$(CONFIG_MACH_PM9263)			:= pm9263
 board-$(CONFIG_MACH_PM9G45)			:= pm9g45
+board-$(CONFIG_MACH_RPI)			:= raspberry-pi
 board-$(CONFIG_MACH_SCB9328)			:= scb9328
 board-$(CONFIG_MACH_NESO)			:= guf-neso
 board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
diff --git a/arch/arm/boards/raspberry-pi/Makefile b/arch/arm/boards/raspberry-pi/Makefile
new file mode 100644
index 0000000..6ce5ede
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_MACH_RPI) += rpi.o
diff --git a/arch/arm/boards/raspberry-pi/config.h b/arch/arm/boards/raspberry-pi/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/raspberry-pi/env/init/bootargs-base b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
new file mode 100644
index 0000000..d869754
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/raspberry-pi/env/init/hostname b/arch/arm/boards/raspberry-pi/env/init/hostname
new file mode 100644
index 0000000..7e8f294
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/env/init/hostname
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+global.hostname=Raspberry-Pi
diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
new file mode 100644
index 0000000..3be95ae
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -0,0 +1,44 @@
+/*
+ * Copyright (C) 2009 Carlo Caione <carlo@carlocaione.org>
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
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+
+#include <mach/core.h>
+
+static int rpi_mem_init(void)
+{
+	bcm2835_add_device_sdram(0);
+	return 0;
+}
+mem_initcall(rpi_mem_init);
+
+static int rpi_console_init(void)
+{
+	bcm2835_register_uart();
+	return 0;
+}
+console_initcall(rpi_console_init);
+
+static int rpi_devices_init(void)
+{
+	armlinux_set_architecture(MACH_TYPE_BCM2708);
+	armlinux_set_bootparams((void *)(0x00000100));
+	return 0;
+}
+
+device_initcall(rpi_devices_init);
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
new file mode 100644
index 0000000..014e28c
--- /dev/null
+++ b/arch/arm/configs/rpi_defconfig
@@ -0,0 +1,41 @@
+CONFIG_ARCH_BCM2835=y
+CONFIG_GPIO_BCM2835=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PROMPT="R-Pi> "
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/raspberry-pi/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_GPIO=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_SHA1=y
+CONFIG_SHA256=y
diff --git a/arch/arm/mach-bcm2835/Kconfig b/arch/arm/mach-bcm2835/Kconfig
index c42fe1c..9d97aea 100644
--- a/arch/arm/mach-bcm2835/Kconfig
+++ b/arch/arm/mach-bcm2835/Kconfig
@@ -1,3 +1,18 @@
 if ARCH_BCM2835
 
+config ARCH_TEXT_BASE
+	hex
+	default 0x04000000 if MACH_RPI
+
+config BOARDINFO
+	default "RaspberryPi (BCM2835/ARM1176JZF-S)" if MACH_RPI
+
+choice
+	prompt "Broadcom Board type"
+
+config MACH_RPI
+	bool "RaspberryPi (BCM2835/ARM1176JZF-S)"
+
+endchoice
+
 endif
-- 
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

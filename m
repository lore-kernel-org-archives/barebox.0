Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Woob6-0006Uw-4e
 for barebox@lists.infradead.org; Mon, 26 May 2014 06:41:25 +0000
Received: by mail-lb0-f169.google.com with SMTP id s7so4056042lbd.28
 for <barebox@lists.infradead.org>; Sun, 25 May 2014 23:40:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 26 May 2014 10:40:50 +0400
Message-Id: <1401086450-1696-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: dlink-dir-320: switch to dt
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boards/dlink-dir-320/Makefile   |  1 -
 arch/mips/boards/dlink-dir-320/board.c    | 25 +++++++++---
 arch/mips/boards/dlink-dir-320/serial.c   | 43 ---------------------
 arch/mips/configs/dlink-dir-320_defconfig | 63 +++++++++++++++++--------------
 arch/mips/dts/dlink-dir-320.dts           | 32 ++++++++++++++++
 5 files changed, 86 insertions(+), 78 deletions(-)

diff --git a/arch/mips/boards/dlink-dir-320/Makefile b/arch/mips/boards/dlink-dir-320/Makefile
index 9e14763..dcfc293 100644
--- a/arch/mips/boards/dlink-dir-320/Makefile
+++ b/arch/mips/boards/dlink-dir-320/Makefile
@@ -1,2 +1 @@
 obj-y += board.o
-obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
diff --git a/arch/mips/boards/dlink-dir-320/board.c b/arch/mips/boards/dlink-dir-320/board.c
index 3eed6f0..d00e4fa 100644
--- a/arch/mips/boards/dlink-dir-320/board.c
+++ b/arch/mips/boards/dlink-dir-320/board.c
@@ -1,12 +1,27 @@
+/*
+ * Copyright (C) 2011, 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
+ */
+
 #include <common.h>
 #include <init.h>
-#include <sizes.h>
-#include <asm/memory.h>
 
-static int mem_init(void)
+static int dir320_console_init(void)
 {
-	mips_add_ram0(SZ_32M);
+	barebox_set_hostname("dir320");
 
 	return 0;
 }
-mem_initcall(mem_init);
+console_initcall(dir320_console_init);
diff --git a/arch/mips/boards/dlink-dir-320/serial.c b/arch/mips/boards/dlink-dir-320/serial.c
deleted file mode 100644
index eb87379..0000000
--- a/arch/mips/boards/dlink-dir-320/serial.c
+++ /dev/null
@@ -1,43 +0,0 @@
-/*
- * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- * See file CREDITS for list of people who contributed to this project.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <common.h>
-#include <types.h>
-#include <driver.h>
-#include <init.h>
-#include <ns16550.h>
-#include <mach/hardware.h>
-#include <io.h>
-#include <asm/common.h>
-
-static struct NS16550_plat serial_plat = {
-	.clock = 25804800,
-	.shift = 0,
-};
-
-static int dir320_console_init(void)
-{
-	barebox_set_model("D-Link DIR-320");
-	barebox_set_hostname("dir320");
-
-	/* Register the serial port */
-	add_ns16550_device(DEVICE_ID_DYNAMIC, DEBUG_LL_UART_ADDR, 8,
-			IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
-
-	return 0;
-}
-console_initcall(dir320_console_init);
diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
index 52ab295..ab29cf3 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -1,58 +1,63 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="dlink-dir-320"
 CONFIG_MACH_MIPS_BCM47XX=y
 CONFIG_STACK_SIZE=0x7000
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_POLLER=y
-CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA256SUM=y
-CONFIG_CMD_MTEST=y
+CONFIG_CMD_MM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_FS_CRAMFS=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
diff --git a/arch/mips/dts/dlink-dir-320.dts b/arch/mips/dts/dlink-dir-320.dts
new file mode 100644
index 0000000..bad41d9
--- /dev/null
+++ b/arch/mips/dts/dlink-dir-320.dts
@@ -0,0 +1,32 @@
+/dts-v1/;
+
+#include "skeleton.dtsi"
+
+/ {
+	model = "D-Link DIR-320";
+	compatible = "dlink,dir320";
+
+	memory {
+		reg = <0x00000000 0x2000000>;
+	};
+
+	soc {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "simple-bus";
+		device_type = "soc";
+		ranges;
+
+		serial0: serial@b8000300 {
+			compatible = "ns16550a";
+			reg = <0xb8000300 0x08>;
+			reg-shift = <0>;
+			clock-frequency = <25804800>;
+			status = "disabled";
+		};
+	};
+};
+
+&serial0 {
+	status = "okay";
+};
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp05.smtpout.orange.fr ([80.12.242.127]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y6ntg-0003OW-8L
 for barebox@lists.infradead.org; Thu, 01 Jan 2015 22:07:13 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu,  1 Jan 2015 23:06:34 +0100
Message-Id: <1420149994-992-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1420149994-992-1-git-send-email-robert.jarzmik@free.fr>
References: <1420149994-992-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 2/2] ARM: pxa: add the zylonite board
To: barebox@lists.infradead.org

Add the first pxa3xx board, zylonite. Zylonite is the Marvell System
Development Platform.

Several version are available, based on either :
 - PXA300
 - PXA310
 - PXA320

This version was only tested on a PXA310 based board, and uses :
 - the ethernet controller
 - the nand controller

These drivers seem to be common to all zylonite boards.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/Makefile                          |   1 +
 arch/arm/boards/zylonite/Makefile                 |   2 +
 arch/arm/boards/zylonite/board.c                  | 100 ++++++++++++++++++
 arch/arm/boards/zylonite/env/bin/init             |  25 +++++
 arch/arm/boards/zylonite/env/bin/mtd_env_override |   4 +
 arch/arm/boards/zylonite/env/config               |   6 ++
 arch/arm/boards/zylonite/lowlevel.c               |  10 ++
 arch/arm/boards/zylonite/zylonite.h               |  22 ++++
 arch/arm/configs/zylonite310_defconfig            | 117 ++++++++++++++++++++++
 arch/arm/mach-pxa/Kconfig                         |  13 ++-
 10 files changed, 299 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/zylonite/Makefile
 create mode 100644 arch/arm/boards/zylonite/board.c
 create mode 100644 arch/arm/boards/zylonite/env/bin/init
 create mode 100644 arch/arm/boards/zylonite/env/bin/mtd_env_override
 create mode 100644 arch/arm/boards/zylonite/env/config
 create mode 100644 arch/arm/boards/zylonite/lowlevel.c
 create mode 100644 arch/arm/boards/zylonite/zylonite.h
 create mode 100644 arch/arm/configs/zylonite310_defconfig

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 9961ca8..4111059 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -124,4 +124,5 @@ obj-$(CONFIG_MACH_VERSATILEPB)			+= versatile/
 obj-$(CONFIG_MACH_VEXPRESS)			+= vexpress/
 obj-$(CONFIG_MACH_VIRT2REAL)			+= virt2real/
 obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
+obj-$(CONFIG_MACH_ZYLONITE)			+= zylonite/
 obj-$(CONFIG_MACH_VARISCITE_MX6)		+= variscite-mx6/
diff --git a/arch/arm/boards/zylonite/Makefile b/arch/arm/boards/zylonite/Makefile
new file mode 100644
index 0000000..01c7a25
--- /dev/null
+++ b/arch/arm/boards/zylonite/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/zylonite/board.c b/arch/arm/boards/zylonite/board.c
new file mode 100644
index 0000000..d96f127
--- /dev/null
+++ b/arch/arm/boards/zylonite/board.c
@@ -0,0 +1,100 @@
+/*
+ * (C) 2014 Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+
+#include <driver.h>
+#include <environment.h>
+#include <fs.h>
+#include <gpio.h>
+#include <init.h>
+#include <partition.h>
+#include <led.h>
+#include <net/smc91111.h>
+#include <platform_data/mtd-nand-pxa3xx.h>
+#include <pwm.h>
+
+#include <mach/devices.h>
+#include <mach/mfp-pxa3xx.h>
+#include <mach/pxa-regs.h>
+
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <generated/mach-types.h>
+
+#include "zylonite.h"
+
+static struct smc91c111_pdata smsc91x_pdata;
+static struct pxa3xx_nand_platform_data nand_pdata = {
+	.keep_config = 0,
+	.flash_bbt = 1,
+};
+
+static mfp_cfg_t pxa310_mfp_cfg[] = {
+	/* FFUART */
+	MFP_CFG_LPM(GPIO99,  AF1, FLOAT),	/* GPIO99_UART1_RXD */
+	MFP_CFG_LPM(GPIO100, AF6, FLOAT),	/* GPIO100_UART1_RXD */
+	MFP_CFG_LPM(GPIO101, AF1, FLOAT),	/* GPIO101_UART1_CTS */
+	MFP_CFG_LPM(GPIO106, AF6, FLOAT),	/* GPIO106_UART1_CTS */
+
+	/* Ethernet */
+	MFP_CFG(GPIO2,  AF1),			/* GPIO2_nCS3 */
+};
+
+static int zylonite_devices_init(void)
+{
+	armlinux_set_architecture(MACH_TYPE_ZYLONITE);
+	pxa_add_uart((void *)0x40100000, 0);
+	add_generic_device("smc91c111", DEVICE_ID_DYNAMIC, NULL,
+			   0x14000300, 0x100000, IORESOURCE_MEM,
+			   &smsc91x_pdata);
+	add_generic_device("pxa3xx_nand", DEVICE_ID_DYNAMIC, NULL,
+			   0x43100000, 0x1000, IORESOURCE_MEM, &nand_pdata);
+	return 0;
+}
+device_initcall(zylonite_devices_init);
+
+static int zylonite_coredevice_init(void)
+{
+	barebox_set_model("Zylonite");
+	barebox_set_hostname("zylonite");
+
+	mfp_init();
+	pxa3xx_mfp_config(pxa310_mfp_cfg, ARRAY_SIZE(pxa310_mfp_cfg));
+	CKENA |= CKEN_NAND | CKEN_SMC | CKEN_FFUART | CKEN_GPIO;
+	/*
+	 * Configure Ethernet controller :
+	 * MCS1: setup VLIO on nCS3, with 15 DF_SCLK cycles (max) for hold,
+	 *       setup and assertion times
+	 * CSADRCFG3: DFI AA/D multiplexing VLLIO, addr split at bit <16>, full
+	 * latched mode, 7 DF_SCLK cycles (max) for nLUA and nLLA.
+	 */
+	MSC1 = 0x7ffc0000 | (MSC1 & 0x0000ffff);
+	CSADRCFG3 = 0x003e080b;
+
+	return 0;
+}
+coredevice_initcall(zylonite_coredevice_init);
+
+static int zylonite_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024);
+	return 0;
+}
+mem_initcall(zylonite_mem_init);
diff --git a/arch/arm/boards/zylonite/env/bin/init b/arch/arm/boards/zylonite/env/bin/init
new file mode 100644
index 0000000..a6bc087
--- /dev/null
+++ b/arch/arm/boards/zylonite/env/bin/init
@@ -0,0 +1,25 @@
+#!/bin/sh
+
+PATH=/env/bin
+export PATH
+
+. /env/config
+addpart /dev/nand0 $mtdparts
+usbserial -s "Zylonite usb gadget"
+
+# Phase1: check for MTD override
+mtd_env_override
+if [ $? = 0 ]; then
+    echo "Switching to custom environment"
+    /env/init
+    exit
+fi
+
+# Phase2: initiate network
+dhcp -H zylonite
+
+# Phase3: activate netconsole, broadcast everywhere
+netconsole.ip=255.255.255.255
+netconsole.active=ioe
+netconsole.port=6666
+
diff --git a/arch/arm/boards/zylonite/env/bin/mtd_env_override b/arch/arm/boards/zylonite/env/bin/mtd_env_override
new file mode 100644
index 0000000..6ea253a
--- /dev/null
+++ b/arch/arm/boards/zylonite/env/bin/mtd_env_override
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+loadenv /dev/nand0.barebox-env
+exit $?
diff --git a/arch/arm/boards/zylonite/env/config b/arch/arm/boards/zylonite/env/config
new file mode 100644
index 0000000..56ee90f
--- /dev/null
+++ b/arch/arm/boards/zylonite/env/config
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+autoboot_timeout=3
+
+mtdparts="128k@0(TIMH)ro,128k@128k(OBMI)ro,768k@256k(barebox),256k@1024k(barebox-env),12M@1280k(kernel),38016k@13568k(root)"
+bootargs="$bootargs mtdparts=pxa3xx-nand.0:$mtdparts ubi.mtd=6 rootfstype=ubifs root=ubi0:linux_root ro"
diff --git a/arch/arm/boards/zylonite/lowlevel.c b/arch/arm/boards/zylonite/lowlevel.c
new file mode 100644
index 0000000..ce22a79
--- /dev/null
+++ b/arch/arm/boards/zylonite/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	barebox_arm_entry(0x80000000, SZ_128M, NULL);
+}
diff --git a/arch/arm/boards/zylonite/zylonite.h b/arch/arm/boards/zylonite/zylonite.h
new file mode 100644
index 0000000..d39ab72
--- /dev/null
+++ b/arch/arm/boards/zylonite/zylonite.h
@@ -0,0 +1,22 @@
+/*
+ * (C) 2011 Robert Jarzmik <robert.jarzmik@free.fr>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
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
+#ifndef _ZYLONITE_H_
+#define _ZYLONITE_H_
+
+
+#endif /* _ZYLONITE_H */
diff --git a/arch/arm/configs/zylonite310_defconfig b/arch/arm/configs/zylonite310_defconfig
new file mode 100644
index 0000000..3449862
--- /dev/null
+++ b/arch/arm/configs/zylonite310_defconfig
@@ -0,0 +1,117 @@
+CONFIG_ARCH_PXA=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x100000
+CONFIG_ARCH_PXA3XX=y
+CONFIG_AEABI=y
+CONFIG_ARM_BOARD_APPEND_ATAG=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+# CONFIG_BANNER is not set
+CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x80000
+CONFIG_MALLOC_SIZE=0x1000000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MODULES=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="zylonite-barebox:"
+CONFIG_GLOB=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/zylonite/env"
+CONFIG_RESET_SOURCE=y
+CONFIG_DEFAULT_LOGLEVEL=8
+CONFIG_DEBUG_INFO=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_FLEXIBLE_BOOTARGS=y
+CONFIG_CMD_BOOT=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADS=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_SAVES=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_AUTOMOUNT=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_BASENAME=y
+CONFIG_CMD_CMP=y
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_READLINK=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_NET_CMD_IFUP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_2048=y
+CONFIG_CMD_LSMOD=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_PXA=y
+CONFIG_DRIVER_NET_SMC91111=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_PXA3XX=y
+CONFIG_MTD_UBI=y
+CONFIG_MCI=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_PWM=y
+# CONFIG_PINCTRL is not set
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_FS_UBIFS=y
+CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_BMP=y
+CONFIG_PNG=y
+CONFIG_SHA256=y
diff --git a/arch/arm/mach-pxa/Kconfig b/arch/arm/mach-pxa/Kconfig
index 3a728ed..63f148b 100644
--- a/arch/arm/mach-pxa/Kconfig
+++ b/arch/arm/mach-pxa/Kconfig
@@ -4,6 +4,7 @@ config ARCH_TEXT_BASE
 	hex
 	default 0xa0000000 if MACH_MIOA701
 	default 0xa3f00000 if MACH_PCM027
+	default 0x81000000 if MACH_ZYLONITE
 
 # ----------------------------------------------------------
 
@@ -64,9 +65,19 @@ endif
 
 if ARCH_PXA3XX
 
+config MACH_ZYLONITE
+       bool
+
 choice
 	prompt "PXA3xx Board Type"
-	bool
+
+config MACH_ZYLONITE_PXA310
+	bool "Zylonite board based on a PXA310 pxa SoC"
+	help
+	  Say Y here if you are using a Zylonite board, based
+	  on a PXA31x SoC.
+	select ARCH_PXA310
+	select MACH_ZYLONITE
 
 endchoice
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

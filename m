Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22c.google.com ([2a00:1450:400c:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WyoZr-0003WT-Gh
 for barebox@lists.infradead.org; Sun, 22 Jun 2014 20:41:28 +0000
Received: by mail-we0-f172.google.com with SMTP id u57so6023472wes.17
 for <barebox@lists.infradead.org>; Sun, 22 Jun 2014 13:41:04 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 22 Jun 2014 22:34:15 +0200
Message-Id: <1403469255-9019-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1403469255-9019-1-git-send-email-alex.aring@gmail.com>
References: <1403469255-9019-1-git-send-email-alex.aring@gmail.com>
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
Subject: [RFC 2/2] dns325: initial support for D-Link DNS-325
To: barebox@lists.infradead.org

This patch add a basic support for the D-Link DNS-325.

Currently only booting via uart with kwboot is supported. The barebox
kwboot utility doesn't work at the moment. Use kwboot utility from u-boot
instead.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
I got the kwbimage values from u-boot with change to work with the
barebox kwboot utility. There is also a bug in u-boot kwbimage file
which enables 256 MB on chip select 0 and 1. But the DNS-325 has 256
MB on chip select 0 only. This is fixed in this kwbimage file.

 arch/arm/Makefile                             |  1 +
 arch/arm/boards/dlink-dns325/Makefile         |  2 +
 arch/arm/boards/dlink-dns325/board.c          | 17 ++++++++
 arch/arm/boards/dlink-dns325/dlink-dns325.dox | 37 +++++++++++++++++
 arch/arm/boards/dlink-dns325/kwbimage.cfg     | 26 ++++++++++++
 arch/arm/boards/dlink-dns325/lowlevel.c       | 34 ++++++++++++++++
 arch/arm/configs/dlink_dns325_defconfig       | 58 +++++++++++++++++++++++++++
 arch/arm/dts/Makefile                         |  4 +-
 arch/arm/dts/kirkwood-dns325-bb.dts           | 19 +++++++++
 arch/arm/mach-mvebu/Kconfig                   |  4 ++
 10 files changed, 201 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/dlink-dns325/Makefile
 create mode 100644 arch/arm/boards/dlink-dns325/board.c
 create mode 100644 arch/arm/boards/dlink-dns325/dlink-dns325.dox
 create mode 100644 arch/arm/boards/dlink-dns325/kwbimage.cfg
 create mode 100644 arch/arm/boards/dlink-dns325/lowlevel.c
 create mode 100644 arch/arm/configs/dlink_dns325_defconfig
 create mode 100644 arch/arm/dts/kirkwood-dns325-bb.dts

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 64db73c..6c1e632 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -97,6 +97,7 @@ board-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox
 board-$(CONFIG_MACH_TINY210)			+= friendlyarm-tiny210
 board-$(CONFIG_MACH_TINY6410)			+= friendlyarm-tiny6410
 board-$(CONFIG_MACH_USI_TOPKICK)		+= usi-topkick
+board-$(CONFIG_MACH_DLINK_DNS325)		+= dlink-dns325
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/dlink-dns325/Makefile b/arch/arm/boards/dlink-dns325/Makefile
new file mode 100644
index 0000000..01c7a25
--- /dev/null
+++ b/arch/arm/boards/dlink-dns325/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/dlink-dns325/board.c b/arch/arm/boards/dlink-dns325/board.c
new file mode 100644
index 0000000..759bbfb
--- /dev/null
+++ b/arch/arm/boards/dlink-dns325/board.c
@@ -0,0 +1,17 @@
+/*
+ * Copyright (C) 2014
+ * Author: Alexander Aring <aar@pengutronix.de>
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
+/* empty */
diff --git a/arch/arm/boards/dlink-dns325/dlink-dns325.dox b/arch/arm/boards/dlink-dns325/dlink-dns325.dox
new file mode 100644
index 0000000..414b2e7
--- /dev/null
+++ b/arch/arm/boards/dlink-dns325/dlink-dns325.dox
@@ -0,0 +1,37 @@
+/** @page dlink-dns325 D-Link DNS-325 NAS
+
+The NAS has
+@li Kirkwood 88F6281-A1 SoC
+@li 256 MB SDRAM
+@li 128 MB NAND type SAMSUNG 946 K9F1G08U0B PCB0
+@li 2 SATA interfaces
+@li RS232 serial interface
+@li 1 USB interface
+@li 1 Gigabit Ethernet interface
+@li 1 Temp Sensor G751-2f
+@li 1 MCU Holtek HT48C06E for Power Managment
+@li LEDs & buttons
+
+The NAS doesn't support NAND right now.
+Only boot via uart with kwboot is supported.
+
+The kwboot utility of barebox doesn't work right now.
+Instead use the u-boot kwboot utility:
+
+@verbatim
+$UBOOT/tools/kwboot -p -b $BAREBOX/barebox.kwbuart -B115200 -t /dev/ttyUSB1
+@endverbatim
+
+You must change the "ttyUSB1" device with your correct serial device.
+
+Working devices are:
+@li RS232 serial interface
+@li Ethernet interface
+@li LEDs & buttons
+
+D-Link MR3020 links:
+@li http://www.dlink.com/de/de/home-solutions/share/network-attached-storage/dns-325-sharecenter-2-bay-network-storage-enclosure
+@li http://jamie.lentin.co.uk/devices/dlink-dns325/
+@li http://tsd.dlink.com.tw/gpl.asp
+
+*/
diff --git a/arch/arm/boards/dlink-dns325/kwbimage.cfg b/arch/arm/boards/dlink-dns325/kwbimage.cfg
new file mode 100644
index 0000000..627f3b2
--- /dev/null
+++ b/arch/arm/boards/dlink-dns325/kwbimage.cfg
@@ -0,0 +1,26 @@
+VERSION 0
+BOOT_FROM nand
+NAND_ECCMODE default
+NAND_PAGESZ 00000800
+DATA ffd100e0 1b1b1b9b
+DATA ffd01400 43000c30
+DATA ffd01404 39543000
+DATA ffd01408 22125451
+DATA ffd0140c 00000833
+DATA ffd01410 0000000c
+DATA ffd01414 00000000
+DATA ffd01418 00000000
+DATA ffd0141c 00000c52
+DATA ffd01420 00000040
+DATA ffd01424 0000f17f
+DATA ffd01428 00085520
+DATA ffd0147c 00008552
+DATA ffd01500 00000000
+DATA ffd01504 0ffffff1
+DATA ffd0150c 00000000
+DATA ffd01514 00000000
+DATA ffd0151c 00000000
+DATA ffd01494 00030000
+DATA ffd01498 00000000
+DATA ffd0149c 0000e803
+DATA ffd01480 00000001
diff --git a/arch/arm/boards/dlink-dns325/lowlevel.c b/arch/arm/boards/dlink-dns325/lowlevel.c
new file mode 100644
index 0000000..27c1feb
--- /dev/null
+++ b/arch/arm/boards/dlink-dns325/lowlevel.c
@@ -0,0 +1,34 @@
+/*
+ * Copyright (C) 2014
+ * Author: Alexander Aring <aar@pengutronix.de>
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
+#include <mach/lowlevel.h>
+
+extern char __dtb_kirkwood_dns325_bb_start[];
+
+ENTRY_FUNCTION(start_dlink_dns325, r0, r1, r2)
+{
+	void *fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = __dtb_kirkwood_dns325_bb_start - get_runtime_offset();
+
+	mvebu_barebox_entry(fdt);
+}
diff --git a/arch/arm/configs/dlink_dns325_defconfig b/arch/arm/configs/dlink_dns325_defconfig
new file mode 100644
index 0000000..f299771
--- /dev/null
+++ b/arch/arm/configs/dlink_dns325_defconfig
@@ -0,0 +1,58 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="kirkwood-dns325-bb"
+CONFIG_ARCH_MVEBU=y
+CONFIG_ARCH_KIRKWOOD=y
+CONFIG_MACH_DLINK_DNS325=y
+CONFIG_AEABI=y
+CONFIG_MMU=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEBUG_LL=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_2048=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_DRIVER_NET_ORION=y
+# CONFIG_SPI is not set
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_GPIO_ORION=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_FS_UIMAGEFS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index bb6c622..832a943 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -31,7 +31,8 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-var-custom.dtb \
 	imx6s-riotboard.dtb \
 	imx6q-phytec-pbaa03.dtb
-dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox-bb.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox-bb.dtb \
+	kirkwood-dns325-bb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3188-radxarock.dtb
 dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb
@@ -57,6 +58,7 @@ pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6s-phytec-pbab01.dtb.o imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
+pbl-$(CONFIG_MACH_DLINK_DNS325) += kirkwood-dns325-bb.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-$(CONFIG_MACH_PCA100) += imx27-phytec-phycard-s-rdk-bb.dtb.o
 pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
diff --git a/arch/arm/dts/kirkwood-dns325-bb.dts b/arch/arm/dts/kirkwood-dns325-bb.dts
new file mode 100644
index 0000000..bddff36
--- /dev/null
+++ b/arch/arm/dts/kirkwood-dns325-bb.dts
@@ -0,0 +1,19 @@
+/*
+ * Barebox specific DT overlay for D-Link DNS-325
+ */
+
+#include "arm/kirkwood-dns325.dts"
+
+/ {
+	gpio-leds {
+		white-power {
+			barebox,default-trigger = "heartbeat";
+		};
+		white-usb {
+			barebox,default-trigger = "net";
+		};
+		red-r_hdd {
+			barebox,default-trigger = "panic";
+		};
+	};
+};
diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 70c49ec..a5a4647 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -6,6 +6,7 @@ config ARCH_TEXT_BASE
 	default 0x2000000 if MACH_GLOBALSCALE_MIRABOX
 	default 0x2000000 if MACH_GLOBALSCALE_GURUPLUG
 	default 0x2000000 if MACH_USI_TOPKICK
+	default 0x2000000 if MACH_DLINK_DNS325
 	default 0x2000000 if MACH_MARVELL_ARMADA_XP_GP
 	default 0x2000000 if MACH_SOLIDRUN_CUBOX
 
@@ -101,6 +102,9 @@ config MACH_GLOBALSCALE_GURUPLUG
 config MACH_USI_TOPKICK
 	bool "Topkick"
 
+config MACH_DLINK_DNS325
+	bool "DNS-325"
+
 endchoice
 
 endif # ARCH_KIRKWOOD
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

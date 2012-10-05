Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.rzone.de ([2a01:238:20a:202:5300::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK2TE-0000c9-DA
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 07:37:21 +0000
From: Gregory Hermant <gregory.hermant@calao-systems.com>
Date: Fri,  5 Oct 2012 09:37:03 +0200
Message-Id: <1349422624-5278-1-git-send-email-gregory.hermant@calao-systems.com>
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
Subject: [PATCH 1/2] Add support for the Calao-systems HABA-KNX controllers
To: barebox@lists.infradead.org

Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Documentation/boards.dox                           |    2 +
 arch/arm/Makefile                                  |    2 +
 arch/arm/boards/haba-knx/Makefile                  |    1 +
 arch/arm/boards/haba-knx/config.h                  |    6 +
 arch/arm/boards/haba-knx/env/boot.d/10             |    1 +
 arch/arm/boards/haba-knx/env/boot.d/11             |    1 +
 arch/arm/boards/haba-knx/env/boot.d/12             |    1 +
 arch/arm/boards/haba-knx/env/boot.d/13             |    1 +
 arch/arm/boards/haba-knx/env/boot/nand-ubi         |   10 +
 arch/arm/boards/haba-knx/env/init/bootargs-base    |    8 +
 arch/arm/boards/haba-knx/env/init/general          |   15 ++
 arch/arm/boards/haba-knx/env/init/hostname         |    9 +
 arch/arm/boards/haba-knx/env/init/mtdparts-nand    |   11 +
 .../arm/boards/haba-knx/env/init/mtdparts-spiflash |   11 +
 arch/arm/boards/haba-knx/env/init/prompt           |    7 +
 arch/arm/boards/haba-knx/env/init/usb_device       |   49 ++++
 arch/arm/boards/haba-knx/env/network/eth0          |   17 ++
 arch/arm/boards/haba-knx/haba-knx-explorer.dox     |   43 ++++
 arch/arm/boards/haba-knx/haba-knx-lite.dox         |   42 ++++
 arch/arm/boards/haba-knx/init.c                    |  260 ++++++++++++++++++++
 arch/arm/configs/haba_knx_explorer_defconfig       |   81 ++++++
 arch/arm/configs/haba_knx_lite_defconfig           |   81 ++++++
 arch/arm/mach-at91/Kconfig                         |   14 ++
 23 files changed, 673 insertions(+)
 create mode 100644 arch/arm/boards/haba-knx/Makefile
 create mode 100644 arch/arm/boards/haba-knx/config.h
 create mode 100644 arch/arm/boards/haba-knx/env/boot.d/10
 create mode 100644 arch/arm/boards/haba-knx/env/boot.d/11
 create mode 100644 arch/arm/boards/haba-knx/env/boot.d/12
 create mode 100644 arch/arm/boards/haba-knx/env/boot.d/13
 create mode 100644 arch/arm/boards/haba-knx/env/boot/nand-ubi
 create mode 100644 arch/arm/boards/haba-knx/env/init/bootargs-base
 create mode 100644 arch/arm/boards/haba-knx/env/init/general
 create mode 100644 arch/arm/boards/haba-knx/env/init/hostname
 create mode 100644 arch/arm/boards/haba-knx/env/init/mtdparts-nand
 create mode 100644 arch/arm/boards/haba-knx/env/init/mtdparts-spiflash
 create mode 100644 arch/arm/boards/haba-knx/env/init/prompt
 create mode 100644 arch/arm/boards/haba-knx/env/init/usb_device
 create mode 100644 arch/arm/boards/haba-knx/env/network/eth0
 create mode 100644 arch/arm/boards/haba-knx/haba-knx-explorer.dox
 create mode 100644 arch/arm/boards/haba-knx/haba-knx-lite.dox
 create mode 100644 arch/arm/boards/haba-knx/init.c
 create mode 100644 arch/arm/configs/haba_knx_explorer_defconfig
 create mode 100644 arch/arm/configs/haba_knx_lite_defconfig

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 41de836..e859281 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -43,6 +43,8 @@ ARM type:
 @li @subpage tny-a9263
 @li @subpage usb-a9g20-lpw
 @li @subpage usb-a9263
+@li @subpage haba-knx-explorer
+@li @subpage haba-knx-lite
 
 Blackfin type:
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 855043a..34dcf48 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -90,6 +90,8 @@ board-$(CONFIG_MACH_EUKREA_CPUIMX35)		:= eukrea_cpuimx35
 board-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		:= eukrea_cpuimx51
 board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
 board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
+board-$(CONFIG_MACH_HABA_KNX_EXPLORER)		:= haba-knx
+board-$(CONFIG_MACH_HABA_KNX_LITE)		:= haba-knx
 board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
 board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
 board-$(CONFIG_MACH_IMX233_OLINUXINO)	:= imx233-olinuxino
diff --git a/arch/arm/boards/haba-knx/Makefile b/arch/arm/boards/haba-knx/Makefile
new file mode 100644
index 0000000..eb072c0
--- /dev/null
+++ b/arch/arm/boards/haba-knx/Makefile
@@ -0,0 +1 @@
+obj-y += init.o
diff --git a/arch/arm/boards/haba-knx/config.h b/arch/arm/boards/haba-knx/config.h
new file mode 100644
index 0000000..b91d9f5
--- /dev/null
+++ b/arch/arm/boards/haba-knx/config.h
@@ -0,0 +1,6 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#define AT91_MAIN_CLOCK		12000000	/* 12 MHz oscillator */
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/haba-knx/env/boot.d/10 b/arch/arm/boards/haba-knx/env/boot.d/10
new file mode 100644
index 0000000..d1b275c
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/boot.d/10
@@ -0,0 +1 @@
+../boot/nand-ubi
\ No newline at end of file
diff --git a/arch/arm/boards/haba-knx/env/boot.d/11 b/arch/arm/boards/haba-knx/env/boot.d/11
new file mode 100644
index 0000000..7b7f395
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/boot.d/11
@@ -0,0 +1 @@
+../boot/nfs
\ No newline at end of file
diff --git a/arch/arm/boards/haba-knx/env/boot.d/12 b/arch/arm/boards/haba-knx/env/boot.d/12
new file mode 100644
index 0000000..70b8ea3
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/boot.d/12
@@ -0,0 +1 @@
+../boot/net
\ No newline at end of file
diff --git a/arch/arm/boards/haba-knx/env/boot.d/13 b/arch/arm/boards/haba-knx/env/boot.d/13
new file mode 100644
index 0000000..b41f2fd
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/boot.d/13
@@ -0,0 +1 @@
+../boot/initrd
\ No newline at end of file
diff --git a/arch/arm/boards/haba-knx/env/boot/nand-ubi b/arch/arm/boards/haba-knx/env/boot/nand-ubi
new file mode 100644
index 0000000..5a338fe
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/boot/nand-ubi
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nand (UBI)"
+	exit
+fi
+
+global.bootm.image="/dev/nand0.kernel.bb"
+#global.bootm.oftree="/dev/nand0.oftree.bb"
+bootargs-root-ubi -r root -m nand0.rootfs
diff --git a/arch/arm/boards/haba-knx/env/init/bootargs-base b/arch/arm/boards/haba-knx/env/init/bootargs-base
new file mode 100644
index 0000000..8e588ad
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="console=ttyS0,115200"
diff --git a/arch/arm/boards/haba-knx/env/init/general b/arch/arm/boards/haba-knx/env/init/general
new file mode 100644
index 0000000..fef8738
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/init/general
@@ -0,0 +1,15 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "general config settings"
+	exit
+fi
+
+# user (used for network filenames)
+global.user=
+
+# timeout in seconds before the default boot entry is started
+global.autoboot_timeout=3
+
+# default boot entry (one of /env/boot/*)
+global.boot.default=net
diff --git a/arch/arm/boards/haba-knx/env/init/hostname b/arch/arm/boards/haba-knx/env/init/hostname
new file mode 100644
index 0000000..f2b2691
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/init/hostname
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+[ x$armlinux_architecture = x3141 ] && global.hostname=haba-explorer
+[ x$armlinux_architecture = x4310 ] && global.hostname=haba-lite
diff --git a/arch/arm/boards/haba-knx/env/init/mtdparts-nand b/arch/arm/boards/haba-knx/env/init/mtdparts-nand
new file mode 100644
index 0000000..99b5223
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/init/mtdparts-nand
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "NAND partitions"
+	exit
+fi
+
+kernelname=atmel_nand
+mtdparts="128k(nand0.at91bootstrap),256k(nand0.barebox)ro,128k(nand0.bareboxenv),128k(nand0.bareboxenv2),128k(nand0.oftree),4M(nand0.kernel),120M(nand0.rootfs),-(nand0.data)"
+
+mtdparts-add -b -d nand0 -k ${kernelname} -p "${mtdparts}"
diff --git a/arch/arm/boards/haba-knx/env/init/mtdparts-spiflash b/arch/arm/boards/haba-knx/env/init/mtdparts-spiflash
new file mode 100644
index 0000000..3819a23
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/init/mtdparts-spiflash
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "SPI partitions"
+	exit
+fi
+
+kernelname="spi0.0"
+mtdparts="16k(spi0.at91bootstrap)ro,256k(spi0.barebox)ro,112k(spi0.bareboxenv),-(spi0.data)"
+
+mtdparts-add -d spi0 -k ${kernelname} -p "${mtdparts}"
diff --git a/arch/arm/boards/haba-knx/env/init/prompt b/arch/arm/boards/haba-knx/env/init/prompt
new file mode 100644
index 0000000..9b71fbd
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/init/prompt
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+if [ ${global.allow_color} = "true" ]; then
+	export PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m\n# "
+else
+	export PS1="barebox@\h:\w\n# "
+fi
diff --git a/arch/arm/boards/haba-knx/env/init/usb_device b/arch/arm/boards/haba-knx/env/init/usb_device
new file mode 100644
index 0000000..0a6baf7
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/init/usb_device
@@ -0,0 +1,49 @@
+#!/bin/sh
+
+button_name="dfu_bp"
+button_wait=5
+
+product_id=0x1234
+vendor_id=0x4321
+
+dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+gpio_get_value ${dfu_button}
+if [ $? != 0 ]
+then
+	autoboot_timeout=16
+	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
+	usbserial
+	exit
+fi
+
+echo "${button_name} pressed detected wait ${button_wait}s"
+timeout -s -a ${button_wait}
+
+if [ $at91_udc0.vbus != 1 ]
+then
+	echo "No USB Device cable plugged, normal boot"
+	exit
+fi
+
+gpio_get_value ${dfu_button}
+if [ $? != 0 ]
+then
+	echo "${button_name} released, normal boot"
+	autoboot_timeout=16
+	echo "enable tty over USB Device, increase the boot delay to ${autoboot_timeout}s"
+	usbserial
+	exit
+fi
+
+echo ""
+echo "Start DFU Mode"
+echo ""
+
+dfu ${dfu_config} -P ${product_id} -V ${vendor_id}
diff --git a/arch/arm/boards/haba-knx/env/network/eth0 b/arch/arm/boards/haba-knx/env/network/eth0
new file mode 100644
index 0000000..efad827
--- /dev/null
+++ b/arch/arm/boards/haba-knx/env/network/eth0
@@ -0,0 +1,17 @@
+#!/bin/sh
+
+# ip setting (static/dhcp)
+ip=dhcp-barebox
+global.dhcp.vendor_id=barebox-${global.hostname}
+
+# static setup used if ip=static
+ipaddr=
+netmask=
+gateway=
+serverip=
+
+# MAC address if needed
+#ethaddr=xx:xx:xx:xx:xx:xx
+ethaddr=6a:63:73:00:00:34
+
+# put code to discover eth0 (i.e. 'usb') to /env/network/eth0-discover
diff --git a/arch/arm/boards/haba-knx/haba-knx-explorer.dox b/arch/arm/boards/haba-knx/haba-knx-explorer.dox
new file mode 100644
index 0000000..77e5b53
--- /dev/null
+++ b/arch/arm/boards/haba-knx/haba-knx-explorer.dox
@@ -0,0 +1,43 @@
+/**
+@page haba-knx-explorer Calao-systems HABA-KNX-EXPLORER
+
+@section haba-knx-explorer The DIN module
+
+http://www.calao-systems.com
+
+This Rail DIN module is based on an Atmel AT91SAM9G20 CPU. The module is shipped with:
+
+- 128MiB SDRAM
+- 256MiB NAND type Flash Memory
+- 2 port Ethernet switch 10/100M 
+- KNX/TP1 Interface
+- USB Host port 2.0 (FS)
+- USB device port (FS)
+- Micro SD socket (SPI bus)
+- 1x Isolated RS232
+- 2x Isolated RS485
+- 4x Isolated dry contacts
+- RTC with battery backup
+- JTAG connector
+- I2C connector
+- Reset push button
+- Expansion connector for daughter boards (GPS, WIFI/BT, GPRS, 3G, ZigBee, MBUS, ...)
+
+
+@section haba-knx-explorer-db Supported daughter boards
+
+Supported daughter boards are:
+- DAB-GPI2-CXX
+- DAB-GPS
+- DAB-GPRS
+- DAB-HSDPA
+- DAB-WLAN-BT
+- DAB-ZIGBEE
+- DAB-MBUS
+- DAB-KNX-RF
+
+@section haba-knx-explorer-help Help
+
+Click <a href="http://www.calao-systems.com/mediawiki/index.php?title=HABA-KNX-EXPLORER_Software">here</a>
+to find more information about how to use barebox on the HABA-KNX-EXPLORER controller.
+*/
diff --git a/arch/arm/boards/haba-knx/haba-knx-lite.dox b/arch/arm/boards/haba-knx/haba-knx-lite.dox
new file mode 100644
index 0000000..c338d33
--- /dev/null
+++ b/arch/arm/boards/haba-knx/haba-knx-lite.dox
@@ -0,0 +1,42 @@
+/**
+@page haba-knx-lite Calao-systems HABA-KNX-LITE
+
+@section haba-knx-lite The DIN module 
+
+http://www.calao-systems.com
+
+This Rail DIN module is based on an Atmel AT91SAM9G20 CPU. The module is shipped with:
+
+- 128MiB SDRAM (1.8V)
+- 256MiB NAND type Flash Memory (1.8V)
+- Ethernet 10/100M
+- KNX/TP1 Interface
+- USB Host port 2.0 (FS)
+- USB device port (FS)
+- Micro SD socket (SPI bus)
+- 2Mb SPI Flash 
+- RTC with battery backup
+- JTAG connector
+- I2C connector
+- DBGU serial port for console 
+- Reset and User push button
+- Expansion connector for daughter boards (GPS, WIFI/BT, GPRS, 3G, ZigBee, MBUS, ...)
+
+
+@section haba-knx-lite-db Supported daughter boards
+
+Supported daughter boards are:
+- DAB-GPI2-CXX
+- DAB-GPS
+- DAB-GPRS
+- DAB-HSDPA
+- DAB-WLAN-BT
+- DAB-ZIGBEE
+- DAB-MBUS
+- DAB-KNX-RF
+
+@section haba-knx-lite-help Help
+
+Click <a href="http://www.calao-systems.com/mediawiki/index.php?title=HABA-KNX-LITE_Software">here</a>
+to find more information about how to use barebox on the HABA-KNX-LITE controller.
+*/
diff --git a/arch/arm/boards/haba-knx/init.c b/arch/arm/boards/haba-knx/init.c
new file mode 100644
index 0000000..a96ce18
--- /dev/null
+++ b/arch/arm/boards/haba-knx/init.c
@@ -0,0 +1,260 @@
+/*
+ * Copyright (C) 2011-2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ * Copyright (C) 2012 Gregory Hermant <gregory.hermant@calao-systems.com>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <net.h>
+#include <init.h>
+#include <environment.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <io.h>
+#include <asm/hardware.h>
+#include <nand.h>
+#include <sizes.h>
+#include <linux/mtd/nand.h>
+#include <linux/clk.h>
+#include <mach/board.h>
+#include <mach/at91sam9_smc.h>
+#include <mach/sam9_smc.h>
+#include <gpio.h>
+#include <led.h>
+#include <mach/io.h>
+#include <mach/at91_pmc.h>
+#include <mach/at91_rstc.h>
+#include <gpio_keys.h>
+#include <readkey.h>
+#include <spi/flash.h>
+
+static void haba_knx_set_board_type(void)
+{
+	if (machine_is_haba_knx_lite())
+		armlinux_set_architecture(MACH_TYPE_HABA_KNX_LITE);
+	else
+		armlinux_set_architecture(MACH_TYPE_HABA_KNX_EXPLORER);
+}
+
+static struct atmel_nand_data nand_pdata = {
+	.ale		= 21,
+	.cle		= 22,
+/*	.det_pin	= ... not connected */
+	.rdy_pin	= AT91_PIN_PC13,
+	.enable_pin	= AT91_PIN_PC14,
+	.on_flash_bbt	= 1,
+};
+
+static struct sam9_smc_config haba_knx_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 4,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 4,
+	.nwe_pulse		= 4,
+
+	.read_cycle		= 7,
+	.write_cycle		= 7,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
+	.tdf_cycles		= 3,
+};
+
+static void haba_knx_add_device_nand(void)
+{
+	/* configure chip-select 3 (NAND) */
+	sam9_smc_configure(3, &haba_knx_nand_smc_config);
+	at91_add_device_nand(&nand_pdata);
+}
+
+static struct at91_ether_platform_data macb_pdata = {
+	.phy_addr	= -1,
+};
+
+static void haba_knx_phy_reset(void)
+{
+	unsigned long rstc;
+	struct clk *clk = clk_get(NULL, "macb_clk");
+
+	clk_enable(clk);
+
+	at91_set_gpio_input(AT91_PIN_PA14, 0);
+	at91_set_gpio_input(AT91_PIN_PA15, 0);
+
+	if (machine_is_haba_knx_lite()) {
+		at91_set_gpio_input(AT91_PIN_PA17, 0);
+		at91_set_gpio_input(AT91_PIN_PA18, 0);
+	} else {
+		at91_set_gpio_input(AT91_PIN_PA25, 0);
+		at91_set_gpio_input(AT91_PIN_PA26, 0);
+	}
+
+	rstc = at91_sys_read(AT91_RSTC_MR) & AT91_RSTC_ERSTL;
+
+	/* Need to reset PHY -> 500ms reset */
+	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
+				     (AT91_RSTC_ERSTL & (0x0d << 8)) |
+				     AT91_RSTC_URSTEN);
+
+	at91_sys_write(AT91_RSTC_CR, AT91_RSTC_KEY | AT91_RSTC_EXTRST);
+
+	/* Wait for end hardware reset */
+	while (!(at91_sys_read(AT91_RSTC_SR) & AT91_RSTC_NRSTL));
+
+	/* Restore NRST value */
+	at91_sys_write(AT91_RSTC_MR, AT91_RSTC_KEY |
+				     (rstc) |
+				     AT91_RSTC_URSTEN);
+}
+
+static void haba_knx_add_device_eth(void)
+{
+	if (machine_is_haba_knx_explorer())
+		macb_pdata.flags = AT91SAM_ETHER_MII | AT91SAM_ETX2_ETX3_ALTERNATIVE;
+	else
+		macb_pdata.flags = AT91SAM_ETHER_RMII;
+
+	at91_add_device_eth(0, &macb_pdata);
+}
+
+#if defined(CONFIG_MCI_ATMEL)
+static struct atmel_mci_platform_data __initdata haba_knx_mci_data = {
+	.bus_width	= 1,
+	.detect_pin	= AT91_PIN_PC11,
+};
+
+static void haba_knx_add_device_mci(void)
+{
+	if (machine_is_haba_knx_explorer())
+		at91_add_device_mci(0, &haba_knx_mci_data);
+}
+#else
+static void haba_knx_add_device_mci(void) {}
+#endif
+
+static struct at91_usbh_data ek_usbh_data = {
+	.ports		= 2,
+};
+
+/*
+ * USB Device port
+ */
+static struct at91_udc_data __initdata ek_udc_data = {
+	.vbus_pin	= AT91_PIN_PB2,
+	.pullup_pin	= 0,		/* pull-up driven by UDC */
+};
+
+static void __init ek_add_device_udc(void)
+{
+	if (machine_is_haba_knx_explorer())
+		ek_udc_data.vbus_pin = AT91_PIN_PC5;
+	at91_add_device_udc(&ek_udc_data);
+}
+
+static struct flash_platform_data spiflash = {
+	.name = "spi",
+};
+
+static struct spi_board_info haba_knx_spi_devices[] = {
+	{
+		.name = "m25p",
+		.max_speed_hz = 20 * 1000 * 1000,	/* max spi clock (SCK) speed in HZ */
+		.bus_num = 0,
+		.chip_select = 0,
+		.platform_data = &spiflash,
+	},
+};
+
+struct gpio_led led = {
+	.gpio = AT91_PIN_PA28,
+	.led = {
+		.name = "user_led",
+	},
+};
+
+static void __init ek_add_led(void)
+{
+	if (!machine_is_haba_knx_lite())
+		return;
+	at91_set_gpio_output(led.gpio, led.active_low);
+	led_gpio_register(&led);
+}
+
+static int haba_knx_mem_init(void)
+{
+	at91_add_device_sdram(0);
+
+	return 0;
+}
+mem_initcall(haba_knx_mem_init);
+
+static void __init ek_add_device_button(void)
+{
+	if (machine_is_haba_knx_lite()) {
+		at91_set_GPIO_periph(AT91_PIN_PC3, 1);	/* user push button, pull up enabled */
+		at91_set_deglitch(AT91_PIN_PC3, 1);
+		export_env_ull("dfu_button", AT91_PIN_PC3);
+	}
+}
+
+static int haba_knx_devices_init(void)
+{
+	haba_knx_add_device_nand();
+	haba_knx_phy_reset();
+	haba_knx_add_device_eth();
+	haba_knx_add_device_mci();
+	at91_add_device_usbh_ohci(&ek_usbh_data);
+	ek_add_device_udc();
+	ek_add_led();
+	ek_add_device_button();
+
+	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
+	haba_knx_set_board_type();
+
+	if (machine_is_haba_knx_lite()) {
+		spi_register_board_info(haba_knx_spi_devices,
+			ARRAY_SIZE(haba_knx_spi_devices));
+		at91_add_device_spi(0, NULL);
+	}
+
+	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
+	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
+	devfs_add_partition("nand0", SZ_128K, SZ_256K, DEVFS_PARTITION_FIXED, "self_raw");
+	dev_add_bb_dev("self_raw", "self0");
+	devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
+	dev_add_bb_dev("env_raw", "env0");
+	devfs_add_partition("nand0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw1");
+	dev_add_bb_dev("env_raw1", "env1");
+
+	return 0;
+}
+device_initcall(haba_knx_devices_init);
+
+static int haba_knx_console_init(void)
+{
+	at91_register_uart(0, 0);
+
+	return 0;
+}
+console_initcall(haba_knx_console_init);
diff --git a/arch/arm/configs/haba_knx_explorer_defconfig b/arch/arm/configs/haba_knx_explorer_defconfig
new file mode 100644
index 0000000..849dcf9
--- /dev/null
+++ b/arch/arm/configs/haba_knx_explorer_defconfig
@@ -0,0 +1,81 @@
+CONFIG_ARCH_AT91SAM9G20=y
+CONFIG_MACH_HABA_KNX_EXPLORER=y
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="HABA-EXPLORER:"
+CONFIG_LONGHELP=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/haba-knx/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
diff --git a/arch/arm/configs/haba_knx_lite_defconfig b/arch/arm/configs/haba_knx_lite_defconfig
new file mode 100644
index 0000000..7665d97
--- /dev/null
+++ b/arch/arm/configs/haba_knx_lite_defconfig
@@ -0,0 +1,81 @@
+CONFIG_ARCH_AT91SAM9G20=y
+CONFIG_MACH_HABA_KNX_LITE=y
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
+CONFIG_PROMPT="HABA-LITE:"
+CONFIG_LONGHELP=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/haba-knx/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 30225fa..4df6096 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -26,6 +26,8 @@ config BOARDINFO
 	default "Calao TNY-A9263" if MACH_TNY_A9263
 	default "Calao TNY-A9G20" if MACH_TNY_A9G20
 	default "Calao QIL-A9260" if MACH_QIL_A9260
+	default "Calao HABA-KNX-LITE" if MACH_HABA_KNX_LITE
+	default "Calao HABA-KNX-EXPLORER" if MACH_HABA_KNX_EXPLORER
 
 config HAVE_NAND_ATMEL_BUSWIDTH_16
 	bool
@@ -244,6 +246,18 @@ config MACH_DSS11
 	  Select this if you are using aizo dSS11
 	  that embeds only one SD/MMC slot.
 
+config MACH_HABA_KNX_LITE
+	bool "CALAO HABA-KNX-LITE"
+	help
+	  Select this if you are using a Calao Systems HABA-KNX-LITE.
+	  <http://www.calao-systems.com>
+
+config MACH_HABA_KNX_EXPLORER
+	bool "CALAO HABA-KNX-EXPLORER"
+	help
+	  Select this if you are using a Calao Systems HABA-KNX-EXPLORER.
+	  <http://www.calao-systems.com>
+
 endchoice
 
 endif
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

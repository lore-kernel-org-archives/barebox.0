Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cs8wU-00022E-DE
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 14:14:57 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 26 Mar 2017 16:13:47 +0200
Message-Id: <1490537627-14865-3-git-send-email-akurz@blala.de>
In-Reply-To: <1490537627-14865-1-git-send-email-akurz@blala.de>
References: <1490537627-14865-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 3/3] ARM i.MX50: Add support for i.MX50 based Amazon Kindle
 e-book readers
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The Kindle Model No. D01100 (Kindle Wi-Fi), D01200 (Kindle Touch)
and EY21 (Kindle Paperwhite) are refered as the Kindle 4th and 5th generation.
Those models are based on an i.MX50 SoC and use LPDDR1 or LPDDR2 Memory.

The devices boot in internal boot mode from a build-in eMMC, alternatively
some devices may be set into USB-downloader mode by pressing a specific key
at startup.

Add support for the i.MX50 based Kindle device and make barebox a drop-in
replacement for the factory shipped u-boot image.

Notable features:
- Support for eMMC, USB, UART, I2C, SPI and Keys (except keyboard).
- LPDDR1 and LPDDR2 setup is done via DCD, the same imximage may be used
  for USB-startup and for installation.
- Support for vendor specific ATAGs that are required for the Kindle-System.
- usbserial barebox console access by pressing Select button at startup,
  alternatively full console support on connector J14.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 Documentation/boards/imx/amazon-kindle-mx50.rst    |  58 +++++
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/kindle-mx50/Makefile               |   4 +
 arch/arm/boards/kindle-mx50/board.c                | 114 +++++++++
 .../defaultenv-kindle-mx50/boot/mmc_kernel         |  15 ++
 .../kindle-mx50/defaultenv-kindle-mx50/init/disk   |   5 +
 .../defaultenv-kindle-mx50/init/serials            |  22 ++
 .../defaultenv-kindle-mx50/init/usbconsole         |  21 ++
 .../defaultenv-kindle-mx50/nv/autoboot_timeout     |   1 +
 .../defaultenv-kindle-mx50/nv/boot.default         |   1 +
 .../nv/linux.bootargs.console                      |   1 +
 .../nv/linux.bootargs.consoleblank                 |   1 +
 .../defaultenv-kindle-mx50/nv/linux.bootargs.eink  |   1 +
 .../kindle-mx50/flash-header-kindle-lpddr1.imxcfg  | 166 ++++++++++++
 .../kindle-mx50/flash-header-kindle-lpddr2.imxcfg  | 176 +++++++++++++
 arch/arm/boards/kindle-mx50/lowlevel.c             |  50 ++++
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx50-kindle-common.dtsi              | 285 +++++++++++++++++++++
 arch/arm/dts/imx50-kindle-d01100.dts               |  71 +++++
 arch/arm/dts/imx50-kindle-d01200.dts               |  86 +++++++
 arch/arm/dts/imx50-kindle-ey21.dts                 |  66 +++++
 arch/arm/mach-imx/Kconfig                          |  14 +
 images/Makefile.imx                                |  16 ++
 24 files changed, 1177 insertions(+)
 create mode 100644 Documentation/boards/imx/amazon-kindle-mx50.rst
 create mode 100644 arch/arm/boards/kindle-mx50/Makefile
 create mode 100644 arch/arm/boards/kindle-mx50/board.c
 create mode 100644 arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
 create mode 100644 arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/disk
 create mode 100644 arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/serials
 create mode 100644 arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/usbconsole
 create mode 100644 arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/autoboot_timeout
 create mode 100644 arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/boot.default
 create mode 100644 arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.console
 create mode 100644 arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.consoleblank
 create mode 100644 arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.eink
 create mode 100644 arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
 create mode 100644 arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
 create mode 100644 arch/arm/boards/kindle-mx50/lowlevel.c
 create mode 100644 arch/arm/dts/imx50-kindle-common.dtsi
 create mode 100644 arch/arm/dts/imx50-kindle-d01100.dts
 create mode 100644 arch/arm/dts/imx50-kindle-d01200.dts
 create mode 100644 arch/arm/dts/imx50-kindle-ey21.dts

diff --git a/Documentation/boards/imx/amazon-kindle-mx50.rst b/Documentation/boards/imx/amazon-kindle-mx50.rst
new file mode 100644
index 0000000..c496fa9
--- /dev/null
+++ b/Documentation/boards/imx/amazon-kindle-mx50.rst
@@ -0,0 +1,58 @@
+Amazon Kindle 4/5 Model No. D01100, D01200 and EY21
+===================================================
+
+The Kindle Model No. D01100 (Kindle Wi-Fi), D01200 (Kindle Touch)
+and EY21 (Paperwhite) are refered as the Kindle 4th and 5th generation.
+Those e-book readers share a common set of hardware:
+
+* a Freescale i.MX50 SOC
+* 2 or 4GiB eMMC
+* a MC13892 PMIC
+
+The older readers D01100 and D01200 use 256MiB of LPDDR1,
+while the newer EY21 uses 256MiB of LPDDR2.
+
+The devices boot up in internal boot mode from an eMMC boot partition and
+are shipped with a vendor modified u-boot imximage based on u-boot v2009.08.
+
+To upload and run a new bootloader the older devices can be put into
+USB-downloader mode by the SOC microcode when a specific key is pressed during
+startup:
+* the fiveway down button on the model D01100
+* the home button on model D01200
+A new USB device "NS Blank CODEX" should appear, barebox may be uploaded using
+$ scripts/imx/imx-usb-loader barebox-kindle-d01100.img
+$ scripts/imx/imx-usb-loader barebox-kindle-d01200.img
+$ scripts/imx/imx-usb-loader barebox-kindle-ey21.img
+Hint: keep the select button pressed down to get the barebox USB console.
+
+Barebox may be used as drop-in replacement for the shipped bootloader, when
+the imximg fits into 258048 bytes.
+When installing the barebox imximg on the eMMC take care not to overwrite
+the vendor supplied serial numbers stored on the eMMC.
+e.g. for the D01100 just write the imx-header and the application section:
+loady -t usbserial
+memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.imx_header 1024 0 2048
+memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.self 4096 0 253952
+
+Note: a USB serial ACM console will be launched by a barebox init script
+when
+* the cursor select key is pressed during startup of model D01100
+* the home button is pressed within a second after startup of model D01200.
+  If you press the home button during startup, you will enter USB boot mode.
+* the EY21 has no keys to press, a USB console will be launched for 10s.
+
+This device is battery-powered and there is no way to switch the device off.
+When the device is inactive, the kindle software will first reduce the
+power consumption to a few milliamps of battery power, after some minutes
+the power consumption is further reduced to about 550 microamps. Switching
+on iomux pullups may significantly reduce your standby-time.
+
+Hints to reduce the build image size.
+Note that a drop-in replacement barebox imximage must not exceed 258048 bytes
+since the space behind it is in use. Hence, don't build in drivers and FS
+that are not required, e.g.:
+  NET, DISK_AHCI, DISK_INTF_PLATFORM_IDE, DISK_ATA, VIDEO, PWM, LED,
+  USB_STORAGE, USB_ULPI, NAND, MTD_UBI, FS_UBIFS, MFD_MC34704, MFD_MC9SDZ60,
+  MFD_STMPE, EEPROM_AT25, EEPROM_AT24, KEYBOARD_GPIO, PARTITION_DISK_EFI
+Further select IMAGE_COMPRESSION_XZKERN
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 250ccb8..0f08ebb 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -118,6 +118,7 @@ obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
+obj-$(CONFIG_MACH_KINDLE_MX50)			+= kindle-mx50/
 obj-$(CONFIG_MACH_TORADEX_COLIBRI_T20)		+= toradex-colibri-t20/
 obj-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100/
 obj-$(CONFIG_MACH_TQMA53)			+= tqma53/
diff --git a/arch/arm/boards/kindle-mx50/Makefile b/arch/arm/boards/kindle-mx50/Makefile
new file mode 100644
index 0000000..76ad17a
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/Makefile
@@ -0,0 +1,4 @@
+obj-y += board.o flash-header-kindle-lpddr1.dcd.o flash-header-kindle-lpddr2.dcd.o
+extra-y += flash-header-kindle-lpddr1.dcd.S flash-header-kindle-lpddr1.dcd flash-header-kindle-lpddr2.dcd.S flash-header-kindle-lpddr2.dcd
+lwl-y += lowlevel.o
+bbenv-y += defaultenv-kindle-mx50
diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
new file mode 100644
index 0000000..afdf3cd
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/board.c
@@ -0,0 +1,114 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ * Copyright (C) 2017 Alexander Kurz <akurz@blala.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <envfs.h>
+#include <environment.h>
+#include <init.h>
+#include <io.h>
+#include <magicvar.h>
+#include <partition.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <linux/sizes.h>
+#include <usb/fsl_usb2.h>
+#include <mach/generic.h>
+#include <mach/imx50-regs.h>
+#include <mach/imx5.h>
+#include <mach/revision.h>
+
+/* 16 byte id for serial number */
+#define ATAG_SERIAL16   0x5441000a
+/* 16 byte id for a board revision */
+#define ATAG_REVISION16 0x5441000b
+
+struct char16_tag {
+	char data[16];
+};
+
+static struct tag *setup_16char_tag(struct tag *params, uint32_t tag,
+				    const char *value)
+{
+	struct char16_tag *target;
+	target = ((void *) params) + sizeof(struct tag_header);
+	params->hdr.tag = tag;
+	params->hdr.size = tag_size(char16_tag);
+	memcpy(target->data, value, sizeof target->data);
+	return tag_next(params);
+}
+
+static const char *get_env_16char_tag(const char *tag)
+{
+	static const char *default16 = "0000000000000000";
+	const char *value;
+	value = getenv(tag);
+	if (!value) {
+		printf("env var %s not found, using default\n", tag);
+		return default16;
+	}
+	if (strlen(value) != 16) {
+		printf("env var %s: expecting 16 characters, using default\n",
+			tag);
+		return default16;
+	}
+	printf("%s: %s\n", tag, value);
+	return value;
+}
+
+BAREBOX_MAGICVAR_NAMED(global_atags_serial16, global.board.serial16,
+	"Pass the kindle Serial as vendor-specific ATAG to linux");
+BAREBOX_MAGICVAR_NAMED(global_atags_revision16, global.board.revision16,
+	"Pass the kindle BoardId as vendor-specific ATAG to linux");
+
+/* The Kindle Kernel expects two custom ATAGs, ATAG_REVISION16 describing
+ * the board and ATAG_SERIAL16 to identify the individual device.
+ */
+struct tag *kindle_mx50_append_atags(struct tag *params)
+{
+	params = setup_16char_tag(params, ATAG_SERIAL16,
+				get_env_16char_tag("global.board.serial16"));
+	params = setup_16char_tag(params, ATAG_REVISION16,
+				get_env_16char_tag("global.board.revision16"));
+	return params;
+}
+
+static int kindle_mx50_mem_init(void)
+{
+	arm_add_mem_device("ram0", MX50_CSD0_BASE_ADDR, SZ_256M);
+	return 0;
+}
+mem_initcall(kindle_mx50_mem_init);
+
+static int kindle_mx50_devices_init(void)
+{
+	/* Compatibility ATAGs for original kernel */
+	armlinux_set_atag_appender(kindle_mx50_append_atags);
+
+	armlinux_set_revision(0x50000 | imx_silicon_revision());
+
+	defaultenv_append_directory(defaultenv_kindle_mx50);
+
+	return 0;
+}
+device_initcall(kindle_mx50_devices_init);
+
+static int kindle_mx50_postcore_init(void)
+{
+	imx50_init_lowlevel(800);
+
+	return 0;
+}
+postcore_initcall(kindle_mx50_postcore_init);
diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
new file mode 100644
index 0000000..a43ee0c
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/boot/mmc_kernel
@@ -0,0 +1,15 @@
+#!/bin/sh
+# Boot the Amazon factory-shipped kernel uimage stored on
+# the eMMC at CONFIG_MMC_BOOTFLASH_ADDR 0x41000
+
+# Purge the OF tree to enable passing of ATAGs
+oftree -f
+
+# The same machine type introduced with freescale ENGR00124359
+armlinux_architecture=2955
+
+armlinux_system_serial="$global.board.ocotp_serial"
+
+global linux.bootargs.dyn.root="root=/dev/mmcblk0p1 rootwait ro"
+
+bootm -c /dev/disk0.kernel
diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/disk b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/disk
new file mode 100644
index 0000000..92c783d
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/disk
@@ -0,0 +1,5 @@
+#! /bin/sh
+# probe mci0 first (eMMC at SD3)
+mci0.probe=1
+addpart /dev/disk0.boot0 0x800@0x400(imx_header),0x3e000@0x1000(self),0x1400@0x3f000(userdata)
+addpart /dev/disk0 0xe00000@0x41000(kernel),0xe00000@0xe41000(diags_kernel)
diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/serials b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/serials
new file mode 100644
index 0000000..94854c9
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/serials
@@ -0,0 +1,22 @@
+#!/bin/sh
+
+global board.serial16
+global board.revision16
+global board.mac
+
+# 16-byte alphanumeric containing the serial number
+# SN is the first 16 bytes before the bootloader
+if test -b /dev/disk0.boot0.userdata; then
+	if memcpy -s /dev/disk0.boot0.userdata -d tmp_serial16 -b 0 0 16; then
+		readf tmp_serial16 global.board.serial16
+	fi
+	if memcpy -s /dev/disk0.boot0.userdata -d tmp_revision16 -b 96 0 16; then
+		readf tmp_revision16 global.board.revision16
+	fi
+	if memcpy -s /dev/disk0.boot0.userdata -d tmp_mac -b 48 0 16; then
+		readf tmp_mac global.board.mac
+	fi
+fi
+[ -f tmp_serial16 ] && rm tmp_serial16
+[ -f tmp_revision16 ] && rm tmp_revision16
+[ -f tmp_mac ] && rm tmp_mac
diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/usbconsole b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/usbconsole
new file mode 100644
index 0000000..4fe1211
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/init/usbconsole
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+if test "$global.model" = "Amazon Kindle D01100"; then
+	if gpio_get_value 18; then; else
+		usbserial
+		global.autoboot_timeout=60
+	fi
+fi
+
+if test "$global.model" = "Amazon Kindle D01200"; then
+	sleep 5
+	if gpio_get_value 0; then
+		usbserial
+		global.autoboot_timeout=60
+	fi
+fi
+
+if test "$global.model" = "Amazon Kindle EY21"; then
+	usbserial
+	global.autoboot_timeout=10
+fi
diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/autoboot_timeout b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/autoboot_timeout
new file mode 100644
index 0000000..00750ed
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/autoboot_timeout
@@ -0,0 +1 @@
+3
diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/boot.default b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/boot.default
new file mode 100644
index 0000000..3118b7a
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/boot.default
@@ -0,0 +1 @@
+mmc_kernel
diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.console b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.console
new file mode 100644
index 0000000..d775310
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.console
@@ -0,0 +1 @@
+console=ttymxc0,115200
diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.consoleblank b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.consoleblank
new file mode 100644
index 0000000..573541a
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.consoleblank
@@ -0,0 +1 @@
+0
diff --git a/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.eink b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.eink
new file mode 100644
index 0000000..2ff3618
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/defaultenv-kindle-mx50/nv/linux.bootargs.eink
@@ -0,0 +1 @@
+fslepdc video=mxcepdcfb:E60,bpp=8
diff --git a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
new file mode 100644
index 0000000..e6b6098
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
@@ -0,0 +1,166 @@
+# DCD i.MX50 SoC setup using 256MiB LPDDR1
+# Copyright (C) 2017 Alexander Kurz <akurz@blala.de>
+#
+# Initial DCD setup according to Freescale ENGR00124359
+# with adaption for LPDDR1 ENGR00025557
+# Copyright (C) 2010 Freescale Semiconductor, Inc.
+
+soc imx50
+loadaddr 0x70020000
+dcdofs 0x400
+
+# Switch pll1_sw_clk to step_clk
+wm 32 0x53fd400c 0x00000004
+# Setup PLL1 to 800MHz
+wm 32 0x63f80000 0x00001232
+wm 32 0x63f80004 0x00000002
+wm 32 0x63f80008 0x00000080
+wm 32 0x63f8000c 0x00000002
+wm 32 0x63f80010 0x00000001
+wm 32 0x63f8001c 0x00000080
+wm 32 0x63f80020 0x00000002
+wm 32 0x63f80024 0x00000001
+wm 32 0x63f80000 0x00001232
+check 8 while_any_bit_clear 0x63f80000 0x01
+# Switch pll1_sw_clk to pll1
+wm 32 0x53fd400c 0x00000000
+
+# CGR
+wm 32 0x53fd4068 0xffffffff
+wm 32 0x53fd406c 0xffffffff
+wm 32 0x53fd4070 0xffffffff
+wm 32 0x53fd4074 0xffffffff
+wm 32 0x53fd4078 0xffffffff
+wm 32 0x53fd407c 0xffffffff
+wm 32 0x53fd4080 0xffffffff
+wm 32 0x53fd4084 0xffffffff
+wm 32 0x53FD4098 0x80000004
+
+# CCM DDR div 4 / 200MHz
+wm 32 0x53fd4098 0x80000004
+check 32 while_all_bits_set 0x53fd408c 0x00000004
+
+# IOMUX
+wm 32 0x53fa8490 0x00180000
+wm 32 0x53fa8494 0x00180000
+wm 32 0x53fa86ac 0x00000000
+wm 32 0x53fa8668 0x00180000
+wm 32 0x53fa866c 0x00000000
+wm 32 0x53fa8670 0x00000000
+wm 32 0x53fa868c 0x00000000
+wm 32 0x53fa8698 0x00180000
+wm 32 0x53fa86a0 0x00180000
+wm 32 0x53fa86a4 0x00180000
+wm 32 0x53fa86a8 0x00180000
+wm 32 0x53fa86b4 0x00180000
+
+# set SW_PAD_CTL_GRP_NANDF to Low output voltage
+wm 32 0x53fa86c0 0x2000
+
+wm 32 0x53fa8498 0x00180200
+wm 32 0x53fa849c 0x00180200
+wm 32 0x53fa84c8 0x00180000
+wm 32 0x53fa84cc 0x00180080
+wm 32 0x53fa84f0 0x00180000
+wm 32 0x53fa84f4 0x00180080
+wm 32 0x53fa84fc 0x00180080
+wm 32 0x53fa8500 0x00180000
+wm 32 0x53fa8524 0x00180080
+wm 32 0x53fa8528 0x00180000
+
+# ZQ Load
+wm 32 0x1400012C 0x00000817
+wm 32 0x14000128 0x09180000
+wm 32 0x14000124 0x00310000
+wm 32 0x14000124 0x00200000
+wm 32 0x14000128 0x09180010
+wm 32 0x14000124 0x00310000
+wm 32 0x14000124 0x00200000
+
+# DRAM_CTL
+wm 32 0x14000000 0x00000100
+wm 32 0x14000008 0x00009c40
+wm 32 0x14000014 0x02000000
+wm 32 0x14000018 0x01010006
+wm 32 0x1400001c 0x080b0201
+wm 32 0x14000020 0x02000303
+wm 32 0x14000024 0x0036b002
+wm 32 0x14000028 0x00000606
+wm 32 0x1400002c 0x06030400
+wm 32 0x14000030 0x01000000
+wm 32 0x14000034 0x00000a02
+wm 32 0x14000038 0x00000003
+wm 32 0x1400003c 0x00001801
+wm 32 0x14000040 0x00050612
+wm 32 0x14000044 0x00000200
+wm 32 0x14000048 0x001c001c
+wm 32 0x1400004c 0x00010000
+wm 32 0x1400005c 0x01000000
+wm 32 0x14000060 0x00000001
+wm 32 0x14000064 0x00000000
+wm 32 0x14000068 0x00320000
+wm 32 0x1400006c 0x00000000
+wm 32 0x14000070 0x00000000
+wm 32 0x14000074 0x00320000
+wm 32 0x14000080 0x02000000
+wm 32 0x14000084 0x00000100
+wm 32 0x14000088 0x02400040
+wm 32 0x1400008c 0x01000000
+wm 32 0x14000090 0x0a000100
+wm 32 0x14000094 0x01011f1f
+wm 32 0x14000098 0x01010101
+wm 32 0x1400009c 0x00030101
+wm 32 0x140000a4 0x00010000
+wm 32 0x140000a8 0x00000000
+wm 32 0x140000ac 0x0000ffff
+wm 32 0x140000c8 0x02020101
+wm 32 0x140000cc 0x00000000
+wm 32 0x140000d0 0x01000202
+wm 32 0x140000d4 0x00000200
+wm 32 0x140000d8 0x00000001
+wm 32 0x140000dc 0x0000ffff
+wm 32 0x140000e0 0x00000000
+wm 32 0x140000e4 0x02020000
+wm 32 0x140000e8 0x02020202
+wm 32 0x140000ec 0x00000202
+wm 32 0x140000f0 0x01010064
+wm 32 0x140000f4 0x01010101
+wm 32 0x140000f8 0x00010101
+wm 32 0x140000fc 0x00000064
+wm 32 0x14000104 0x02000602
+wm 32 0x14000108 0x06120000
+wm 32 0x1400010c 0x06120612
+wm 32 0x14000110 0x06120612
+wm 32 0x14000114 0x01030612
+wm 32 0x14000118 0x00010002
+wm 32 0x1400011c 0x00001000
+
+# DDR PHY
+wm 32 0x14000200 0x00000000
+wm 32 0x14000204 0x00000000
+wm 32 0x14000208 0x35002725
+wm 32 0x14000210 0x35002725
+wm 32 0x14000218 0x35002725
+wm 32 0x14000220 0x35002725
+wm 32 0x14000228 0x35002725
+wm 32 0x1400020c 0x380002d0
+wm 32 0x14000214 0x380002d0
+wm 32 0x1400021c 0x380002d0
+wm 32 0x14000224 0x380002d0
+wm 32 0x1400022c 0x380002d0
+wm 32 0x14000230 0x00000000
+wm 32 0x14000234 0x00800006
+wm 32 0x14000238 0x60101414
+wm 32 0x14000240 0x60101414
+wm 32 0x14000248 0x60101414
+wm 32 0x14000250 0x60101414
+wm 32 0x14000258 0x60101414
+wm 32 0x1400023c 0x00101001
+wm 32 0x14000244 0x00101001
+wm 32 0x1400024c 0x00101001
+wm 32 0x14000254 0x00101001
+wm 32 0x1400025c 0x00102201
+
+# start DDR
+wm 32 0x14000000 0x00000101
+check 32 while_any_bit_clear 0x140000a8 0x00000010
diff --git a/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
new file mode 100644
index 0000000..ffceac3
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
@@ -0,0 +1,176 @@
+# DCD i.MX50 SoC setup using 256MiB LPDDR2
+# Copyright (C) 2017 Alexander Kurz <akurz@blala.de>
+#
+# Initial DCD setup according to Freescale ENGR00124359 with adaption from
+# Kindle_src_5.6.1.1_2634130033 uboot_2009.08 imx50_yoshi flash_header.
+# Copyright (C) 2010 Freescale Semiconductor, Inc.
+
+soc imx50
+loadaddr 0x70020000
+
+dcdofs 0x400
+
+# Switch pll1_sw_clk to step_clk
+wm 32 0x53fd400c 0x00000004
+# Setup PLL1 to 800MHz
+wm 32 0x63f80000 0x00001236
+wm 32 0x63f80004 0x00000002
+wm 32 0x63f80008 0x00000080
+wm 32 0x63f8000c 0x000000b3
+wm 32 0x63f80010 0x000000b4
+wm 32 0x63f8001c 0x00000080
+wm 32 0x63f80020 0x000000b3
+wm 32 0x63f80024 0x000000b4
+wm 32 0x63f80000 0x00001236
+check 8 while_any_bit_clear 0x63f80000 0x01
+# Switch pll1_sw_clk to pll1
+wm 32 0x53fd400c 0x00000000
+
+# CGR
+wm 32 0x53fd4068 0xffffffff
+wm 32 0x53fd406c 0xffffffff
+wm 32 0x53fd4070 0xffffffff
+wm 32 0x53fd4074 0xffffffff
+wm 32 0x53fd4078 0xffffffff
+wm 32 0x53fd407c 0xffffffff
+wm 32 0x53fd4080 0xffffffff
+wm 32 0x53fd4084 0xffffffff
+wm 32 0x53FD4098 0x80000004
+
+# CCM DDR div 3 / 266MHz
+wm 32 0x53fd4098 0x80000003
+check 32 while_all_bits_set 0x53fd408c 0x00000004
+
+# IOMUX
+wm 32 0x53fa86ac 0x04000000
+wm 32 0x53fa8668 0x00200000
+wm 32 0x53fa866c 0x00000200
+wm 32 0x53fa8670 0x00000000
+wm 32 0x53fa868c 0x00000000
+wm 32 0x53fa8698 0x00200000
+wm 32 0x53fa86a0 0x00200000
+wm 32 0x53fa86a4 0x00200000
+wm 32 0x53fa86a8 0x00200000
+wm 32 0x53fa86b4 0x00200000
+
+# set SW_PAD_CTL_GRP_NANDF to Low output voltage
+wm 32 0x53fa86c0 0x2000
+
+wm 32 0x53fa8490 0x00200000
+wm 32 0x53fa8494 0x00200000
+wm 32 0x53fa8498 0x00200000
+wm 32 0x53fa849c 0x00200000
+wm 32 0x53fa84c8 0x00200000
+wm 32 0x53fa84cc 0x00200000
+wm 32 0x53fa84f0 0x00200000
+wm 32 0x53fa84f4 0x00200000
+wm 32 0x53fa84fc 0x00200000
+wm 32 0x53fa8500 0x00200000
+wm 32 0x53fa8524 0x00200000
+wm 32 0x53fa8528 0x00200000
+
+# ZQ Load
+wm 32 0x1400012C 0x00000817
+wm 32 0x14000128 0x09180000
+wm 32 0x14000124 0x00310000
+wm 32 0x14000124 0x00200000
+wm 32 0x14000128 0x09180010
+wm 32 0x14000124 0x00310000
+wm 32 0x14000124 0x00200000
+
+# DRAM_CTL
+wm 32 0x14000000 0x00000500
+wm 32 0x14000008 0x0000001b
+wm 32 0x1400000c 0x0000d056
+wm 32 0x14000010 0x0000010b
+wm 32 0x14000014 0x00000a6b
+wm 32 0x14000018 0x02020d0c
+wm 32 0x1400001c 0x0c110302
+wm 32 0x14000020 0x05020503
+wm 32 0x14000024 0x0048eb05
+wm 32 0x14000028 0x00000606
+wm 32 0x1400002c 0x09040501
+wm 32 0x14000030 0x02000000
+wm 32 0x14000034 0x00000e02
+wm 32 0x14000038 0x00000006
+wm 32 0x1400003c 0x00002301
+wm 32 0x14000040 0x00050408
+wm 32 0x14000044 0x00000300
+wm 32 0x14000048 0x00260026
+wm 32 0x1400004c 0x00010000
+wm 32 0x14000050 0x00000000
+wm 32 0x14000054 0x00000000
+wm 32 0x14000058 0x00000000
+wm 32 0x1400005c 0x02000000
+wm 32 0x14000060 0x00000002
+wm 32 0x14000064 0x00000000
+wm 32 0x14000068 0x00000000
+wm 32 0x1400006c 0x00040042
+wm 32 0x14000070 0x00000001
+wm 32 0x14000074 0x00000000
+wm 32 0x14000078 0x00040042
+wm 32 0x1400007c 0x00000001
+wm 32 0x14000080 0x010b0000
+wm 32 0x14000084 0x00000060
+wm 32 0x14000088 0x02400018
+wm 32 0x1400008c 0x01000e00
+wm 32 0x14000090 0x0a010101
+wm 32 0x14000094 0x01011f1f
+wm 32 0x14000098 0x01010101
+wm 32 0x1400009c 0x00030101
+wm 32 0x140000a0 0x00010000
+wm 32 0x140000a4 0x00010000
+wm 32 0x140000a8 0x00000000
+wm 32 0x140000ac 0x0000ffff
+wm 32 0x140000c8 0x02020101
+wm 32 0x140000cc 0x01000000
+wm 32 0x140000d0 0x01000201
+wm 32 0x140000d4 0x00000200
+wm 32 0x140000d8 0x00000102
+wm 32 0x140000dc 0x0000ffff
+wm 32 0x140000e0 0x0000ff00
+wm 32 0x140000e4 0x02020000
+wm 32 0x140000e8 0x02020202
+wm 32 0x140000ec 0x00000202
+wm 32 0x140000f0 0x01010064
+wm 32 0x140000f4 0x01010101
+wm 32 0x140000f8 0x00010101
+wm 32 0x140000fc 0x00000064
+wm 32 0x14000100 0x00000000
+wm 32 0x14000104 0x02000802
+wm 32 0x14000108 0x04080000
+wm 32 0x1400010c 0x04080408
+wm 32 0x14000110 0x04080408
+wm 32 0x14000114 0x03060408
+wm 32 0x14000118 0x00010002
+wm 32 0x1400011c 0x00001000
+
+# DDR PHY
+wm 32 0x14000200 0x00000000
+wm 32 0x14000204 0x00000000
+wm 32 0x14000208 0x35003a27
+wm 32 0x14000210 0x35003a27
+wm 32 0x14000218 0x35003a27
+wm 32 0x14000220 0x35003a27
+wm 32 0x14000228 0x35003a27
+wm 32 0x1400020c 0x380002e1
+wm 32 0x14000214 0x380002e1
+wm 32 0x1400021c 0x380002e1
+wm 32 0x14000224 0x380002e1
+wm 32 0x1400022c 0x380002e1
+wm 32 0x14000230 0x00000000
+wm 32 0x14000234 0x00810006
+wm 32 0x14000238 0x60101014
+wm 32 0x14000240 0x60101014
+wm 32 0x14000248 0x60101014
+wm 32 0x14000250 0x60101014
+wm 32 0x14000258 0x60101014
+wm 32 0x1400023c 0x00100b01
+wm 32 0x14000244 0x00100b01
+wm 32 0x1400024c 0x00100b01
+wm 32 0x14000254 0x00100b01
+wm 32 0x1400025c 0x00100b01
+
+# start DDR
+wm 32 0x14000000 0x00000501
+check 32 while_any_bit_clear 0x140000a8 0x00000010
diff --git a/arch/arm/boards/kindle-mx50/lowlevel.c b/arch/arm/boards/kindle-mx50/lowlevel.c
new file mode 100644
index 0000000..dc321b5
--- /dev/null
+++ b/arch/arm/boards/kindle-mx50/lowlevel.c
@@ -0,0 +1,50 @@
+#include <common.h>
+#include <linux/sizes.h>
+#include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/sections.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
+#include <mach/imx50-regs.h>
+#include <mach/generic.h>
+
+extern char __dtb_imx50_kindle_d01100_start[];
+extern char __dtb_imx50_kindle_d01200_start[];
+extern char __dtb_imx50_kindle_ey21_start[];
+
+ENTRY_FUNCTION(start_imx50_kindle_d01100, r0, r1, r2)
+{
+	void *fdt;
+
+	imx5_cpu_lowlevel_init();
+	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE - 8);
+
+	fdt = __dtb_imx50_kindle_d01100_start - get_runtime_offset();
+
+	barebox_arm_entry(MX50_CSD0_BASE_ADDR, SZ_256M, fdt);
+}
+
+ENTRY_FUNCTION(start_imx50_kindle_d01200, r0, r1, r2)
+{
+	void *fdt;
+
+	imx5_cpu_lowlevel_init();
+	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE - 8);
+
+	fdt = __dtb_imx50_kindle_d01200_start - get_runtime_offset();
+
+	barebox_arm_entry(MX50_CSD0_BASE_ADDR, SZ_256M, fdt);
+}
+
+ENTRY_FUNCTION(start_imx50_kindle_ey21, r0, r1, r2)
+{
+	void *fdt;
+
+	imx5_cpu_lowlevel_init();
+	arm_setup_stack(MX50_IRAM_BASE_ADDR + MX50_IRAM_SIZE - 8);
+
+	fdt = __dtb_imx50_kindle_ey21_start - get_runtime_offset();
+
+	barebox_arm_entry(MX50_CSD0_BASE_ADDR, SZ_256M, fdt);
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index df67cd0..1895127 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_IMX=y
 CONFIG_IMX_MULTI_BOARDS=y
+CONFIG_MACH_KINDLE_MX50=y
 CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
 CONFIG_MACH_EMBEDSKY_E9=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0c9e0e8..f9cbf53 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -12,6 +12,7 @@ pbl-dtb-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am
 pbl-dtb-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
 pbl-dtb-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
 pbl-dtb-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
+pbl-dtb-$(CONFIG_MACH_KINDLE_MX50) += imx50-kindle-d01100.dtb.o imx50-kindle-d01200.dtb.o imx50-kindle-ey21.dtb.o
 pbl-dtb-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
 pbl-dtb-$(CONFIG_MACH_ELTEC_HIPERCAM) += imx6dl-eltec-hipercam.dtb.o
 pbl-dtb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
diff --git a/arch/arm/dts/imx50-kindle-common.dtsi b/arch/arm/dts/imx50-kindle-common.dtsi
new file mode 100644
index 0000000..974dfaf
--- /dev/null
+++ b/arch/arm/dts/imx50-kindle-common.dtsi
@@ -0,0 +1,285 @@
+/*
+ * Copyright 2017 Alexander Kurz <akurz@blala.de>
+ * Copyright 2013 Greg Ungerer <gerg@uclinux.org>
+ * Copyright 2011 Freescale Semiconductor, Inc.
+ * Copyright 2011 Linaro Ltd.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx50.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	/* this is a dummy fixed-voltage "regulator", mainly to satisfy
+	* the esdhc implementation requiring vmmc-supply and vqmmc-supply
+	*/
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_3p3v: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "3P3V";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+	};
+};
+
+&iomuxc {
+	imx50-kindle {
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX50_PAD_UART1_TXD__UART1_TXD_MUX	0xe4
+				MX50_PAD_UART1_RXD__UART1_RXD_MUX	0xe4
+			>;
+		};
+
+		pinctrl_ecspi2: ecspi2grp {
+			fsl,pins = <
+				MX50_PAD_ECSPI2_SCLK__ECSPI2_SCLK	0x84
+				MX50_PAD_ECSPI2_MOSI__ECSPI2_MOSI	0x84
+				MX50_PAD_ECSPI2_MISO__ECSPI2_MISO	0x84
+				MX50_PAD_ECSPI2_SS0__GPIO4_19		0x84
+			>;
+		};
+
+		pinctrl_cspi: cspigrp {
+			fsl,pins = <
+				MX50_PAD_CSPI_SCLK__CSPI_SCLK		0xc4
+				MX50_PAD_CSPI_MISO__CSPI_MISO		0xc4
+				MX50_PAD_CSPI_MOSI__CSPI_MOSI		0xc4
+				MX50_PAD_CSPI_SS0__GPIO4_11		0xe4
+			>;
+		};
+
+		pinctrl_pmic: pmicgrp {
+			fsl,pins = <
+				MX50_PAD_UART1_CTS__GPIO6_8		0x84
+				MX50_PAD_EPDC_PWRCTRL0__GPIO3_29	0x84
+			>;
+		};
+
+		pinctrl_esdhc3: esdhc3grp {
+			fsl,pins = <
+				MX50_PAD_SD3_CMD__ESDHC3_CMD		0xd4
+				MX50_PAD_SD3_CLK__ESDHC3_CLK		0x00
+				MX50_PAD_SD3_D0__ESDHC3_DAT0		0xd4
+				MX50_PAD_SD3_D1__ESDHC3_DAT1		0xd4
+				MX50_PAD_SD3_D2__ESDHC3_DAT2		0xd4
+				MX50_PAD_SD3_D3__ESDHC3_DAT3		0xd4
+				MX50_PAD_SD3_D4__ESDHC3_DAT4		0xd4
+				MX50_PAD_SD3_D5__ESDHC3_DAT5		0xd4
+				MX50_PAD_SD3_D6__ESDHC3_DAT6		0xd4
+				MX50_PAD_SD3_D7__ESDHC3_DAT7		0xd4
+			>;
+		};
+
+		pinctrl_esdhc2: esdhc2grp {
+			fsl,pins = <
+				MX50_PAD_SD2_CMD__ESDHC2_CMD		0x84
+				MX50_PAD_SD2_CLK__ESDHC2_CLK		0x84
+				MX50_PAD_SD2_D0__ESDHC2_DAT0		0x84
+				MX50_PAD_SD2_D1__ESDHC2_DAT1		0x84
+				MX50_PAD_SD2_D2__ESDHC2_DAT2		0x84
+				MX50_PAD_SD2_D3__ESDHC2_DAT3		0x84
+
+				MX50_PAD_EIM_DA5__GPIO1_5		0xe4 /* wake-on-lan */
+				MX50_PAD_SD3_WP__GPIO5_28		0x84 /* power */
+				MX50_PAD_DISP_RS__GPIO2_17		0xe4 /* ? */
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <
+				MX50_PAD_I2C1_SCL__I2C1_SCL	0x4000002c
+				MX50_PAD_I2C1_SDA__I2C1_SDA	0x4000002c
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX50_PAD_I2C2_SCL__I2C2_SCL	0x4000002c
+				MX50_PAD_I2C2_SDA__I2C2_SDA	0x4000002c
+			>;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <
+				MX50_PAD_I2C3_SCL__I2C3_SCL	0x4000002c
+				MX50_PAD_I2C3_SDA__I2C3_SDA	0x4000002c
+			>;
+		};
+
+		pinctrl_charger_detect: chargerdetectgrp {
+			fsl,pins = <
+				MX50_PAD_OWIRE__GPIO6_26		0x84
+			>;
+		};
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&esdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc3>;
+	non-removable;
+	vmmc-supply = <&reg_3p3v>;
+	vqmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
+
+&ecspi2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi2>;
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio4 19 0>;
+	status = "okay";
+
+	flash: m25p80@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <1000000>;
+		reg = <0>;
+	};
+};
+
+&cspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_cspi>;
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio4 11 0>;
+	status = "okay";
+
+	pmic: mc13892@0 {
+		compatible = "fsl,mc13892";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		spi-max-frequency = <1000000>;
+		spi-cs-high;
+		reg = <0>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
+		fsl,mc13xxx-uses-rtc;
+
+		regulators {
+			sw1_reg: sw1 {
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1375000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw2_reg: sw2 {
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3_reg: sw3 {
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw4_reg: sw4 {
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vdig_reg: vdig {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1200000>;
+				regulator-boot-on;
+			};
+
+			vpll_reg: vpll {
+				regulator-min-microvolt = <1050000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vusb2_reg: vusb2 {
+				regulator-min-microvolt = <2400000>;
+				regulator-max-microvolt = <2775000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vvideo_reg: vvideo {
+				regulator-min-microvolt = <2775000>;
+				regulator-max-microvolt = <2775000>;
+			};
+
+			vaudio_reg: vaudio {
+				regulator-min-microvolt = <2300000>;
+				regulator-max-microvolt = <3000000>;
+			};
+
+			vsd_reg: vsd {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3150000>;
+			};
+
+			vcam_reg: vcam {
+				regulator-min-microvolt = <2500000>;
+				regulator-max-microvolt = <3000000>;
+			};
+
+			vgen1_reg: vgen1 {
+				regulator-min-microvolt = <3000000>;
+				regulator-max-microvolt = <3000000>;
+			};
+
+			vgen2_reg: vgen2 {
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3150000>;
+				regulator-always-on;
+			};
+
+			vgen3_reg: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+			};
+		};
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			led-control = <0 0xff8 0 0>;
+			ledg {
+				reg = <2>;
+				label = "pmic_ledsg";
+				linux,default-trigger = "heartbeat";
+			};
+		};
+	};
+};
+
+&usbotg {
+	phy_type = "utmi";
+	dr_mode = "peripheral";
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx50-kindle-d01100.dts b/arch/arm/dts/imx50-kindle-d01100.dts
new file mode 100644
index 0000000..edbc929
--- /dev/null
+++ b/arch/arm/dts/imx50-kindle-d01100.dts
@@ -0,0 +1,71 @@
+/*
+ * Copyright 2017 Alexander Kurz <akurz@blala.de>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+#include "imx50-kindle-common.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Amazon Kindle D01100";
+	compatible = "fsl,imx50";
+
+	chosen {
+		linux,stdout-path = &uart1;
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x70000000 0x10000000>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx50-kindle-d01100 {
+                pinctrl_hog: hoggrp {
+                        fsl,pins = <
+				MX50_PAD_EIM_EB1__GPIO1_20		0xc0
+				MX50_PAD_EIM_EB0__GPIO1_19		0xc0
+				MX50_PAD_EIM_CS2__GPIO1_16		0xc0
+				MX50_PAD_EIM_CS1__GPIO1_17		0xc0
+				MX50_PAD_EIM_CS0__GPIO1_18		0xc0
+				MX50_PAD_SSI_RXC__GPIO6_5		0x84
+			>;
+		};
+	};
+};
+
+&i2c2 {
+	clock-frequency = <50000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	max14656@35 {
+		compatible = "maxim,max14656";
+		reg = <0x35>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_charger_detect>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <26 IRQ_TYPE_LEVEL_HIGH>;
+        };
+
+	smart-battery@55 {
+		compatible = "ti,bq27210";
+		reg = <0x55>;
+		ti,i2c-retry-count = <2>;
+		ti,poll-retry-count = <10>;
+	};
+};
diff --git a/arch/arm/dts/imx50-kindle-d01200.dts b/arch/arm/dts/imx50-kindle-d01200.dts
new file mode 100644
index 0000000..8f93c1b
--- /dev/null
+++ b/arch/arm/dts/imx50-kindle-d01200.dts
@@ -0,0 +1,86 @@
+/*
+ * Copyright 2017 Alexander Kurz <akurz@blala.de>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+#include "imx50-kindle-common.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Amazon Kindle D01200";
+	compatible = "fsl,imx50";
+
+	chosen {
+		linux,stdout-path = &uart1;
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x70000000 0x10000000>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx50-kindle-d01200 {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX50_PAD_EIM_DA0__GPIO1_0	0xc0
+				MX50_PAD_SSI_RXC__GPIO6_5	0x84
+			>;
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <50000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	mma8453: mma8453@1c {
+		compatible = "fsl,mma8453";
+		reg = <0x1c>;
+	};
+};
+
+&i2c2 {
+	clock-frequency = <50000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	max14656@35 {
+		compatible = "maxim,max14656";
+		reg = <0x35>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_charger_detect>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <26 IRQ_TYPE_LEVEL_HIGH>;
+        };
+
+	smart-battery@55 {
+		compatible = "ti,bq27210";
+		reg = <0x55>;
+		ti,i2c-retry-count = <2>;
+		ti,poll-retry-count = <10>;
+	};
+};
+
+&i2c3 {
+	clock-frequency = <50000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx50-kindle-ey21.dts b/arch/arm/dts/imx50-kindle-ey21.dts
new file mode 100644
index 0000000..1b8f2ad
--- /dev/null
+++ b/arch/arm/dts/imx50-kindle-ey21.dts
@@ -0,0 +1,66 @@
+/*
+ * Copyright 2017 Alexander Kurz <akurz@blala.de>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+#include "imx50-kindle-common.dtsi"
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Amazon Kindle EY21";
+	compatible = "fsl,imx50";
+
+	memory {
+		device_type = "memory";
+		reg = <0x70000000 0x10000000>;
+	};
+};
+
+&iomuxc {
+	imx50-kindle-ey21 {
+		pinctrl_gpiokey: gpiokeygrp {
+			fsl,pins = <
+				MX50_PAD_EIM_EB1__GPIO1_20		0x40
+			>;
+		};
+	};
+};
+
+&i2c2 {
+	clock-frequency = <50000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	max14656@35 {
+		compatible = "maxim,max14656";
+		reg = <0x35>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_charger_detect>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <26 IRQ_TYPE_LEVEL_HIGH>;
+        };
+
+	smart-battery@55 {
+		compatible = "ti,bq27210";
+		reg = <0x55>;
+		ti,i2c-retry-count = <2>;
+		ti,poll-retry-count = <10>;
+	};
+};
+
+&i2c3 {
+	clock-frequency = <50000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e1459d2..7621f2d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -212,6 +212,20 @@ config MACH_PCM038
 	  Say Y here if you are using Phytec's phyCORE-i.MX27 (pcm038) equipped
 	  with a Freescale i.MX27 Processor
 
+config MACH_KINDLE_MX50
+	bool "i.MX50 based Amazon Kindle 4 and 5"
+	select ARCH_IMX50
+	select SPI
+	select DRIVER_SPI_IMX
+	select I2C
+	select I2C_IMX
+	select MFD_MC13XXX
+	select ARM_BOARD_APPEND_ATAG
+	help
+	  Say Y here if you are using the fourth or fifth generation Amazon
+	  Kindle Model No. D01100 (Kindle Wi-Fi), D01200 (Kindle Touch) or
+	  EY21 (Kindle Paperwhite).
+
 config MACH_EFIKA_MX_SMARTBOOK
 	bool "Efika MX smartbook"
 	select ARCH_IMX51
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 2563779..fb301cd 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -49,6 +49,22 @@ pblx-$(CONFIG_MACH_PCM038) += start_phytec_phycore_imx27
 FILE_barebox-phytec-phycore-imx27.img = start_phytec_phycore_imx27.pblx
 image-$(CONFIG_MACH_PCM038) += barebox-phytec-phycore-imx27.img
 
+# ----------------------- i.MX50 based boards ---------------------------
+pblx-$(CONFIG_MACH_KINDLE_MX50) += start_imx50_kindle_d01100
+CFG_start_imx50_kindle_d01100.pblx.imximg = $(board)/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
+FILE_barebox-kindle-d01100.img = start_imx50_kindle_d01100.pblx.imximg
+imx-barebox-$(CONFIG_MACH_KINDLE_MX50) += barebox-kindle-d01100.img
+
+pblx-$(CONFIG_MACH_KINDLE_MX50) += start_imx50_kindle_d01200
+CFG_start_imx50_kindle_d01200.pblx.imximg = $(board)/kindle-mx50/flash-header-kindle-lpddr1.imxcfg
+FILE_barebox-kindle-d01200.img = start_imx50_kindle_d01200.pblx.imximg
+imx-barebox-$(CONFIG_MACH_KINDLE_MX50) += barebox-kindle-d01200.img
+
+pblx-$(CONFIG_MACH_KINDLE_MX50) += start_imx50_kindle_ey21
+CFG_start_imx50_kindle_ey21.pblx.imximg = $(board)/kindle-mx50/flash-header-kindle-lpddr2.imxcfg
+FILE_barebox-kindle-ey21.img = start_imx50_kindle_ey21.pblx.imximg
+imx-barebox-$(CONFIG_MACH_KINDLE_MX50) += barebox-kindle-ey21.img
+
 # ----------------------- i.MX51 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX51_PDK) += start_imx51_babbage
 CFG_start_imx51_babbage.pblx.imximg = $(board)/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

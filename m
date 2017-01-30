Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cYKnZ-0002Fw-3k
 for barebox@lists.infradead.org; Mon, 30 Jan 2017 22:51:51 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Mon, 30 Jan 2017 23:50:59 +0100
Message-Id: <1485816659-26091-5-git-send-email-akurz@blala.de>
In-Reply-To: <1485816659-26091-1-git-send-email-akurz@blala.de>
References: <1485816659-26091-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 5/5] ARM i.MX6SL: Add support for the Tolino Vision,
 Vision2 and Vision3HD
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The Tolino Vision E-Book readers are based on a i.MX6SL SoC. The devices
boot in internal boot mode from a build-in eMMC, alternatively the devices
may be set into USB-downloader mode when TP23 is pulled to ground on
startup using a 1k resistor.

Add support for this devices and make barebox a drop-in replacement for
the factory shipped u-boot image.

Notable features:
- support for eMMC, USB, UART, I2C, Keys, LED
- model detection of Vision, Vision2 and Vision3HD based on OCOTP serial
  number range and generation of model specific android kernel command
  line arguments
- usbserial barebox console access by pressing backlight button at startup

Todo:
- PMIC
- EPD, EPD-PMIC, Splashscreen
- Vision4HD

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 Documentation/boards/imx/tolino-vision.rst         |  26 +++
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/tolino-vision/Makefile             |   3 +
 arch/arm/boards/tolino-vision/board.c              |  77 +++++++
 arch/arm/boards/tolino-vision/env/boot/mmc_android |  51 +++++
 arch/arm/boards/tolino-vision/env/init/partitions  |   4 +
 arch/arm/boards/tolino-vision/env/init/serials     |  11 +
 arch/arm/boards/tolino-vision/env/init/usbconsole  |   8 +
 .../boards/tolino-vision/env/nv/autoboot_timeout   |   1 +
 arch/arm/boards/tolino-vision/env/nv/boot.default  |   1 +
 .../tolino-vision/env/nv/linux.bootargs.console    |   1 +
 .../flash-header-tolino-vision.imxcfg              |  86 ++++++++
 arch/arm/boards/tolino-vision/lowlevel.c           |  27 +++
 arch/arm/configs/tolino-vision_defconfig           |  96 +++++++++
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6sl-tolino-vision.dts              | 225 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |  11 +
 images/Makefile.imx                                |   5 +
 18 files changed, 635 insertions(+)
 create mode 100644 Documentation/boards/imx/tolino-vision.rst
 create mode 100644 arch/arm/boards/tolino-vision/Makefile
 create mode 100644 arch/arm/boards/tolino-vision/board.c
 create mode 100644 arch/arm/boards/tolino-vision/env/boot/mmc_android
 create mode 100644 arch/arm/boards/tolino-vision/env/init/partitions
 create mode 100644 arch/arm/boards/tolino-vision/env/init/serials
 create mode 100644 arch/arm/boards/tolino-vision/env/init/usbconsole
 create mode 100644 arch/arm/boards/tolino-vision/env/nv/autoboot_timeout
 create mode 100644 arch/arm/boards/tolino-vision/env/nv/boot.default
 create mode 100644 arch/arm/boards/tolino-vision/env/nv/linux.bootargs.console
 create mode 100644 arch/arm/boards/tolino-vision/flash-header-tolino-vision.imxcfg
 create mode 100644 arch/arm/boards/tolino-vision/lowlevel.c
 create mode 100644 arch/arm/configs/tolino-vision_defconfig
 create mode 100644 arch/arm/dts/imx6sl-tolino-vision.dts

diff --git a/Documentation/boards/imx/tolino-vision.rst b/Documentation/boards/imx/tolino-vision.rst
new file mode 100644
index 0000000..848076c
--- /dev/null
+++ b/Documentation/boards/imx/tolino-vision.rst
@@ -0,0 +1,26 @@
+Tolino Vision e-book readers
+============================
+
+The tolino vision series of e-book readers is based on Freescale i.MX6SL SOC.
+The devices are equiped with:
+
+* 512MiB LPDDR2
+* 4GiB eMMC 4.5
+
+Barebox support covers the models Vision (60Q32) and Vision2/3HD (60Q52).
+
+The device boots in internal boot mode from the eMMC main partition and
+is shipped with a vendor modified u-boot imximage.
+
+To upload and run a new bootloader the device can be put into USB-downloader
+mode by the SOC microcode when TP23 is pulled to ground using a 330R resistor
+during a reset. A new USB device "SE Blank MEGREZ" should appear, barebox may
+be uploaded using
+$ scripts/imx/imx-usb-loader -v images/barebox-tolino-vision.img
+
+Note: a USB serial ACM console will be launched by a barebox init script
+when the front light key is pressed during startup (e.g. before running
+imx-usb-loader)
+
+barebox may be installed on the device by uploading the image and running
+memcpy -s barebox-tolino-vision.img -d /dev/disk0.imximg 0x400 0 523248
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2f1a79f..ef43e2e 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -118,6 +118,7 @@ obj-$(CONFIG_MACH_TECHNEXION_WANDBOARD)		+= technexion-wandboard/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
+obj-$(CONFIG_MACH_TOLINO_VISION)		+= tolino-vision/
 obj-$(CONFIG_MACH_TORADEX_COLIBRI_T20)		+= toradex-colibri-t20/
 obj-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100/
 obj-$(CONFIG_MACH_TQMA53)			+= tqma53/
diff --git a/arch/arm/boards/tolino-vision/Makefile b/arch/arm/boards/tolino-vision/Makefile
new file mode 100644
index 0000000..9698015
--- /dev/null
+++ b/arch/arm/boards/tolino-vision/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o flash-header-tolino-vision.dcd.o
+extra-y += flash-header-tolino-vision.dcd.S flash-header-tolino-vision.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/tolino-vision/board.c b/arch/arm/boards/tolino-vision/board.c
new file mode 100644
index 0000000..beeaac9
--- /dev/null
+++ b/arch/arm/boards/tolino-vision/board.c
@@ -0,0 +1,77 @@
+/*
+ * Copyright (C) 2016 Alexander Kurz <akurz@blala.de>
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
+ */
+
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <common.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <init.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <mach/imx6-regs.h>
+#include <mach/imx6.h>
+#include <mach/imx6-fusemap.h>
+
+static int vision_device_init(void)
+{
+	if (!(of_machine_is_compatible("tolino,imx6sl-vision") ||
+	      of_machine_is_compatible("tolino,imx6sl-vision2")))
+		return 0;
+
+	barebox_set_hostname("vision");
+
+	return 0;
+}
+device_initcall(vision_device_init);
+
+static int vision_late_init(void)
+{
+	char serial[19];
+	const char *model;
+	uint32_t ocotp_ser_l, ocotp_ser_h;
+	int ret = 0;
+
+	ret |= imx_ocotp_read_field(OCOTP_UNIQUE_ID(0), &ocotp_ser_l);
+	ret |= imx_ocotp_read_field(OCOTP_UNIQUE_ID(1), &ocotp_ser_h);
+	if (ret) {
+		pr_err("could not determine OCOTP_UNIQUE_ID\n");
+		return ret;
+	}
+
+	snprintf(serial, sizeof serial, "0x%8.8x%8.8x",
+		 ocotp_ser_h, ocotp_ser_l);
+	globalvar_add_simple("board.ocotp_serial", serial);
+
+	switch ((ocotp_ser_l & 0xff000000) >> 24) {
+	case 0xdb:
+		model = "vision";
+		break;
+	case 0xdf:
+		model = "vision2";
+		break;
+	case 0xe3:
+		model = "vision3hd";
+		break;
+	default:
+		model = "unknown";
+		break;
+	}
+
+	globalvar_add_simple("board.model", model);
+
+	return 0;
+}
+
+late_initcall(vision_late_init);
diff --git a/arch/arm/boards/tolino-vision/env/boot/mmc_android b/arch/arm/boards/tolino-vision/env/boot/mmc_android
new file mode 100644
index 0000000..d5d77c0
--- /dev/null
+++ b/arch/arm/boards/tolino-vision/env/boot/mmc_android
@@ -0,0 +1,51 @@
+#!/bin/sh
+# Boot the factory-shipped Android kernel image
+
+aimage_noverwrite_tags=1
+aimage_noverwrite_bootargs=1
+oftree -f
+armlinux_architecture=4308
+armlinux_system_serial="$global.board.ocotp_serial"
+armlinux_system_rev="0x60200"
+global linux.bootargs.dyn.root="rootfstype=ext4 root=/dev/mmcblk0p1 ro"
+global linux.bootargs.android="androidboot.console=ttymxc0"
+
+global linux.bootargs.video="fbmem=6M video=mxcepdcfb:E060SCM,bpp=16 no_console_suspend"
+global linux.bootargs.serial="androidboot.serialno=$global.board.serial"
+global linux.bootargs.misc="init=/init max17135:pass=2, mem=498M boot_port=3"
+
+sz_hwconfig=110
+addr_hwconfig=0x9ffffe00
+
+if [ X$global.board.model = "Xvision" ]; then
+	sz_logo=388096
+	addr_logo=0x9f928200
+	sz_waveforms=6786528
+	addr_waveforms=0x9f987000
+fi
+
+if [ X$global.board.model = "Xvision2" ]; then
+	sz_logo=388096
+	addr_logo=0x9ffa1000
+	sz_waveforms=6776288
+	addr_waveforms=0x9f92aa00
+fi
+
+if [ X$global.board.model = "Xvision3hd" ]; then
+	sz_logo=776128
+	addr_logo=0x9ff42600
+	sz_waveforms=6572512
+	addr_waveforms=0x9f8fdc00
+fi
+
+global linux.bootargs.hwconfig="hwcfg_p=$addr_hwconfig hwcfg_sz=$sz_hwconfig"
+memcpy -s /dev/disk0.hwconfig 0 $addr_hwconfig $sz_hwconfig
+global linux.bootargs.logo="logo_p=$addr_logo logo_sz=$sz_logo"
+memcpy -s /dev/disk0.logo 0 $addr_logo $sz_logo
+global linux.bootargs.waveforms="waveform_p=$addr_waveforms waveform_sz=$sz_waveforms"
+memcpy -s /dev/disk0.waveforms 0 $addr_waveforms $sz_waveforms
+
+gpio_direction_output 46 1
+gpio_direction_output 39 1
+
+bootm -L 0x81000000 -a 0x80800000 -v /dev/disk0.kernel
diff --git a/arch/arm/boards/tolino-vision/env/init/partitions b/arch/arm/boards/tolino-vision/env/init/partitions
new file mode 100644
index 0000000..0a313b1
--- /dev/null
+++ b/arch/arm/boards/tolino-vision/env/init/partitions
@@ -0,0 +1,4 @@
+#!/bin/sh
+# probe mci1 first (eMMC at SD4)
+mci1.probe=1
+addpart /dev/disk0 0x200@0x200(serial),0x7fbf0@0x400(imximg),0x800@0x80000(hwconfig),0x3fc00@0xc0000(bootenv),0x400000@0x100000(kernel),0x400000@0x600000(initrd),0xa00000@0x700000(waveforms),0x200000@0x1100000(logo)
diff --git a/arch/arm/boards/tolino-vision/env/init/serials b/arch/arm/boards/tolino-vision/env/init/serials
new file mode 100644
index 0000000..675da6d
--- /dev/null
+++ b/arch/arm/boards/tolino-vision/env/init/serials
@@ -0,0 +1,11 @@
+#!/bin/sh
+
+global board.serial
+
+# alphanumeric containing the serial number
+if test -b /dev/disk0.serial; then
+	if memcpy -s /dev/disk0.serial -d tmp_serial -b 3 0 41; then
+		readf tmp_serial global.board.serial
+	fi
+fi
+[ -f tmp_serial ] && rm tmp_serial
diff --git a/arch/arm/boards/tolino-vision/env/init/usbconsole b/arch/arm/boards/tolino-vision/env/init/usbconsole
new file mode 100644
index 0000000..46986d9
--- /dev/null
+++ b/arch/arm/boards/tolino-vision/env/init/usbconsole
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+# Frontlight key activates usbserial access for 60s
+echo
+if gpio_get_value 90; then
+	usbserial
+	global.autoboot_timeout=60
+fi
diff --git a/arch/arm/boards/tolino-vision/env/nv/autoboot_timeout b/arch/arm/boards/tolino-vision/env/nv/autoboot_timeout
new file mode 100644
index 0000000..00750ed
--- /dev/null
+++ b/arch/arm/boards/tolino-vision/env/nv/autoboot_timeout
@@ -0,0 +1 @@
+3
diff --git a/arch/arm/boards/tolino-vision/env/nv/boot.default b/arch/arm/boards/tolino-vision/env/nv/boot.default
new file mode 100644
index 0000000..3f8953f
--- /dev/null
+++ b/arch/arm/boards/tolino-vision/env/nv/boot.default
@@ -0,0 +1 @@
+mmc_android
diff --git a/arch/arm/boards/tolino-vision/env/nv/linux.bootargs.console b/arch/arm/boards/tolino-vision/env/nv/linux.bootargs.console
new file mode 100644
index 0000000..d775310
--- /dev/null
+++ b/arch/arm/boards/tolino-vision/env/nv/linux.bootargs.console
@@ -0,0 +1 @@
+console=ttymxc0,115200
diff --git a/arch/arm/boards/tolino-vision/flash-header-tolino-vision.imxcfg b/arch/arm/boards/tolino-vision/flash-header-tolino-vision.imxcfg
new file mode 100644
index 0000000..a7b9330
--- /dev/null
+++ b/arch/arm/boards/tolino-vision/flash-header-tolino-vision.imxcfg
@@ -0,0 +1,86 @@
+loadaddr 0x88000000
+soc imx6
+dcdofs 0x400
+# CCM
+wm 32 0x020c4018 0x00260324
+
+# CCM CGR
+wm 32 0x020c4068 0xffffffff
+wm 32 0x020c406c 0xffffffff
+wm 32 0x020c4070 0xffffffff
+wm 32 0x020c4074 0xffffffff
+wm 32 0x020c4078 0xffffffff
+wm 32 0x020c407c 0xffffffff
+wm 32 0x020c4080 0xffffffff
+wm 32 0x020c4084 0xffffffff
+
+# IOMUX
+wm 32 0x020e0344 0x00003028
+wm 32 0x020e0348 0x00003028
+wm 32 0x020e034c 0x00003028
+wm 32 0x020e0350 0x00003028
+wm 32 0x020e030c 0x00000028
+wm 32 0x020e0310 0x00000028
+wm 32 0x020e0314 0x00000028
+wm 32 0x020e0318 0x00000028
+wm 32 0x020e0300 0x00000030
+wm 32 0x020e031c 0x00000030
+wm 32 0x020e0338 0x00000030
+wm 32 0x020e0320 0x00000030
+wm 32 0x020e032c 0x00000000
+wm 32 0x020e05c4 0x00000028
+wm 32 0x020e05cc 0x00000028
+wm 32 0x020e05d4 0x00000028
+wm 32 0x020e05d8 0x00000028
+wm 32 0x020e05ac 0x00000030
+wm 32 0x020e05c8 0x00000030
+wm 32 0x020e05b0 0x00020000
+wm 32 0x020e05b4 0x00000000
+wm 32 0x020e05c0 0x00020000
+wm 32 0x020e05d0 0x00080000
+wm 32 0x020e05bc 0x00001000
+
+# MMDC
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b085c 0x1b4700c7
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b0890 0x00480000
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b082c 0xf3333333
+wm 32 0x021b0830 0xf3333333
+wm 32 0x021b0834 0xf3333333
+wm 32 0x021b0838 0xf3333333
+wm 32 0x021b0848 0x44404646
+wm 32 0x021b0850 0x38343830
+wm 32 0x021b083c 0x20000000
+wm 32 0x021b0840 0x00000000
+wm 32 0x021b08c0 0x24911492
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b000c 0x33374135
+wm 32 0x021b0004 0x00020024
+wm 32 0x021b0010 0x00100A83
+wm 32 0x021b0014 0x00000093
+wm 32 0x021b0018 0x00001688
+wm 32 0x021b002c 0x0F9F26D2
+wm 32 0x021b0030 0x0000020E
+wm 32 0x021b0038 0x00190778
+wm 32 0x021b0008 0x00000000
+wm 32 0x021b0040 0x0000004F
+# MMDC_MDCTL: CS0 only, 14 rows, 10 cols, 32 bit
+wm 32 0x021b0000 0x83110000
+wm 32 0x021b001c 0x003f8030
+wm 32 0x021b001c 0xff0a8030
+wm 32 0x021b001c 0x82018030
+wm 32 0x021b001c 0x06028030
+wm 32 0x021b001c 0x03038030
+wm 32 0x021b0800 0xa1310003
+wm 32 0x021b0020 0x00001800
+wm 32 0x021b0818 0x00000000
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b0004 0x00025564
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/tolino-vision/lowlevel.c b/arch/arm/boards/tolino-vision/lowlevel.c
new file mode 100644
index 0000000..08a48f8
--- /dev/null
+++ b/arch/arm/boards/tolino-vision/lowlevel.c
@@ -0,0 +1,27 @@
+#include <debug_ll.h>
+#include <common.h>
+#include <linux/sizes.h>
+#include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/sections.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
+#include <mach/imx6.h>
+
+extern char __dtb_imx6sl_tolino_vision_start[];
+
+ENTRY_FUNCTION(start_imx6sl_tolino_vision, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
+		writel(0x4, 0x020e016c);
+		imx6_uart_setup_ll();
+	}
+
+	fdt = __dtb_imx6sl_tolino_vision_start - get_runtime_offset();
+	barebox_arm_entry(0x80000000, SZ_512M - 14 * SZ_1M, fdt);
+}
diff --git a/arch/arm/configs/tolino-vision_defconfig b/arch/arm/configs/tolino-vision_defconfig
new file mode 100644
index 0000000..e92476a
--- /dev/null
+++ b/arch/arm/configs/tolino-vision_defconfig
@@ -0,0 +1,96 @@
+CONFIG_ARCH_IMX=y
+CONFIG_IMX_MULTI_BOARDS=y
+CONFIG_MACH_TOLINO_VISION=y
+CONFIG_ARCH_IMX_USBLOADER=y
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_MMU=y
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_BOOTM_SHOW_TYPE=y
+CONFIG_BOOTM_VERBOSE=y
+CONFIG_BOOTM_INITRD=y
+CONFIG_BOOTM_OFTREE=y
+CONFIG_BOOTM_OFTREE_UIMAGE=y
+CONFIG_BOOTM_AIMAGE=y
+CONFIG_BLSPEC=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/tolino-vision/env/"
+CONFIG_RESET_SOURCE=y
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_MMC_EXTCSD=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MEMTEST=y
+CONFIG_CMD_MM=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_USBGADGET=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+# CONFIG_SPI is not set
+CONFIG_USB_HOST=y
+CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_MXS_APBH_DMA=y
+CONFIG_GENERIC_PHY=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d77a7b6..a6cda6e 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -68,6 +68,7 @@ pbl-dtb-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-hummingboard.dtb.o imx6q-h100.dtb.o
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
+pbl-dtb-$(CONFIG_MACH_TOLINO_VISION) += imx6sl-tolino-vision.dtb.o
 pbl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
diff --git a/arch/arm/dts/imx6sl-tolino-vision.dts b/arch/arm/dts/imx6sl-tolino-vision.dts
new file mode 100644
index 0000000..9c8c0fe
--- /dev/null
+++ b/arch/arm/dts/imx6sl-tolino-vision.dts
@@ -0,0 +1,225 @@
+/*
+ * Copyright (C) 2013 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <arm/imx6sl.dtsi>
+
+/ {
+	model = "Tolino Vision";
+	compatible = "tolino,imx6sl-vision", "fsl,imx6sl";
+
+	chosen {
+		linux,stdout-path = &uart1;
+	};
+
+	memory {
+		reg = <0x80000000 0x20000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_led>;
+
+		user {
+			label = "power";
+			gpios = <&gpio5 7 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6sl-evk {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* EPD-PMIC */
+				MX6SL_PAD_EPDC_VCOM0__GPIO2_IO03	0x17059
+				MX6SL_PAD_EPDC_PWRWAKEUP__GPIO2_IO14	0x17059
+				MX6SL_PAD_EPDC_PWRCTRL0__GPIO2_IO07	0x17059
+				MX6SL_PAD_EPDC_PWRSTAT__GPIO2_IO13	0x17059
+				/* Power key */
+				MX6SL_PAD_SD1_DAT1__GPIO5_IO08		0x17059
+				/* 60Q32 SD CD */
+				MX6SL_PAD_SD2_DAT4__GPIO5_IO02		0x17059
+			>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX6SL_PAD_UART1_RXD__UART1_RX_DATA	0x1b0b1
+				MX6SL_PAD_UART1_TXD__UART1_TX_DATA	0x1b0b1
+			>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				MX6SL_PAD_SD2_CMD__SD2_CMD		0x17059
+				MX6SL_PAD_SD2_CLK__SD2_CLK		0x10059
+				MX6SL_PAD_SD2_DAT0__SD2_DATA0		0x17059
+				MX6SL_PAD_SD2_DAT1__SD2_DATA1		0x17059
+				MX6SL_PAD_SD2_DAT2__SD2_DATA2		0x17059
+				MX6SL_PAD_SD2_DAT3__SD2_DATA3		0x17059
+			>;
+		};
+
+		pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+			fsl,pins = <
+				MX6SL_PAD_SD2_CMD__SD2_CMD		0x170b9
+				MX6SL_PAD_SD2_CLK__SD2_CLK		0x100b9
+				MX6SL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
+				MX6SL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
+				MX6SL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
+				MX6SL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
+			>;
+		};
+
+		pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+			fsl,pins = <
+				MX6SL_PAD_SD2_CMD__SD2_CMD		0x170f9
+				MX6SL_PAD_SD2_CLK__SD2_CLK		0x100f9
+				MX6SL_PAD_SD2_DAT0__SD2_DATA0		0x170f9
+				MX6SL_PAD_SD2_DAT1__SD2_DATA1		0x170f9
+				MX6SL_PAD_SD2_DAT2__SD2_DATA2		0x170f9
+				MX6SL_PAD_SD2_DAT3__SD2_DATA3		0x170f9
+			>;
+		};
+
+		pinctrl_usdhc4: usdhc4grp {
+			fsl,pins = <
+				MX6SL_PAD_FEC_TX_CLK__SD4_CMD		0x17059
+				MX6SL_PAD_FEC_MDIO__SD4_CLK		0x10059
+				MX6SL_PAD_FEC_RX_ER__SD4_DATA0		0x17059
+				MX6SL_PAD_FEC_CRS_DV__SD4_DATA1		0x17059
+				MX6SL_PAD_FEC_RXD1__SD4_DATA2		0x17059
+				MX6SL_PAD_FEC_TXD0__SD4_DATA3		0x17059
+				MX6SL_PAD_FEC_MDC__SD4_DATA4		0x17059
+				MX6SL_PAD_FEC_RXD0__SD4_DATA5		0x17059
+				MX6SL_PAD_FEC_TX_EN__SD4_DATA6		0x17059
+				MX6SL_PAD_FEC_TXD1__SD4_DATA7		0x17059
+				MX6SL_PAD_FEC_REF_CLK__SD4_RESET	0x17059
+			>;
+		};
+
+		pinctrl_usdhc4_100mhz: usdhc4grp100mhz {
+			fsl,pins = <
+				MX6SL_PAD_FEC_TX_CLK__SD4_CMD		0x170b9
+				MX6SL_PAD_FEC_MDIO__SD4_CLK		0x100b9
+				MX6SL_PAD_FEC_RX_ER__SD4_DATA0		0x170b9
+				MX6SL_PAD_FEC_CRS_DV__SD4_DATA1		0x170b9
+				MX6SL_PAD_FEC_RXD1__SD4_DATA2		0x170b9
+				MX6SL_PAD_FEC_TXD0__SD4_DATA3		0x170b9
+				MX6SL_PAD_FEC_MDC__SD4_DATA4		0x170b9
+				MX6SL_PAD_FEC_RXD0__SD4_DATA5		0x170b9
+				MX6SL_PAD_FEC_TX_EN__SD4_DATA6		0x170b9
+				MX6SL_PAD_FEC_TXD1__SD4_DATA7		0x170b9
+				MX6SL_PAD_FEC_REF_CLK__SD4_RESET	0x170b9
+			>;
+		};
+
+		pinctrl_usdhc4_200mhz: usdhc4grp200mhz {
+			fsl,pins = <
+				MX6SL_PAD_FEC_TX_CLK__SD4_CMD		0x170f9
+				MX6SL_PAD_FEC_MDIO__SD4_CLK		0x100f9
+				MX6SL_PAD_FEC_RX_ER__SD4_DATA0		0x170f9
+				MX6SL_PAD_FEC_CRS_DV__SD4_DATA1		0x170f9
+				MX6SL_PAD_FEC_RXD1__SD4_DATA2		0x170f9
+				MX6SL_PAD_FEC_TXD0__SD4_DATA3		0x170f9
+				MX6SL_PAD_FEC_MDC__SD4_DATA4		0x170f9
+				MX6SL_PAD_FEC_RXD0__SD4_DATA5		0x170f9
+				MX6SL_PAD_FEC_TX_EN__SD4_DATA6		0x170f9
+				MX6SL_PAD_FEC_TXD1__SD4_DATA7		0x170f9
+				MX6SL_PAD_FEC_REF_CLK__SD4_RESET	0x170f9
+			>;
+		};
+
+		pinctrl_led: ledgrp {
+			fsl,pins = <
+				MX6SL_PAD_SD1_DAT6__GPIO5_IO07		0x1b0b1
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <
+				MX6SL_PAD_I2C1_SCL__I2C1_SCL	0x4001b8b1
+				MX6SL_PAD_I2C1_SDA__I2C1_SDA	0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX6SL_PAD_I2C2_SCL__I2C2_SCL	0x4001b8b1
+				MX6SL_PAD_I2C2_SDA__I2C2_SDA	0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <
+				MX6SL_PAD_REF_CLK_24M__I2C3_SCL	0x4001b8b1
+				MX6SL_PAD_REF_CLK_32K__I2C3_SDA	0x4001b8b1
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
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>;
+	cd-gpios = <&gpio5 2 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&usdhc4 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc4>;
+	pinctrl-1 = <&pinctrl_usdhc4_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc4_200mhz>;
+	bus-width = <8>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
+
+&i2c3 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+};
+
+&usbotg1 {
+	dr_mode = "peripheral";
+	disable-over-current;
+	status = "okay";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c1ed5b2..a8ca3c5 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -321,6 +321,17 @@ config MACH_FREESCALE_IMX6SX_SABRESDB
 	select I2C
 	select I2C_IMX
 
+config MACH_TOLINO_VISION
+	bool "Tolino Vision e-book readers"
+	select ARCH_IMX6SL
+	select I2C
+	select I2C_IMX
+	select IMX_OCOTP
+	help
+	  Say Y here if you are using an i.MX6SL based Tolino Vision
+	  e-book reader, current support covers the models Vision, Vision2
+	  and Vision3HD.
+
 config MACH_NITROGEN6
 	bool "BoundaryDevices Nitrogen6 boards"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 84f6652..33c3284 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -304,6 +304,11 @@ CFG_start_imx6qp_nitrogen6_max.pblx.imximg = $(board)/boundarydevices-nitrogen6/
 FILE_barebox-boundarydevices-imx6qp-nitrogen6_max.img = start_imx6qp_nitrogen6_max.pblx.imximg
 image-$(CONFIG_MACH_NITROGEN6) += barebox-boundarydevices-imx6qp-nitrogen6_max.img
 
+pblx-$(CONFIG_MACH_TOLINO_VISION) += start_imx6sl_tolino_vision
+CFG_start_imx6sl_tolino_vision.pblx.imximg = $(board)/tolino-vision/flash-header-tolino-vision.imxcfg
+FILE_barebox-tolino-vision.img = start_imx6sl_tolino_vision.pblx.imximg
+image-$(CONFIG_MACH_TOLINO_VISION) += barebox-tolino-vision.img
+
 pblx-$(CONFIG_MACH_TX6X) += start_imx6dl_tx6x_512m
 CFG_start_imx6dl_tx6x_512m.pblx.imximg = $(board)/karo-tx6x/flash-header-tx6dl-512m.imxcfg
 FILE_barebox-karo-imx6dl-tx6x-512m.img = start_imx6dl_tx6x_512m.pblx.imximg
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

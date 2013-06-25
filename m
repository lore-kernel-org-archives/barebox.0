Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f53.google.com ([209.85.214.53])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrW27-0005a2-Sm
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 16:23:57 +0000
Received: by mail-bk0-f53.google.com with SMTP id e11so4506905bkh.12
 for <barebox@lists.infradead.org>; Tue, 25 Jun 2013 09:23:29 -0700 (PDT)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Tue, 25 Jun 2013 18:23:20 +0200
Message-Id: <1372177400-13502-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH] ARM: gk802: Add support for Zealz GK802
To: barebox@lists.infradead.org
Cc: Philipp Zabel <ph5@flow.hitronhub.home>

From: Philipp Zabel <ph5@flow.hitronhub.home>

Add basic support for the GK802 'QUAD CORE Mini PC', which seems to be
loosely based on the Freescale i.MX6Q HDMI dongle reference design.
It is supposedly identical to the Hiapad Hi802.

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 arch/arm/Makefile                         |   1 +
 arch/arm/boards/gk802/Makefile            |   3 +
 arch/arm/boards/gk802/board.c             |  72 +++++++++++++++
 arch/arm/boards/gk802/env/config-board    |   7 ++
 arch/arm/boards/gk802/flash-header.imxcfg |  96 +++++++++++++++++++
 arch/arm/boards/gk802/lowlevel.c          |  10 ++
 arch/arm/configs/gk802_defconfig          |  82 ++++++++++++++++
 arch/arm/dts/Makefile                     |   2 +-
 arch/arm/dts/imx6q-gk802.dts              | 149 ++++++++++++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                 |   7 ++
 10 files changed, 428 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/gk802/Makefile
 create mode 100644 arch/arm/boards/gk802/board.c
 create mode 100644 arch/arm/boards/gk802/env/config-board
 create mode 100644 arch/arm/boards/gk802/flash-header.imxcfg
 create mode 100644 arch/arm/boards/gk802/lowlevel.c
 create mode 100644 arch/arm/configs/gk802_defconfig
 create mode 100644 arch/arm/dts/imx6q-gk802.dts

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 32bdd65..8e6520e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -173,6 +173,7 @@ board-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x
 board-$(CONFIG_MACH_VERSATILEPB)		+= versatile
 board-$(CONFIG_MACH_VEXPRESS)			+= vexpress
 board-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard
+board-$(CONFIG_MACH_GK802)			+= gk802
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
diff --git a/arch/arm/boards/gk802/Makefile b/arch/arm/boards/gk802/Makefile
new file mode 100644
index 0000000..f1baae2
--- /dev/null
+++ b/arch/arm/boards/gk802/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o flash-header.o
+extra-y += flash-header.S flash-header.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/gk802/board.c b/arch/arm/boards/gk802/board.c
new file mode 100644
index 0000000..59ae12c
--- /dev/null
+++ b/arch/arm/boards/gk802/board.c
@@ -0,0 +1,72 @@
+/*
+ * Copyright (C) 2013 Philipp Zabel
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
+#include <bootsource.h>
+#include <common.h>
+#include <environment.h>
+#include <gpio.h>
+#include <init.h>
+#include <mach/generic.h>
+#include <mach/imx6-regs.h>
+#include <mach/imx6.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
+#include <sizes.h>
+
+#define GK802_GPIO_RECOVERY_BTN	IMX_GPIO_NR(3, 16)	/* recovery button */
+#define GK802_GPIO_RTL8192_PDN	IMX_GPIO_NR(2, 0)	/* RTL8192CU powerdown */
+
+static int gk802_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x10000000, SZ_1G);
+
+	return 0;
+}
+mem_initcall(gk802_mem_init);
+
+static int gk802_devices_init(void)
+{
+	/* Keep RTL8192CU disabled */
+	gpio_direction_output(GK802_GPIO_RTL8192_PDN, 1);
+
+	return 0;
+}
+device_initcall(gk802_devices_init);
+
+static int gk802_env_init(void)
+{
+	gpio_direction_input(GK802_GPIO_RECOVERY_BTN);
+	setenv("recovery", gpio_get_value(GK802_GPIO_RECOVERY_BTN) ? "0" : "1");
+
+	if (bootsource_get() == BOOTSOURCE_MMC &&
+	    bootsource_get_instance() == 3) {
+		if (!IS_ENABLED(CONFIG_MCI_STARTUP))
+			setenv("mmc3.probe", "1");
+		devfs_add_partition("mmc3", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0");
+		devfs_add_partition("mmc3", SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, "env0");
+	}
+
+	return 0;
+}
+late_initcall(gk802_env_init);
+
+static int gk802_core_init(void)
+{
+	imx6_init_lowlevel();
+
+	return 0;
+}
+core_initcall(gk802_core_init);
+
diff --git a/arch/arm/boards/gk802/env/config-board b/arch/arm/boards/gk802/env/config-board
new file mode 100644
index 0000000..99540e9
--- /dev/null
+++ b/arch/arm/boards/gk802/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=gk802
+global.linux.bootargs.base="console=ttymxc3,115200"
diff --git a/arch/arm/boards/gk802/flash-header.imxcfg b/arch/arm/boards/gk802/flash-header.imxcfg
new file mode 100644
index 0000000..9638b02
--- /dev/null
+++ b/arch/arm/boards/gk802/flash-header.imxcfg
@@ -0,0 +1,96 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05b0 0x00000030
+wm 32 0x020e0524 0x00000030
+wm 32 0x020e051c 0x00000030
+wm 32 0x020e0518 0x00000030
+wm 32 0x020e050c 0x00000030
+wm 32 0x020e05b8 0x00000030
+wm 32 0x020e05c0 0x00000030
+wm 32 0x020e05ac 0x00020030
+wm 32 0x020e05b4 0x00020030
+wm 32 0x020e0528 0x00020030
+wm 32 0x020e0520 0x00020030
+wm 32 0x020e0514 0x00020030
+wm 32 0x020e0510 0x00020030
+wm 32 0x020e05bc 0x00020030
+wm 32 0x020e05c4 0x00020030
+wm 32 0x020e056c 0x00020030
+wm 32 0x020e0578 0x00020030
+wm 32 0x020e0588 0x00020030
+wm 32 0x020e0594 0x00020030
+wm 32 0x020e057c 0x00020030
+wm 32 0x020e0590 0x00003000
+wm 32 0x020e0598 0x00003000
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00003030
+wm 32 0x020e05a0 0x00003030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0798 0x000c0000
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+wm 32 0x021b0018 0x00081740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b000c 0x555a7975
+wm 32 0x021b0010 0xff538e64
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x005b0e21
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0040 0x00000027
+wm 32 0x021b0000 0x831a0000
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x0408803a
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x0000803b
+wm 32 0x021b001c 0x00428031
+wm 32 0x021b001c 0x00428039
+wm 32 0x021b001c 0x09408030
+wm 32 0x021b001c 0x09408038
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b001c 0x04008048
+wm 32 0x021b0800 0xa1380003
+wm 32 0x021b4800 0xa1380003
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00000007
+wm 32 0x021b4818 0x00000007
+wm 32 0x021b083c 0x427b030a
+wm 32 0x021b0840 0x02740269
+wm 32 0x021b483c 0x43100313
+wm 32 0x021b4840 0x027d024d
+wm 32 0x021b0848 0x46384240
+wm 32 0x021b4848 0x4442414a
+wm 32 0x021b0850 0x45444645
+wm 32 0x021b4850 0x4a354946
+wm 32 0x021b080c 0x001f001f
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044
+wm 32 0x021b4810 0x00440044
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b0404 0x00011006
+wm 32 0x020e0010 0xf00000ff
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
diff --git a/arch/arm/boards/gk802/lowlevel.c b/arch/arm/boards/gk802/lowlevel.c
new file mode 100644
index 0000000..aec46fd
--- /dev/null
+++ b/arch/arm/boards/gk802/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	barebox_arm_entry(0x10000000, SZ_1G, 0);
+}
diff --git a/arch/arm/configs/gk802_defconfig b/arch/arm/configs/gk802_defconfig
new file mode 100644
index 0000000..9191079
--- /dev/null
+++ b/arch/arm/configs/gk802_defconfig
@@ -0,0 +1,82 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="imx6q-gk802"
+CONFIG_ARCH_IMX=y
+CONFIG_ARCH_IMX6=y
+CONFIG_MACH_GK802=y
+CONFIG_IMX_IIM=y
+CONFIG_IMX_IIM_FUSE_BLOW=y
+CONFIG_THUMB2_BAREBOX=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_ARM_UNWIND=y
+CONFIG_BAREBOX_UPDATE=y
+CONFIG_MMU=y
+CONFIG_MALLOC_SIZE=0x4000000
+CONFIG_MALLOC_TLSF=y
+CONFIG_KALLSYMS=y
+CONFIG_LONGHELP=y
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/gk802/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_TIME=y
+CONFIG_CMD_BASENAME=y
+CONFIG_CMD_DIRNAME=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_MD5SUM=y
+# CONFIG_CMD_FLASH is not set
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_BOOTM_AIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
+CONFIG_OFDEVICE=y
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_USB=y
+CONFIG_USB_IMX_CHIPIDEA=y
+CONFIG_USB_IMX_PHY=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
+CONFIG_MCI=y
+CONFIG_MCI_IMX_ESDHC=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_IMX=y
+CONFIG_GPIO_GENERIC=y
+CONFIG_GPIO_GENERIC_PLATFORM=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index fa6a330..305ddac 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,6 +1,6 @@
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb
 dtb-$(CONFIG_ARCH_IMX6) += imx6q-sabrelite.dtb \
-	imx6q-sabresd.dtb
+	imx6q-sabresd.dtb imx6q-gk802.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
 obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
diff --git a/arch/arm/dts/imx6q-gk802.dts b/arch/arm/dts/imx6q-gk802.dts
new file mode 100644
index 0000000..4458217
--- /dev/null
+++ b/arch/arm/dts/imx6q-gk802.dts
@@ -0,0 +1,149 @@
+/*
+ * Copyright (C) 2013 Philipp Zabel
+ *
+ * This file is licensed under the terms of the GNU General Public License
+ * version 2.  This program is licensed "as is" without any warranty of any
+ * kind, whether express or implied.
+ */
+
+/dts-v1/;
+#include "imx6q.dtsi"
+
+/ {
+	model = "Zealz GK802";
+	compatible = "zealz,gk802", "fsl,imx6q";
+
+	chosen {
+		linux,stdout-path = "/soc/aips-bus@02100000/serial@021f0000";
+	};
+
+	memory {
+		reg = <0x10000000 0x40000000>;
+	};
+
+	regulators {
+		compatible = "simple-bus";
+
+		reg_3p3v: 3p3v {
+			compatible = "regulator-fixed";
+			regulator-name = "3P3V";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		recovery-button {
+			label = "recovery";
+			gpios = <&gpio3 16 1>;
+			linux,code = <0x198>; /* KEY_RESTART */
+			gpio-key,wakeup;
+		};
+	};
+};
+
+/* Internal I2C */
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2_gk802>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	/* SDMC DM2016 1024 bit EEPROM + 128 bit OTP */
+	eeprom: dm2016@51 {
+		compatible = "sdmc,dm2016";
+		reg = <0x51>;
+	};
+};
+
+/* External I2C via HDMI */
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3_gk802>;
+	clock-frequency = <100000>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	hog {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* Recovery button, active-low */
+				MX6Q_PAD_EIM_D16__GPIO3_IO16  0x100b1
+				/* RTL8192CU enable GPIO, active-low */
+				MX6Q_PAD_NANDF_D0__GPIO2_IO00 0x1b0b0
+			>;
+		};
+	};
+
+	i2c2 {
+		pinctrl_i2c2_gk802: i2c2grp-1 {
+			fsl,pins = <
+				MX6Q_PAD_KEY_COL3__I2C2_SCL 0x4001b8b1
+				MX6Q_PAD_KEY_ROW3__I2C2_SDA 0x4001b8b1
+			>;
+		};
+	};
+
+	i2c3 {
+		pinctrl_i2c3_gk802: i2c3grp-1 {
+			fsl,pins = <
+				MX6Q_PAD_GPIO_5__I2C3_SCL  0x4001b8b1
+				MX6Q_PAD_GPIO_16__I2C3_SDA 0x4001b8b1
+			>;
+		};
+	};
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4_1>;
+	status = "okay";
+};
+
+/* External USB-A port (USBOTG) */
+&usbotg {
+	phy-mode = "utmi";
+	dr_mode = "host";
+	barebox,phy_type = "utmi";
+	disable-over-current;
+	status = "okay";
+};
+
+/* Internal USB port (USBH1), connected to RTL8192CU */
+&usbh1 {
+	phy-mode = "utmi";
+	dr_mode = "host";
+	barebox,phy_type = "utmi";
+	disable-over-current;
+	status = "okay";
+};
+
+/* External microSD */
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3_2>;
+	bus-width = <4>;
+	cd-gpios = <&gpio6 11 0>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
+
+/* Internal microSD */
+&usdhc4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc4_2>;
+	bus-width = <4>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index b13fa99..9cc1b23 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -32,6 +32,7 @@ config ARCH_TEXT_BASE
 	default 0x97f00000 if MACH_EFIKA_MX_SMARTBOOK
 	default 0x17800000 if MACH_SABRESD
 	default 0x4fc00000 if MACH_REALQ7
+	default 0x4fc00000 if MACH_GK802
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -63,6 +64,7 @@ config BOARDINFO
 	default "Garz+Fricke Vincell" if MACH_GUF_VINCELL
 	default "SabreSD" if MACH_SABRESD
 	default "DataModul i.MX6Q Real Qseven" if MACH_REALQ7
+	default "Zealz GK802" if MACH_GK802
 
 choice
 	prompt "Select boot mode"
@@ -529,6 +531,11 @@ config MACH_REALQ7
 	bool "DataModul i.MX6Q Real Qseven Board"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
+config MACH_GK802
+	bool "Zealz GK802 Mini PC"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select ARCH_IMX_INTERNAL_BOOT_USE_IMXIMAGE
+
 endchoice
 
 endif
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

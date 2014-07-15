Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward3h.mail.yandex.net ([2a02:6b8:0:f05::3])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6wyr-0000zm-Dn
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 07:16:56 +0000
Received: from smtp2h.mail.yandex.net (smtp2h.mail.yandex.net [84.201.187.145])
 by forward3h.mail.yandex.net (Yandex) with ESMTP id 4CEBC1361B3C
 for <barebox@lists.infradead.org>; Tue, 15 Jul 2014 11:16:16 +0400 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Tue, 15 Jul 2014 11:16:12 +0400
Message-Id: <1405408572-25000-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH v3] ARM: i.MX6Q: Add support for Embedsky E9 board.
To: barebox@lists.infradead.org

This will add support for Embedsky E9 board.
It is a small board based on i.MX6 Quad with 2G of RAM.

http://en.embedsky.com/product_info.php?cateid=169&id=169

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/embedsky-e9/Makefile               |   4 +
 arch/arm/boards/embedsky-e9/board.c                |  87 +++++
 .../arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1 |   6 +
 .../arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3 |   6 +
 .../boards/embedsky-e9/defaultenv-e9/config-board  |   7 +
 arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg |  88 +++++
 arch/arm/boards/embedsky-e9/lowlevel.c             |  18 +
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   4 +-
 arch/arm/dts/imx6q-embedsky-e9.dts                 |  42 +++
 arch/arm/mach-imx/Kconfig                          |   6 +
 dts/src/arm/imx6q-embedsky-e9.dtsi                 | 395 +++++++++++++++++++++
 images/Makefile.imx                                |   5 +
 14 files changed, 669 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/embedsky-e9/Makefile
 create mode 100644 arch/arm/boards/embedsky-e9/board.c
 create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1
 create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
 create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/config-board
 create mode 100644 arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
 create mode 100644 arch/arm/boards/embedsky-e9/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-embedsky-e9.dts
 create mode 100644 dts/src/arm/imx6q-embedsky-e9.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index d200512..2ed3730 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_MACH_EDB9307)			+= edb93xx/
 obj-$(CONFIG_MACH_EDB9315A)			+= edb93xx/
 obj-$(CONFIG_MACH_EDB9315)			+= edb93xx/
 obj-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		+= efika-mx-smartbook/
+obj-$(CONFIG_MACH_EMBEDSKY_E9)			+= embedsky-e9/
 obj-$(CONFIG_MACH_EMBEST_RIOTBOARD)		+= embest-riotboard/
 obj-$(CONFIG_MACH_EUKREA_CPUIMX25)		+= eukrea_cpuimx25/
 obj-$(CONFIG_MACH_EUKREA_CPUIMX27)		+= eukrea_cpuimx27/
diff --git a/arch/arm/boards/embedsky-e9/Makefile b/arch/arm/boards/embedsky-e9/Makefile
new file mode 100644
index 0000000..db2dba7
--- /dev/null
+++ b/arch/arm/boards/embedsky-e9/Makefile
@@ -0,0 +1,4 @@
+obj-y += board.o flash-header-e9.dcd.o
+extra-y += flash-header-e9.dcd.S flash-header-e9.dcd
+lwl-y += lowlevel.o
+bbenv-y += defaultenv-e9
diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
new file mode 100644
index 0000000..55b4320
--- /dev/null
+++ b/arch/arm/boards/embedsky-e9/board.c
@@ -0,0 +1,87 @@
+/*
+ * Copyright (C) 2014 Andrey Panov <rockford@yandex.ru>
+ *
+ * based on arch/arm/boards/freescale-mx6-sabresd/board.c
+ * Copyright (C) 2013 Hubert Feurstein <h.feurstein@gmail.com>
+ *
+ * based on arch/arm/boards/freescale-mx6-sabrelite/board.c
+ * Copyright (C) 2012 Steffen Trumtrar, Pengutronix
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
+#include <common.h>
+#include <init.h>
+#include <environment.h>
+#include <mach/imx6-regs.h>
+#include <fec.h>
+#include <gpio.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <partition.h>
+#include <linux/phy.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <mach/generic.h>
+#include <sizes.h>
+#include <net.h>
+#include <mach/imx6.h>
+#include <mach/devices-imx6.h>
+#include <mach/iomux-mx6.h>
+#include <spi/spi.h>
+#include <mach/spi.h>
+#include <mach/usb.h>
+#include <envfs.h>
+
+#define PHY_ID_RTL8211E	0x001cc915
+#define PHY_ID_MASK	0xffffffff
+
+/*
+ * This should reset a PHY. Taken from E9 U-Boot/Linux source.
+ */
+static int rtl8211e_phy_fixup(struct phy_device *dev)
+{
+	phy_write(dev, 0x00, 0x3140);
+	mdelay(10);
+	phy_write(dev, 0x00, 0x3340);
+	mdelay(10);
+
+	return 0;
+}
+
+static int e9_devices_init(void)
+{
+	if (!of_machine_is_compatible("embedsky,e9"))
+		return 0;
+
+	armlinux_set_architecture(3980);
+	barebox_set_hostname("e9");
+	defaultenv_append_directory(defaultenv_e9);
+
+	return 0;
+}
+device_initcall(e9_devices_init);
+
+static int e9_coredevices_init(void)
+{
+	if (!of_machine_is_compatible("embedsky,e9"))
+		return 0;
+
+	phy_register_fixup_for_uid(PHY_ID_RTL8211E, PHY_ID_MASK,
+			rtl8211e_phy_fixup);
+
+	return 0;
+}
+/*
+ * Do this before the fec initializes but after our
+ * gpios are available.
+ */
+coredevice_initcall(e9_coredevices_init);
diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1 b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1
new file mode 100644
index 0000000..0177e6c
--- /dev/null
+++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc1
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+mount /dev/mmc1.0
+
+global.bootm.image=/mnt/mmc1.0/zImage
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootwait"
diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3 b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
new file mode 100644
index 0000000..374eb1c
--- /dev/null
+++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+mount /dev/mmc3.0
+
+global.bootm.image=/mnt/mmc3.0/boot/zImage
+global.linux.bootargs.dyn.root="root=/dev/mmcblk1p1 rootwait"
diff --git a/arch/arm/boards/embedsky-e9/defaultenv-e9/config-board b/arch/arm/boards/embedsky-e9/defaultenv-e9/config-board
new file mode 100644
index 0000000..6cba769
--- /dev/null
+++ b/arch/arm/boards/embedsky-e9/defaultenv-e9/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=e9
+global.boot.default=$bootsource$bootsource_instance
diff --git a/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg b/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
new file mode 100644
index 0000000..710352e
--- /dev/null
+++ b/arch/arm/boards/embedsky-e9/flash-header-e9.imxcfg
@@ -0,0 +1,88 @@
+loadaddr 0x27800000
+soc imx6
+dcdofs 0x400
+
+wm 32 0x020e0798 0x000c0000
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0588 0x00000030
+wm 32 0x020e0594 0x00000030
+wm 32 0x020e056c 0x00000030
+wm 32 0x020e0578 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e057c 0x00000030
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00000030
+wm 32 0x020e05a0 0x00000030
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e05a8 0x00000018
+wm 32 0x020e05b0 0x00000018
+wm 32 0x020e0524 0x00000018
+wm 32 0x020e051c 0x00000018
+wm 32 0x020e0518 0x00000018
+wm 32 0x020e050c 0x00000018
+wm 32 0x020e05b8 0x00000018
+wm 32 0x020e05c0 0x00000018
+wm 32 0x020e0774 0x00020000
+wm 32 0x020e0784 0x00000018
+wm 32 0x020e0788 0x00000018
+wm 32 0x020e0794 0x00000018
+wm 32 0x020e079c 0x00000018
+wm 32 0x020e07a0 0x00000018
+wm 32 0x020e07a4 0x00000018
+wm 32 0x020e07a8 0x00000018
+wm 32 0x020e0748 0x00000018
+wm 32 0x020e05ac 0x00000018
+wm 32 0x020e05b4 0x00000018
+wm 32 0x020e0528 0x00000018
+wm 32 0x020e0520 0x00000018
+wm 32 0x020e0514 0x00000018
+wm 32 0x020e0510 0x00000018
+wm 32 0x020e05bc 0x00000018
+wm 32 0x020e05c4 0x00000018
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b080c 0x001f001f
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x001f001f
+wm 32 0x021b4810 0x001f001f
+wm 32 0x021b083c 0x4333033f
+wm 32 0x021b0840 0x032c031d
+wm 32 0x021b483c 0x43200332
+wm 32 0x021b4840 0x031a026a
+wm 32 0x021b0848 0x4d464746
+wm 32 0x021b4848 0x47453f4d
+wm 32 0x021b0850 0x3e434440
+wm 32 0x021b4850 0x47384839
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b0004 0x00020036
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b000c 0x8a8f7955
+wm 32 0x021b0010 0xff328f64
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b0018 0x00001740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x008f1023
+wm 32 0x021b0040 0x00000047
+wm 32 0x021b0000 0x841a0000
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x09408030
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b4818 0x00011117
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
+
diff --git a/arch/arm/boards/embedsky-e9/lowlevel.c b/arch/arm/boards/embedsky-e9/lowlevel.c
new file mode 100644
index 0000000..fee1011
--- /dev/null
+++ b/arch/arm/boards/embedsky-e9/lowlevel.c
@@ -0,0 +1,18 @@
+#include <common.h>
+#include <sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_imx6q_embedsky_e9_start[];
+
+ENTRY_FUNCTION(start_imx6q_embedsky_e9, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	fdt = __dtb_imx6q_embedsky_e9_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_2G, fdt);
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 66fc123..0a4f2fe 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -16,6 +16,7 @@ CONFIG_MACH_SABRELITE=y
 CONFIG_MACH_SABRESD=y
 CONFIG_MACH_NITROGEN6X=y
 CONFIG_MACH_SOLIDRUN_MICROSOM=y
+CONFIG_MACH_EMBEDSKY_E9=y
 CONFIG_MACH_EMBEST_RIOTBOARD=y
 CONFIG_MACH_UDOO=y
 CONFIG_MACH_VARISCITE_MX6=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 72ad5e6..18e4519 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -31,7 +31,8 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-udoo.dtb \
 	imx6q-var-custom.dtb \
 	imx6s-riotboard.dtb \
-	imx6q-phytec-pbaa03.dtb
+	imx6q-phytec-pbaa03.dtb \
+	imx6q-embedsky-e9.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3188-radxarock.dtb
 dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb
@@ -47,6 +48,7 @@ obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 pbl-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am335x-bone-common.dtb.o
 pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
 pbl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
+pbl-$(CONFIG_MACH_EMBEDSKY_E9) += imx6q-embedsky-e9.dtb.o
 pbl-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o imx53-qsrb.dtb.o
diff --git a/arch/arm/dts/imx6q-embedsky-e9.dts b/arch/arm/dts/imx6q-embedsky-e9.dts
new file mode 100644
index 0000000..14f6d5f
--- /dev/null
+++ b/arch/arm/dts/imx6q-embedsky-e9.dts
@@ -0,0 +1,42 @@
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
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
+/dts-v1/;
+
+#include "imx6q.dtsi"
+#include <arm/imx6q-embedsky-e9.dtsi>
+
+/ {
+	chosen {
+		linux,stdout-path = &uart4;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+		};
+
+	};
+};
+
+&usdhc2 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x80000>;
+	};
+	partition@1 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 2d99f3e..53a44a0 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -208,6 +208,12 @@ config MACH_EFIKA_MX_SMARTBOOK
 	help
 	  Choose this to compile barebox for the Efika MX Smartbook
 
+config MACH_EMBEDSKY_E9
+	bool "Embedsky E9 Mini-PC"
+	select ARCH_IMX6
+	help
+	  Choose this to compile barebox for the Embedsky E9 Mini PC
+
 config MACH_FREESCALE_MX51_PDK
 	bool "Freescale i.MX51 PDK"
 	select ARCH_IMX51
diff --git a/dts/src/arm/imx6q-embedsky-e9.dtsi b/dts/src/arm/imx6q-embedsky-e9.dtsi
new file mode 100644
index 0000000..a29de9f
--- /dev/null
+++ b/dts/src/arm/imx6q-embedsky-e9.dtsi
@@ -0,0 +1,395 @@
+/*
+ * Copyright 2012 Freescale Semiconductor, Inc.
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
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Embedsky E9";
+	compatible = "embedsky,e9", "fsl,imx6q";
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_2p5v: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "2P5V";
+			regulator-min-microvolt = <2500000>;
+			regulator-max-microvolt = <2500000>;
+			regulator-always-on;
+		};
+
+		reg_3p3v: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "3P3V";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+
+		reg_usb_otg_vbus: regulator@2 {
+			compatible = "regulator-fixed";
+			reg = <2>;
+			regulator-name = "usb_otg_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio3 22 0>;
+			enable-active-high;
+		};
+
+		reg_usb_h1_vbus: regulator@3 {
+			compatible = "regulator-fixed";
+			reg = <3>;
+			regulator-name = "usb_h1_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio1 29 0>;
+			enable-active-high;
+		};
+
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_keys>;
+
+		power {
+			label = "Power Button";
+			gpios = <&gpio6 31 GPIO_ACTIVE_LOW>;
+			gpio-key,wakeup;
+			linux,code = <KEY_POWER>;
+		};
+
+		volume-up {
+			label = "Volume Up";
+			gpios = <&gpio4 8 GPIO_ACTIVE_LOW>;
+			gpio-key,wakeup;
+			linux,code = <KEY_VOLUMEUP>;
+		};
+
+		volume-down {
+			label = "Volume Down";
+			gpios = <&gpio4 9 GPIO_ACTIVE_LOW>;
+			gpio-key,wakeup;
+			linux,code = <KEY_VOLUMEDOWN>;
+		};
+	};
+
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux>;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rgmii";
+	phy-supply=<&reg_3p3v>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
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
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6qdl-embedsky-e9 {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x80000000
+				MX6QDL_PAD_NANDF_D0__GPIO2_IO00		0x80000000
+				MX6QDL_PAD_NANDF_D1__GPIO2_IO01		0x80000000
+				MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x80000000
+				MX6QDL_PAD_NANDF_D3__GPIO2_IO03		0x80000000
+				MX6QDL_PAD_GPIO_0__CCM_CLKO1		0x130b0
+				MX6QDL_PAD_NANDF_CLE__GPIO6_IO07	0x80000000
+				MX6QDL_PAD_ENET_TXD1__GPIO1_IO29	0x80000000
+				MX6QDL_PAD_EIM_D22__GPIO3_IO22 		0x80000000
+			>;
+		};
+
+		pinctrl_audmux: audmuxgrp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
+				MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
+				MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
+				MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
+			>;
+		};
+
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL1__ECSPI1_MISO	0x100b1
+				MX6QDL_PAD_KEY_ROW0__ECSPI1_MOSI	0x100b1
+				MX6QDL_PAD_KEY_COL0__ECSPI1_SCLK	0x100b1
+			>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
+				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
+				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
+				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
+				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
+				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
+				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
+				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
+				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
+				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
+				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
+				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
+				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
+				MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x4001b0a8
+				MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0a8
+				MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x4001b0a8
+			>;
+		};
+
+		pinctrl_gpio_keys: gpio_keysgrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_BCLK__GPIO6_IO31		0x80000000
+				MX6QDL_PAD_KEY_COL1__KEY_COL1		0x80000000
+				MX6QDL_PAD_KEY_ROW1__KEY_ROW1		0x80000000
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001b8b1
+				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL		0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
+				MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
+				MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
+			>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA	0x1b0b1
+				MX6QDL_PAD_SD3_DAT6__UART1_RX_DATA	0x1b0b1
+			>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D26__UART2_RX_DATA	0x1b0b1
+				MX6QDL_PAD_EIM_D27__UART2_TX_DATA	0x1b0b1
+				MX6QDL_PAD_EIM_D28__UART2_DTE_CTS_B	0x1b0b1
+				MX6QDL_PAD_EIM_D29__UART2_DTE_RTS_B	0x1b0b1
+			>;
+		};
+
+		pinctrl_uart3: uart3grp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
+				MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
+			>;
+		};
+
+		pinctrl_uart4: uart4grp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL0__UART4_TX_DATA	0x1b0b1
+				MX6QDL_PAD_KEY_ROW0__UART4_RX_DATA	0x1b0b1
+			>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID	0x17059
+			>;
+		};
+
+		pinctrl_usdhc1: usdhc1grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x17059
+				MX6QDL_PAD_SD1_CLK__SD1_CLK		0x10059
+				MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x17059
+				MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x17059
+				MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x17059
+				MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x17059
+			>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x17059
+				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x10059
+				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x17059
+				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
+				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
+				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
+				MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x1f071
+			>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
+				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
+				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
+				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
+				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
+				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
+			>;
+		};
+
+		pinctrl_usdhc4: usdhc4grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD4_CMD__SD4_CMD		0x17059
+				MX6QDL_PAD_SD4_CLK__SD4_CLK		0x10059
+				MX6QDL_PAD_SD4_DAT0__SD4_DATA0		0x17059
+				MX6QDL_PAD_SD4_DAT1__SD4_DATA1		0x17059
+				MX6QDL_PAD_SD4_DAT2__SD4_DATA2		0x17059
+				MX6QDL_PAD_SD4_DAT3__SD4_DATA3		0x17059
+				MX6QDL_PAD_SD4_DAT4__SD4_DATA4		0x17059
+				MX6QDL_PAD_SD4_DAT5__SD4_DATA5		0x17059
+				MX6QDL_PAD_SD4_DAT6__SD4_DATA6		0x17059
+				MX6QDL_PAD_SD4_DAT7__SD4_DATA7		0x17059
+			>;
+		};
+	};
+};
+
+&ldb {
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	status = "okay";
+};
+
+&usbh1 {
+	vbus-supply = <&reg_usb_h1_vbus>;
+	status = "okay";
+};
+
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	disable-over-current;
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	cd-gpios = <&gpio1 4 0>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
+
+&usdhc4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc4>;
+	vmmc-supply = <&reg_3p3v>;
+	non-removable;
+	status = "okay";
+};
+
+&ldb {
+	status = "okay";
+};
+
+&hdmi {
+	status = "okay";
+};
+
+&pcie {
+	status = "okay";
+};
+
+&can1 {
+	status = "okay";
+};
+
+&sata {
+	status = "okay";
+};
+
+&usdhc3 {
+	status = "disabled";
+};
+
+&ecspi1 {
+	status = "disabled";
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 1d0edd2..dd10c39 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -175,6 +175,11 @@ CFG_start_variscite_custom.pblx.imximg = $(board)/variscite-mx6/flash-header-var
 FILE_barebox-variscite-custom.img = start_variscite_custom.pblx.imximg
 image-$(CONFIG_MACH_VARISCITE_MX6) += barebox-variscite-custom.img
 
+pblx-$(CONFIG_MACH_EMBEDSKY_E9) += start_imx6q_embedsky_e9
+CFG_start_imx6q_embedsky_e9.pblx.imximg = $(board)/embedsky-e9/flash-header-e9.imxcfg
+FILE_barebox-freescale-imx6q-embedsky-e9.img = start_imx6q_embedsky_e9.pblx.imximg
+image-$(CONFIG_MACH_EMBEDSKY_E9) += barebox-freescale-imx6q-embedsky-e9.img
+
 pblx-$(CONFIG_MACH_EMBEST_RIOTBOARD) += start_imx6s_riotboard
 CFG_start_imx6s_riotboard.pblx.imximg = $(board)/embest-riotboard/flash-header-embest-riotboard.imxcfg
 FILE_barebox-embest-imx6s-riotboard.img = start_imx6s_riotboard.pblx.imximg
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

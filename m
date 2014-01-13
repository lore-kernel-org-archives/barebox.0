Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2VEW-00014w-EQ
 for barebox@lists.infradead.org; Mon, 13 Jan 2014 00:18:32 +0000
Received: from tellur.localdomain (p57B5EF0F.dip0.t-ipconnect.de
 [87.181.239.15]) by lynxeye.de (Postfix) with ESMTPA id 1C2F818B4268
 for <barebox@lists.infradead.org>; Mon, 13 Jan 2014 01:16:39 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 13 Jan 2014 01:17:29 +0100
Message-Id: <1389572250-1482-8-git-send-email-dev@lynxeye.de>
In-Reply-To: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
References: <1389572250-1482-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 8/9] ARM: imx6: add initial support for Nitrogen6X boards
To: barebox@lists.infradead.org

Only the 1GB variant is supported for now, as I don't
have anything other to test with.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/Makefile                           |   1 +
 .../arm/boards/boundarydevices-nitrogen6x/Makefile |   3 +
 arch/arm/boards/boundarydevices-nitrogen6x/board.c |  77 ++++
 .../boundarydevices-nitrogen6x/env/config-board    |   6 +
 .../flash-header-nitrogen6x-1g.imxcfg              | 106 ++++++
 .../boards/boundarydevices-nitrogen6x/lowlevel.c   |  30 ++
 arch/arm/dts/Makefile                              |   5 +-
 arch/arm/dts/imx6dl-nitrogen6x.dts                 |  21 ++
 arch/arm/dts/imx6q-nitrogen6x.dts                  |  25 ++
 arch/arm/dts/imx6qdl-nitrogen6x.dtsi               | 412 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   4 +
 images/Makefile.imx                                |  10 +
 12 files changed, 699 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/Makefile
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/board.c
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/env/config-board
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
 create mode 100644 arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
 create mode 100644 arch/arm/dts/imx6dl-nitrogen6x.dts
 create mode 100644 arch/arm/dts/imx6q-nitrogen6x.dts
 create mode 100644 arch/arm/dts/imx6qdl-nitrogen6x.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index bb26941..7f56359 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_MACH_AT91SAM9N12EK)		+= at91sam9n12ek/
 obj-$(CONFIG_MACH_AT91SAM9X5EK)			+= at91sam9x5ek/
 obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
 obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
+obj-$(CONFIG_MACH_NITROGEN6X)			+= boundarydevices-nitrogen6x/
 obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
 obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
 obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/Makefile b/arch/arm/boards/boundarydevices-nitrogen6x/Makefile
new file mode 100644
index 0000000..177c5d8
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o flash-header-nitrogen6x-1g.dcd.o
+extra-y += flash-header-nitrogen6x-1g.dcd.S flash-header-nitrogen6x-1g.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/board.c b/arch/arm/boards/boundarydevices-nitrogen6x/board.c
new file mode 100644
index 0000000..1c4b495
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/board.c
@@ -0,0 +1,77 @@
+/*
+ * Copyright (C) 2014 Lucas Stach, Pengutronix
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
+#include <mach/bbu.h>
+#include <linux/phy.h>
+#include <linux/micrel_phy.h>
+#include <mach/imx6.h>
+
+static int nitrogen6x_devices_init(void)
+{
+	if (!of_machine_is_compatible("fsl,imx6dl-nitrogen6x") &&
+	    !of_machine_is_compatible("fsl,imx6q-nitrogen6x"))
+		return 0;
+
+	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
+			BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0);
+
+	return 0;
+}
+device_initcall(nitrogen6x_devices_init);
+
+static int ksz9021rn_phy_fixup(struct phy_device *dev)
+{
+	phy_write(dev, 0x09, 0x0f00);
+
+	/* do same as linux kernel */
+	/* min rx data delay */
+	phy_write(dev, 0x0b, 0x8105);
+	phy_write(dev, 0x0c, 0x0000);
+
+	/* max rx/tx clock delay, min rx/tx control delay */
+	phy_write(dev, 0x0b, 0x8104);
+	phy_write(dev, 0x0c, 0xf0f0);
+	phy_write(dev, 0x0b, 0x104);
+
+	return 0;
+}
+
+static int nitrogen6x_coredevices_init(void)
+{
+	if (!of_machine_is_compatible("fsl,imx6dl-nitrogen6x") &&
+	    !of_machine_is_compatible("fsl,imx6q-nitrogen6x"))
+		return 0;
+
+	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
+					   ksz9021rn_phy_fixup);
+	return 0;
+}
+coredevice_initcall(nitrogen6x_coredevices_init);
+
+static int nitrogen6x_postcore_init(void)
+{
+	if (!of_machine_is_compatible("fsl,imx6dl-nitrogen6x") &&
+	    !of_machine_is_compatible("fsl,imx6q-nitrogen6x"))
+		return 0;
+
+	imx6_init_lowlevel();
+
+	barebox_set_hostname("nitrogen6x");
+
+	return 0;
+}
+postcore_initcall(nitrogen6x_postcore_init);
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/env/config-board b/arch/arm/boards/boundarydevices-nitrogen6x/env/config-board
new file mode 100644
index 0000000..4cabac6
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/env/config-board
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.linux.bootargs.base="console=ttymxc1,115200"
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
new file mode 100644
index 0000000..60a39fe
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
@@ -0,0 +1,106 @@
+soc imx6
+loadaddr 0x20000000
+dcdofs 0x400
+
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
+wm 32 0x021b0818 0x00022227
+wm 32 0x021b4818 0x00022227
+wm 32 0x021b083c 0x434b0350
+wm 32 0x021b0840 0x034c0359
+wm 32 0x021b483c 0x434b0350
+wm 32 0x021b4840 0x03650348
+wm 32 0x021b0848 0x4436383b
+wm 32 0x021b4848 0x39393341
+wm 32 0x021b0850 0x35373933
+wm 32 0x021b4850 0x48254A36
+wm 32 0x021b080c 0x001f001f
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x00440044
+wm 32 0x021b4810 0x00440044
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b0404 0x00011006
+wm 32 0x020c4068 0x00c03f3f
+wm 32 0x020c406c 0x0030fc03
+wm 32 0x020c4070 0x0fffc000
+wm 32 0x020c4074 0x3ff00000
+wm 32 0x020c4078 0x00fff300
+wm 32 0x020c407c 0x0f0000c3
+wm 32 0x020c4080 0x000003ff
+/* enable AXI cache for VDOA/VPU/IPU */
+wm 32 0x020e0010 0xf00000cf
+/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7 */
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
new file mode 100644
index 0000000..5b11084
--- /dev/null
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
@@ -0,0 +1,30 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_imx6q_nitrogen6x_start[];
+
+ENTRY_FUNCTION(start_imx6q_nitrogen6x_1g, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = (uint32_t)__dtb_imx6q_nitrogen6x_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
+
+extern char __dtb_imx6dl_nitrogen6x_start[];
+
+ENTRY_FUNCTION(start_imx6dl_nitrogen6x_1g, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	arm_cpu_lowlevel_init();
+
+	fdt = (uint32_t)__dtb_imx6dl_nitrogen6x_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 90ac28d..e89eb2f 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -16,7 +16,9 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6dl-mba6x.dtb \
 	imx6q-mba6x.dtb \
 	imx6q-phytec-pbab01.dtb \
-	imx6dl-cubox-i-carrier-1.dtb
+	imx6dl-cubox-i-carrier-1.dtb \
+	imx6q-nitrogen6x.dtb \
+	imx6dl-nitrogen6x.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox.dtb
 dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb
@@ -45,6 +47,7 @@ pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CARRIER1) += imx6dl-cubox-i-carrier-1.dtb.o
 pbl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
+pbl-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
 .SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
diff --git a/arch/arm/dts/imx6dl-nitrogen6x.dts b/arch/arm/dts/imx6dl-nitrogen6x.dts
new file mode 100644
index 0000000..5f4d33c
--- /dev/null
+++ b/arch/arm/dts/imx6dl-nitrogen6x.dts
@@ -0,0 +1,21 @@
+/*
+ * Copyright 2013 Boundary Devices, Inc.
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
+#include "imx6dl.dtsi"
+#include "imx6qdl-nitrogen6x.dtsi"
+
+/ {
+	model = "Freescale i.MX6 DualLite Nitrogen6x Board";
+	compatible = "fsl,imx6dl-nitrogen6x", "fsl,imx6dl";
+};
diff --git a/arch/arm/dts/imx6q-nitrogen6x.dts b/arch/arm/dts/imx6q-nitrogen6x.dts
new file mode 100644
index 0000000..a57866b
--- /dev/null
+++ b/arch/arm/dts/imx6q-nitrogen6x.dts
@@ -0,0 +1,25 @@
+/*
+ * Copyright 2013 Boundary Devices, Inc.
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
+#include "imx6q.dtsi"
+#include "imx6qdl-nitrogen6x.dtsi"
+
+/ {
+	model = "Freescale i.MX6 Quad Nitrogen6x Board";
+	compatible = "fsl,imx6q-nitrogen6x", "fsl,imx6q";
+};
+
+&sata {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6qdl-nitrogen6x.dtsi b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
new file mode 100644
index 0000000..07452f9
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-nitrogen6x.dtsi
@@ -0,0 +1,412 @@
+/*
+ * Copyright 2013 Boundary Devices, Inc.
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
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	chosen {
+		linux,stdout-path = &uart2;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &flash, "partname:barebox-environment";
+		};
+	};
+
+	memory {
+		reg = <0x10000000 0x40000000>;
+	};
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
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_keys>;
+
+		power {
+			label = "Power Button";
+			gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_POWER>;
+			gpio-key,wakeup;
+		};
+
+		menu {
+			label = "Menu";
+			gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_MENU>;
+		};
+
+		home {
+			label = "Home";
+			gpios = <&gpio2 4 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_HOME>;
+		};
+
+		back {
+			label = "Back";
+			gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_BACK>;
+		};
+
+		volume-up {
+			label = "Volume Up";
+			gpios = <&gpio7 13 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEUP>;
+		};
+
+		volume-down {
+			label = "Volume Down";
+			gpios = <&gpio4 5 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEDOWN>;
+		};
+	};
+
+	sound {
+		compatible = "fsl,imx6q-nitrogen6x-sgtl5000",
+			     "fsl,imx-audio-sgtl5000";
+		model = "imx6q-nitrogen6x-sgtl5000";
+		ssi-controller = <&ssi1>;
+		audio-codec = <&codec>;
+		audio-routing =
+			"MIC_IN", "Mic Jack",
+			"Mic Jack", "Mic Bias",
+			"Headphone Jack", "HP_OUT";
+		mux-int-port = <1>;
+		mux-ext-port = <3>;
+	};
+
+	backlight_lcd {
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 5000000>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+		power-supply = <&reg_3p3v>;
+		status = "okay";
+	};
+
+	backlight_lvds {
+		compatible = "pwm-backlight";
+		pwms = <&pwm4 0 5000000>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+		power-supply = <&reg_3p3v>;
+		status = "okay";
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux>;
+	status = "okay";
+};
+
+&ecspi1 {
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio3 19 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	status = "okay";
+
+	flash: m25p80@0 {
+		compatible = "sst,sst25vf016b", "m25p80";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x80000>;
+		};
+
+		partition@1 {
+			label = "barebox-environment";
+			reg = <0x80000 0x80000>;
+		};
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio1 27 0>;
+	txen-skew-ps = <0>;
+	txc-skew-ps = <3000>;
+	rxdv-skew-ps = <0>;
+	rxc-skew-ps = <3000>;
+	rxd0-skew-ps = <0>;
+	rxd1-skew-ps = <0>;
+	rxd2-skew-ps = <0>;
+	rxd3-skew-ps = <0>;
+	txd0-skew-ps = <0>;
+	txd1-skew-ps = <0>;
+	txd2-skew-ps = <0>;
+	txd3-skew-ps = <0>;
+	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
+			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
+	status = "okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	codec: sgtl5000@0a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		clocks = <&clks 201>;
+		VDDA-supply = <&reg_2p5v>;
+		VDDIO-supply = <&reg_3p3v>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6q-nitrogen6x {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* SGTL5000 sys_mclk */
+				MX6QDL_PAD_GPIO_0__CCM_CLKO1    0x030b0
+			>;
+		};
+
+		pinctrl_audmux: audmuxgrp {
+			fsl,pins = <MX6QDL_AUDMUX_PINGRP2>;
+		};
+
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <
+				MX6QDL_ECSPI1_PINGRP1
+				MX6QDL_PAD_EIM_D19__GPIO3_IO19  0x000b1	/* CS */
+			>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <
+				MX6QDL_ENET_PINGRP_RGMII_MD(0x1b0b0, 0x100b0)
+				/* Phy reset */
+				MX6QDL_PAD_ENET_RXD0__GPIO1_IO27	0x000b0
+				MX6QDL_PAD_GPIO_6__ENET_IRQ		0x000b1
+			>;
+		};
+
+		pinctrl_gpio_keys: gpio_keysgrp {
+			fsl,pins = <
+				/* Power Button */
+				MX6QDL_PAD_NANDF_D3__GPIO2_IO03		0x1b0b0
+				/* Menu Button */
+				MX6QDL_PAD_NANDF_D1__GPIO2_IO01		0x1b0b0
+				/* Home Button */
+				MX6QDL_PAD_NANDF_D4__GPIO2_IO04		0x1b0b0
+				/* Back Button */
+				MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x1b0b0
+				/* Volume Up Button */
+				MX6QDL_PAD_GPIO_18__GPIO7_IO13		0x1b0b0
+				/* Volume Down Button */
+				MX6QDL_PAD_GPIO_19__GPIO4_IO05		0x1b0b0
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <MX6QDL_I2C1_PINGRP1>;
+		};
+
+		pinctrl_pwm1: pwm1grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD1_DAT3__PWM1_OUT 0x1b0b1
+			>;
+		};
+
+		pinctrl_pwm3: pwm3grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD1_DAT1__PWM3_OUT 0x1b0b1
+			>;
+		};
+
+		pinctrl_pwm4: pwm4grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD1_CMD__PWM4_OUT 0x1b0b1
+			>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <MX6QDL_UART1_PINGRP2>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <MX6QDL_UART2_PINGRP1>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_1__USB_OTG_ID	0x17059
+				MX6QDL_PAD_KEY_COL4__USB_OTG_OC	0x1b0b0
+				/* power enable, high active */
+				MX6QDL_PAD_EIM_D22__GPIO3_IO22  0x000b0
+			>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <
+				MX6QDL_USDHC3_PINGRP_D4
+				MX6QDL_PAD_SD3_DAT5__GPIO7_IO00 0x1b0b0	/* CD */
+			>;
+		};
+
+		pinctrl_usdhc4: usdhc4grp {
+			fsl,pins = <
+				MX6QDL_USDHC4_PINGRP_D4
+				MX6QDL_PAD_NANDF_D6__GPIO2_IO06 0x1b0b0	/* CD */
+			>;
+		};
+	};
+};
+
+&ldb {
+	status = "okay";
+
+	lvds-channel@0 {
+		fsl,data-mapping = "spwg";
+		fsl,data-width = <18>;
+		status = "okay";
+
+		display-timings {
+			native-mode = <&timing0>;
+			timing0: hsd100pxn1 {
+				clock-frequency = <65000000>;
+				hactive = <1024>;
+				vactive = <768>;
+				hback-porch = <220>;
+				hfront-porch = <40>;
+				vback-porch = <21>;
+				vfront-porch = <7>;
+				hsync-len = <60>;
+				vsync-len = <10>;
+			};
+		};
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pwm1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm1>;
+	status = "okay";
+};
+
+&pwm3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm3>;
+	status = "okay";
+};
+
+&pwm4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm4>;
+	status = "okay";
+};
+
+&ssi1 {
+	fsl,mode = "i2s-slave";
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
+&usbh1 {
+	phy_type = "utmi";
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usbotg {
+	vbus-supply = <&reg_usb_otg_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	phy_type = "utmi";
+	dr_mode = "host";
+	disable-over-current;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	cd-gpios = <&gpio7 0 0>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
+
+&usdhc4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc4>;
+	cd-gpios = <&gpio2 6 0>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3a1089f..7587e15 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -228,6 +228,10 @@ config MACH_SABRELITE
 	select ARCH_IMX6
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select HAVE_PBL_MULTI_IMAGES
+	
+config MACH_NITROGEN6X
+	bool "BoundaryDevices Nitrogen6x"
+	select ARCH_IMX6
 
 config MACH_SOLIDRUN_CARRIER1
 	bool "SolidRun CuBox-i Carrier-1"
diff --git a/images/Makefile.imx b/images/Makefile.imx
index e98204f..ecaa582 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -86,3 +86,13 @@ pblx-$(CONFIG_MACH_SOLIDRUN_CARRIER1) += start_imx6dl_cubox_i_carrier_1
 CFG_start_imx6dl_cubox_i_carrier_1.pblx.imximg = $(board)/solidrun-carrier-1/flash-header-solidrun-carrier-1.imxcfg
 FILE_barebox-cubox-i-carrier-1.img = start_imx6dl_cubox_i_carrier_1.pblx.imximg
 image-$(CONFIG_MACH_SOLIDRUN_CARRIER1) += barebox-cubox-i-carrier-1.img
+
+pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6q_nitrogen6x_1g
+CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
+FILE_barebox-boundarydevices-imx6q-nitrogen6x-1g.img = start_imx6q_nitrogen6x_1g.pblx.imximg
+image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6q-nitrogen6x-1g.img
+
+pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6dl_nitrogen6x_1g
+CFG_start_imx6dl_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6x-1g.imxcfg
+FILE_barebox-boundarydevices-imx6dl-nitrogen6x-1g.img = start_imx6dl_nitrogen6x_1g.pblx.imximg
+image-$(CONFIG_MACH_NITROGEN6X) += barebox-boundarydevices-imx6dl-nitrogen6x-1g.img
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

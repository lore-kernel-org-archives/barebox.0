Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x229.google.com ([2a00:1450:4013:c00::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjFEi-0007Xu-LK
 for barebox@lists.infradead.org; Wed, 20 Nov 2013 21:23:07 +0000
Received: by mail-ee0-f41.google.com with SMTP id t10so3065907eei.0
 for <barebox@lists.infradead.org>; Wed, 20 Nov 2013 13:22:38 -0800 (PST)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Wed, 20 Nov 2013 22:22:26 +0100
Message-Id: <1384982546-9111-4-git-send-email-lisovy@gmail.com>
In-Reply-To: <1384982546-9111-1-git-send-email-lisovy@gmail.com>
References: <1384982546-9111-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH 3/3] ARM: i.mx53: Support for Voipac board with X53-DMM-668
 module.
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

Device definitions is read from the devicetree description.
The board support is using 'multiboard' approach.

Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>

 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/env/config-board
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
 create mode 100644 arch/arm/dts/imx53-voipac-bsb.dts
 create mode 100644 arch/arm/dts/imx53-voipac-dmm-668.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c273f0c..3953c55 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -36,6 +36,7 @@ obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3-stack/
 obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-pdk/
 obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-loco/
 obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
+obj-$(CONFIG_MACH_FREESCALE_MX53_VMX53)		+= freescale-mx53-vmx53/
 obj-$(CONFIG_MACH_GE863)			+= telit-evk-pro3/
 obj-$(CONFIG_MACH_GK802)			+= gk802/
 obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
diff --git a/arch/arm/boards/freescale-mx53-vmx53/Makefile b/arch/arm/boards/freescale-mx53-vmx53/Makefile
new file mode 100644
index 0000000..33d5e59
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o flash-header-imx53-vmx53.dcd.o
+extra-y += flash-header-imx53-vmx53.dcd.S flash-header-imx53-vmx53.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-vmx53/board.c b/arch/arm/boards/freescale-mx53-vmx53/board.c
new file mode 100644
index 0000000..5f2a9bf
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/board.c
@@ -0,0 +1,57 @@
+/*
+ * Copyright (C) 2013 Rostislav Lisovy <lisovy@gmail.com>, PiKRON s.r.o.
+ *
+ * Board specific file for Voipac X53-DMM-668 module equipped
+ * with i.MX53 CPU
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
+#include <init.h>
+#include <sizes.h>
+
+#include <generated/mach-types.h>
+#include <mach/imx5.h>
+#include <asm/armlinux.h>
+#include <mach/bbu.h>
+
+extern char flash_header_imx53_vmx53_start[];
+extern char flash_header_imx53_vmx53_end[];
+
+static int vmx53_late_init(void)
+{
+	armlinux_set_bootparams((void *)0x70000100);
+	armlinux_set_architecture(MACH_TYPE_VMX53);
+
+	barebox_set_model("Voipac VMX53");
+	barebox_set_hostname("vmx53");
+
+	imx53_bbu_internal_nand_register_handler("nand",
+		BBU_HANDLER_FLAG_DEFAULT, (void *)flash_header_imx53_vmx53_start,
+		flash_header_imx53_vmx53_end - flash_header_imx53_vmx53_start,
+		SZ_512K, 0);
+
+	return 0;
+}
+late_initcall(vmx53_late_init);
+
+static int vmx53_postcore_init(void)
+{
+	if (!of_machine_is_compatible("voipac,imx53-dmm-668"))
+		return 0;
+
+	imx53_init_lowlevel(800);
+
+	return 0;
+}
+postcore_initcall(vmx53_postcore_init);
diff --git a/arch/arm/boards/freescale-mx53-vmx53/env/config-board b/arch/arm/boards/freescale-mx53-vmx53/env/config-board
new file mode 100644
index 0000000..856792a
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/env/config-board
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# board defaults, do not change in running system. Change /env/config
+# instead
+
+global.hostname=vmx53
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg b/arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
new file mode 100644
index 0000000..3bf73b6
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
@@ -0,0 +1,54 @@
+loadaddr 0x70000000
+soc imx53
+dcdofs 0x400
+wm 32 0x53fa8554 0x00300000
+wm 32 0x53fa8558 0x00300040
+wm 32 0x53fa8560 0x00300000
+wm 32 0x53fa8564 0x00300040
+wm 32 0x53fa8568 0x00300040
+wm 32 0x53fa8570 0x00300000
+wm 32 0x53fa8574 0x00300000
+wm 32 0x53fa8578 0x00300000
+wm 32 0x53fa857c 0x00300040
+wm 32 0x53fa8580 0x00300040
+wm 32 0x53fa8584 0x00300000
+wm 32 0x53fa8588 0x00300000
+wm 32 0x53fa8590 0x00300040
+wm 32 0x53fa8594 0x00300000
+wm 32 0x53fa86f0 0x00300000
+wm 32 0x53fa86f4 0x00000000
+wm 32 0x53fa86fc 0x00000000
+wm 32 0x53fa8714 0x00000000
+wm 32 0x53fa8718 0x00300000
+wm 32 0x53fa871c 0x00300000
+wm 32 0x53fa8720 0x00300000
+wm 32 0x53fa8724 0x04000000
+wm 32 0x53fa8728 0x00300000
+wm 32 0x53fa872c 0x00300000
+wm 32 0x63fd9088 0x35343535
+wm 32 0x63fd9090 0x4d444c44
+wm 32 0x63fd907c 0x01370138
+wm 32 0x63fd9080 0x013b013c
+wm 32 0x63fd9018 0x00011740
+wm 32 0x63fd9000 0xc4190000
+wm 32 0x63fd900c 0x9f5152e3
+wm 32 0x63fd9010 0xb68e8a63
+wm 32 0x63fd9014 0x01ff00db
+wm 32 0x63fd902c 0x000026d2
+wm 32 0x63fd9030 0x009f0e21
+wm 32 0x63fd9008 0x12273030
+wm 32 0x63fd9004 0x0002002d
+wm 32 0x63fd901c 0x00008032
+wm 32 0x63fd901c 0x00008033
+wm 32 0x63fd901c 0x00028031
+wm 32 0x63fd901c 0x052080b0
+wm 32 0x63fd901c 0x04008040
+wm 32 0x63fd901c 0x0000803a
+wm 32 0x63fd901c 0x0000803b
+wm 32 0x63fd901c 0x00028039
+wm 32 0x63fd901c 0x05208138
+wm 32 0x63fd901c 0x04008048
+wm 32 0x63fd9020 0x00005800
+wm 32 0x63fd9040 0x04b80003
+wm 32 0x63fd9058 0x00022227
+wm 32 0x63fd901c 0x00000000
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
new file mode 100644
index 0000000..5dc23fd
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -0,0 +1,19 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_imx53_voipac_bsb_start[];
+
+ENTRY_FUNCTION(start_imx53_vmx53)(void)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	fdt = (uint32_t)__dtb_imx53_voipac_bsb_start - get_runtime_offset();
+
+	imx53_barebox_entry(fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 511adf4..f90aa51 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,6 +1,7 @@
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb \
 	imx51-genesi-efika-sb.dtb
-dtb-$(CONFIG_ARCH_IMX53) += imx53-qsb.dtb
+dtb-$(CONFIG_ARCH_IMX53) += imx53-qsb.dtb \
+	imx53-voipac-bsb.dtb
 dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6dl-dfi-fs700-m60-6s.dtb \
 	imx6q-dfi-fs700-m60-6q.dtb \
@@ -23,6 +24,7 @@ obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 pbl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o
+pbl-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += imx53-voipac-bsb.dtb.o
 pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
diff --git a/arch/arm/dts/imx53-voipac-bsb.dts b/arch/arm/dts/imx53-voipac-bsb.dts
new file mode 100644
index 0000000..5c88c0e
--- /dev/null
+++ b/arch/arm/dts/imx53-voipac-bsb.dts
@@ -0,0 +1,135 @@
+/*
+ * Copyright 2013 Rostislav Lisovy <lisovy@gmail.com>, PiKRON s.r.o.
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
+#include "imx53-voipac-dmm-668.dtsi"
+
+/ {
+	sound {
+		compatible = "fsl,imx53-voipac-sgtl5000",
+			     "fsl,imx-audio-sgtl5000";
+		model = "imx53-voipac-sgtl5000";
+		ssi-controller = <&ssi2>;
+		audio-codec = <&sgtl5000>;
+		audio-routing =
+			"Headphone Jack", "HP_OUT";
+		mux-int-port = <2>;
+		mux-ext-port = <5>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_pin_gpio>;
+
+		led1 {
+			label = "led-red";
+			gpios = <&gpio3 29 0>;
+			default-state = "off";
+		};
+
+		led2 {
+			label = "led-orange";
+			gpios = <&gpio2 31 0>;
+			default-state = "off";
+		};
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	hog {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* SD2_CD */
+				MX53_PAD_EIM_D25__GPIO3_25	0x80000000
+				/* SD2_WP */
+				MX53_PAD_EIM_A19__GPIO2_19 	0x80000000
+			>;
+		};
+
+		led_pin_gpio: led_gpio {
+			fsl,pins = <
+				MX53_PAD_EIM_D29__GPIO3_29	0x80000000
+				MX53_PAD_EIM_EB3__GPIO2_31	0x80000000
+			>;
+		};
+	};
+
+	/* Keyboard controller */
+	kpp {
+		pinctrl_kpp_1: kppgrp-1 {
+			fsl,pins = <
+				MX53_PAD_GPIO_9__KPP_COL_6	0xe8
+				MX53_PAD_GPIO_4__KPP_COL_7	0xe8
+				MX53_PAD_KEY_COL2__KPP_COL_2	0xe8
+				MX53_PAD_KEY_COL3__KPP_COL_3	0xe8
+				MX53_PAD_KEY_COL4__KPP_COL_4	0xe8
+
+				MX53_PAD_GPIO_2__KPP_ROW_6	0xe0
+				MX53_PAD_GPIO_5__KPP_ROW_7	0xe0
+				MX53_PAD_KEY_ROW2__KPP_ROW_2	0xe0
+				MX53_PAD_KEY_ROW3__KPP_ROW_3	0xe0
+				MX53_PAD_KEY_ROW4__KPP_ROW_4	0xe0
+			>;
+		};
+	};
+};
+
+&audmux {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_audmux_1>; /* SSI1 */
+	status = "okay";
+};
+
+&esdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_esdhc2_1>;
+	cd-gpios = <&gpio3 25 0>;
+	wp-gpios = <&gpio2 19 0>;
+	vmmc-supply = <&reg_3p3v>;
+	status = "okay";
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3_2>;
+	status = "okay";
+
+	sgtl5000: codec@0a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		VDDA-supply = <&reg_3p3v>;
+		VDDIO-supply = <&reg_3p3v>;
+		clocks = <&clks 150>;
+	};
+};
+
+&kpp {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_kpp_1>;
+	linux,keymap = <
+			0x0203003b	/* KEY_F1 */
+			0x0603003c	/* KEY_F2 */
+			0x0207003d	/* KEY_F3 */
+			0x0607003e	/* KEY_F4 */
+			>;
+	keypad,num-rows = <8>;
+	keypad,num-columns = <1>;
+	status = "okay";
+};
+
+&ssi2 {
+	fsl,mode = "i2s-slave";
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx53-voipac-dmm-668.dtsi b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
new file mode 100644
index 0000000..9dc9490
--- /dev/null
+++ b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
@@ -0,0 +1,204 @@
+/*
+ * Copyright 2013 Rostislav Lisovy <lisovy@gmail.com>, PiKRON s.r.o.
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx53.dtsi"
+
+/ {
+	model = "Voipac i.MX53 X53-DMM-668";
+	compatible = "voipac,imx53-dmm-668", "fsl,imx53";
+
+	memory@70000000 {
+		device_type = "memory";
+		reg = <0x70000000 0x20000000>;
+	};
+
+	memory@b0000000 {
+		device_type = "memory";
+		reg = <0xb0000000 0x20000000>;
+	};
+
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
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	hog {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				/* Make DA9053 regulator functional */
+				MX53_PAD_GPIO_16__GPIO7_11	0x80000000
+				/* FEC Power enable */
+				MX53_PAD_GPIO_11__GPIO4_1	0x80000000
+				/* FEC RST */
+				MX53_PAD_GPIO_12__GPIO4_2	0x80000000
+			>;
+		};
+	};
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1_1>;
+	fsl,spi-num-chipselects = <4>;
+	cs-gpios = <&gpio2 30 0>, <&gpio3 19 0>, <&gpio2 16 0>, <&gpio2 17 0>;
+	status = "okay";
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec_1>;
+	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio4 2 0>;
+	status = "okay";
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1_2>;
+	status = "okay";
+
+	pmic: dialog@48 {
+		compatible = "dlg,da9053-aa", "dlg,da9052";
+		reg = <0x48>;
+		interrupt-parent = <&gpio7>;
+		interrupts = <11 0x8>; /* low-level active IRQ at GPIO7_11 */
+
+		regulators {
+			buck1_reg: buck1 {
+				regulator-name = "BUCKCORE";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <1400000>;
+				regulator-always-on;
+			};
+
+			buck2_reg: buck2 {
+				regulator-name = "BUCKPRO";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+			};
+
+			buck3_reg: buck3 {
+				regulator-name = "BUCKMEM";
+				regulator-min-microvolt = <1420000>;
+				regulator-max-microvolt = <1580000>;
+				regulator-always-on;
+			};
+
+			buck4_reg: buck4 {
+				regulator-name = "BUCKPERI";
+				regulator-min-microvolt = <2370000>;
+				regulator-max-microvolt = <2630000>;
+				regulator-always-on;
+			};
+
+			ldo1_reg: ldo1 {
+				regulator-name = "ldo1_1v3";
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2_reg: ldo2 {
+				regulator-name = "ldo2_1v3";
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+			};
+
+			ldo3_reg: ldo3 {
+				regulator-name = "ldo3_3v3";
+				regulator-min-microvolt = <3250000>;
+				regulator-max-microvolt = <3350000>;
+				regulator-always-on;
+			};
+
+			ldo4_reg: ldo4 {
+				regulator-name = "ldo4_2v775";
+				regulator-min-microvolt = <2770000>;
+				regulator-max-microvolt = <2780000>;
+				regulator-always-on;
+			};
+
+			ldo5_reg: ldo5 {
+				regulator-name = "ldo5_3v3";
+				regulator-min-microvolt = <3250000>;
+				regulator-max-microvolt = <3350000>;
+				regulator-always-on;
+			};
+
+			ldo6_reg: ldo6 {
+				regulator-name = "ldo6_1v3";
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+			};
+
+			ldo7_reg: ldo7 {
+				regulator-name = "ldo7_2v75";
+				regulator-min-microvolt = <2700000>;
+				regulator-max-microvolt = <2800000>;
+				regulator-always-on;
+			};
+
+			ldo8_reg: ldo8 {
+				regulator-name = "ldo8_1v8";
+				regulator-min-microvolt = <1750000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-always-on;
+			};
+
+			ldo9_reg: ldo9 {
+				regulator-name = "ldo9_1v5";
+				regulator-min-microvolt = <1450000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-always-on;
+			};
+
+			ldo10_reg: ldo10 {
+				regulator-name = "ldo10_1v3";
+				regulator-min-microvolt = <1250000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&nfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_nand_1>;
+	nand-bus-width = <8>;
+	nand-ecc-mode = "hw";
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_2>;
+	status = "okay";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 973aa37..53fcb9f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -20,6 +20,7 @@ config ARCH_TEXT_BASE
 	default 0x97f00000 if MACH_FREESCALE_MX51_PDK
 	default 0x7ff00000 if MACH_FREESCALE_MX53_LOCO
 	default 0x7ff00000 if MACH_FREESCALE_MX53_SMD
+	default 0x7ff00000 if MACH_FREESCALE_MX53_VMX53
 	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
 	default 0x7ff00000 if MACH_TQMA53
@@ -197,6 +198,13 @@ config MACH_FREESCALE_MX53_LOCO
 	bool "Freescale i.MX53 LOCO"
 	select ARCH_IMX53
 
+config MACH_FREESCALE_MX53_VMX53
+	bool "Voipac i.MX53"
+	select ARCH_IMX53
+	help
+	  Say Y here if you are using the Voipac Technologies X53-DMM-668
+	  module equipped with a Freescale i.MX53 Processor
+
 config MACH_PHYTEC_PFLA02
 	bool "Phytec phyFLEX-i.MX6 Ouad"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 794e3a3..5932e1b 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -26,6 +26,11 @@ CFG_start_imx53_loco.pblx.imximg = $(board)/freescale-mx53-loco/flash-header-imx
 FILE_barebox-freescale-imx53-loco.img = start_imx53_loco.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += barebox-freescale-imx53-loco.img
 
+pblx-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += start_imx53_vmx53
+CFG_start_imx53_vmx53.pblx.imximg = $(board)/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
+FILE_barebox-freescale-imx53-vmx53.img = start_imx53_vmx53.pblx.imximg
+image-$(CONFIG_MACH_FREESCALE_MX53_VMX53) += barebox-freescale-imx53-vmx53.img
+
 # ----------------------- i.MX6 based boards ---------------------------
 pblx-$(CONFIG_MACH_REALQ7) += start_imx6_realq7
 CFG_start_imx6_realq7.pblx.imximg = $(board)/dmo-mx6-realq7/flash-header.imxcfg
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

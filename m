Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vdhq5-0004F4-UL
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 14:42:45 +0000
Received: by mail-ee0-f45.google.com with SMTP id e50so1862184eek.4
 for <barebox@lists.infradead.org>; Tue, 05 Nov 2013 06:42:20 -0800 (PST)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Tue,  5 Nov 2013 15:42:07 +0100
Message-Id: <1383662527-8538-4-git-send-email-lisovy@gmail.com>
In-Reply-To: <1383662527-8538-1-git-send-email-lisovy@gmail.com>
References: <1383662527-8538-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH 3/3] ARM: i.mx53: Support for Voipac board. Device definition
 is read from Devicetree
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>

 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/Makefile
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/board.c
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/env/config
 create mode 100644 arch/arm/boards/freescale-mx53-vmx53/flash_header.c
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
index 0000000..d44f697
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-vmx53/board.c b/arch/arm/boards/freescale-mx53-vmx53/board.c
new file mode 100644
index 0000000..4270832
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/board.c
@@ -0,0 +1,42 @@
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
+
+#include <generated/mach-types.h>
+#include <mach/imx5.h>
+#include <asm/armlinux.h>
+
+
+static int vmx53_console_init(void)
+{
+	if (!of_machine_is_compatible("voipac,imx53-dmm-668"))
+		return 0;
+
+	imx53_init_lowlevel(800);
+
+	armlinux_set_bootparams((void *)0x70000100);
+	armlinux_set_architecture(MACH_TYPE_VMX53);
+
+	barebox_set_model("Voipac VMX53");
+	barebox_set_hostname("vmx53");
+
+	return 0;
+}
+postcore_initcall(vmx53_console_init);
diff --git a/arch/arm/boards/freescale-mx53-vmx53/env/config b/arch/arm/boards/freescale-mx53-vmx53/env/config
new file mode 100644
index 0000000..3d90172
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/env/config
@@ -0,0 +1,46 @@
+#!/bin/sh
+
+global.hostname=vmx53
+eth0.serverip=
+user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-${global.hostname}.$rootfs_type
+
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
+
+if [ -n $user ]; then
+	kernelimage="$user"-"$kernelimage"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
+	rootfsimage="$user"-"$rootfsimage"
+else
+	nfsroot="$eth0.serverip:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttymxc0,115200"
+
+nand_parts="512k(barebox)ro,512k(bareboxenv),4M(kernel),-(rootfs)"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/freescale-mx53-vmx53/flash_header.c b/arch/arm/boards/freescale-mx53-vmx53/flash_header.c
new file mode 100644
index 0000000..a6864a6
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/flash_header.c
@@ -0,0 +1,103 @@
+/*
+ * Copyright (C) 2011 Marc Kleine-Budde <mkl@pengutronix.de>
+ * Copyright (C) 2013 Rostislav Lisovy <lisovy@gmail.com>, PiKRON s.r.o.
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
+#include <asm/byteorder.h>
+#include <mach/imx-flash-header.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked __flash_header_start go(void)
+{
+	barebox_arm_imx_fcb_head();
+}
+
+struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
+	{ .addr = cpu_to_be32(0x53fa8554), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8558), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8560), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8564), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8568), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8570), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8574), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8578), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa857c), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8580), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8584), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8588), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8590), .val = cpu_to_be32(0x00300040), },
+	{ .addr = cpu_to_be32(0x53fa8594), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f0), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa86f4), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa86fc), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8714), .val = cpu_to_be32(0x00000000), },
+	{ .addr = cpu_to_be32(0x53fa8718), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa871c), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8720), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa8724), .val = cpu_to_be32(0x04000000), },
+	{ .addr = cpu_to_be32(0x53fa8728), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x53fa872c), .val = cpu_to_be32(0x00300000), },
+	{ .addr = cpu_to_be32(0x63fd9088), .val = cpu_to_be32(0x35343535), },
+	{ .addr = cpu_to_be32(0x63fd9090), .val = cpu_to_be32(0x4d444c44), },
+	{ .addr = cpu_to_be32(0x63fd907c), .val = cpu_to_be32(0x01370138), },
+	{ .addr = cpu_to_be32(0x63fd9080), .val = cpu_to_be32(0x013b013c), },
+	{ .addr = cpu_to_be32(0x63fd9018), .val = cpu_to_be32(0x00011740), },
+	{ .addr = cpu_to_be32(0x63fd9000), .val = cpu_to_be32(0xc4190000), },
+	{ .addr = cpu_to_be32(0x63fd900c), .val = cpu_to_be32(0x9f5152e3), },
+	{ .addr = cpu_to_be32(0x63fd9010), .val = cpu_to_be32(0xb68e8a63), },
+	{ .addr = cpu_to_be32(0x63fd9014), .val = cpu_to_be32(0x01ff00db), },
+	{ .addr = cpu_to_be32(0x63fd902c), .val = cpu_to_be32(0x000026d2), },
+	{ .addr = cpu_to_be32(0x63fd9030), .val = cpu_to_be32(0x009f0e21), },
+	{ .addr = cpu_to_be32(0x63fd9008), .val = cpu_to_be32(0x12273030), },
+	{ .addr = cpu_to_be32(0x63fd9004), .val = cpu_to_be32(0x0002002d), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008032), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00008033), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028031), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x052080b0), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008040), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803a), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x0000803b), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00028039), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x05208138), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x04008048), },
+	{ .addr = cpu_to_be32(0x63fd9020), .val = cpu_to_be32(0x00005800), },
+	{ .addr = cpu_to_be32(0x63fd9040), .val = cpu_to_be32(0x04b80003), },
+	{ .addr = cpu_to_be32(0x63fd9058), .val = cpu_to_be32(0x00022227), },
+	{ .addr = cpu_to_be32(0x63fd901c), .val = cpu_to_be32(0x00000000), },
+};
+
+#define APP_DEST	0x70000000
+
+struct imx_flash_header_v2 __flash_header_section flash_header = {
+	.header.tag		= IVT_HEADER_TAG,
+	.header.length		= cpu_to_be16(32),
+	.header.version		= IVT_VERSION,
+
+	.entry			= APP_DEST + 0x1000,
+	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
+	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
+	.self			= APP_DEST + 0x400,
+
+	.boot_data.start	= APP_DEST,
+	.boot_data.size		= DCD_BAREBOX_SIZE,
+
+	.dcd.header.tag		= DCD_HEADER_TAG,
+	.dcd.header.length	= cpu_to_be16(sizeof(struct imx_dcd) + sizeof(dcd_entry)),
+	.dcd.header.version	= DCD_VERSION,
+
+	.dcd.command.tag	= DCD_COMMAND_WRITE_TAG,
+	.dcd.command.length	= cpu_to_be16(sizeof(struct imx_dcd_command) + sizeof(dcd_entry)),
+	.dcd.command.param	= DCD_COMMAND_WRITE_PARAM,
+};
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
new file mode 100644
index 0000000..60c28f7
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -0,0 +1,9 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+	imx53_barebox_entry(0);
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
index 0000000..4f1d8fa
--- /dev/null
+++ b/arch/arm/dts/imx53-voipac-dmm-668.dtsi
@@ -0,0 +1,196 @@
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
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_2>;
+	status = "okay";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 973aa37..dd32fcd 100644
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
@@ -426,6 +427,14 @@ config MACH_FREESCALE_MX53_SMD
 	bool "Freescale i.MX53 SMD"
 	select ARCH_IMX53
 
+config MACH_FREESCALE_MX53_VMX53
+	bool "Voipac i.MX53"
+	select ARCH_IMX53
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	help
+	  Say Y here if you are using the Voipac Technologies VMX53 module
+	  equipped with a Freescale i.MX53 Processor
+
 config MACH_TQMA53
 	bool "TQ i.MX53 TQMa53"
 	select ARCH_IMX53
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

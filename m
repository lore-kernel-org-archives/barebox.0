Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGs9Q-0007Jp-7X
 for barebox@lists.infradead.org; Fri, 21 Feb 2014 15:36:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Feb 2014 16:36:09 +0100
Message-Id: <1392996969-23644-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6: Add Garz+Fricke Santaro board support
To: barebox@lists.infradead.org

Most devices relevant for barebox like sd/emmc/network/uarts
work. Devicetree contains several undefined drive strength settings,
these can be fixed once the kernel has sorted this out.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                        |   1 +
 arch/arm/boards/guf-santaro/Makefile            |   2 +
 arch/arm/boards/guf-santaro/board.c             |  70 +++
 arch/arm/boards/guf-santaro/flash-header.imxcfg | 109 +++++
 arch/arm/boards/guf-santaro/lowlevel.c          |  48 ++
 arch/arm/configs/imx_v7_defconfig               |   1 +
 arch/arm/dts/Makefile                           |   2 +
 arch/arm/dts/imx6q-guf-santaro.dts              | 571 ++++++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                       |   4 +
 images/Makefile.imx                             |   5 +
 10 files changed, 813 insertions(+)
 create mode 100644 arch/arm/boards/guf-santaro/Makefile
 create mode 100644 arch/arm/boards/guf-santaro/board.c
 create mode 100644 arch/arm/boards/guf-santaro/flash-header.imxcfg
 create mode 100644 arch/arm/boards/guf-santaro/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-guf-santaro.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index befddd0..52d1ab1 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -41,6 +41,7 @@ obj-$(CONFIG_MACH_FREESCALE_MX53_VMX53)		+= freescale-mx53-vmx53/
 obj-$(CONFIG_MACH_GE863)			+= telit-evk-pro3/
 obj-$(CONFIG_MACH_GK802)			+= gk802/
 obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
+obj-$(CONFIG_MACH_GUF_SANTARO)			+= guf-santaro/
 obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
 obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
 obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
diff --git a/arch/arm/boards/guf-santaro/Makefile b/arch/arm/boards/guf-santaro/Makefile
new file mode 100644
index 0000000..01c7a25
--- /dev/null
+++ b/arch/arm/boards/guf-santaro/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/guf-santaro/board.c b/arch/arm/boards/guf-santaro/board.c
new file mode 100644
index 0000000..198c90a
--- /dev/null
+++ b/arch/arm/boards/guf-santaro/board.c
@@ -0,0 +1,70 @@
+/*
+ * Copyright (C) 2014 Sascha Hauer <s.hauer@pengutronix.de>
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
+#include <asm/armlinux.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <mach/generic.h>
+#include <sizes.h>
+#include <bootsource.h>
+#include <bbu.h>
+#include <mach/bbu.h>
+#include <mach/imx6.h>
+
+static int santaro_postcore_init(void)
+{
+	if (!of_machine_is_compatible("guf,imx6q-santaro"))
+		return 0;
+
+	imx6_init_lowlevel();
+
+	return 0;
+}
+postcore_initcall(santaro_postcore_init);
+
+static int santaro_device_init(void)
+{
+	uint32_t flag_sd = 0, flag_emmc = 0;
+
+	if (!of_machine_is_compatible("guf,imx6q-santaro"))
+		return 0;
+
+	barebox_set_hostname("santaro");
+
+	writew(0x0, MX6_WDOG1_BASE_ADDR + 0x8);
+	writew(0x0, MX6_WDOG2_BASE_ADDR + 0x8);
+
+	if (bootsource_get() == BOOTSOURCE_MMC) {
+		switch (bootsource_get_instance()) {
+		case 1:
+			flag_sd |= BBU_HANDLER_FLAG_DEFAULT;
+			break;
+		case 3:
+			flag_emmc |= BBU_HANDLER_FLAG_DEFAULT;
+			break;
+		}
+	}
+
+	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc1",
+			flag_sd, NULL, 0, 0);
+	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc3.boot0",
+			flag_emmc, NULL, 0, 0);
+
+	return 0;
+}
+device_initcall(santaro_device_init);
diff --git a/arch/arm/boards/guf-santaro/flash-header.imxcfg b/arch/arm/boards/guf-santaro/flash-header.imxcfg
new file mode 100644
index 0000000..510cae3
--- /dev/null
+++ b/arch/arm/boards/guf-santaro/flash-header.imxcfg
@@ -0,0 +1,109 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+
+wm 32 0x020e0798 0x000c0000
+wm 32 0x020e0758 0x00000000
+
+wm 32 0x020e0588 0x00000030
+wm 32 0x020e0594 0x00000030
+
+wm 32 0x020e056c 0x00000030
+wm 32 0x020e0578 0x00000030
+wm 32 0x020e074c 0x00000030
+
+wm 32 0x020e057c 0x00000030
+
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00000030
+wm 32 0x020e05a0 0x00000030
+wm 32 0x020e078c 0x00000030
+
+wm 32 0x020e0750 0x00020000
+
+wm 32 0x020e05a8 0x00000030
+wm 32 0x020e05b0 0x00000030
+wm 32 0x020e0524 0x00000030
+wm 32 0x020e051c 0x00000030
+wm 32 0x020e0518 0x00000030
+wm 32 0x020e050c 0x00000030
+wm 32 0x020e05b8 0x00000030
+wm 32 0x020e05c0 0x00000030
+
+wm 32 0x020e0774 0x00020000
+
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e0788 0x00000030
+wm 32 0x020e0794 0x00000030
+wm 32 0x020e079c 0x00000030
+wm 32 0x020e07a0 0x00000030
+wm 32 0x020e07a4 0x00000030
+wm 32 0x020e07a8 0x00000030
+wm 32 0x020e0748 0x00000030
+
+wm 32 0x020e05ac 0x00000030
+wm 32 0x020e05b4 0x00000030
+wm 32 0x020e0528 0x00000030
+wm 32 0x020e0520 0x00000030
+wm 32 0x020e0514 0x00000030
+wm 32 0x020e0510 0x00000030
+wm 32 0x020e05bc 0x00000030
+wm 32 0x020e05c4 0x00000030
+
+wm 32 0x021b0800 0xa1390003
+
+wm 32 0x021b080c 0x001f001f
+wm 32 0x021b0810 0x001f001f
+wm 32 0x021b480c 0x001f001f
+wm 32 0x021b4810 0x001f001f
+
+wm 32 0x021b083c 0x4333033f
+wm 32 0x021b0840 0x032c031d
+wm 32 0x021b483c 0x43200332
+wm 32 0x021b4840 0x031a026a
+wm 32 0x021b0848 0x4d464746
+wm 32 0x021b4848 0x47453f4d
+wm 32 0x021b0850 0x3e434440
+wm 32 0x021b4850 0x47384839
+
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b481c 0x33333333
+wm 32 0x021b4820 0x33333333
+wm 32 0x021b4824 0x33333333
+wm 32 0x021b4828 0x33333333
+
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+
+wm 32 0x021b0004 0x00020036
+wm 32 0x021b0008 0x09444040
+wm 32 0x021b000c 0x555a7975
+wm 32 0x021b0010 0xff538f64
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b0018 0x00001740
+
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x005a1023
+wm 32 0x021b0040 0x00000027
+
+wm 32 0x021b0000 0x831a0000
+
+wm 32 0x021b001c 0x04088032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x09408030
+wm 32 0x021b001c 0x04008040
+
+wm 32 0x021b0020 0x00005800
+
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b4818 0x00011117
+
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
+
diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
new file mode 100644
index 0000000..da6d92a
--- /dev/null
+++ b/arch/arm/boards/guf-santaro/lowlevel.c
@@ -0,0 +1,48 @@
+#include <common.h>
+#include <sizes.h>
+#include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx6-regs.h>
+#include <debug_ll.h>
+
+static inline void setup_uart(void)
+{
+	void __iomem *uartbase = (void *)MX6_UART2_BASE_ADDR;
+	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;
+
+	writel(0x1, iomuxbase + 0x2b0);
+
+	writel(0x00000000, uartbase + 0x80);
+	writel(0x00004027, uartbase + 0x84);
+	writel(0x00000704, uartbase + 0x88);
+	writel(0x00000a81, uartbase + 0x90);
+	writel(0x0000002b, uartbase + 0x9c);
+	writel(0x00013880, uartbase + 0xb0);
+	writel(0x0000047f, uartbase + 0xa4);
+	writel(0x0000c34f, uartbase + 0xa8);
+	writel(0x00000001, uartbase + 0x80);
+
+	putc_ll('>');
+}
+
+extern char __dtb_imx6q_guf_santaro_start[];
+
+ENTRY_FUNCTION(start_imx6q_guf_santaro, r0, r1, r2)
+{
+	uint32_t fdt;
+	int i;
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	for (i = 0x68; i <= 0x80; i += 4)
+		writel(0xffffffff, MX6_CCM_BASE_ADDR + i);
+
+	setup_uart();
+
+	fdt = (uint32_t)__dtb_imx6q_guf_santaro_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 0f8b3ef..3a1dcc9 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -7,6 +7,7 @@ CONFIG_MACH_TQMA53=y
 CONFIG_MACH_FREESCALE_MX53_VMX53=y
 CONFIG_MACH_PHYTEC_PFLA02=y
 CONFIG_MACH_DFI_FS700_M60=y
+CONFIG_MACH_GUF_SANTARO=y
 CONFIG_MACH_REALQ7=y
 CONFIG_MACH_GK802=y
 CONFIG_MACH_TQMA6X=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 07508e3..3fb4e71 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -22,6 +22,7 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-mba6x.dtb \
 	imx6q-phytec-pbab01.dtb \
 	imx6dl-hummingboard.dtb \
+	imx6q-guf-santaro.dtb \
 	imx6q-nitrogen6x.dtb \
 	imx6dl-nitrogen6x.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox.dtb
@@ -54,6 +55,7 @@ pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD) += imx6dl-hummingboard.dtb.o
 pbl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
+pbl-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
 pbl-$(CONFIG_MACH_NITROGEN6X) += imx6q-nitrogen6x.dtb.o imx6dl-nitrogen6x.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
new file mode 100644
index 0000000..db93a48
--- /dev/null
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -0,0 +1,571 @@
+/*
+ * Copyright 2014 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http:/*www.opensource.org/licenses/gpl-license.html
+ * http:/*www.gnu.org/copyleft/gpl.html
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include "imx6q.dtsi"
+
+/ {
+	model = "Garz+Fricke i.MX6q Santaro";
+	compatible = "guf,imx6q-santaro", "fsl,imx6q";
+
+	memory {
+		reg = <0x10000000 0x40000000>;
+	};
+
+	chosen {
+		linux,stdout-path = &uart2;
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &usdhc2, "partname:barebox-environment";
+		};
+	};
+
+	reg_backlight: reg_backlight {
+		compatible = "regulator-fixed";
+		regulator-name = "3P3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio5 22 0>;
+		enable-active-high;
+	};
+
+	backlight {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_backlight>;
+		compatible = "pwm-backlight";
+		pwms = <&pwm1 0 5000000>;
+		brightness-levels = <0 4 8 16 32 64 128 255>;
+		default-brightness-level = <7>;
+		power-supply = <&reg_backlight>;
+		status = "okay";
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet>;
+	phy-mode = "rmii";
+	status = "okay";
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	eeprom: m24c64@50 {
+		compatible = "st,24c32", "at24";
+		reg = <0x50>;
+	};
+
+	pmic: pf0100@08 {
+		status = "disabled";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		compatible = "pf0100-regulator";
+		reg = <0x08>;
+		interrupt-parent = <&gpio7>;
+		interrupts = <13 8>;
+
+		regulators {
+			reg_vddcore: sw1ab {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+			};
+
+			reg_vddsoc: sw1c {
+				regulator-min-microvolt = <300000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+			};
+
+			reg_gen_3v3: sw2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_1v5a: sw3a {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_1v5b: sw3b {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_ddr_vtt: sw4 {
+				regulator-min-microvolt = <400000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			reg_5v_600mA: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+				regulator-always-on;
+			};
+
+			reg_snvs_3v: vsnvs {
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+			};
+
+			reg_vrefddr: vrefddr {
+				regulator-min-microvolt = <750000>;
+				regulator-max-microvolt = <750000>;
+				regulator-always-on;
+			};
+
+			reg_vgen1_1v5: vgen1 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				/* not used */
+			};
+
+			reg_vgen2_1v2_eth: vgen2 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+				regulator-always-on;
+			};
+
+			reg_vgen3_2v8: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen4_1v8: vgen4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen5_1v8_eth: vgen5 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+
+			reg_vgen6_3v3: vgen6 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-always-on;
+			};
+		};
+	};
+
+	codec: sgtl5000@0a {
+		compatible = "fsl,sgtl5000";
+		reg = <0x0a>;
+		clocks = <&clks 201>;
+	};
+
+	rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+
+	temp@49 {
+		compatible = "ti,lm73";
+		reg = <0x49>;
+	};
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c3>;
+	status = "okay";
+
+	polytouch: edt-ft5x06@38 {
+		compatible = "edt,edt-ft5x06";
+		reg = <0x38>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_touch>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio1 20 1>;
+		wake-gpios = <&gpio1 18 0>;
+		edt,threshold = <30>;
+		edt,gain = <3>;
+		edt,offset = <0>;
+		edt,report-rate = <8>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6qdl-santaro {
+		pinctrl_hog: hoggrp {
+			fsl,pins = <
+				MX6QDL_PAD_DISP0_DAT13__GPIO5_IO07		0x80000000 /* ATDETECT */
+				MX6QDL_PAD_DISP0_DAT14__GPIO5_IO08		0x80000000 /* EXTPWR */
+				MX6QDL_PAD_CSI0_PIXCLK__GPIO5_IO18		0x80000000 /* LED1 */
+				MX6QDL_PAD_DISP0_DAT10__GPIO4_IO31		0x80000000 /* CLEAR_ALL */
+				MX6QDL_PAD_GPIO_9__WDOG1_B			0x80000000 /* WDT_OUTPUT */
+				MX6QDL_PAD_DISP0_DAT8__GPIO4_IO29		0x80000000 /* RTC_INT */
+				MX6QDL_PAD_DISP0_DAT7__GPIO4_IO28		0x80000000 /* TALERT */
+				MX6QDL_PAD_SD3_DAT2__GPIO7_IO06			0x80000000 /* KP5V_OC */
+				MX6QDL_PAD_SD3_DAT3__GPIO7_IO07			0x80000000 /* KP5V_PWR */
+				MX6QDL_PAD_DISP0_DAT9__GPIO4_IO30		0x80000000 /* PFO_12V */
+
+				MX6QDL_PAD_CSI0_DAT6__GPIO5_IO24		0x80000000 /* DIG_IN1 */
+				MX6QDL_PAD_CSI0_DAT5__GPIO5_IO23		0x80000000 /* DIG_IN2 */
+				MX6QDL_PAD_SD1_DAT1__GPIO1_IO17			0x80000000 /* DIG_OUT1 */
+				MX6QDL_PAD_CSI0_DAT7__GPIO5_IO25		0x80000000 /* DIG_OUT2 */
+
+				MX6QDL_PAD_SD3_DAT3__GPIO7_IO07			0x80000000 /* KP_5V0 */
+			>;
+		};
+
+		pinctrl_audio: audiogrp {
+			fsl,pins = <
+				MX6QDL_PAD_DISP0_DAT20__AUD4_TXC		0x80000000
+				MX6QDL_PAD_DISP0_DAT21__AUD4_TXD		0x80000000
+				MX6QDL_PAD_DISP0_DAT22__AUD4_TXFS		0x80000000
+				MX6QDL_PAD_DISP0_DAT23__AUD4_RXD		0x80000000
+				MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1			0x80000000 /* SGTL500 sys_mclk */
+				MX6QDL_PAD_CSI0_DAT11__GPIO5_IO29		0x80000000 /* SPEAKER_ON */
+			>;
+		};
+
+		pinctrl_display: displaygrp {
+			fsl,pins = <
+				/* LVDS-GPIO */
+				MX6QDL_PAD_CSI0_VSYNC__GPIO5_IO21		0x80000000 /* LCD_ENABLE */
+				MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20		0x80000000 /* SEL6_8 */
+			>;
+		};
+
+		pinctrl_backlight: backlightgrp {
+			fsl,pins = <
+				MX6QDL_PAD_SD1_DAT3__PWM1_OUT			0x80000000 /* BL-PWM-Out */
+				MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22		0x80000000 /* BL-ON */
+			>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <
+				/* I2C1	(internal) */
+				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA			0x4001b8b1
+				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL			0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <
+				/* I2C3  (HDMI-DCC, ResTOUCH, CTOUCH ) */
+				MX6QDL_PAD_GPIO_5__I2C3_SCL			0x4001b8b1
+				MX6QDL_PAD_GPIO_6__I2C3_SDA			0x4001b8b1
+			>;
+		};
+
+		pinctrl_touch: touchgrp {
+			fsl,pins = <
+				MX6QDL_PAD_DISP0_DAT5__GPIO4_IO26		0x80000000 /* CTOUCH_INT2 */
+				MX6QDL_PAD_DISP0_DAT6__GPIO4_IO27		0x80000000 /* CTOUCH_INT */
+				MX6QDL_PAD_SD1_CMD__GPIO1_IO18			0x80000000 /* CTOUCH_RESET2 */
+				MX6QDL_PAD_SD1_CLK__GPIO1_IO20			0x80000000 /* CTOUCH_RESET */
+				MX6QDL_PAD_DISP0_DAT12__GPIO5_IO06		0x80000000 /* ResTOUCH_INT */
+			>;
+		};
+
+		pinctrl_ecspi2: ecspi2grp {
+			fsl,pins = <
+				/* CTOUCH */
+				MX6QDL_PAD_DISP0_DAT16__ECSPI2_MOSI		0x80000000
+				MX6QDL_PAD_DISP0_DAT17__ECSPI2_MISO		0x80000000
+				MX6QDL_PAD_DISP0_DAT18__ECSPI2_SS0		0x80000000
+				MX6QDL_PAD_DISP0_DAT19__ECSPI2_SCLK		0x80000000
+				MX6QDL_PAD_EIM_A25__ECSPI2_RDY			0x80000000
+			>;
+		};
+
+		pinctrl_can1: can1grp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_7__FLEXCAN1_TX			0x80000000
+				MX6QDL_PAD_GPIO_8__FLEXCAN1_RX			0x80000000
+			>;
+		};
+
+		pinctrl_can2: can2grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_DAT0__FLEXCAN2_TX		0x80000000
+				MX6QDL_PAD_SD3_DAT1__FLEXCAN2_RX		0x80000000
+			>;
+		};
+
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_DAT6__UART1_RX_DATA		0x1b0b1
+				MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA		0x1b0b1
+				MX6QDL_PAD_DISP0_DAT15__GPIO5_IO09		0x1b0b1 /* CAN/RS485_PWR_EN */
+				MX6QDL_PAD_SD3_RST__GPIO7_IO08			0x1b0b1 /* RS485_DE */
+			>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_DAT5__UART2_TX_DATA		0x1b0b1
+				MX6QDL_PAD_SD3_DAT4__UART2_RX_DATA		0x1b0b1
+				MX6QDL_PAD_SD3_CMD__UART2_CTS_B			0x1b0b1
+				MX6QDL_PAD_SD3_CLK__UART2_RTS_B			0x1b0b1
+			>;
+		};
+
+		pinctrl_uart4: uart4grp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT12__UART4_TX_DATA		0x1b0b1
+				MX6QDL_PAD_CSI0_DAT13__UART4_RX_DATA		0x1b0b1
+				MX6QDL_PAD_CSI0_DAT16__UART4_RTS_B		0x1b0b1
+				MX6QDL_PAD_CSI0_DAT17__UART4_CTS_B		0x1b0b1
+			>;
+		};
+
+		pinctrl_uart5: uart5grp {
+			fsl,pins = <
+				MX6QDL_PAD_CSI0_DAT14__UART5_TX_DATA		0x1b0b1
+				MX6QDL_PAD_CSI0_DAT15__UART5_RX_DATA		0x1b0b1
+				MX6QDL_PAD_CSI0_DAT18__UART5_RTS_B		0x1b0b1
+				MX6QDL_PAD_CSI0_DAT19__UART5_CTS_B		0x1b0b1
+				MX6QDL_PAD_CSI0_DAT10__GPIO5_IO28		0x1b0b1 /* uC_MDB_WakeUpOut */
+			>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD2_CLK__SD2_CLK			0x80000000
+				MX6QDL_PAD_SD2_CMD__SD2_CMD			0x80000000
+				MX6QDL_PAD_SD2_DAT0__SD2_DATA0			0x80000000
+				MX6QDL_PAD_SD2_DAT1__SD2_DATA1			0x80000000
+				MX6QDL_PAD_SD2_DAT2__SD2_DATA2			0x80000000
+				MX6QDL_PAD_SD2_DAT3__SD2_DATA3			0x80000000
+				MX6QDL_PAD_GPIO_2__GPIO1_IO02			0x80000000
+				MX6QDL_PAD_GPIO_4__GPIO1_IO04			0x80000000
+			>;
+		};
+
+		pinctrl_usdhc4: usdhc4grp {
+			fsl,pins = <
+				MX6QDL_PAD_SD4_CLK__SD4_CLK			0x80000000
+				MX6QDL_PAD_SD4_CMD__SD4_CMD			0x80000000
+				MX6QDL_PAD_SD4_DAT0__SD4_DATA0			0x80000000
+				MX6QDL_PAD_SD4_DAT1__SD4_DATA1			0x80000000
+				MX6QDL_PAD_SD4_DAT2__SD4_DATA2			0x80000000
+				MX6QDL_PAD_SD4_DAT3__SD4_DATA3			0x80000000
+				MX6QDL_PAD_SD4_DAT4__SD4_DATA4			0x80000000
+				MX6QDL_PAD_SD4_DAT5__SD4_DATA5			0x80000000
+				MX6QDL_PAD_SD4_DAT6__SD4_DATA6			0x80000000
+				MX6QDL_PAD_SD4_DAT7__SD4_DATA7			0x80000000
+			>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_MDIO__ENET_MDIO			0x1b0b0
+				MX6QDL_PAD_ENET_MDC__ENET_MDC			0x1b0b0
+				MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN		0x1b0b0
+				MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER		0x1b0b0
+				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN		0x1b0b0
+				MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0		0x1b0b0
+				MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1		0x1b0b0
+				MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0		0x1b0b0
+				MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1		0x1b0b0
+				MX6QDL_PAD_GPIO_16__ENET_REF_CLK		0x1b0b0 /* REF_CLK (in) */
+				MX6QDL_PAD_ENET_REF_CLK__GPIO1_IO23		0x1b0b0 /* FEC_INT */
+			>;
+		};
+
+		pinctrl_usbh1: usbh1grp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_0__USB_H1_PWR			0x80000000
+				MX6QDL_PAD_GPIO_3__USB_H1_OC			0x80000000
+				MX6QDL_PAD_SD1_DAT0__GPIO1_IO16			0x80000000 /* USB_HUB_CONNECT */
+				MX6QDL_PAD_GPIO_17__GPIO7_IO12			0x80000000 /* USB_HUB_INT */
+			>;
+		};
+
+		pinctrl_usbh2: usbh2grp {
+			fsl,pins = <
+				MX6QDL_PAD_RGMII_TXC__USB_H2_DATA		0x80000000 /* USBH2_DATA */
+				MX6QDL_PAD_RGMII_TX_CTL__USB_H2_STROBE		0x80000000 /* USBH2_STROBE */
+			>;
+		};
+
+		pinctrl_usboth: usbotggrp {
+			fsl,pins = <
+				MX6QDL_PAD_KEY_COL4__USB_OTG_OC			0x80000000
+				MX6QDL_PAD_KEY_ROW4__USB_OTG_PWR		0x80000000
+				MX6QDL_PAD_GPIO_1__USB_OTG_ID			0x80000000
+			>;
+		};
+
+		pinctrl_pmic: pmicgrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_18__GPIO7_IO13			0x80000000 /* PMIC_INT_B */
+			>;
+		};
+
+		pinctrl_pfid: pfidgrp {
+			fsl,pins = <
+				MX6QDL_PAD_NANDF_D0__GPIO2_IO00			0x80000000 /* PFID0 */
+				MX6QDL_PAD_NANDF_D1__GPIO2_IO01			0x80000000 /* PFID1 */
+				MX6QDL_PAD_NANDF_D2__GPIO2_IO02			0x80000000 /* PFID2 */
+				MX6QDL_PAD_NANDF_D3__GPIO2_IO03			0x80000000 /* PFID3 */
+				MX6QDL_PAD_NANDF_D4__GPIO2_IO04			0x80000000 /* PFID4 */
+				MX6QDL_PAD_NANDF_D5__GPIO2_IO05			0x80000000 /* PFID5 */
+				MX6QDL_PAD_NANDF_D6__GPIO2_IO06			0x80000000 /* PFID6 */
+				MX6QDL_PAD_NANDF_D7__GPIO2_IO07			0x80000000 /* PFID7 */
+			>;
+		};
+
+		pinctrl_sram: sramgrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_CS0__EIM_CS0_B			0x80000000
+				MX6QDL_PAD_EIM_DA0__EIM_AD00			0x80000000
+				MX6QDL_PAD_EIM_DA1__EIM_AD01			0x80000000
+				MX6QDL_PAD_EIM_DA2__EIM_AD02			0x80000000
+				MX6QDL_PAD_EIM_DA3__EIM_AD03			0x80000000
+				MX6QDL_PAD_EIM_DA4__EIM_AD04			0x80000000
+				MX6QDL_PAD_EIM_DA5__EIM_AD05			0x80000000
+				MX6QDL_PAD_EIM_DA6__EIM_AD06			0x80000000
+				MX6QDL_PAD_EIM_DA7__EIM_AD07			0x80000000
+				MX6QDL_PAD_EIM_DA8__EIM_AD08			0x80000000
+				MX6QDL_PAD_EIM_DA9__EIM_AD09			0x80000000
+				MX6QDL_PAD_EIM_DA10__EIM_AD10			0x80000000
+				MX6QDL_PAD_EIM_DA11__EIM_AD11			0x80000000
+				MX6QDL_PAD_EIM_DA12__EIM_AD12			0x80000000
+				MX6QDL_PAD_EIM_DA13__EIM_AD13			0x80000000
+				MX6QDL_PAD_EIM_DA14__EIM_AD14			0x80000000
+				MX6QDL_PAD_EIM_DA15__EIM_AD15			0x80000000
+				MX6QDL_PAD_EIM_A16__EIM_ADDR16			0x80000000
+				MX6QDL_PAD_EIM_A17__EIM_ADDR17			0x80000000
+				MX6QDL_PAD_EIM_A18__EIM_ADDR18			0x80000000
+				MX6QDL_PAD_EIM_A19__EIM_ADDR19			0x80000000
+				MX6QDL_PAD_EIM_A20__EIM_ADDR20			0x80000000
+				MX6QDL_PAD_EIM_D16__EIM_DATA16			0x80000000
+				MX6QDL_PAD_EIM_D17__EIM_DATA17			0x80000000
+				MX6QDL_PAD_EIM_D18__EIM_DATA18			0x80000000
+				MX6QDL_PAD_EIM_D19__EIM_DATA19			0x80000000
+				MX6QDL_PAD_EIM_D20__EIM_DATA20			0x80000000
+				MX6QDL_PAD_EIM_D21__EIM_DATA21			0x80000000
+				MX6QDL_PAD_EIM_D22__EIM_DATA22			0x80000000
+				MX6QDL_PAD_EIM_D23__EIM_DATA23			0x80000000
+				MX6QDL_PAD_EIM_D24__EIM_DATA24			0x80000000
+				MX6QDL_PAD_EIM_D25__EIM_DATA25			0x80000000
+				MX6QDL_PAD_EIM_D26__EIM_DATA26			0x80000000
+				MX6QDL_PAD_EIM_D27__EIM_DATA27			0x80000000
+				MX6QDL_PAD_EIM_D28__EIM_DATA28			0x80000000
+				MX6QDL_PAD_EIM_D29__EIM_DATA29			0x80000000
+				MX6QDL_PAD_EIM_D30__EIM_DATA30			0x80000000
+				MX6QDL_PAD_EIM_D31__EIM_DATA31			0x80000000
+			>;
+		};
+	};
+};
+
+&ldb {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_display>;
+
+	lvds-channel@0 {
+		status = "okay";
+		fsl,data-mapping = "spwg";
+		fsl,data-width = <18>;
+		gpios = <&gpio5 21 GPIO_ACTIVE_HIGH>;
+
+		display-timings {
+			timing0: 800x480 {
+				clock-frequency = <35338240>;
+				hactive = <800>;
+				vactive = <480>;
+				hfront-porch = <100>;
+				hback-porch = <100>;
+				hsync-len = <24>;
+				hsync-active = <1>;
+				vfront-porch = <5>;
+				vback-porch = <5>;
+				vsync-len = <3>;
+				vsync-active = <1>;
+			};
+		};
+	};
+};
+
+&uart1 {
+	/* RS485 */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	/* RS232 debug port */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	fsl,uart-has-rtscts;
+	status = "okay";
+};
+
+&uart4 {
+	/* TTL internal */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4>;
+	fsl,uart-has-rtscts;
+	status = "okay";
+};
+
+&uart5 {
+	/* RS232 MDB */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart5>;
+	fsl,uart-has-rtscts;
+	status = "okay";
+};
+
+&usdhc2 {
+	/* SD card socket */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <4>;
+	cd-gpios = <&gpio2 2 0>;
+	wp-gpios = <&gpio2 3 0>;
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox-environment";
+		reg = <0x80000 0x80000>;
+	};
+};
+
+&usdhc4 {
+	/* eMMC */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc4>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5933f81..4346a80 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -207,6 +207,10 @@ config MACH_DFI_FS700_M60
 	bool "DFI i.MX6 FS700 M60 Q7 Board"
 	select ARCH_IMX6
 
+config MACH_GUF_SANTARO
+	bool "Garz+Fricke Santaro Board"
+	select ARCH_IMX6
+
 config MACH_REALQ7
 	bool "DataModul i.MX6Q Real Qseven Board"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 9aca871..d1a29a0 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -57,6 +57,11 @@ CFG_start_imx6_realq7.pblx.imximg = $(board)/datamodul-edm-qmx6/flash-header.imx
 FILE_barebox-datamodul-edm-qmx6.img = start_imx6_realq7.pblx.imximg
 image-$(CONFIG_MACH_REALQ7) += barebox-datamodul-edm-qmx6.img
 
+pblx-$(CONFIG_MACH_GUF_SANTARO) += start_imx6q_guf_santaro
+CFG_start_imx6q_guf_santaro.pblx.imximg = $(board)/guf-santaro/flash-header.imxcfg
+FILE_barebox-guf-santaro.img = start_imx6q_guf_santaro.pblx.imximg
+image-$(CONFIG_MACH_GUF_SANTARO) += barebox-guf-santaro.img
+
 pblx-$(CONFIG_MACH_GK802) += start_imx6_gk802
 CFG_start_imx6_gk802.pblx.imximg = $(board)/gk802/flash-header.imxcfg
 FILE_barebox-gk802.img = start_imx6_gk802.pblx.imximg
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YYvGn-0006TF-P6
 for barebox@lists.infradead.org; Fri, 20 Mar 2015 11:39:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Mar 2015 12:38:53 +0100
Message-Id: <1426851533-12405-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Add ELTEC HiPerCam board support
To: Barebox List <barebox@lists.infradead.org>

This adds support for the i.MX6 based Eltec HiPerCam board.
This board comes with different i.MX6 flavours and different
memory sizes. Currently supported is the i.MX6dl version with
256MB DDR3 RAM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/eltec-hipercam/Makefile            |   2 +
 arch/arm/boards/eltec-hipercam/board.c             |  31 ++
 .../flash-header-eltec-hipercam.imxcfg             | 105 +++++++
 arch/arm/boards/eltec-hipercam/lowlevel.c          |  56 ++++
 arch/arm/configs/imx_v7_defconfig                  |   1 +
 arch/arm/dts/Makefile                              |   1 +
 arch/arm/dts/imx6dl-eltec-hipercam.dts             | 324 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |   4 +
 images/Makefile.imx                                |   5 +
 10 files changed, 530 insertions(+)
 create mode 100644 arch/arm/boards/eltec-hipercam/Makefile
 create mode 100644 arch/arm/boards/eltec-hipercam/board.c
 create mode 100644 arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
 create mode 100644 arch/arm/boards/eltec-hipercam/lowlevel.c
 create mode 100644 arch/arm/dts/imx6dl-eltec-hipercam.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index aee1665..548a84a 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -37,6 +37,7 @@ obj-$(CONFIG_MACH_EUKREA_CPUIMX25)		+= eukrea_cpuimx25/
 obj-$(CONFIG_MACH_EUKREA_CPUIMX27)		+= eukrea_cpuimx27/
 obj-$(CONFIG_MACH_EUKREA_CPUIMX35)		+= eukrea_cpuimx35/
 obj-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		+= eukrea_cpuimx51/
+obj-$(CONFIG_MACH_ELTEC_HIPERCAM)		+= eltec-hipercam/
 obj-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	+= freescale-mx25-3ds/
 obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3ds/
 obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-babbage/
diff --git a/arch/arm/boards/eltec-hipercam/Makefile b/arch/arm/boards/eltec-hipercam/Makefile
new file mode 100644
index 0000000..092c31d
--- /dev/null
+++ b/arch/arm/boards/eltec-hipercam/Makefile
@@ -0,0 +1,2 @@
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/eltec-hipercam/board.c b/arch/arm/boards/eltec-hipercam/board.c
new file mode 100644
index 0000000..7486747
--- /dev/null
+++ b/arch/arm/boards/eltec-hipercam/board.c
@@ -0,0 +1,31 @@
+/*
+ * Copyright (C) 2015 Sascha Hauer <s.hauer@pengutronix.de>
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
+#include <init.h>
+#include <bbu.h>
+#include <mach/bbu.h>
+
+static int hipercam_init(void)
+{
+	if (!of_machine_is_compatible("eltec,hipercam-rev01"))
+		return 0;
+
+	imx6_bbu_internal_spi_i2c_register_handler("nor", "/dev/m25p0.barebox",
+			BBU_HANDLER_FLAG_DEFAULT);
+
+	return 0;
+}
+device_initcall(hipercam_init);
diff --git a/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg b/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
new file mode 100644
index 0000000..455417e
--- /dev/null
+++ b/arch/arm/boards/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
@@ -0,0 +1,105 @@
+soc imx6
+loadaddr 0x10000000
+
+wm 32 0x020e04bc 0x00000030
+wm 32 0x020e04c0 0x00000030
+wm 32 0x020e04c4 0x00000030
+wm 32 0x020e04c8 0x00000030
+wm 32 0x020e04cc 0x00000030
+wm 32 0x020e04d0 0x00000030
+wm 32 0x020e04d4 0x00000030
+wm 32 0x020e04d8 0x00000030
+wm 32 0x020e0764 0x00000030
+wm 32 0x020e0770 0x00000030
+wm 32 0x020e0778 0x00000030
+wm 32 0x020e077c 0x00000030
+wm 32 0x020e0780 0x00000030
+wm 32 0x020e0784 0x00000030
+wm 32 0x020e078c 0x00000030
+wm 32 0x020e0748 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e076c 0x00000030
+wm 32 0x020e0470 0x00020030
+wm 32 0x020e0474 0x00020030
+wm 32 0x020e0478 0x00020030
+wm 32 0x020e047c 0x00020030
+wm 32 0x020e0480 0x00020030
+wm 32 0x020e0484 0x00020030
+wm 32 0x020e0488 0x00020030
+wm 32 0x020e048c 0x00020030
+wm 32 0x020e0464 0x00020030
+wm 32 0x020e0490 0x00020030
+wm 32 0x020e04ac 0x00020030
+wm 32 0x020e04b0 0x00020030
+wm 32 0x020e0494 0x00020030
+wm 32 0x020e04a4 0x00003000
+wm 32 0x020e04a8 0x00003000
+wm 32 0x020e04b4 0x00003030
+wm 32 0x020e04b8 0x00003030
+wm 32 0x020e0750 0x00020000
+wm 32 0x020e0760 0x00020000
+wm 32 0x020e0754 0x00000000
+wm 32 0x020e04a0 0x00000000
+wm 32 0x020e0774 0x000c0000
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
+wm 32 0x021b0004 0x0002002d
+wm 32 0x021b000c 0x8c435323
+wm 32 0x021b0010 0xb66e8d63
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x00431023
+wm 32 0x021b0008 0x00333030
+wm 32 0x021b0004 0x0002556d
+wm 32 0x021b0040 0x00000027
+wm 32 0x021b0000 0xc4190000
+wm 32 0x021b001c 0x04008032
+wm 32 0x021b001c 0x0400803a
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x0000803b
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x00048039
+wm 32 0x021b001c 0x13208030
+wm 32 0x021b001c 0x13208038
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b001c 0x04008048
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b4800 0xa1390003
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00022227
+wm 32 0x021b4818 0x00022227
+wm 32 0x021b083c 0x42350231
+wm 32 0x021b483c 0x42350231
+wm 32 0x021b0840 0x021a0218
+wm 32 0x021b4840 0x021a0218
+wm 32 0x021b0848 0x4b4b4e49
+wm 32 0x021b4848 0x4b4b4e49
+wm 32 0x021b0850 0x3f3f3035
+wm 32 0x021b4850 0x3f3f3035
+wm 32 0x021b080c 0x0040003c
+wm 32 0x021b0810 0x0032003e
+wm 32 0x021b480c 0x0040003c
+wm 32 0x021b4810 0x0032003e
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
+wm 32 0x020e0010 0xf00000cf
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+wm 32 0x020c4060 0x000000fb
diff --git a/arch/arm/boards/eltec-hipercam/lowlevel.c b/arch/arm/boards/eltec-hipercam/lowlevel.c
new file mode 100644
index 0000000..8f11f67
--- /dev/null
+++ b/arch/arm/boards/eltec-hipercam/lowlevel.c
@@ -0,0 +1,56 @@
+/*
+ * Copyright (C) 2015 Sascha Hauer <s.hauer@pengutronix.de>
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
+#include <common.h>
+#include <linux/sizes.h>
+#include <io.h>
+#include <debug_ll.h>
+#include <asm/sections.h>
+#include <asm/mmu.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/generic.h>
+
+static void setup_uart(void)
+{
+	void __iomem *uart_base = (void *)0x02020000;
+
+	writel(0x1, 0x020e0330);
+	writel(0x00000000, uart_base + 0x80);
+	writel(0x00004027, uart_base + 0x84);
+	writel(0x00000704, uart_base + 0x88);
+	writel(0x00000a81, uart_base + 0x90);
+	writel(0x0000002b, uart_base + 0x9c);
+	writel(0x00013880, uart_base + 0xb0);
+	writel(0x0000047f, uart_base + 0xa4);
+	writel(0x0000c34f, uart_base + 0xa8);
+	writel(0x00000001, uart_base + 0x80);
+	putc_ll('>');
+}
+
+extern char __dtb_imx6dl_eltec_hipercam_start[];
+
+ENTRY_FUNCTION(start_imx6dl_eltec_hipercam, r0, r1, r2)
+{
+	void *fdt;
+
+	imx6_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00940000 - 8);
+	setup_uart();
+
+	fdt = __dtb_imx6dl_eltec_hipercam_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_256M, fdt);
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index c4c28a0..7dd6e6f 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -12,6 +12,7 @@ CONFIG_MACH_DFI_FS700_M60=y
 CONFIG_MACH_GUF_SANTARO=y
 CONFIG_MACH_REALQ7=y
 CONFIG_MACH_GK802=y
+CONFIG_MACH_ELTEC_HIPERCAM=y
 CONFIG_MACH_TQMA6X=y
 CONFIG_MACH_TX6X=y
 CONFIG_MACH_SABRELITE=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 2bb9c1c..cc92bde 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -12,6 +12,7 @@ pbl-dtb-$(CONFIG_MACH_BEAGLEBONE) += am335x-bone.dtb.o am335x-boneblack.dtb.o am
 pbl-dtb-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
 pbl-dtb-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
 pbl-dtb-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
+pbl-dtb-$(CONFIG_MACH_ELTEC_HIPERCAM) += imx6dl-eltec-hipercam.dtb.o
 pbl-dtb-$(CONFIG_MACH_EMBEST_RIOTBOARD) += imx6s-riotboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_EMBEDSKY_E9) += imx6q-embedsky-e9.dtb.o
 pbl-dtb-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
new file mode 100644
index 0000000..8140c4b
--- /dev/null
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -0,0 +1,324 @@
+/dts-v1/;
+
+#include "imx6dl.dtsi"
+
+/ {
+	model = "ELTEC HiPerCam";
+	compatible = "eltec,hipercam-rev01", "fsl,imx6dl";
+
+	memory {
+		reg = <0x10000000 0x10000000>;
+	};
+
+	chosen {
+		stdout-path = &uart1;
+
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &norflash0, "partname:bareboxenv";
+		};
+	};
+};
+
+&ecspi1 {
+	status = "okay";
+	fsl,spi-num-chipselects = <2>;
+	pinctrl-names = "default";
+	cs-gpios = <&gpio2 30 0 &gpio3 19 0>;
+	pinctrl-0 = <&pinctrl_ecspi1>;
+
+	norflash0: s25fl129p1@0 {
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+		compatible = "st,s25fl129p1";
+		spi-max-frequency = <20000000>;
+		reg = <0x0>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xc0000>;
+		};
+
+		partition@1 {
+			label = "bareboxenv";
+			reg = <0xc0000 0x8000>;
+		};
+
+		partition@2 {
+			label = "persistent";
+			reg = <0x100000 0xf00000>;
+		};
+	};
+
+	norflash1: s25fl129p1@1 {
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+		compatible = "st,s25fl129p1";
+		spi-max-frequency = <20000000>;
+		reg = <0x1>;
+
+		partition@0 {
+			label = "Linux";
+			reg = <0x0 0x1000000>;
+		};
+	};
+};
+
+&uart1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+};
+
+&pcie {
+	status = "okay";
+	reset-gpio = <&gpio7 12 0x0>;
+};
+
+&usdhc3 {
+	bus-width = <0x4>;
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	cd-gpios = <&gpio2 2 0>;
+	wp-gpios = <&gpio2 1 0>;
+	no-1-8-v;
+};
+
+&i2c2 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <0x20>;
+
+	eeprom@0x52 {
+		compatible = "amtel,24c04";
+		reg = <0x52>;
+		pagesize = <0x10>;
+	};
+
+	pfuze100@08 {
+		compatible = "fsl,pfuze100";
+		reg = <0x8>;
+
+		regulators {
+			sw1ab {
+				regulator-min-microvolt = <0x493e0>;
+				regulator-max-microvolt = <0x1c9c38>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <0x186a>;
+			};
+
+			sw1c {
+				regulator-min-microvolt = <0x493e0>;
+				regulator-max-microvolt = <0x1c9c38>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <0x186a>;
+			};
+
+			sw2 {
+				regulator-min-microvolt = <0xc3500>;
+				regulator-max-microvolt = <0x325aa0>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3a {
+				regulator-min-microvolt = <0x61a80>;
+				regulator-max-microvolt = <0x1e22d8>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw3b {
+				regulator-min-microvolt = <0x61a80>;
+				regulator-max-microvolt = <0x1e22d8>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			sw4 {
+				regulator-min-microvolt = <0xc3500>;
+				regulator-max-microvolt = <0x325aa0>;
+			};
+
+			swbst {
+				regulator-min-microvolt = <0x4c4b40>;
+				regulator-max-microvolt = <0x4e9530>;
+			};
+
+			vsnvs {
+				regulator-min-microvolt = <0xf4240>;
+				regulator-max-microvolt = <0x2dc6c0>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vrefddr {
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			vgen1 {
+				regulator-min-microvolt = <0xc3500>;
+				regulator-max-microvolt = <0x17a6b0>;
+			};
+
+			vgen2 {
+				regulator-min-microvolt = <0xc3500>;
+				regulator-max-microvolt = <0x17a6b0>;
+			};
+
+			vgen3 {
+				regulator-min-microvolt = <0x1b7740>;
+				regulator-max-microvolt = <0x325aa0>;
+			};
+
+			vgen4 {
+				regulator-min-microvolt = <0x1b7740>;
+				regulator-max-microvolt = <0x325aa0>;
+				regulator-always-on;
+			};
+
+			vgen5 {
+				regulator-min-microvolt = <0x1b7740>;
+				regulator-max-microvolt = <0x325aa0>;
+				regulator-always-on;
+			};
+
+			vgen6 {
+				regulator-min-microvolt = <0x1b7740>;
+				regulator-max-microvolt = <0x325aa0>;
+				regulator-always-on;
+			};
+		};
+	};
+};
+
+&i2c1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <0x1d>;
+
+	mt9p031@48 {
+		compatible = "aptina,mt9p031";
+		reg = <0x48>;
+		status = "okay";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_cam>;
+		csi_id = <0x0>;
+		clocks = <&clks 201>;
+		clock-names = "csi_mclk";
+		rst-gpios = <&gpio5 22 0>;
+		data-enable-gpios = <&gpio5 20 0x0>;
+		mclk = <12000000>;
+		mclk_source = <0>;
+	};
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx6dl-eltec-hipercam {
+		pinctrl_ecspi1: ecspi1 {
+			fsl,pins = <MX6QDL_PAD_EIM_D17__ECSPI1_MISO 0x100b1
+				MX6QDL_PAD_EIM_D16__ECSPI1_SCLK 0x100b1
+				MX6QDL_PAD_EIM_D18__ECSPI1_MOSI 0x100b1
+				MX6QDL_PAD_KEY_ROW1__GPIO4_IO09 0x100b1
+				MX6QDL_PAD_KEY_COL2__GPIO4_IO10 0x100b1
+			>;
+		};
+
+		pinctrl_i2c1: i2c1 {
+			fsl,pins = <MX6QDL_PAD_CSI0_DAT8__I2C1_SDA 0x4001b8b1
+				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL 0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c2: i2c2 {
+			fsl,pins = <MX6QDL_PAD_KEY_COL3__I2C2_SCL 0x4001b8b1
+				MX6QDL_PAD_KEY_ROW3__I2C2_SDA 0x4001b8b1
+			>;
+		};
+
+		pinctrl_i2c3: i2c3 {
+			fsl,pins = <MX6QDL_PAD_GPIO_3__I2C3_SCL 0x4001b8b1
+				MX6QDL_PAD_GPIO_6__I2C3_SDA 0x4001b8b1
+			>;
+		};
+
+		pinctrl_pwm1: pwm1 {
+			fsl,pins = <MX6QDL_PAD_SD1_DAT3__PWM1_OUT 0x1b0b1>;
+		};
+
+		pinctrl_uart1: uart1 {
+			fsl,pins = <MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA 0x1b0b1
+				MX6QDL_PAD_SD3_DAT6__UART1_RX_DATA 0x1b0b1
+			>;
+		};
+
+		pinctrl_usdhc3: usdhc3 {
+			fsl,pins = <MX6QDL_PAD_SD3_CMD__SD3_CMD 0x17059
+				MX6QDL_PAD_SD3_CLK__SD3_CLK 0x10059
+				MX6QDL_PAD_SD3_DAT0__SD3_DATA0 0x17059
+				MX6QDL_PAD_SD3_DAT1__SD3_DATA1 0x17059
+				MX6QDL_PAD_SD3_DAT2__SD3_DATA2 0x17059
+				MX6QDL_PAD_SD3_DAT3__SD3_DATA3 0x17059
+			>;
+		};
+
+		pinctrl_hog: hog {
+			fsl,pins = <MX6QDL_PAD_GPIO_4__GPIO1_IO04 0x80000000
+				MX6QDL_PAD_GPIO_5__GPIO1_IO05 0x80000000
+				MX6QDL_PAD_NANDF_D0__GPIO2_IO00 0x80000000
+				MX6QDL_PAD_NANDF_D1__GPIO2_IO01 0x80000000
+				MX6QDL_PAD_NANDF_D2__GPIO2_IO02 0x80000000
+				MX6QDL_PAD_NANDF_D3__GPIO2_IO03 0x80000000
+				MX6QDL_PAD_NANDF_ALE__GPIO6_IO08 0x80000000
+				MX6QDL_PAD_NANDF_CLE__GPIO6_IO07 0x80000000
+				MX6QDL_PAD_GPIO_0__CCM_CLKO1 0x130b0
+				MX6QDL_PAD_NANDF_CS2__GPIO6_IO15 0x80000000
+				MX6QDL_PAD_NANDF_CS3__GPIO6_IO16 0x80000000
+				MX6QDL_PAD_EIM_D26__GPIO3_IO26 0x80000000
+				MX6QDL_PAD_EIM_CS1__GPIO2_IO24 0x80000000
+				MX6QDL_PAD_ENET_RXD0__GPIO1_IO27 0x80000000
+				MX6QDL_PAD_EIM_A25__GPIO5_IO02 0x80000000
+				MX6QDL_PAD_EIM_D23__GPIO3_IO23 0x80000000
+				MX6QDL_PAD_ENET_TXD1__GPIO1_IO29 0x80000000
+				MX6QDL_PAD_EIM_D22__GPIO3_IO22 0x80000000
+				MX6QDL_PAD_NANDF_CS0__GPIO6_IO11 0x80000000
+				MX6QDL_PAD_NANDF_CS1__GPIO6_IO14 0x80000000
+				MX6QDL_PAD_EIM_EB3__GPIO2_IO31 0x80000000
+				MX6QDL_PAD_EIM_DA9__GPIO3_IO09 0x80000000
+				MX6QDL_PAD_GPIO_4__GPIO1_IO04 0x80000000
+				MX6QDL_PAD_GPIO_5__GPIO1_IO05 0x80000000
+				MX6QDL_PAD_EIM_D29__GPIO3_IO29 0x80000000
+				MX6QDL_PAD_SD4_DAT6__GPIO2_IO14 0x80000000
+				MX6QDL_PAD_GPIO_9__GPIO1_IO09 0x80000000
+				MX6QDL_PAD_GPIO_1__WDOG2_B 0x80000000
+				MX6QDL_PAD_GPIO_17__GPIO7_IO12 0x80000000
+			>;
+		};
+
+		pinctrl_cam: cam {
+			fsl,pins = <MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22 0x80000000
+				MX6QDL_PAD_CSI0_DAT10__IPU1_CSI0_DATA10 0x80000000
+				MX6QDL_PAD_CSI0_DAT11__IPU1_CSI0_DATA11 0x80000000
+				MX6QDL_PAD_CSI0_DAT12__IPU1_CSI0_DATA12 0x80000000
+				MX6QDL_PAD_CSI0_DAT13__IPU1_CSI0_DATA13 0x80000000
+				MX6QDL_PAD_CSI0_DAT14__IPU1_CSI0_DATA14 0x80000000
+				MX6QDL_PAD_CSI0_DAT15__IPU1_CSI0_DATA15 0x80000000
+				MX6QDL_PAD_CSI0_DAT16__IPU1_CSI0_DATA16 0x80000000
+				MX6QDL_PAD_CSI0_DAT17__IPU1_CSI0_DATA17 0x80000000
+				MX6QDL_PAD_CSI0_DAT18__IPU1_CSI0_DATA18 0x80000000
+				MX6QDL_PAD_CSI0_DAT19__IPU1_CSI0_DATA19 0x80000000
+				MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20 0x80000000
+				MX6QDL_PAD_CSI0_PIXCLK__IPU1_CSI0_PIXCLK 0x80000000
+				MX6QDL_PAD_CSI0_MCLK__IPU1_CSI0_HSYNC 0x80000000
+				MX6QDL_PAD_CSI0_VSYNC__IPU1_CSI0_VSYNC 0x80000000
+			>;
+		};
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index fe6c679..4d257a8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -280,6 +280,10 @@ config MACH_GK802
 	bool "Zealz GK802 Mini PC"
 	select ARCH_IMX6
 
+config MACH_ELTEC_HIPERCAM
+	bool "ELTEC HiPerCam"
+	select ARCH_IMX6
+
 config MACH_TQMA6X
 	bool "TQ tqma6x on mba6x"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index cc9fdfc..415b294 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -232,3 +232,8 @@ pblx-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
 CFG_start_imx6q_gw54xx_1gx64.pblx.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
 FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblx.imximg
 image-$(CONFIG_MACH_GW_VENTANA) += barebox-gateworks-imx6q-ventana-1gx64.img
+
+pblx-$(CONFIG_MACH_ELTEC_HIPERCAM) += start_imx6dl_eltec_hipercam
+CFG_start_imx6dl_eltec_hipercam.pblx.imximg = $(board)/eltec-hipercam/flash-header-eltec-hipercam.imxcfg
+FILE_barebox-eltec-hipercam.img = start_imx6dl_eltec_hipercam.pblx.imximg
+image-$(CONFIG_MACH_ELTEC_HIPERCAM) += barebox-eltec-hipercam.img
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

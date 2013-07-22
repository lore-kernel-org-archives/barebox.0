Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1GlE-0003hU-Ne
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 14:06:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jul 2013 16:06:21 +0200
Message-Id: <1374501981-27403-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374501981-27403-1-git-send-email-s.hauer@pengutronix.de>
References: <1374501981-27403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: Add Phytec phyFLEX-i.MX6 board support
To: barebox@lists.infradead.org

This adds support for the Phytec phyFLEX-i.MX6 board. The phyFLEX-i.MX6
is a system-on-module based on the Freescale i.MX6 SoC. This patch supports
the 1GiB and 2GiB variants on a PBA-B-01 baseboard.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/phytec-pfla02/Makefile             |  5 ++
 arch/arm/boards/phytec-pfla02/board.c              | 59 +++++++++++++
 .../flash-header-phytec-pfla02-1gib.imxcfg         |  6 ++
 .../flash-header-phytec-pfla02-2gib.imxcfg         |  6 ++
 .../phytec-pfla02/flash-header-phytec-pfla02.h     | 99 ++++++++++++++++++++++
 arch/arm/boards/phytec-pfla02/lowlevel.c           | 57 +++++++++++++
 arch/arm/configs/imx_v7_defconfig                  |  1 +
 arch/arm/dts/Makefile                              |  4 +-
 arch/arm/dts/imx6q-phytec-pbab01.dts               | 69 +++++++++++++++
 arch/arm/dts/imx6q-phytec-pfla02.dtsi              | 96 +++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |  5 ++
 images/Makefile.imx                                | 12 +++
 13 files changed, 419 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/phytec-pfla02/Makefile
 create mode 100644 arch/arm/boards/phytec-pfla02/board.c
 create mode 100644 arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-1gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-2gib.imxcfg
 create mode 100644 arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02.h
 create mode 100644 arch/arm/boards/phytec-pfla02/lowlevel.c
 create mode 100644 arch/arm/dts/imx6q-phytec-pbab01.dts
 create mode 100644 arch/arm/dts/imx6q-phytec-pfla02.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 6092419..4267307 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -65,6 +65,7 @@ obj-$(CONFIG_MACH_PCM038)			+= pcm038/
 obj-$(CONFIG_MACH_PCM043)			+= pcm043/
 obj-$(CONFIG_MACH_PCM049)			+= pcm049/
 obj-$(CONFIG_MACH_PCM051)			+= pcm051/
+obj-$(CONFIG_MACH_PHYTEC_PFLA02)		+= phytec-pfla02/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 obj-$(CONFIG_MACH_PM9261)			+= pm9261/
 obj-$(CONFIG_MACH_PM9263)			+= pm9263/
diff --git a/arch/arm/boards/phytec-pfla02/Makefile b/arch/arm/boards/phytec-pfla02/Makefile
new file mode 100644
index 0000000..93e7308
--- /dev/null
+++ b/arch/arm/boards/phytec-pfla02/Makefile
@@ -0,0 +1,5 @@
+obj-y += board.o
+obj-y += flash-header-phytec-pfla02-1gib.dcd.o flash-header-phytec-pfla02-2gib.dcd.o
+extra-y += flash-header-phytec-pfla02-1gib.dcd.S flash-header-phytec-pfla02-2gib.dcd.S
+extra-y += flash-header-phytec-pfla02-1gib.dcd flash-header-phytec-pfla02-2gib.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/phytec-pfla02/board.c b/arch/arm/boards/phytec-pfla02/board.c
new file mode 100644
index 0000000..e9bd168
--- /dev/null
+++ b/arch/arm/boards/phytec-pfla02/board.c
@@ -0,0 +1,59 @@
+/*
+ * Copyright (C) 2013 Sascha Hauer, Pengutronix
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
+ * Foundation.
+ *
+ */
+
+#include <common.h>
+#include <gpio.h>
+#include <init.h>
+#include <of.h>
+
+#include <mach/imx6.h>
+
+#define ETH_PHY_RST	IMX_GPIO_NR(3, 23)
+
+static int eth_phy_reset(void)
+{
+	gpio_request(ETH_PHY_RST, "phy reset");
+	gpio_direction_output(ETH_PHY_RST, 0);
+	mdelay(1);
+	gpio_set_value(ETH_PHY_RST, 1);
+
+	return 0;
+}
+
+static int phytec_pfla02_init(void)
+{
+	if (!of_machine_is_compatible("phytec,imx6q-pfla02"))
+		return 0;
+
+	eth_phy_reset();
+
+	return 0;
+}
+device_initcall(phytec_pfla02_init);
+
+static int phytec_pfla02_core_init(void)
+{
+	if (!of_machine_is_compatible("phytec,imx6q-pfla02"))
+		return 0;
+
+	imx6_init_lowlevel();
+
+	return 0;
+}
+postcore_initcall(phytec_pfla02_core_init);
diff --git a/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-1gib.imxcfg b/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-1gib.imxcfg
new file mode 100644
index 0000000..524ebca
--- /dev/null
+++ b/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-1gib.imxcfg
@@ -0,0 +1,6 @@
+
+#define SETUP_1GIB_2GIB			\
+	wm 32 0x021b0040 0x00000017;	\
+	wm 32 0x021b0000 0xc21a0000
+
+#include "flash-header-phytec-pfla02.h"
diff --git a/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-2gib.imxcfg b/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-2gib.imxcfg
new file mode 100644
index 0000000..bf6e0ab
--- /dev/null
+++ b/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-2gib.imxcfg
@@ -0,0 +1,6 @@
+
+#define SETUP_1GIB_2GIB			\
+	wm 32 0x021b0040 0x00000027;	\
+	wm 32 0x021b0000 0xC31A0000
+
+#include "flash-header-phytec-pfla02.h"
diff --git a/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02.h
new file mode 100644
index 0000000..b90f7cb
--- /dev/null
+++ b/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02.h
@@ -0,0 +1,99 @@
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
+
+SETUP_1GIB_2GIB
+
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
+wm 32 0x021b083c 0x433c033f
+wm 32 0x021b0840 0x033e033d
+wm 32 0x021b483c 0x43490351
+wm 32 0x021b4840 0x0344032f
+wm 32 0x021b0848 0x4a434146
+wm 32 0x021b4848 0x4745434b
+wm 32 0x021b0850 0x3d3d433a
+wm 32 0x021b4850 0x48334b3e
+wm 32 0x021b080c 0x000f0011
+wm 32 0x021b0810 0x00200022
+wm 32 0x021b480c 0x0033002e
+wm 32 0x021b4810 0x003e003b
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b001c 0x00000000
+wm 32 0x021b0404 0x00011006
+wm 32 0x020e0010 0xf00000ff
+wm 32 0x020e0018 0x007f007f
+wm 32 0x020e001c 0x007f007f
+wm 32 0x020c8000 0x80002021
diff --git a/arch/arm/boards/phytec-pfla02/lowlevel.c b/arch/arm/boards/phytec-pfla02/lowlevel.c
new file mode 100644
index 0000000..a69634f
--- /dev/null
+++ b/arch/arm/boards/phytec-pfla02/lowlevel.c
@@ -0,0 +1,57 @@
+/*
+ * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>
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
+#include <debug_ll.h>
+#include <common.h>
+#include <sizes.h>
+#include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <asm/sections.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
+#include <mach/imx6-mmdc.h>
+#include <mach/imx6.h>
+
+extern char __dtb_imx6q_phytec_pbab01_start[];
+
+ENTRY_FUNCTION(start_phytec_pbab01_1gib)(void)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	fdt = (uint32_t)__dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_1G, fdt);
+}
+
+ENTRY_FUNCTION(start_phytec_pbab01_2gib)(void)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(0x00920000 - 8);
+
+	fdt = (uint32_t)__dtb_imx6q_phytec_pbab01_start - get_runtime_offset();
+
+	barebox_arm_entry(0x10000000, SZ_2G, fdt);
+}
diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
index 2224f5a..644bb34 100644
--- a/arch/arm/configs/imx_v7_defconfig
+++ b/arch/arm/configs/imx_v7_defconfig
@@ -3,6 +3,7 @@ CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_EFIKA_MX_SMARTBOOK=y
 CONFIG_MACH_FREESCALE_MX51_PDK=y
 CONFIG_MACH_FREESCALE_MX53_LOCO=y
+CONFIG_MACH_PHYTEC_PFLA02=y
 CONFIG_MACH_REALQ7=y
 CONFIG_MACH_GK802=y
 CONFIG_MACH_TQMA6X=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index f0b6d6d..77645ff 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -6,7 +6,8 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-sabrelite.dtb \
 	imx6q-sabresd.dtb \
 	imx6dl-mba6x.dtb \
-	imx6q-mba6x.dtb
+	imx6q-mba6x.dtb \
+	imx6q-phytec-pbab01.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox.dtb
 
 BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
@@ -15,6 +16,7 @@ obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 pbl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX51_PDK) += imx51-babbage.dtb.o
 pbl-$(CONFIG_MACH_FREESCALE_MX53_LOCO) += imx53-qsb.dtb.o
+pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
diff --git a/arch/arm/dts/imx6q-phytec-pbab01.dts b/arch/arm/dts/imx6q-phytec-pbab01.dts
new file mode 100644
index 0000000..b6a1f83
--- /dev/null
+++ b/arch/arm/dts/imx6q-phytec-pbab01.dts
@@ -0,0 +1,69 @@
+/*
+ * Copyright 2013 Christian Hemp, Phytec Messtechnik GmbH
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
+#include "imx6q-phytec-pfla02.dtsi"
+
+/ {
+	model = "Phytec phyFLEX-i.MX6 Quad Carrier-Board";
+	compatible = "phytec,imx6q-pbab01", "phytec,imx6q-pfla02", "fsl,imx6q";
+
+	chosen {
+		linux,stdout-path = &uart4;
+		barebox {
+			environment@0 {
+				compatible = "barebox,environment";
+				device-path = &flash, "partname:barebox-environment";
+			};
+
+			nor-partitions {
+				compatible = "barebox,partition";
+				device-path = &flash;
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				partition@0 {
+					label = "barebox";
+					reg = <0x0 0x80000>;
+				};
+
+				partition@1 {
+					label = "barebox-environment";
+					reg = <0x80000 0x80000>;
+				};
+			};
+		};
+	};
+};
+
+&fec {
+	status = "okay";
+};
+
+&ocotp1 {
+	barebox,provide-mac-address = <&fec 0x620>;
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&uart4 {
+	status = "okay";
+};
+
+&usdhc2 {
+	status = "okay";
+};
+
+&usdhc3 {
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6q-phytec-pfla02.dtsi b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
new file mode 100644
index 0000000..f257d60
--- /dev/null
+++ b/arch/arm/dts/imx6q-phytec-pfla02.dtsi
@@ -0,0 +1,96 @@
+/*
+ * Copyright 2013 Christian Hemp, Phytec Messtechnik GmbH
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+#include "imx6q.dtsi"
+
+/ {
+	model = "Phytec phyFLEX-i.MX6 Ouad";
+	compatible = "phytec,imx6q-pfla02", "fsl,imx6q";
+
+	memory {
+		reg = <0x10000000 0x40000000>;
+	};
+};
+
+&ecspi3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi3_1>;
+	status = "okay";
+	fsl,spi-num-chipselects = <1>;
+	cs-gpios = <&gpio4 24 0>;
+
+	flash: m25p80@0 {
+		compatible = "m25p80";
+		spi-max-frequency = <20000000>;
+		reg = <0>;
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
+				MX6Q_PAD_EIM_D23__GPIO3_IO23    0x80000000
+				MX6Q_PAD_DISP0_DAT3__GPIO4_IO24	0x80000000 /* SPI NOR chipselect */
+			>;
+		};
+	};
+
+	pfla02 {
+		pinctrl_usdhc3_pfla02: usdhc3grp-pfla02 {
+			fsl,pins = <
+				MX6Q_PAD_ENET_RXD0__GPIO1_IO27  0x80000000
+				MX6Q_PAD_ENET_TXD1__GPIO1_IO29  0x80000000
+			>;
+		};
+	};
+};
+
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet_3>;
+	phy-mode = "rgmii";
+	phy-reset-gpios = <&gpio3 23 0>;
+	status = "disabled";
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand_1>;
+	nand-on-flash-bbt;
+	status = "okay";
+};
+
+&uart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart4_1>;
+	status = "disabled";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2_2>;
+	cd-gpios = <&gpio1 4 0>;
+	wp-gpios = <&gpio1 2 0>;
+	status = "disabled";
+};
+
+&usdhc3 {
+        pinctrl-names = "default";
+        pinctrl-0 = <&pinctrl_usdhc3_2
+		     &pinctrl_usdhc3_pfla02>;
+        cd-gpios = <&gpio1 27 0>;
+        wp-gpios = <&gpio1 29 0>;
+        status = "disabled";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 72fa922..e087e11 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -34,6 +34,7 @@ config ARCH_TEXT_BASE
 	default 0x4fc00000 if MACH_REALQ7
 	default 0x4fc00000 if MACH_GK802
 	default 0x2fc00000 if MACH_TQMA6X
+	default 0x4fc00000 if MACH_PHYTEC_PFLA02
 
 config BOARDINFO
 	default "Eukrea CPUIMX25" if MACH_EUKREA_CPUIMX25
@@ -226,6 +227,10 @@ config MACH_FREESCALE_MX53_LOCO
 	bool "Freescale i.MX53 LOCO"
 	select ARCH_IMX53
 
+config MACH_PHYTEC_PFLA02
+	bool "Phytec phyFLEX-i.MX6 Ouad"
+	select ARCH_IMX6
+
 config MACH_REALQ7
 	bool "DataModul i.MX6Q Real Qseven Board"
 	select ARCH_IMX6
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 2c43e63..d9662d7 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -53,3 +53,15 @@ CFG_start_imx6q_mba6x.pblx.imximg = $(board)/tqma6x/flash-header-tqma6q.imxcfg
 imximage-$(CONFIG_MACH_TQMA6X) += start_imx6q_mba6x.pblx.imximg
 FILE_barebox-tq-tqma6q-mba6x.img = start_imx6q_mba6x.pblx.imximg
 image-$(CONFIG_MACH_TQMA6X) += barebox-tq-tqma6q-mba6x.img
+
+pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_2gib
+CFG_start_phytec_pbab01_2gib.pblx.imximg = $(board)/phytec-pfla02/flash-header-phytec-pfla02-2gib.imxcfg
+imximage-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_2gib.pblx.imximg
+FILE_barebox-phytec-pbab01-2gib.img = start_phytec_pbab01_2gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-2gib.img
+
+pblx-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_1gib
+CFG_start_phytec_pbab01_1gib.pblx.imximg = $(board)/phytec-pfla02/flash-header-phytec-pfla02-1gib.imxcfg
+imximage-$(CONFIG_MACH_PHYTEC_PFLA02) += start_phytec_pbab01_1gib.pblx.imximg
+FILE_barebox-phytec-pbab01-1gib.img = start_phytec_pbab01_1gib.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_PFLA02) += barebox-phytec-pbab01-1gib.img
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

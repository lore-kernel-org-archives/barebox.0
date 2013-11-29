Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VmTkp-0000iM-Ec
 for barebox@lists.infradead.org; Fri, 29 Nov 2013 19:29:33 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1VmTkT-0002jk-BS
 for barebox@lists.infradead.org; Fri, 29 Nov 2013 20:29:09 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2013 20:29:09 +0100
Message-Id: <1385753349-29390-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6: add initial support for SolidRun Cubox-i Carrier-1
To: barebox@lists.infradead.org

Needs some more work for things like ethernet, right now only
MMC and USB are tested.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/solidrun-carrier-1/Makefile        |  3 +
 arch/arm/boards/solidrun-carrier-1/board.c         | 62 ++++++++++++++
 .../boards/solidrun-carrier-1/flash-header.imxcfg  | 79 +++++++++++++++++
 arch/arm/boards/solidrun-carrier-1/lowlevel.c      | 18 ++++
 arch/arm/dts/Makefile                              |  4 +-
 arch/arm/dts/imx6dl-cubox-i-carrier-1.dts          | 98 ++++++++++++++++++++++
 arch/arm/dts/imx6qdl-microsom-ar8035.dtsi          | 58 +++++++++++++
 arch/arm/dts/imx6qdl-microsom.dtsi                 | 84 +++++++++++++++++++
 arch/arm/mach-imx/Kconfig                          |  4 +
 images/Makefile.imx                                |  5 ++
 11 files changed, 415 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/solidrun-carrier-1/Makefile
 create mode 100644 arch/arm/boards/solidrun-carrier-1/board.c
 create mode 100644 arch/arm/boards/solidrun-carrier-1/flash-header.imxcfg
 create mode 100644 arch/arm/boards/solidrun-carrier-1/lowlevel.c
 create mode 100644 arch/arm/dts/imx6dl-cubox-i-carrier-1.dts
 create mode 100644 arch/arm/dts/imx6qdl-microsom-ar8035.dtsi
 create mode 100644 arch/arm/dts/imx6qdl-microsom.dtsi

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c273f0cb1e56..822ffd6347e5 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -77,6 +77,7 @@ obj-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek/
 obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
 obj-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES)		+= ebv-socrates/
 obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)	+= terasic-sockit/
+obj-$(CONFIG_MACH_SOLIDRUN_CARRIER1)	+= solidrun-carrier-1/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
diff --git a/arch/arm/boards/solidrun-carrier-1/Makefile b/arch/arm/boards/solidrun-carrier-1/Makefile
new file mode 100644
index 000000000000..d9c7ab60edcb
--- /dev/null
+++ b/arch/arm/boards/solidrun-carrier-1/Makefile
@@ -0,0 +1,3 @@
+obj-y += board.o flash-header.dcd.o
+extra-y += flash-header.dcd.S flash-header.dcd
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/solidrun-carrier-1/board.c b/arch/arm/boards/solidrun-carrier-1/board.c
new file mode 100644
index 000000000000..dd5cbc04af4b
--- /dev/null
+++ b/arch/arm/boards/solidrun-carrier-1/board.c
@@ -0,0 +1,62 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pnegutronix.de>
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
+#include <envfs.h>
+#include <gpio.h>
+#include <init.h>
+#include <mach/generic.h>
+#include <mach/imx6-regs.h>
+#include <mach/imx6.h>
+#include <mfd/imx6q-iomuxc-gpr.h>
+#include <sizes.h>
+
+static int carrier1_env_init(void)
+{
+	char bootsource_name[] = "mmc1";
+	char barebox_name[] = "mmc1.barebox";
+	char default_environment_name[] = "mmc1.bareboxenv";
+
+	if (!of_machine_is_compatible("solidrun,cubox-i-carrier-1"))
+			return 0;
+
+	/* enable USB VBUS */
+	gpio_direction_output(IMX_GPIO_NR(3, 22), 1);
+	gpio_direction_output(IMX_GPIO_NR(1, 0), 1);
+
+	device_detect_by_name(bootsource_name);
+	devfs_add_partition(bootsource_name, 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, barebox_name);
+	devfs_add_partition(bootsource_name, SZ_512K, SZ_512K, DEVFS_PARTITION_FIXED, default_environment_name);
+	default_environment_path = "/dev/mmc1.bareboxenv";
+
+	return 0;
+}
+late_initcall(carrier1_env_init);
+
+static int carrier1_lwl_init(void)
+{
+	if (!of_machine_is_compatible("solidrun,cubox-i-carrier-1"))
+		return 0;
+
+	barebox_set_hostname("carrier-1");
+
+	imx6_init_lowlevel();
+
+	return 0;
+}
+postcore_initcall(carrier1_lwl_init);
diff --git a/arch/arm/boards/solidrun-carrier-1/flash-header.imxcfg b/arch/arm/boards/solidrun-carrier-1/flash-header.imxcfg
new file mode 100644
index 000000000000..b1856b49ce1b
--- /dev/null
+++ b/arch/arm/boards/solidrun-carrier-1/flash-header.imxcfg
@@ -0,0 +1,79 @@
+loadaddr 0x10000000
+soc imx6
+dcdofs 0x400
+wm 32 0x020e0774 0x000c0000
+wm 32 0x020e0754 0x00000000
+wm 32 0x020e04ac 0x00000030
+wm 32 0x020e04b0 0x00000030
+wm 32 0x020e0464 0x00000030
+wm 32 0x020e0490 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0494 0x00000030
+wm 32 0x020e04a4 0x00003000
+wm 32 0x020e04a8 0x00003000
+wm 32 0x020e04a0 0x00000000
+wm 32 0x020e04b4 0x00003030
+wm 32 0x020e04b8 0x00003030
+wm 32 0x020e076c 0x00000030
+wm 32 0x020e0750 0x00000000
+wm 32 0x020e04bc 0x00000030
+wm 32 0x020e04c0 0x00000030
+wm 32 0x020e04c4 0x00000030
+wm 32 0x020e04c8 0x00000030
+wm 32 0x020e04cc 0x00000000
+wm 32 0x020e04d0 0x00000000
+wm 32 0x020e04d4 0x00000000
+wm 32 0x020e04d8 0x00000000
+wm 32 0x020e0760 0x00000000
+wm 32 0x020e0764 0x00000030
+wm 32 0x020e0770 0x00000030
+wm 32 0x020e0778 0x00000030
+wm 32 0x020e077c 0x00000030
+wm 32 0x020e0780 0x00000000
+wm 32 0x020e0784 0x00000000
+wm 32 0x020e078c 0x00000000
+wm 32 0x020e0748 0x00000000
+wm 32 0x020e0470 0x00000030
+wm 32 0x020e0474 0x00000030
+wm 32 0x020e0478 0x00000030
+wm 32 0x020e047c 0x00000030
+wm 32 0x020e0480 0x00000000
+wm 32 0x020e0484 0x00000000
+wm 32 0x020e0488 0x00000000
+wm 32 0x020e048c 0x00000000
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b4800 0xa1390003
+wm 32 0x021b080c 0x000F0011
+wm 32 0x021b0810 0x000E000F
+wm 32 0x021b083c 0x42240229
+wm 32 0x021b0840 0x021a0219
+wm 32 0x021b0848 0x4e4f5150
+wm 32 0x021b0850 0x35363136
+wm 32 0x021b081c 0x33333333
+wm 32 0x021b0820 0x33333333
+wm 32 0x021b0824 0x33333333
+wm 32 0x021b0828 0x33333333
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b0004 0x0002002d
+wm 32 0x021b0008 0x00333030
+wm 32 0x021b000c 0x40445323
+wm 32 0x021b0010 0xb68e8c63
+wm 32 0x021b0014 0x01ff00db
+wm 32 0x021b0018 0x00001740
+wm 32 0x021b001c 0x00008000
+wm 32 0x021b002c 0x000026d2
+wm 32 0x021b0030 0x00440e21
+wm 32 0x021b0040 0x00000017
+wm 32 0x021b0400 0x11420000
+wm 32 0x021b0000 0x83190000
+wm 32 0x021b001c 0x04008032
+wm 32 0x021b001c 0x00008033
+wm 32 0x021b001c 0x00428031
+wm 32 0x021b001c 0x07208030
+wm 32 0x021b001c 0x04008040
+wm 32 0x021b0020 0x00005800
+wm 32 0x021b0818 0x00000007
+wm 32 0x021b0004 0x0002556d
+wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/solidrun-carrier-1/lowlevel.c b/arch/arm/boards/solidrun-carrier-1/lowlevel.c
new file mode 100644
index 000000000000..21bc7870a5f5
--- /dev/null
+++ b/arch/arm/boards/solidrun-carrier-1/lowlevel.c
@@ -0,0 +1,18 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+extern char __dtb_imx6dl_cubox_i_carrier_1_start[];
+
+ENTRY_FUNCTION(start_imx6dl_cubox_i_carrier_1)(void)
+{
+	uint32_t fdt;
+
+	__barebox_arm_head();
+
+	arm_cpu_lowlevel_init();
+
+	fdt = (uint32_t)__dtb_imx6dl_cubox_i_carrier_1_start - get_runtime_offset();
+	barebox_arm_entry(0x10000000, SZ_512M, fdt);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 511adf45e4f7..c58d245ada12 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -9,7 +9,8 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-sabresd.dtb \
 	imx6dl-mba6x.dtb \
 	imx6q-mba6x.dtb \
-	imx6q-phytec-pbab01.dtb
+	imx6q-phytec-pbab01.dtb \
+	imx6dl-cubox-i-carrier-1.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox.dtb
 dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb
@@ -33,6 +34,7 @@ pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += socfpga_cyclone5_socrates.dtb.o
 pbl-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += socfpga_cyclone5_sockit.dtb.o
+pbl-$(CONFIG_MACH_SOLIDRUN_CARRIER1) += imx6dl-cubox-i-carrier-1.dtb.o
 
 .SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
 .SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
diff --git a/arch/arm/dts/imx6dl-cubox-i-carrier-1.dts b/arch/arm/dts/imx6dl-cubox-i-carrier-1.dts
new file mode 100644
index 000000000000..34fb5104b82a
--- /dev/null
+++ b/arch/arm/dts/imx6dl-cubox-i-carrier-1.dts
@@ -0,0 +1,98 @@
+/*
+ * Copyright (C) 2013 Russell King
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License version 2.
+ */
+/dts-v1/;
+
+#include "imx6dl.dtsi"
+#include "imx6qdl-microsom.dtsi"
+#include "imx6qdl-microsom-ar8035.dtsi"
+
+/ {
+	model = "SolidRun Cubox-i DL/Solo Carrier-1 Board";
+	compatible = "solidrun,cubox-i-carrier-1", "fsl,imx6dl";
+	
+	chosen {
+		linux,stdout-path = &uart1;
+	};
+	
+	memory {
+		reg = <0x10000000 0x20000000>;
+	};
+
+	ir_recv: ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio1 2 1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_carrier1_gpio1_2>;
+	};
+
+	codec: spdif-transmitter {
+		compatible = "linux,spdif-dit";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_carrier1_spdif>;
+	};
+
+	sound-spdif {
+		compatible = "fsl,imx-audio-spdif";
+		model = "imx-spdif";
+		/* IMX6 doesn't implement this yet */
+		spdif-controller = <&spdif>;
+		spdif-out;
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1_1>;
+
+	/*
+	 * Not fitted on Carrier-1 board... yet
+	status = "okay";
+
+	rtc: pcf8523@68 {
+		compatible = "nxp,pcf8523";
+		reg = <0x68>;
+	};
+	 */
+};
+
+&iomuxc {
+	carrier1 {
+		pinctrl_carrier1_gpio1_2: carrier1-gpio1_2 {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_2__GPIO1_IO02 0x80000000
+			>;
+		};
+
+		pinctrl_carrier1_spdif: carrier1-spdif {
+			fsl,pins = <MX6QDL_PAD_GPIO_17__SPDIF_OUT 0x1b0b0>;
+		};
+
+		pinctrl_carrier1_usdhc2: carrier1-usdhc2 {
+			fsl,pins = <
+				MX6QDL_PAD_SD2_CMD__SD2_CMD    0x17059
+				MX6QDL_PAD_SD2_CLK__SD2_CLK    0x10059
+				MX6QDL_PAD_SD2_DAT0__SD2_DATA0 0x17059
+				MX6QDL_PAD_SD2_DAT1__SD2_DATA1 0x17059
+				MX6QDL_PAD_SD2_DAT2__SD2_DATA2 0x17059
+				MX6QDL_PAD_SD2_DAT3__SD2_DATA3 0x13059
+				MX6QDL_PAD_GPIO_4__SD2_CD_B    0x1f071
+			>;
+		};
+	};
+};
+
+&spdif {
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_carrier1_usdhc2>;
+	vmmc-supply = <&reg_3p3v>;
+	fsl,cd-controller;
+	status = "okay";
+};
diff --git a/arch/arm/dts/imx6qdl-microsom-ar8035.dtsi b/arch/arm/dts/imx6qdl-microsom-ar8035.dtsi
new file mode 100644
index 000000000000..c1be487dfc62
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-microsom-ar8035.dtsi
@@ -0,0 +1,58 @@
+/*
+ * Copyright 2013 Russell King
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License version 2.
+ *
+ * This describes the hookup for an AR8035 to the IMX6 on the Cubox-i
+ * MicroSOM.
+ *
+ * FIXME: we need to configure PLL_ENET to produce 25MHz, but there
+ * doesn't seem to be a way to do that yet from DT.  (Writing 0x2000
+ * to 0x020c80e0 phys will do this.)
+ */
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_microsom_enet_ar8035>;
+	phy-mode = "rgmii";
+	phy-reset-duration = <2>;
+	phy-reset-gpios = <&gpio4 15 0>;
+	status = "okay";
+};
+
+&iomuxc {
+	enet {
+		pinctrl_microsom_enet_ar8035: microsom-enet-ar8035 {
+			fsl,pins = <
+				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
+				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
+				/* AR8035 reset */
+				MX6QDL_PAD_KEY_ROW4__GPIO4_IO15		0x130b0
+				/* AR8035 interrupt */
+				MX6QDL_PAD_DI0_PIN2__GPIO4_IO18		0x80000000
+				/* GPIO16 -> AR8035 25MHz */
+				MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0xc0000000
+				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x80000000
+				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
+				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
+				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
+				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
+				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
+				/* AR8035 CLK_25M --> ENET_REF_CLK (V22) */
+				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x0a0b1
+				/* AR8035 pin strapping: IO voltage: pull up */
+				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
+				/* AR8035 pin strapping: PHYADDR#0: pull down */
+				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x130b0
+				/* AR8035 pin strapping: PHYADDR#1: pull down */
+				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x130b0
+				/* AR8035 pin strapping: MODE#1: pull up */
+				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
+				/* AR8035 pin strapping: MODE#3: pull up */
+				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
+				/* AR8035 pin strapping: MODE#0: pull down */
+				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x130b0
+			>;
+		};
+	};
+};
diff --git a/arch/arm/dts/imx6qdl-microsom.dtsi b/arch/arm/dts/imx6qdl-microsom.dtsi
new file mode 100644
index 000000000000..1d6d56d3303a
--- /dev/null
+++ b/arch/arm/dts/imx6qdl-microsom.dtsi
@@ -0,0 +1,84 @@
+/*
+ * Copyright 2013 Russell King
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License version 2.
+ */
+/ {
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
+
+		reg_usb_h1_vbus: usb_h1_vbus {
+			compatible = "regulator-fixed";
+			regulator-name = "usb_h1_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio1 0 0>;
+			enable-active-high;
+		};
+
+		reg_usb_otg_vbus: usb_otg_vbus {
+			compatible = "regulator-fixed";
+			regulator-name = "usb_otg_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			gpio = <&gpio3 22 0>;
+			enable-active-high;
+		};
+	};
+};
+
+&can1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_microsom_flexcan1>;
+	status = "okay";
+};
+
+&iomuxc {
+	microsom {
+		pinctrl_microsom_flexcan1: microsom-flexcan1 {
+			fsl,pins = <
+				MX6QDL_PAD_SD3_CLK__FLEXCAN1_RX 0x80000000
+				MX6QDL_PAD_SD3_CMD__FLEXCAN1_TX 0x80000000
+			>;
+		};
+
+		pinctrl_microsom_usbotg: microsom-usbotg {
+			/*
+			 * Similar to pinctrl_usbotg_2, but we want it
+			 * pulled down for a fixed host connection.
+			 */
+			fsl,pins = <MX6QDL_PAD_GPIO_1__USB_OTG_ID 0x13059>;
+		};
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1_1>;
+	status = "okay";
+};
+
+&usbotg {
+	phy_type = "utmi";
+	dr_mode = "host";
+	vbus-supply = <&reg_usb_otg_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_microsom_usbotg>;
+	status = "okay";
+};
+
+&usbh1 {
+	phy_type = "utmi";
+	dr_mode = "host";
+	vbus-supply = <&reg_usb_h1_vbus>;
+	status = "okay";
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 973aa3755b96..46bef5d836b4 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -219,6 +219,10 @@ config MACH_TQMA6X
 	bool "TQ tqma6x on mba6x"
 	select ARCH_IMX6
 
+config MACH_SOLIDRUN_CARRIER1
+	bool "SolidRun CuBox-i Carrier-1"
+	select ARCH_IMX6
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 794e3a3e09e9..bb4e7ffe1ab8 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -66,3 +66,8 @@ pblx-$(CONFIG_MACH_DFI_FS700_M60) += start_imx6q_dfi_fs700_m60_6q
 CFG_start_imx6q_dfi_fs700_m60_6q.pblx.imximg = $(board)/dfi-fs700-m60/flash-header-fs700-m60-6q.imxcfg
 FILE_barebox-dfi-fs700-m60-6q.img = start_imx6q_dfi_fs700_m60_6q.pblx.imximg
 image-$(CONFIG_MACH_DFI_FS700_M60) += barebox-dfi-fs700-m60-6q.img
+
+pblx-$(CONFIG_MACH_SOLIDRUN_CARRIER1) += start_imx6dl_cubox_i_carrier_1
+CFG_start_imx6dl_cubox_i_carrier_1.pblx.imximg = $(board)/solidrun-carrier-1/flash-header.imxcfg
+FILE_barebox-cubox-i-carrier-1.img = start_imx6dl_cubox_i_carrier_1.pblx.imximg
+image-$(CONFIG_MACH_SOLIDRUN_CARRIER1) += barebox-cubox-i-carrier-1.img
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqps-0000gq-6n
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:12:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 10:11:38 +0100
Message-Id: <20180319091146.4112-7-s.hauer@pengutronix.de>
In-Reply-To: <20180319091146.4112-1-s.hauer@pengutronix.de>
References: <20180319091146.4112-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/14] ARM: i.MX8: Add i.MX8mq EVK support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/Makefile                  |   1 +
 arch/arm/boards/nxp-imx8mq-evk/Makefile   |   2 +
 arch/arm/boards/nxp-imx8mq-evk/board.c    |  44 +++
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c |  43 +++
 arch/arm/dts/Makefile                     |   1 +
 arch/arm/dts/imx8mq-evk.dts               | 446 ++++++++++++++++++++++++++++++
 arch/arm/mach-imx/Kconfig                 |   4 +
 images/Makefile.imx                       |   6 +
 8 files changed, 547 insertions(+)
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/Makefile
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/board.c
 create mode 100644 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
 create mode 100644 arch/arm/dts/imx8mq-evk.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ca187ccb89..8a14383ce6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -78,6 +78,7 @@ obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+= nvidia-beaver/
 obj-$(CONFIG_MACH_NVIDIA_JETSON)		+= nvidia-jetson-tk1/
 obj-$(CONFIG_MACH_NXDB500)			+= netx/
 obj-$(CONFIG_MACH_NXP_IMX6ULL_EVK)		+= nxp-imx6ull-evk/
+obj-$(CONFIG_MACH_NXP_IMX8MQ_EVK)		+= nxp-imx8mq-evk/
 obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
 obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
 obj-$(CONFIG_MACH_PANDA)			+= panda/
diff --git a/arch/arm/boards/nxp-imx8mq-evk/Makefile b/arch/arm/boards/nxp-imx8mq-evk/Makefile
new file mode 100644
index 0000000000..01c7a259e9
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/Makefile
@@ -0,0 +1,2 @@
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
new file mode 100644
index 0000000000..d93e21da17
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
@@ -0,0 +1,44 @@
+/*
+ * Copyright (C) 2018 Sascha Hauer, Pengutronix
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
+#include <init.h>
+#include <asm/memory.h>
+#include <linux/sizes.h>
+
+static int imx8mq_evk_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x40000000, SZ_2G);
+
+	request_sdram_region("ATF", 0x40000000, SZ_128K);
+
+	return 0;
+}
+mem_initcall(imx8mq_evk_mem_init);
+
+static int nxp_imx8mq_evk_init(void)
+{
+	if (!of_machine_is_compatible("fsl,imx8mq-evk"))
+		return 0;
+
+	barebox_set_hostname("imx8mq-evk");
+
+	return 0;
+}
+device_initcall(nxp_imx8mq_evk_init);
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
new file mode 100644
index 0000000000..98198b3297
--- /dev/null
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -0,0 +1,43 @@
+/*
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
+ * General Public License for more details.
+ */
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <mach/generic.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/imx6-regs.h>
+#include <io.h>
+#include <debug_ll.h>
+#include <asm/cache.h>
+#include <asm/sections.h>
+#include <asm/mmu.h>
+
+extern char __dtb_imx8mq_evk_start[];
+
+static noinline void nxp_imx8mq_evk(void)
+{
+	pbl_set_putc(imx_uart_putc, IOMEM(0x30860000));
+
+	printf("i.MX8MQ EVK\n");
+
+	barebox_arm_entry(0x40000000, 0xc0000000, __dtb_imx8mq_evk_start);
+}
+
+ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
+{
+	arm_cpu_lowlevel_init();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	nxp_imx8mq_evk();
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0526a6f407..75d29bf85d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -81,6 +81,7 @@ pbl-dtb-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-hummingboard.dtb.o imx6q-humm
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_WANDBOARD) += imx6q-wandboard.dtb.o imx6dl-wandboard.dtb.o
 pbl-dtb-$(CONFIG_MACH_TECHNEXION_PICO_HOBBIT) += imx6ul-pico-hobbit.dtb.o
 pbl-dtb-$(CONFIG_MACH_NXP_IMX6ULL_EVK) += imx6ull-14x14-evk.dtb.o
+pbl-dtb-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += imx8mq-evk.dtb.o
 pbl-dtb-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 pbl-dtb-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-dtb-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
new file mode 100644
index 0000000000..fd9f780b65
--- /dev/null
+++ b/arch/arm/dts/imx8mq-evk.dts
@@ -0,0 +1,446 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2017 NXP
+ * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
+ */
+
+/dts-v1/;
+
+#include "imx8mq.dtsi"
+
+/ {
+	model = "NXP i.MX8MQ EVK";
+	compatible = "fsl,imx8mq-evk", "fsl,imx8mq";
+
+	chosen {
+		bootargs = "console=ttymxc0,115200 ip=dhcp root=/dev/nfs nfsroot=/home/lst/nfsroot/mx8,v3,tcp";
+		//bootargs = "console=ttymxc0,115200 root=/dev/mmcblk0p2 rootwait rw";
+		stdout-path = &uart1;
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x00000000 0x40000000 0 0xc0000000>;
+	};
+
+	reg_usdhc2_vmmc: regulator-vsd-3v3 {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2>;
+		compatible = "regulator-fixed";
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&dcss {
+	status = "okay";
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1_mdc>, <&pinctrl_fec1_mdio>,
+	            <&pinctrl_fec1_data_tx>, <&pinctrl_fec1_data_rx>,
+	            <&pinctrl_fec1_phy_reset>;
+	phy-mode = "rgmii-id";
+	status = "okay";
+};
+
+&hdmi {
+	status ="okay";
+};
+
+&i2c1 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	status = "okay";
+
+	pmic@8 {
+		compatible = "fsl,pfuze100";
+		reg = <0x8>;
+
+		regulators {
+			sw1a_reg: sw1ab {
+				regulator-min-microvolt = <825000>;
+				regulator-max-microvolt = <1100000>;
+			};
+
+			sw1c_reg: sw1c {
+				regulator-min-microvolt = <825000>;
+				regulator-max-microvolt = <1100000>;
+			};
+
+			sw2_reg: sw2 {
+				regulator-min-microvolt = <1100000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-always-on;
+			};
+
+			sw3a_reg: sw3ab {
+				regulator-min-microvolt = <825000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-always-on;
+			};
+
+			sw4_reg: sw4 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-always-on;
+			};
+
+			swbst_reg: swbst {
+				regulator-min-microvolt = <5000000>;
+				regulator-max-microvolt = <5150000>;
+			};
+
+			snvs_reg: vsnvs {
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <3000000>;
+				regulator-always-on;
+			};
+
+			vref_reg: vrefddr {
+				regulator-always-on;
+			};
+
+			vgen1_reg: vgen1 {
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1550000>;
+			};
+
+			vgen2_reg: vgen2 {
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <975000>;
+				regulator-always-on;
+			};
+
+			vgen3_reg: vgen3 {
+				regulator-min-microvolt = <1675000>;
+				regulator-max-microvolt = <1975000>;
+				regulator-always-on;
+			};
+
+			vgen4_reg: vgen4 {
+				regulator-min-microvolt = <1625000>;
+				regulator-max-microvolt = <1875000>;
+				regulator-always-on;
+			};
+
+			vgen5_reg: vgen5 {
+				regulator-min-microvolt = <3075000>;
+				regulator-max-microvolt = <3625000>;
+				regulator-always-on;
+			};
+
+			vgen6_reg: vgen6 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec1 0x640>;
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&usb3_phy1 {
+	status = "okay";
+};
+
+&usb3_1 {
+	status = "okay";
+};
+
+&usb_dwc3_1 {
+	status = "okay";
+	dr_mode = "host";
+};
+
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1_cd_reset>, <&pinctrl_usdhc1_clk_strobe>,
+	            <&pinctrl_usdhc1_data>;
+	pinctrl-1 = <&pinctrl_usdhc1_cd_reset>,
+	            <&pinctrl_usdhc1_clk_strobe_100mhz>,
+	            <&pinctrl_usdhc1_data_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_cd_reset>,
+	            <&pinctrl_usdhc1_clk_strobe_200mhz>,
+	            <&pinctrl_usdhc1_data_200mhz>;
+	vqmmc-supply = <&sw4_reg>;
+	bus-width = <8>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2_vselect>, <&pinctrl_usdhc2_clk>,
+	            <&pinctrl_usdhc2_data>;
+	pinctrl-1 = <&pinctrl_usdhc2_vselect>, <&pinctrl_usdhc2_clk_100mhz>,
+	            <&pinctrl_usdhc2_data_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc2_vselect>, <&pinctrl_usdhc2_clk_200mhz>,
+	            <&pinctrl_usdhc2_data_200mhz>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_fec1_mdc: fec1mdcgrp {
+		pinmux = <MX8MQ_IOMUXC_ENET_MDC_ENET1_MDC>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+	};
+
+	pinctrl_fec1_mdio: fec1mdiogrp {
+		pinmux = <MX8MQ_IOMUXC_ENET_MDIO_ENET1_MDIO>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+		drive-open-drain;
+	};
+
+	pinctrl_fec1_phy_reset: fec1phyresetgrp {
+		pinmux = <MX8MQ_IOMUXC_GPIO1_IO09_GPIO1_IO9>;
+		drive-strength = <1>;
+		slew-rate = <0>;
+	};
+
+	pinctrl_fec1_data_tx: fec1datatxgrp {
+		pinmux = <
+			MX8MQ_IOMUXC_ENET_TD3_ENET1_RGMII_TD3
+			MX8MQ_IOMUXC_ENET_TD2_ENET1_RGMII_TD2
+			MX8MQ_IOMUXC_ENET_TD1_ENET1_RGMII_TD1
+			MX8MQ_IOMUXC_ENET_TD0_ENET1_RGMII_TD0
+			MX8MQ_IOMUXC_ENET_TXC_ENET1_RGMII_TXC
+			MX8MQ_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL
+		>;
+		drive-strength = <7>;
+		slew-rate = <3>;
+	};
+
+	pinctrl_fec1_data_rx: fec1datarxgrp {
+		pinmux = <
+			MX8MQ_IOMUXC_ENET_RD3_ENET1_RGMII_RD3
+			MX8MQ_IOMUXC_ENET_RD2_ENET1_RGMII_RD2
+			MX8MQ_IOMUXC_ENET_RD1_ENET1_RGMII_RD1
+			MX8MQ_IOMUXC_ENET_RD0_ENET1_RGMII_RD0
+			MX8MQ_IOMUXC_ENET_RXC_ENET1_RGMII_RXC
+			MX8MQ_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL
+		>;
+		drive-strength = <1>;
+		slew-rate = <2>;
+		input-schmitt-enable;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		pinmux = <
+			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL
+			MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA
+		>;
+		drive-strength = <7>;
+		slew-rate = <0>;
+		drive-open-drain;
+		input-enable;
+	};
+
+	pinctrl_reg_usdhc2: regusdhc2grpgpio {
+		pinmux = <MX8MQ_IOMUXC_SD2_RESET_B_GPIO2_IO19>;
+		drive-strength = <1>;
+		slew-rate = <0>;
+		bias-pull-up;
+	};
+
+	pinctrl_uart1: uart1grp {
+		pinmux = <
+			MX8MQ_IOMUXC_UART1_RXD_UART1_DCE_RX
+			MX8MQ_IOMUXC_UART1_TXD_UART1_DCE_TX
+		>;
+		drive-strength = <1>;
+		slew-rate = <0>;
+		bias-pull-up;
+	};
+
+	pinctrl_usdhc1_cd_reset: usdhc1cdgrp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD2_CD_B_GPIO2_IO12
+			MX8MQ_IOMUXC_SD1_RESET_B_USDHC1_RESET_B
+			>;
+		drive-strength = <1>;
+		slew-rate = <0>;
+		bias-pull-up;
+	};
+
+	pinctrl_usdhc1_clk_strobe: usdhc1clkgrp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE
+			>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+	};
+
+	pinctrl_usdhc1_data: usdhc1datagrp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7
+			>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_usdhc1_clk_strobe_100mhz: usdhc1clk100grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE
+			>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+	};
+
+	pinctrl_usdhc1_data_100mhz: usdhc1data100grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7
+			>;
+		drive-strength = <5>;
+		slew-rate = <1>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_usdhc1_clk_strobe_200mhz: usdhc1clk200grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK
+			MX8MQ_IOMUXC_SD1_STROBE_USDHC1_STROBE
+			>;
+		drive-strength = <7>;
+		slew-rate = <3>;
+	};
+
+	pinctrl_usdhc1_data_200mhz: usdhc1data200grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD
+			MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0
+			MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1
+			MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2
+			MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3
+			MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4
+			MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5
+			MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6
+			MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7
+			>;
+		drive-strength = <7>;
+		slew-rate = <3>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_usdhc2_vselect: usdhc2vselectgrp {
+		pinmux = <MX8MQ_IOMUXC_GPIO1_IO04_USDHC2_VSELECT>;
+		drive-strength = <1>;
+		slew-rate = <0>;
+		bias-pull-up;
+	};
+
+	pinctrl_usdhc2_clk: usdhc2clkgrp {
+		pinmux = <MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+	};
+
+	pinctrl_usdhc2_data: usdhc2datagrp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3
+			>;
+		drive-strength = <3>;
+		slew-rate = <0>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_usdhc2_clk_100mhz: usdhc2clk100grp {
+		pinmux = <MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK>;
+		drive-strength = <5>;
+		slew-rate = <1>;
+	};
+
+	pinctrl_usdhc2_data_100mhz: usdhc2data100grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3
+			>;
+		drive-strength = <5>;
+		slew-rate = <1>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_usdhc2_clk_200mhz: usdhc2clk200grp {
+		pinmux = <MX8MQ_IOMUXC_SD2_CLK_USDHC2_CLK>;
+		drive-strength = <7>;
+		slew-rate = <3>;
+	};
+
+	pinctrl_usdhc2_data_200mhz: usdhc2data200grp {
+		pinmux = <
+			MX8MQ_IOMUXC_SD2_CMD_USDHC2_CMD
+			MX8MQ_IOMUXC_SD2_DATA0_USDHC2_DATA0
+			MX8MQ_IOMUXC_SD2_DATA1_USDHC2_DATA1
+			MX8MQ_IOMUXC_SD2_DATA2_USDHC2_DATA2
+			MX8MQ_IOMUXC_SD2_DATA3_USDHC2_DATA3
+			>;
+		drive-strength = <7>;
+		slew-rate = <3>;
+		bias-pull-up;
+		input-schmitt-enable;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		pinmux = <MX8MQ_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B>;
+		drive-strength = <6>;
+		slew-rate = <0>;
+		bias-pull-up;
+	};
+};
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 54078cc65b..5b430b19d6 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -429,6 +429,10 @@ config MACH_NXP_IMX6ULL_EVK
 	bool "NXP i.MX6ull EVK Board"
 	select ARCH_IMX6UL
 
+config MACH_NXP_IMX8MQ_EVK
+	bool "NXP i.MX8MQ EVK Board"
+	select ARCH_IMX8MQ
+
 endif
 
 # ----------------------------------------------------------
diff --git a/images/Makefile.imx b/images/Makefile.imx
index 5e0043f1f0..b2325553bc 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -490,7 +490,13 @@ CFG_start_zii_vf610_dev.pblx.imximg = $(board)/zii-vf610-dev/flash-header-zii-vf
 FILE_barebox-zii-vf610-dev.img = start_zii_vf610_dev.pblx.imximg
 image-$(CONFIG_MACH_ZII_VF610_DEV) += barebox-zii-vf610-dev.img
 
+# ----------------------- i.MX7 based boards ---------------------------
 pblx-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += start_imx7d_sabresd
 CFG_start_imx7d_sabresd.pblx.imximg = $(board)/freescale-mx7-sabresd/flash-header-mx7-sabresd.imxcfg
 FILE_barebox-freescale-mx7-sabresd.img = start_imx7d_sabresd.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_MX7_SABRESD) += barebox-freescale-mx7-sabresd.img
+
+# ----------------------- i.MX8mq based boards --------------------------
+pblx-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += start_nxp_imx8mq_evk
+FILE_barebox-nxp-imx8mq-evk.img = start_nxp_imx8mq_evk.pblx
+image-$(CONFIG_MACH_NXP_IMX8MQ_EVK) += barebox-nxp-imx8mq-evk.img
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

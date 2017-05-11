Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d8k6g-0006MO-MW
 for barebox@lists.infradead.org; Thu, 11 May 2017 09:10:00 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id DC8D2A007AF
 for <barebox@lists.infradead.org>; Thu, 11 May 2017 11:10:18 +0200 (CEST)
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Thu, 11 May 2017 11:09:28 +0200
Message-Id: <1494493768-42043-3-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1494493768-42043-1-git-send-email-s.riedmueller@phytec.de>
References: <1494493768-42043-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 3/3] ARCH: ARM: Add support for phytec-phycore-imx6ull
To: barebox@lists.infradead.org

Created imx6ull devicetree to support Phytec phyCORE-i.MX6ULL.
 - 256 MB RAM
 - 128 MB NAND
 - 10/100 Mbit Ethernet

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 .../flash-header-phytec-pcl063-256mb.imxcfg        |   9 ++
 arch/arm/boards/phytec-som-imx6/lowlevel.c         |   7 +-
 arch/arm/dts/Makefile                              |   3 +-
 arch/arm/dts/imx6ul-phytec-phycore-som.dts         | 146 +----------------
 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi        | 178 +++++++++++++++++++++
 arch/arm/dts/imx6ull-phytec-phycore-som.dts        |  41 +++++
 images/Makefile.imx                                |   5 +
 7 files changed, 241 insertions(+), 148 deletions(-)
 create mode 100644 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
 create mode 100644 arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
 create mode 100644 arch/arm/dts/imx6ull-phytec-phycore-som.dts

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
new file mode 100644
index 0000000..4a827e4
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
@@ -0,0 +1,9 @@
+
+#define SETUP_MDCFG0			\
+	wm 32 0x021B000C 0x676B52F3
+
+#define SETUP_MDASP_MDCTL		\
+	wm 32 0x021B0040 0x00000047;	\
+	wm 32 0x021B0000 0x83180000
+
+#include "flash-header-phytec-pcl063.h"
diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 3ab88f4..07ac443 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -54,7 +54,8 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 	int cpu_type = __imx6_cpu_type();
 	void *fdt;
 
-	if (cpu_type == IMX6_CPUTYPE_IMX6UL) {
+	if (cpu_type == IMX6_CPUTYPE_IMX6UL
+	    || cpu_type == IMX6_CPUTYPE_IMX6ULL) {
 		arm_cpu_lowlevel_init();
 		/* OCRAM Free Area is 0x00907000 to 0x00918000 (68KB) */
 		arm_setup_stack(0x00910000 - 8);
@@ -69,7 +70,8 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 
 	fdt = fdt_blob_fixed_offset - get_runtime_offset();
 
-	if (cpu_type == IMX6_CPUTYPE_IMX6UL)
+	if (cpu_type == IMX6_CPUTYPE_IMX6UL
+	    || cpu_type == IMX6_CPUTYPE_IMX6ULL)
 		barebox_arm_entry(0x80000000, size, fdt);
 	else
 		barebox_arm_entry(0x10000000, size, fdt);
@@ -111,3 +113,4 @@ PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_1gib, imx6q_phytec_phycore_som_
 PHYTEC_ENTRY(start_phytec_phycore_imx6q_som_emmc_2gib, imx6q_phytec_phycore_som_emmc, SZ_2G, true);
 
 PHYTEC_ENTRY(start_phytec_phycore_imx6ul_som_512mb, imx6ul_phytec_phycore_som, SZ_512M, false);
+PHYTEC_ENTRY(start_phytec_phycore_imx6ull_som_256mb, imx6ull_phytec_phycore_som, SZ_256M, false);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 2342d35..ec291ce 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -53,7 +53,8 @@ pbl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-pbaa03.dtb.o \
 				imx6q-phytec-phycore-som-emmc.dtb.o \
 				imx6dl-phytec-phycore-som-nand.dtb.o \
 				imx6dl-phytec-phycore-som-emmc.dtb.o \
-				imx6ul-phytec-phycore-som.dtb.o
+				imx6ul-phytec-phycore-som.dtb.o \
+				imx6ull-phytec-phycore-som.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dts b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
index 65a9365..73f7dbe 100644
--- a/arch/arm/dts/imx6ul-phytec-phycore-som.dts
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dts
@@ -13,173 +13,29 @@
 /dts-v1/;
 
 #include <arm/imx6ul.dtsi>
+#include "imx6ul-phytec-phycore-som.dtsi"
 
 / {
 	model = "Phytec phyCORE-i.MX6 Ultra Lite SOM";
 	compatible = "phytec,imx6ul-pcl063", "fsl,imx6ul";
-
-	chosen {
-		linux,stdout-path = &uart1;
-
-		environment-nand {
-			compatible = "barebox,environment";
-			device-path = &gpmi, "partname:barebox-environment";
-			status = "disabled";
-		};
-
-		environment-sd1 {
-			compatible = "barebox,environment";
-			device-path = &usdhc1, "partname:barebox-environment";
-			status = "disabled";
-		};
-	};
 };
 
 &fec1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet1>;
-	phy-mode = "rmii";
-	phy-handle = <&ethphy0>;
 	status = "okay";
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy0: ethernet-phy@1 {
-			reg = <1>;
-		};
-	};
 };
 
 &gpmi {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_gpmi_nand>;
-	nand-on-flash-bbt;
-	fsl,no-blockmark-swap;
 	status = "okay";
-
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0x400000>;
-	};
-
-	partition@400000 {
-		label = "barebox-environment";
-		reg = <0x400000 0x100000>;
-	};
-
-	partition@500000 {
-		label = "root";
-		reg = <0x500000 0x0>;
-	};
 };
 
 &i2c1 {
-	pinctrl-names = "default";
-	pinctrl-0 =<&pinctrl_i2c1>;
-	clock-frequency = <100000>;
 	status = "okay";
-
-	eeprom@52 {
-		compatible = "cat,24c32";
-		reg = <0x52>;
-	};
 };
 
 &uart1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1>;
 	status = "okay";
 };
 
 &usdhc1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc1>;
-	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
 	status = "okay";
-
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
-
-	partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
-	};
-};
-
-&iomuxc {
-        pinctrl-names = "default";
-
-	imx6ul-phytec-phycore-som {
-
-		pinctrl_enet1: enet1grp {
-			fsl,pins = <
-				MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
-				MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
-				MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
-				MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
-				MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
-				MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
-				MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
-				MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
-				MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
-				MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
-			>;
-		};
-
-		pinctrl_gpmi_nand: gpminandgrp {
-			fsl,pins = <
-				MX6UL_PAD_NAND_CLE__RAWNAND_CLE		0x0b0b1
-				MX6UL_PAD_NAND_ALE__RAWNAND_ALE		0x0b0b1
-				MX6UL_PAD_NAND_WP_B__RAWNAND_WP_B	0x0b0b1
-				MX6UL_PAD_NAND_READY_B__RAWNAND_READY_B	0x0b000
-				MX6UL_PAD_NAND_CE0_B__RAWNAND_CE0_B	0x0b0b1
-				MX6UL_PAD_NAND_RE_B__RAWNAND_RE_B	0x0b0b1
-				MX6UL_PAD_NAND_WE_B__RAWNAND_WE_B	0x0b0b1
-				MX6UL_PAD_NAND_DATA00__RAWNAND_DATA00	0x0b0b1
-				MX6UL_PAD_NAND_DATA01__RAWNAND_DATA01	0x0b0b1
-				MX6UL_PAD_NAND_DATA02__RAWNAND_DATA02	0x0b0b1
-				MX6UL_PAD_NAND_DATA03__RAWNAND_DATA03	0x0b0b1
-				MX6UL_PAD_NAND_DATA04__RAWNAND_DATA04	0x0b0b1
-				MX6UL_PAD_NAND_DATA05__RAWNAND_DATA05	0x0b0b1
-				MX6UL_PAD_NAND_DATA06__RAWNAND_DATA06	0x0b0b1
-				MX6UL_PAD_NAND_DATA07__RAWNAND_DATA07	0x0b0b1
-			>;
-		};
-
-		pinctrl_i2c1: i2cgrp {
-			fsl,pins = <
-				MX6UL_PAD_UART4_TX_DATA__I2C1_SCL	0x4001b8b0
-				MX6UL_PAD_UART4_RX_DATA__I2C1_SDA	0x4001b8b0
-			>;
-		};
-
-		pinctrl_uart1: uart1grp {
-			fsl,pins = <
-				MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
-				MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
-			>;
-		};
-
-		pinctrl_usdhc1: usdhc1grp {
-			fsl,pins = <
-				MX6UL_PAD_SD1_CMD__USDHC1_CMD     	0x17059
-				MX6UL_PAD_SD1_CLK__USDHC1_CLK     	0x10059
-				MX6UL_PAD_SD1_DATA0__USDHC1_DATA0 	0x17059
-				MX6UL_PAD_SD1_DATA1__USDHC1_DATA1 	0x17059
-				MX6UL_PAD_SD1_DATA2__USDHC1_DATA2 	0x17059
-				MX6UL_PAD_SD1_DATA3__USDHC1_DATA3 	0x17059
-				MX6UL_PAD_UART1_RTS_B__GPIO1_IO19       0x17059 /* SD1 CD */
-			>;
-		};
-	};
 };
diff --git a/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
new file mode 100644
index 0000000..96beef4
--- /dev/null
+++ b/arch/arm/dts/imx6ul-phytec-phycore-som.dtsi
@@ -0,0 +1,178 @@
+/*
+ * Copyright (C) 2016 PHYTEC Messtechnik GmbH
+ * Author: Christian Hemp <c.hemp@phytec.de>
+ *
+ * The code contained herein is licensed under the GNU General Public
+ * License. You may obtain a copy of the GNU General Public License
+ * Version 2 or later at the following locations:
+ *
+ * http://www.opensource.org/licenses/gpl-license.html
+ * http://www.gnu.org/copyleft/gpl.html
+ */
+
+/ {
+	chosen {
+		linux,stdout-path = &uart1;
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &gpmi, "partname:barebox-environment";
+			status = "disabled";
+		};
+
+		environment-sd1 {
+			compatible = "barebox,environment";
+			device-path = &usdhc1, "partname:barebox-environment";
+			status = "disabled";
+		};
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy0>;
+	status = "disabled";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@1 {
+			reg = <1>;
+		};
+	};
+};
+
+&gpmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
+	fsl,no-blockmark-swap;
+	status = "disabled";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0x400000>;
+	};
+
+	partition@400000 {
+		label = "barebox-environment";
+		reg = <0x400000 0x100000>;
+	};
+
+	partition@500000 {
+		label = "root";
+		reg = <0x500000 0x0>;
+	};
+};
+
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 =<&pinctrl_i2c1>;
+	clock-frequency = <100000>;
+	status = "disabled";
+
+	eeprom@52 {
+		compatible = "cat,24c32";
+		reg = <0x52>;
+	};
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "disabled";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
+	status = "disabled";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
+
+&iomuxc {
+        pinctrl-names = "default";
+
+	imx6ul-phytec-phycore-som {
+
+		pinctrl_enet1: enet1grp {
+			fsl,pins = <
+				MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
+				MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x1b0b0
+				MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x1b0b0
+				MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
+				MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
+				MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
+				MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
+				MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
+				MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
+				MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
+			>;
+		};
+
+		pinctrl_gpmi_nand: gpminandgrp {
+			fsl,pins = <
+				MX6UL_PAD_NAND_CLE__RAWNAND_CLE		0x0b0b1
+				MX6UL_PAD_NAND_ALE__RAWNAND_ALE		0x0b0b1
+				MX6UL_PAD_NAND_WP_B__RAWNAND_WP_B	0x0b0b1
+				MX6UL_PAD_NAND_READY_B__RAWNAND_READY_B	0x0b000
+				MX6UL_PAD_NAND_CE0_B__RAWNAND_CE0_B	0x0b0b1
+				MX6UL_PAD_NAND_RE_B__RAWNAND_RE_B	0x0b0b1
+				MX6UL_PAD_NAND_WE_B__RAWNAND_WE_B	0x0b0b1
+				MX6UL_PAD_NAND_DATA00__RAWNAND_DATA00	0x0b0b1
+				MX6UL_PAD_NAND_DATA01__RAWNAND_DATA01	0x0b0b1
+				MX6UL_PAD_NAND_DATA02__RAWNAND_DATA02	0x0b0b1
+				MX6UL_PAD_NAND_DATA03__RAWNAND_DATA03	0x0b0b1
+				MX6UL_PAD_NAND_DATA04__RAWNAND_DATA04	0x0b0b1
+				MX6UL_PAD_NAND_DATA05__RAWNAND_DATA05	0x0b0b1
+				MX6UL_PAD_NAND_DATA06__RAWNAND_DATA06	0x0b0b1
+				MX6UL_PAD_NAND_DATA07__RAWNAND_DATA07	0x0b0b1
+			>;
+		};
+
+		pinctrl_i2c1: i2cgrp {
+			fsl,pins = <
+				MX6UL_PAD_UART4_TX_DATA__I2C1_SCL	0x4001b8b0
+				MX6UL_PAD_UART4_RX_DATA__I2C1_SDA	0x4001b8b0
+			>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
+				MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
+			>;
+		};
+
+		pinctrl_usdhc1: usdhc1grp {
+			fsl,pins = <
+				MX6UL_PAD_SD1_CMD__USDHC1_CMD     	0x17059
+				MX6UL_PAD_SD1_CLK__USDHC1_CLK     	0x10059
+				MX6UL_PAD_SD1_DATA0__USDHC1_DATA0 	0x17059
+				MX6UL_PAD_SD1_DATA1__USDHC1_DATA1 	0x17059
+				MX6UL_PAD_SD1_DATA2__USDHC1_DATA2 	0x17059
+				MX6UL_PAD_SD1_DATA3__USDHC1_DATA3 	0x17059
+				MX6UL_PAD_UART1_RTS_B__GPIO1_IO19       0x17059 /* SD1 CD */
+			>;
+		};
+	};
+};
diff --git a/arch/arm/dts/imx6ull-phytec-phycore-som.dts b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
new file mode 100644
index 0000000..de04132
--- /dev/null
+++ b/arch/arm/dts/imx6ull-phytec-phycore-som.dts
@@ -0,0 +1,41 @@
+/*
+ * Copyright (C) 2017 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
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
+#include <arm/imx6ull.dtsi>
+#include "imx6ul-phytec-phycore-som.dtsi"
+
+/ {
+	model = "Phytec phyCORE-i.MX6 ULL SOM";
+	compatible = "phytec,imx6ul-pcl063", "fsl,imx6ull";
+};
+
+&fec1 {
+	status = "okay";
+};
+
+&gpmi {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&usdhc1 {
+	status = "okay";
+};
diff --git a/images/Makefile.imx b/images/Makefile.imx
index cdad2e0..6ee44f2 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -435,6 +435,11 @@ CFG_start_phytec_phycore_imx6ul_som_512mb.pblx.imximg = $(board)/phytec-som-imx6
 FILE_barebox-phytec-phycore-imx6ul-512mb.img = start_phytec_phycore_imx6ul_som_512mb.pblx.imximg
 image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ul-512mb.img
 
+pblx-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += start_phytec_phycore_imx6ull_som_256mb
+CFG_start_phytec_phycore_imx6ull_som_256mb.pblx.imximg = $(board)/phytec-som-imx6/flash-header-phytec-pcl063-256mb.imxcfg
+FILE_barebox-phytec-phycore-imx6ull-256mb.img = start_phytec_phycore_imx6ull_som_256mb.pblx.imximg
+image-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += barebox-phytec-phycore-imx6ull-256mb.img
+
 pblx-$(CONFIG_MACH_GW_VENTANA) += start_imx6q_gw54xx_1gx64
 CFG_start_imx6q_gw54xx_1gx64.pblx.imximg = $(board)/gateworks-ventana/flash-header-ventana-quad-1gx64.imxcfg
 FILE_barebox-gateworks-imx6q-ventana-1gx64.img = start_imx6q_gw54xx_1gx64.pblx.imximg
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

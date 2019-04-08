Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hDPRm-0006Ny-Rr
 for barebox@lists.infradead.org; Mon, 08 Apr 2019 08:16:09 +0000
Date: Mon, 8 Apr 2019 10:16:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190408081602.ipogefy6uy6uioto@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Boards possibly broken due to dts merge of v5.1-rc1
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Teresa Remmet <t.remmet@phytec.de>, Jan Remmet <j.remmet@phytec.de>

Hi,

I had to squash the attached patch into the patch of the v5.1-rc1 dts
kernel merge. Some boards may be broken due to this, please check if
the changes make sense and work.

Sascha

----------------------8<---------------------------------

From 147937abd8f901024aecfc91402175194b0b37ce Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 8 Apr 2019 10:09:19 +0200
Subject: [PATCH] fixup! dts: update to v5.1-rc1

---
 arch/arm/dts/am335x-afi-gf.dts              |   4 -
 arch/arm/dts/am335x-baltos-minimal.dts      |   4 -
 arch/arm/dts/am335x-phytec-phycard-som.dtsi |   4 -
 arch/arm/dts/am335x-phytec-phycore-som.dtsi |   4 -
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi |   4 -
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi     |  17 ---
 arch/arm/dts/imx8mq.dtsi                    | 135 +-------------------
 7 files changed, 2 insertions(+), 170 deletions(-)

diff --git a/arch/arm/dts/am335x-afi-gf.dts b/arch/arm/dts/am335x-afi-gf.dts
index d0860b8905..961fe2e241 100644
--- a/arch/arm/dts/am335x-afi-gf.dts
+++ b/arch/arm/dts/am335x-afi-gf.dts
@@ -367,10 +367,6 @@
 	status = "okay";
 };
 
-&phy_sel {
-	rmii-clock-ext;
-};
-
 &am33xx_pinmux {
 	dcan0_pins: pinmux_dcan0_pins {
 		pinctrl-single,pins = <
diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
index f939cf6406..137c177b2f 100644
--- a/arch/arm/dts/am335x-baltos-minimal.dts
+++ b/arch/arm/dts/am335x-baltos-minimal.dts
@@ -423,10 +423,6 @@
 	dual_emac_res_vlan = <2>;
 };
 
-&phy_sel {
-	rmii-clock-ext = <1>;
-};
-
 &mmc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc1_pins>;
diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
index 2320ca1807..1d45d60dc0 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
@@ -128,10 +128,6 @@
 	};
 };
 
-&phy_sel {
-	rmii-clock-ext;
-};
-
 &cpsw_emac0 {
 	phy-handle = <&phy0>;
 	phy-mode = "rmii";
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index 0601f5ab7b..ae3f70acdd 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -250,10 +250,6 @@
 	};
 };
 
-&phy_sel {
-	rmii-clock-ext;
-};
-
 &cpsw_emac0 {
 	phy-handle = <&phy0>;
 	phy-mode = "rmii";
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
index 4d0a913988..0325c81346 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
@@ -207,10 +207,6 @@
 	};
 };
 
-&phy_sel {
-	rmii-clock-ext;
-};
-
 &cpsw_emac0 {
 	phy-handle = <&phy0>;
 	phy-mode = "rgmii";
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index aba86a3ec1..f0bba2e098 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -86,23 +86,6 @@
 	};
 };
 
-&fec {
-	phy-handle = <&ethphy>;
-	phy-reset-duration = <10>; /* in msecs */
-
-	mdio {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy: ethernet-phy@3 {
-			reg = <3>;
-
-			txc-skew-ps = <1680>;
-			rxc-skew-ps = <1860>;
-		};
-	};
-};
-
 &gpmi {
 	partitions {
 		compatible = "fixed-partitions";
diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index d6a4c715bd..d1d8bdaa0e 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -16,7 +16,6 @@
 		gpio4 = &gpio5;
 		mmc0 = &usdhc1;
 		mmc1 = &usdhc2;
-		spi0 = &ecspi1;
 	};
 
 	thermal-zones {
@@ -113,136 +112,6 @@
 				reg = <0x30390000 0x10000>;
 				#reset-cells = <1>;
 			};
-
-			gpc: gpc@303a0000 {
-				compatible = "fsl,imx8mq-gpc", "fsl,imx7d-gpc";
-				reg = <0x303a0000 0x10000>;
-				#power-domain-cells = <1>;
-
-				interrupt-controller;
-				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
-				#interrupt-cells = <3>;
-				interrupt-parent = <&gic>;
-
-				pgc {
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					/*
-					 * As per comment in ATF source code:
-					 *
-					 * PCIE1 and PCIE2 share the
-					 * same reset signal, if we power
-					 * down PCIE2, PCIE1 will be held
-					 * in reset too.
-					 *
-					 * So instead of creating two
-                                         * separate power domains for
-                                         * PCIE1 and PCIE2. We create
-                                         * a link between 1 and 10 and
-                                         * use what was supposed to be
-                                         * domain 1 as a shared PCIE
-                                         * power domain powering both
-                                         * PCIE1 and PCIE2 at the same
-                                         * time
-					 */
-					pgc_pcie_phy: gpc_power_domain@1 {
-						#power-domain-cells = <0>;
-						reg = <1>;
-						power-domains = <&pgc_pcie2_phy>;
-					};
-
-					pgc_otg1: power-domain@2 {
-						#power-domain-cells = <0>;
-						reg = <2>;
-					};
-
-					pgc_otg2: power-domain@3 {
-						#power-domain-cells = <0>;
-						reg = <3>;
-					};
-
-					pgc_pcie2_phy: gpc_power_domain@10 {
-						#power-domain-cells = <0>;
-						reg = <10>;
-					};
-				};
-			};
-		};
-
-		bus@30800000 {
-			ecspi1: ecspi@30820000 {
-				compatible = "fsl,imx8mq-ecspi", "fsl,imx51-ecspi";
-				reg = <0x30820000 0x10000>;
-				interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clk IMX8MQ_CLK_ECSPI1_ROOT>,
-				<&clk IMX8MQ_CLK_ECSPI1_ROOT>;
-				clock-names = "ipg", "per";
-				status = "disabled";
-			};
-		};
-
-
-		usb_dwc3_0: usb@38100000 {
-			compatible = "fsl,imx8mq-dwc3", "snps,dwc3";
-			reg = <0x38100000 0x10000>;
-			clocks = <&clk IMX8MQ_CLK_USB_BUS>,
-			         <&clk IMX8MQ_CLK_USB_CORE_REF>,
-			         <&clk IMX8MQ_CLK_USB1_CTRL_ROOT>;
-			clock-names = "bus_early", "ref", "suspend";
-			assigned-clocks = <&clk IMX8MQ_CLK_USB_BUS>,
-			                  <&clk IMX8MQ_CLK_USB_CORE_REF>;
-			assigned-clock-parents = <&clk IMX8MQ_SYS2_PLL_500M>,
-			                         <&clk IMX8MQ_SYS1_PLL_100M>;
-			assigned-clock-rates = <500000000>, <100000000>;
-			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&usb3_phy0>, <&usb3_phy0>;
-			phy-names = "usb2-phy", "usb3-phy";
-			power-domains = <&pgc_otg1>;
-			status = "disabled";
-		};
-
-		usb3_phy0: phy@381f0040 {
-			compatible = "fsl,imx8mq-usb-phy";
-			reg = <0x381f0040 0x40>;
-			clocks = <&clk IMX8MQ_CLK_USB1_PHY_ROOT>;
-			clock-names = "phy";
-			assigned-clocks = <&clk IMX8MQ_CLK_USB_PHY_REF>;
-			assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_100M>;
-			assigned-clock-rates = <100000000>;
-			#phy-cells = <0>;
-			status = "disabled";
-		};
-
-		usb_dwc3_1: usb@38200000 {
-			compatible = "fsl,imx8mq-dwc3", "snps,dwc3";
-			reg = <0x38200000 0x10000>;
-			clocks = <&clk IMX8MQ_CLK_USB_BUS>,
-			         <&clk IMX8MQ_CLK_USB_CORE_REF>,
-			         <&clk IMX8MQ_CLK_USB2_CTRL_ROOT>;
-			clock-names = "bus_early", "ref", "suspend";
-			assigned-clocks = <&clk IMX8MQ_CLK_USB_BUS>,
-			                  <&clk IMX8MQ_CLK_USB_CORE_REF>;
-			assigned-clock-parents = <&clk IMX8MQ_SYS2_PLL_500M>,
-			                         <&clk IMX8MQ_SYS1_PLL_100M>;
-			assigned-clock-rates = <500000000>, <100000000>;
-			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&usb3_phy1>, <&usb3_phy1>;
-			phy-names = "usb2-phy", "usb3-phy";
-			power-domains = <&pgc_otg2>;
-			status = "disabled";
-		};
-
-		usb3_phy1: phy@382f0040 {
-			compatible = "fsl,imx8mq-usb-phy";
-			reg = <0x382f0040 0x40>;
-			clocks = <&clk IMX8MQ_CLK_USB2_PHY_ROOT>;
-			clock-names = "phy";
-			assigned-clocks = <&clk IMX8MQ_CLK_USB_PHY_REF>;
-			assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_100M>;
-			assigned-clock-rates = <100000000>;
-			#phy-cells = <0>;
-			status = "disabled";
 		};
 
 		pcie0: pcie@33800000 {
@@ -266,7 +135,7 @@
 					<0 0 0 3 &gic GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
 					<0 0 0 4 &gic GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
 			fsl,max-link-speed = <2>;
-			power-domains = <&pgc_pcie_phy>;
+			power-domains = <&pgc_pcie1>;
 			resets = <&src IMX8MQ_RESET_PCIEPHY>,
 				 <&src IMX8MQ_RESET_PCIE_CTRL_APPS_EN>,
 				 <&src IMX8MQ_RESET_PCIE_CTRL_APPS_TURNOFF>;
@@ -295,7 +164,7 @@
 					<0 0 0 3 &gic GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>,
 					<0 0 0 4 &gic GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
 			fsl,max-link-speed = <2>;
-			power-domains = <&pgc_pcie_phy>;
+			power-domains = <&pgc_pcie1>;
 			resets = <&src IMX8MQ_RESET_PCIEPHY2>,
 				 <&src IMX8MQ_RESET_PCIE2_CTRL_APPS_EN>,
 				 <&src IMX8MQ_RESET_PCIE2_CTRL_APPS_TURNOFF>;
-- 
2.20.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

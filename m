Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gypid-0002eS-Cq
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 03:17:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id s22so7277201pfh.4
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 19:17:15 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 19:16:56 -0800
Message-Id: <20190227031657.19896-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190227031657.19896-1-andrew.smirnov@gmail.com>
References: <20190227031657.19896-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Subject: [PATCH 6/7] ARM: dts: imx8mq: Add nodes for USB IP blocks
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add node for USB IP block that is missing in upstream DTS. This patch
should be reverted once that changes.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx8mq.dtsi | 73 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/arch/arm/dts/imx8mq.dtsi b/arch/arm/dts/imx8mq.dtsi
index 153808b1c..4bb384f66 100644
--- a/arch/arm/dts/imx8mq.dtsi
+++ b/arch/arm/dts/imx8mq.dtsi
@@ -152,6 +152,16 @@
 						power-domains = <&pgc_pcie2_phy>;
 					};
 
+					pgc_otg1: power-domain@2 {
+						#power-domain-cells = <0>;
+						reg = <2>;
+					};
+
+					pgc_otg2: power-domain@3 {
+						#power-domain-cells = <0>;
+						reg = <3>;
+					};
+
 					pgc_pcie2_phy: gpc_power_domain@10 {
 						#power-domain-cells = <0>;
 						reg = <10>;
@@ -172,6 +182,69 @@
 			};
 		};
 
+
+		usb_dwc3_0: usb@38100000 {
+			compatible = "fsl,imx8mq-dwc3", "snps,dwc3";
+			reg = <0x38100000 0x10000>;
+			clocks = <&clk IMX8MQ_CLK_USB_BUS>,
+			         <&clk IMX8MQ_CLK_USB_CORE_REF>,
+			         <&clk IMX8MQ_CLK_USB1_CTRL_ROOT>;
+			clock-names = "bus_early", "ref", "suspend";
+			assigned-clocks = <&clk IMX8MQ_CLK_USB_BUS>,
+			                  <&clk IMX8MQ_CLK_USB_CORE_REF>;
+			assigned-clock-parents = <&clk IMX8MQ_SYS2_PLL_500M>,
+			                         <&clk IMX8MQ_SYS1_PLL_100M>;
+			assigned-clock-rates = <500000000>, <100000000>;
+			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usb3_phy0>, <&usb3_phy0>;
+			phy-names = "usb2-phy", "usb3-phy";
+			power-domains = <&pgc_otg1>;
+			status = "disabled";
+		};
+
+		usb3_phy0: phy@381f0040 {
+			compatible = "fsl,imx8mq-usb-phy";
+			reg = <0x381f0040 0x40>;
+			clocks = <&clk IMX8MQ_CLK_USB1_PHY_ROOT>;
+			clock-names = "phy";
+			assigned-clocks = <&clk IMX8MQ_CLK_USB_PHY_REF>;
+			assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_100M>;
+			assigned-clock-rates = <100000000>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		usb_dwc3_1: usb@38200000 {
+			compatible = "fsl,imx8mq-dwc3", "snps,dwc3";
+			reg = <0x38200000 0x10000>;
+			clocks = <&clk IMX8MQ_CLK_USB_BUS>,
+			         <&clk IMX8MQ_CLK_USB_CORE_REF>,
+			         <&clk IMX8MQ_CLK_USB2_CTRL_ROOT>;
+			clock-names = "bus_early", "ref", "suspend";
+			assigned-clocks = <&clk IMX8MQ_CLK_USB_BUS>,
+			                  <&clk IMX8MQ_CLK_USB_CORE_REF>;
+			assigned-clock-parents = <&clk IMX8MQ_SYS2_PLL_500M>,
+			                         <&clk IMX8MQ_SYS1_PLL_100M>;
+			assigned-clock-rates = <500000000>, <100000000>;
+			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usb3_phy1>, <&usb3_phy1>;
+			phy-names = "usb2-phy", "usb3-phy";
+			power-domains = <&pgc_otg2>;
+			status = "disabled";
+		};
+
+		usb3_phy1: phy@382f0040 {
+			compatible = "fsl,imx8mq-usb-phy";
+			reg = <0x382f0040 0x40>;
+			clocks = <&clk IMX8MQ_CLK_USB2_PHY_ROOT>;
+			clock-names = "phy";
+			assigned-clocks = <&clk IMX8MQ_CLK_USB_PHY_REF>;
+			assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_100M>;
+			assigned-clock-rates = <100000000>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		pcie0: pcie@33800000 {
 			compatible = "fsl,imx8mq-pcie";
 			reg = <0x33800000 0x400000>,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

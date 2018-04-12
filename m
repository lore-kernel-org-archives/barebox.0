Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgg-0007wy-Uu
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:13 +0200
Message-Id: <20180412073017.6750-13-s.hauer@pengutronix.de>
In-Reply-To: <20180412073017.6750-1-s.hauer@pengutronix.de>
References: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/16] ARM: dts: imx6: phyboard-mira: Add usb support
To: Barebox List <barebox@lists.infradead.org>
Cc: Stefan Riedmueller <s.riedmueller@phytec.de>

From: Stefan Riedmueller <s.riedmueller@phytec.de>

This patch adds USB support for the phyBOARD-Mira for the host port and
the OTG port.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 54 ++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index a826a8b2ef..1dd88b5add 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -39,6 +39,28 @@
 			status = "disabled";
 		};
 	};
+
+	reg_usbh1_vbus: regulator-usbh1 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usbh1_vbus>;
+		regulator-name = "usbh1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio2 18 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_usbotg_vbus: regulator-usbotg {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usbotg_vbus>;
+		regulator-name = "usbotg_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 };
 
 &ecspi1 {
@@ -209,6 +231,24 @@
 			>;
 		};
 
+		pinctrl_usbh1_vbus: usbh1vbusgrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_A20__GPIO2_IO18	0xb0b1
+				>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <
+				MX6QDL_PAD_GPIO_1__USB_OTG_ID	0x17059
+				>;
+		};
+
+		pinctrl_usbotg_vbus: usbotgvbusgrp {
+			fsl,pins = <
+				MX6QDL_PAD_EIM_A19__GPIO2_IO19	0xb0b1
+				>;
+		};
+
 		pinctrl_usdhc1: usdhc1grp {
 			fsl,pins = <
 				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
@@ -248,6 +288,20 @@
 	status = "okay";
 };
 
+&usbh1 {
+	vbus-supply = <&reg_usbh1_vbus>;
+	disable-over-current;
+	status = "disabled";
+};
+
+&usbotg {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg>;
+	vbus-supply = <&reg_usbotg_vbus>;
+	disable-over-current;
+	status = "disabled";
+};
+
 &usdhc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc1>;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

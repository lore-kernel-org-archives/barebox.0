Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0bEI-0007hw-Jt
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 18:18:24 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1W0b97-0002i2-1K
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 19:12:57 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  7 Jan 2014 19:12:55 +0100
Message-Id: <1389118376-1740-9-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1389118376-1740-1-git-send-email-l.stach@pengutronix.de>
References: <1389118376-1740-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 09/10] ARM: imx6: update DFI FS700 M60 DT
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi | 44 +++++++++++++++++++++++++++------
 1 file changed, 36 insertions(+), 8 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
index 04bb213..5744147 100644
--- a/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
+++ b/arch/arm/dts/imx6qdl-dfi-fs700-m60.dtsi
@@ -33,7 +33,7 @@
 
 &fec {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet_1>;
+	pinctrl-0 = <&pinctrl_enet>;
 	status = "okay";
 	phy-mode = "rgmii";
 };
@@ -42,7 +42,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
 
-	hog {
+	imx6qdl-dfi-fs700-m60 {
 		pinctrl_hog: hoggrp {
 			fsl,pins = <
 				MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25 0x80000000
@@ -52,12 +52,40 @@
 				MX6QDL_PAD_NANDF_D2__GPIO2_IO02 0x80000000 /* SD2 card detect */
 			>;
 		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <MX6QDL_ENET_PINGRP1>;
+		};
+
+		pinctrl_i2c2: i2c2grp {
+			fsl,pins = <MX6QDL_I2C2_PINGRP1>;
+		};
+
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <MX6QDL_UART1_PINGRP1>;
+		};
+
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <MX6QDL_USBOTG_PINGRP2>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <MX6QDL_USDHC2_PINGRP_D4>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <MX6QDL_USDHC3_PINGRP_D4>;
+		};
+
+		pinctrl_usdhc4: usdhc4grp {
+			fsl,pins = <MX6QDL_USDHC4_PINGRP_D8>;
+		};
 	};
 };
 
 &i2c2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c2_1>;
+	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
 
 	pmic: pf0100@08 {
@@ -74,7 +102,7 @@
 
 &uart1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart1_1>;
+	pinctrl-0 = <&pinctrl_uart1>;
 	status = "okay";
 };
 
@@ -87,7 +115,7 @@
 &usbotg {
 	vbus-supply = <&reg_usb_otg_vbus>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usbotg_2>;
+	pinctrl-0 = <&pinctrl_usbotg>;
 	disable-over-current;
 	phy_type = "utmi";
 	dr_mode = "host";
@@ -96,19 +124,19 @@
 
 &usdhc2 { /* module slot */
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc2_2>;
+	pinctrl-0 = <&pinctrl_usdhc2>;
 	cd-gpios = <&gpio2 2 0>;
 	status = "okay";
 };
 
 &usdhc3 { /* baseboard slot */
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc3_2>;
+	pinctrl-0 = <&pinctrl_usdhc3>;
 };
 
 &usdhc4 { /* eMMC */
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc4_1>;
+	pinctrl-0 = <&pinctrl_usdhc4>;
 	bus-width = <8>;
 	non-removable;
 	status = "okay";
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

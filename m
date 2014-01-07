Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0b9o-0007a2-09
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 18:13:41 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1W0b96-0002i2-Rn
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 19:12:56 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  7 Jan 2014 19:12:52 +0100
Message-Id: <1389118376-1740-6-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 06/10] ARM: imx6: update TQ DTs
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6qdl-mba6x.dtsi  | 16 ++++++++++++++--
 arch/arm/dts/imx6qdl-tqma6x.dtsi | 34 +++++++++++++++++++++++++++++-----
 2 files changed, 43 insertions(+), 7 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-mba6x.dtsi b/arch/arm/dts/imx6qdl-mba6x.dtsi
index ec002c6..dbf43c2 100644
--- a/arch/arm/dts/imx6qdl-mba6x.dtsi
+++ b/arch/arm/dts/imx6qdl-mba6x.dtsi
@@ -96,7 +96,7 @@
 
 &audmux {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_audmux_2>;
+	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 };
 
@@ -112,6 +112,18 @@
 	status = "okay";
 };
 
+&iomuxc {
+	imx6qdl-mba6x {
+		pinctrl_usbotg: usbotggrp {
+			fsl,pins = <MX6QDL_USBOTG_PINGRP1>;
+		};
+
+		pinctrl_audmux: audmuxgrp {
+			fsl,pins = <MX6QDL_AUDMUX_PINGRP2>;
+		};
+	};
+};
+
 &i2c1 {
 	codec: tlv320@18 {
 		compatible = "ti,tlv320aic23";
@@ -172,7 +184,7 @@
 
 &usbotg {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usbotg_1>;
+	pinctrl-0 = <&pinctrl_usbotg>;
 	phy_type = "utmi";
 	dr_mode = "host";
 	disable-over-current;
diff --git a/arch/arm/dts/imx6qdl-tqma6x.dtsi b/arch/arm/dts/imx6qdl-tqma6x.dtsi
index 668fa25..ce18e23 100644
--- a/arch/arm/dts/imx6qdl-tqma6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tqma6x.dtsi
@@ -11,7 +11,7 @@
 
 &ecspi1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi1_1>;
+	pinctrl-0 = <&pinctrl_ecspi1>;
 	fsl,spi-num-chipselects = <1>;
 	cs-gpios = <&gpio3 19 0>;
 	status = "okay";
@@ -25,23 +25,47 @@
 
 &fec {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet_1>;
+	pinctrl-0 = <&pinctrl_enet>;
 	phy-mode = "rgmii";
 	status = "okay";
 };
 
+&iomuxc {
+	imx6qdl-tqma6x {
+		pinctrl_ecspi1: ecspi1grp {
+			fsl,pins = <MX6QDL_ECSPI1_PINGRP1>;
+		};
+
+		pinctrl_enet: enetgrp {
+			fsl,pins = <MX6QDL_ENET_PINGRP1>;
+		};
+
+		pinctrl_i2c1: i2c1grp {
+			fsl,pins = <MX6QDL_I2C1_PINGRP2>;
+		};
+
+		pinctrl_i2c3: i2c3grp {
+			fsl,pins = <MX6QDL_I2C3_PINGRP2>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <MX6QDL_USDHC3_PINGRP_D8>;
+		};
+	};
+};
+
 &i2c1 {
 	status = "okay";
 	clock-frequency = <100000>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c1_2>;
+	pinctrl-0 = <&pinctrl_i2c1>;
 };
 
 &i2c3 {
 	status = "okay";
 	clock-frequency = <100000>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_i2c3_2>;
+	pinctrl-0 = <&pinctrl_i2c3>;
 
 	pmic: pf0100@08 {
 		compatible = "pf0100-regulator";
@@ -155,7 +179,7 @@
 
 &usdhc3 { /* eMMC */
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc3_1>;
+	pinctrl-0 = <&pinctrl_usdhc3>;
 	non-removable;
 	bus-width = <8>;
 	status = "okay";
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

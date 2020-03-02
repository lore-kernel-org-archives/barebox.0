Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gy3-0002nq-T7
 for barebox@lists.infradead.org; Mon, 02 Mar 2020 09:02:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Mar 2020 10:02:23 +0100
Message-Id: <20200302090225.8317-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] arm: dts: Fix node names
To: Barebox List <barebox@lists.infradead.org>

- Remove leading zeroes from the addresses in the node names of i2c/spi
  devices
- Remove leading 0x from the addresses in the node names of i2c/spi
  devices
- Add missing reg address in node names.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51-genesi-efika-sb.dts  | 6 +++---
 arch/arm/dts/imx53-guf-vincell-lt.dts   | 2 +-
 arch/arm/dts/imx6dl-eltec-hipercam.dts  | 4 ++--
 arch/arm/dts/imx6q-guf-santaro.dts      | 4 ++--
 arch/arm/dts/imx6qdl-hummingboard2.dtsi | 2 +-
 arch/arm/dts/imx6qdl-tqma6x.dtsi        | 2 +-
 arch/arm/dts/imx7d-phycore-som.dtsi     | 2 +-
 7 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index da6b6f9722..23e6ea4165 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -345,7 +345,7 @@
 	clock-frequency = <100000>;
 	status = "okay";
 
-	sgtl5000: codec@0a {
+	sgtl5000: codec@a {
 		compatible = "fsl,sgtl5000";
 		reg = <0x0a>;
 		clock-frequency = <12288000>;
@@ -354,7 +354,7 @@
 		VDDIO-supply = <&vvideo_reg>;
 	};
 
-	battery: battery@0b {
+	battery: battery@b {
 		compatible = "sbs,sbs-battery";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_battery>;
@@ -526,7 +526,7 @@
 		};
 	};
 
-	flash: m25p80 {
+	flash: m25p80@1 {
 		compatible = "sst,sst25vf032b", "m25p80";
 		spi-max-frequency = <15000000>;
 		reg = <1>;
diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
index 7a133a5010..4c6205135a 100644
--- a/arch/arm/dts/imx53-guf-vincell-lt.dts
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -146,7 +146,7 @@
 	bitrate = <100000>;
 	status = "okay";
 
-	sgtl5000: codec@0a {
+	sgtl5000: codec@a {
 		compatible = "fsl,sgtl5000";
 		reg = <0x0a>;
 	};
diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
index fe336040c3..41af229835 100644
--- a/arch/arm/dts/imx6dl-eltec-hipercam.dts
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -91,13 +91,13 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <0x20>;
 
-	eeprom@0x52 {
+	eeprom@52 {
 		compatible = "amtel,24c04";
 		reg = <0x52>;
 		pagesize = <0x10>;
 	};
 
-	pfuze100@08 {
+	pfuze100@8 {
 		compatible = "fsl,pfuze100";
 		reg = <0x8>;
 
diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index 8f886c4e12..0fb05d05dc 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -93,7 +93,7 @@
 		reg = <0x50>;
 	};
 
-	pmic: pf0100@08 {
+	pmic: pf0100@8 {
 		status = "disabled";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_pmic>;
@@ -195,7 +195,7 @@
 		};
 	};
 
-	codec: sgtl5000@0a {
+	codec: sgtl5000@a {
 		compatible = "fsl,sgtl5000";
 		reg = <0x0a>;
 		clocks = <&clks 201>;
diff --git a/arch/arm/dts/imx6qdl-hummingboard2.dtsi b/arch/arm/dts/imx6qdl-hummingboard2.dtsi
index 20152246a0..6f37d5afa5 100644
--- a/arch/arm/dts/imx6qdl-hummingboard2.dtsi
+++ b/arch/arm/dts/imx6qdl-hummingboard2.dtsi
@@ -173,7 +173,7 @@
 		reg = <0x68>;
 	};
 
-	sgtl5000: codec@0a {
+	sgtl5000: codec@a {
 		clocks = <&clks IMX6QDL_CLK_CKO>;
 		compatible = "fsl,sgtl5000";
 		pinctrl-names = "default";
diff --git a/arch/arm/dts/imx6qdl-tqma6x.dtsi b/arch/arm/dts/imx6qdl-tqma6x.dtsi
index 82f9ec368f..3bcd7ebf29 100644
--- a/arch/arm/dts/imx6qdl-tqma6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tqma6x.dtsi
@@ -108,7 +108,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c3>;
 
-	pmic: pf0100@08 {
+	pmic: pf0100@8 {
 		compatible = "pf0100-regulator";
 		reg = <0x08>;
 		interrupt-parent = <&gpio6>;
diff --git a/arch/arm/dts/imx7d-phycore-som.dtsi b/arch/arm/dts/imx7d-phycore-som.dtsi
index ea8c801f38..622261bd1e 100644
--- a/arch/arm/dts/imx7d-phycore-som.dtsi
+++ b/arch/arm/dts/imx7d-phycore-som.dtsi
@@ -28,7 +28,7 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
-	pmic: pfuze3000@08 {
+	pmic: pfuze3000@8 {
 		compatible = "fsl,pfuze3000";
 		reg = <0x08>;
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI73g-0005F7-J8
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 09:15:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 11:15:25 +0200
Message-Id: <20200915091525.5422-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] arm: dts: imx: Adjust pwm-cells
To: Barebox List <barebox@lists.infradead.org>

Newer i.MX dtsi files expect three pwm cells. The third cell contains
flags. Add a third cell containing empty flags.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51-genesi-efika-sb.dts | 2 +-
 arch/arm/dts/imx53-guf-vincell-lt.dts  | 2 +-
 arch/arm/dts/imx53-guf-vincell.dts     | 2 +-
 arch/arm/dts/imx6dl-lanmcu.dts         | 2 +-
 arch/arm/dts/imx6dl-prtvt7.dts         | 2 +-
 arch/arm/dts/imx6q-guf-santaro.dts     | 2 +-
 arch/arm/dts/imx6q-prti6q.dts          | 2 +-
 arch/arm/dts/imx6qdl-mba6x.dtsi        | 2 +-
 arch/arm/dts/imx6qp-prtwd3.dts         | 4 ++--
 arch/arm/dts/imx7d-pba-c-09.dtsi       | 2 +-
 10 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index fb62fe2c72..7e3017f981 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -94,7 +94,7 @@
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		enable-gpios = <&gpio4 12 GPIO_ACTIVE_LOW>;
-		pwms = <&pwm1 0 78770>;
+		pwms = <&pwm1 0 78770 0>;
 		brightness-levels = <0 1 2 4 8 16 32 64 128 255>;
 		default-brightness-level = <9>;
 		pinctrl-names = "default";
diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
index 0cc6ffc288..d14c0dbf9c 100644
--- a/arch/arm/dts/imx53-guf-vincell-lt.dts
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -67,7 +67,7 @@
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 50000>;
+		pwms = <&pwm1 0 50000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <6>;
 		power-supply = <&ldo3>;
diff --git a/arch/arm/dts/imx53-guf-vincell.dts b/arch/arm/dts/imx53-guf-vincell.dts
index 9686a2cb57..a5f86ccf7e 100644
--- a/arch/arm/dts/imx53-guf-vincell.dts
+++ b/arch/arm/dts/imx53-guf-vincell.dts
@@ -49,7 +49,7 @@
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm2 0 50000>;
+		pwms = <&pwm2 0 50000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <6>;
 		enable-gpios = <&gpio2 2 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/dts/imx6dl-lanmcu.dts b/arch/arm/dts/imx6dl-lanmcu.dts
index b05ed9c3ba..9f69d67a05 100644
--- a/arch/arm/dts/imx6dl-lanmcu.dts
+++ b/arch/arm/dts/imx6dl-lanmcu.dts
@@ -74,7 +74,7 @@
 
 	backlight_lcd: backlight_lcd {
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 5000000>;
+		pwms = <&pwm1 0 5000000 0>;
 		brightness-levels = <0 5 7 9 12 15 20 27 35 47 62 81 107 142 188 248
 			     328 433 573 757 1000>;
 		default-brightness-level = <20>;
diff --git a/arch/arm/dts/imx6dl-prtvt7.dts b/arch/arm/dts/imx6dl-prtvt7.dts
index c202e6786d..27daa3e15f 100644
--- a/arch/arm/dts/imx6dl-prtvt7.dts
+++ b/arch/arm/dts/imx6dl-prtvt7.dts
@@ -21,7 +21,7 @@
 
 	backlight_lcd: backlight-lcd {
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 500000>;
+		pwms = <&pwm1 0 500000 0>;
 		brightness-levels = <0 20 81 248 1000>;
 		default-brightness-level = <20>;
 		num-interpolated-steps = <21>;
diff --git a/arch/arm/dts/imx6q-guf-santaro.dts b/arch/arm/dts/imx6q-guf-santaro.dts
index a915348171..e72aacc59b 100644
--- a/arch/arm/dts/imx6q-guf-santaro.dts
+++ b/arch/arm/dts/imx6q-guf-santaro.dts
@@ -47,7 +47,7 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_backlight>;
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 5000000>;
+		pwms = <&pwm1 0 5000000 0>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <7>;
 		power-supply = <&reg_backlight>;
diff --git a/arch/arm/dts/imx6q-prti6q.dts b/arch/arm/dts/imx6q-prti6q.dts
index 76bb4d53d3..89a23ef0c6 100644
--- a/arch/arm/dts/imx6q-prti6q.dts
+++ b/arch/arm/dts/imx6q-prti6q.dts
@@ -29,7 +29,7 @@
 		compatible = "pwm-backlight";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_backlight>;
-		pwms = <&pwm1 0 5000000>;
+		pwms = <&pwm1 0 5000000 0>;
 		brightness-levels = <0 16 64 255>;
 		num-interpolated-steps = <16>;
 		default-brightness-level = <16>;
diff --git a/arch/arm/dts/imx6qdl-mba6x.dtsi b/arch/arm/dts/imx6qdl-mba6x.dtsi
index 216c3be7e8..9cc31491cc 100644
--- a/arch/arm/dts/imx6qdl-mba6x.dtsi
+++ b/arch/arm/dts/imx6qdl-mba6x.dtsi
@@ -38,7 +38,7 @@
 
 	beeper: beeper@0 {
 		compatible = "pwm-beeper";
-		pwms = <&pwm1 2 5000000>;
+		pwms = <&pwm1 2 5000000 0>;
 	};
 
 	disp0: display@0 {
diff --git a/arch/arm/dts/imx6qp-prtwd3.dts b/arch/arm/dts/imx6qp-prtwd3.dts
index 0ef0bae036..97b25ee26a 100644
--- a/arch/arm/dts/imx6qp-prtwd3.dts
+++ b/arch/arm/dts/imx6qp-prtwd3.dts
@@ -97,7 +97,7 @@
 
 	backlight_lcd: backlight_lcd {
 		compatible = "pwm-backlight";
-		pwms = <&pwm1 0 5000000>;
+		pwms = <&pwm1 0 5000000 0>;
 		brightness-levels = <0 1 2 4 6 8 12 16 24 32 48 64 96 128 192 255>;
 		default-brightness-level = <15>;
 		power-supply = <&reg_3v3>;
@@ -105,7 +105,7 @@
 
 	backlight_panel1: backlight_panel1 {
 		compatible = "pwm-backlight";
-		pwms = <&pwm2 0 5000000>;
+		pwms = <&pwm2 0 5000000 0>;
 		brightness-levels = <0 1 2 4 6 8 12 16 24 32 48 64 96 128 192 255>;
 		default-brightness-level = <0>;
 		power-supply = <&reg_3v3>;
diff --git a/arch/arm/dts/imx7d-pba-c-09.dtsi b/arch/arm/dts/imx7d-pba-c-09.dtsi
index 0b2a987fd4..ffe1239801 100644
--- a/arch/arm/dts/imx7d-pba-c-09.dtsi
+++ b/arch/arm/dts/imx7d-pba-c-09.dtsi
@@ -265,7 +265,7 @@
 };
 
 &backlight {
-	pwms = <&pwm3 0 5000000>;
+	pwms = <&pwm3 0 5000000 0>;
 	enable-gpios = <&gpio1 1 0>;
 	status = "disabled";
 };
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

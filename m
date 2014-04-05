Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWP7D-00031q-5y
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 11:50:34 +0000
Received: from tellur.localdomain (p57B5F61C.dip0.t-ipconnect.de
 [87.181.246.28]) by lynxeye.de (Postfix) with ESMTPA id D777518B4265
 for <barebox@lists.infradead.org>; Sat,  5 Apr 2014 13:49:31 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  5 Apr 2014 13:52:11 +0200
Message-Id: <1396698731-22184-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1396698731-22184-1-git-send-email-dev@lynxeye.de>
References: <1396698731-22184-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 5/5] ARM: dts: update colibri + iris DTs to Linux 3.14
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra20-colibri-iris.dts |  30 ++---
 arch/arm/dts/tegra20-colibri.dtsi     | 213 ++++++++++++++++++----------------
 2 files changed, 126 insertions(+), 117 deletions(-)

diff --git a/arch/arm/dts/tegra20-colibri-iris.dts b/arch/arm/dts/tegra20-colibri-iris.dts
index 31b0f59..adfa917 100644
--- a/arch/arm/dts/tegra20-colibri-iris.dts
+++ b/arch/arm/dts/tegra20-colibri-iris.dts
@@ -6,61 +6,61 @@
 	model = "Toradex Colibri T20 on Iris";
 	compatible = "toradex,iris", "toradex,colibri_t20", "nvidia,tegra20";
 
-	host1x {
-		hdmi {
+	host1x@50000000 {
+		hdmi@54280000 {
 			status = "okay";
 		};
 	};
 
-	pinmux {
+	pinmux@70000014 {
 		state_default: pinmux {
 			hdint {
-				nvidia,tristate = <0>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 
 			i2cddc {
-				nvidia,tristate = <0>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 
 			sdio4 {
-				nvidia,tristate = <0>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 
 			uarta {
-				nvidia,tristate = <0>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 
 			uartd {
-				nvidia,tristate = <0>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 		};
 	};
 
-	usb@c5000000 {
+	serial@70006000 {
 		status = "okay";
 	};
 
-	usb-phy@c5000000 {
+	serial@70006300 {
 		status = "okay";
 	};
 
-	usb@c5008000 {
+	i2c_ddc: i2c@7000c400 {
 		status = "okay";
 	};
 
-	usb-phy@c5008000 {
+	usb@c5000000 {
 		status = "okay";
 	};
 
-	serial@70006000 {
+	usb-phy@c5000000 {
 		status = "okay";
 	};
 
-	serial@70006300 {
+	usb@c5008000 {
 		status = "okay";
 	};
 
-	i2c_ddc: i2c@7000c400 {
+	usb-phy@c5008000 {
 		status = "okay";
 	};
 
diff --git a/arch/arm/dts/tegra20-colibri.dtsi b/arch/arm/dts/tegra20-colibri.dtsi
index d6b7aef..72737b4 100644
--- a/arch/arm/dts/tegra20-colibri.dtsi
+++ b/arch/arm/dts/tegra20-colibri.dtsi
@@ -4,8 +4,17 @@
 	model = "Toradex Colibri T20";
 	compatible = "toradex,colibri_t20", "nvidia,tegra20";
 
-	host1x {
-		hdmi {
+	aliases {
+		rtc0 = "/i2c@7000d000/tps6586x@34";
+		rtc1 = "/rtc@7000e000";
+	};
+
+	memory {
+		reg = <0x00000000 0x20000000>;
+	};
+
+	host1x@50000000 {
+		hdmi@54280000 {
 			vdd-supply = <&hdmi_vdd_reg>;
 			pll-supply = <&hdmi_pll_reg>;
 
@@ -15,7 +24,7 @@
 		};
 	};
 
-	pinmux {
+	pinmux@70000014 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&state_default>;
 
@@ -23,20 +32,20 @@
 			audio_refclk {
 				nvidia,pins = "cdev1";
 				nvidia,function = "plla_out";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			crt {
 				nvidia,pins = "crtp";
 				nvidia,function = "crt";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			dap3 {
 				nvidia,pins = "dap3";
 				nvidia,function = "dap3";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			displaya {
 				nvidia,pins = "ld0", "ld1", "ld2", "ld3",
@@ -46,155 +55,163 @@
 					"lhs", "lpw0", "lpw2", "lsc0",
 					"lsc1", "lsck", "lsda", "lspi", "lvs";
 				nvidia,function = "displaya";
-				nvidia,tristate = <1>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			gpio_dte {
 				nvidia,pins = "dte";
 				nvidia,function = "rsvd1";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			gpio_gmi {
 				nvidia,pins = "ata", "atc", "atd", "ate",
 					"dap1", "dap2", "dap4", "gpu", "irrx",
 					"irtx", "spia", "spib", "spic";
 				nvidia,function = "gmi";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			gpio_pta {
 				nvidia,pins = "pta";
 				nvidia,function = "rsvd4";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			gpio_uac {
 				nvidia,pins = "uac";
 				nvidia,function = "rsvd2";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			hdint {
 				nvidia,pins = "hdint";
 				nvidia,function = "hdmi";
-				nvidia,tristate = <1>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			i2c1 {
 				nvidia,pins = "rm";
 				nvidia,function = "i2c1";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			i2c3 {
 				nvidia,pins = "dtf";
 				nvidia,function = "i2c3";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			i2cddc {
 				nvidia,pins = "ddc";
 				nvidia,function = "i2c2";
-				nvidia,pull = <2>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			i2cp {
 				nvidia,pins = "i2cp";
 				nvidia,function = "i2cp";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			irda {
 				nvidia,pins = "uad";
 				nvidia,function = "irda";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			nand {
 				nvidia,pins = "kbca", "kbcc", "kbcd",
 					"kbce", "kbcf";
 				nvidia,function = "nand";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			owc {
 				nvidia,pins = "owc";
 				nvidia,function = "owr";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			pmc {
 				nvidia,pins = "pmc";
 				nvidia,function = "pwr_on";
-				nvidia,tristate = <0>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			pwm {
 				nvidia,pins = "sdb", "sdc", "sdd";
 				nvidia,function = "pwm";
-				nvidia,tristate = <1>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			sdio4 {
 				nvidia,pins = "atb", "gma", "gme";
 				nvidia,function = "sdio4";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			spi1 {
 				nvidia,pins = "spid", "spie", "spif";
 				nvidia,function = "spi1";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			spi4 {
 				nvidia,pins = "slxa", "slxc", "slxd", "slxk";
 				nvidia,function = "spi4";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			uarta {
 				nvidia,pins = "sdio1";
 				nvidia,function = "uarta";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			uartd {
 				nvidia,pins = "gmc";
 				nvidia,function = "uartd";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			ulpi {
 				nvidia,pins = "uaa", "uab", "uda";
 				nvidia,function = "ulpi";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			ulpi_refclk {
 				nvidia,pins = "cdev2";
 				nvidia,function = "pllp_out4";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			usb_gpio {
 				nvidia,pins = "spig", "spih";
 				nvidia,function = "spi2_alt";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			vi {
 				nvidia,pins = "dta", "dtb", "dtc", "dtd";
 				nvidia,function = "vi";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			vi_sc {
 				nvidia,pins = "csus";
 				nvidia,function = "vi_sensor_clk";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 		};
 	};
 
+	ac97: ac97@70002000 {
+		status = "okay";
+		nvidia,codec-reset-gpio = <&gpio TEGRA_GPIO(V, 0)
+			GPIO_ACTIVE_HIGH>;
+		nvidia,codec-sync-gpio = <&gpio TEGRA_GPIO(P, 0)
+			GPIO_ACTIVE_HIGH>;
+	};
+
 	i2c@7000c000 {
 		clock-frequency = <400000>;
 	};
@@ -221,15 +238,15 @@
 			#gpio-cells = <2>;
 			gpio-controller;
 
-			sys-supply = <&vdd_5v0_reg>;
+			sys-supply = <&vdd_3v3_reg>;
 			vin-sm0-supply = <&sys_reg>;
 			vin-sm1-supply = <&sys_reg>;
 			vin-sm2-supply = <&sys_reg>;
 			vinldo01-supply = <&sm2_reg>;
-			vinldo23-supply = <&sm2_reg>;
-			vinldo4-supply = <&sm2_reg>;
-			vinldo678-supply = <&sm2_reg>;
-			vinldo9-supply = <&sm2_reg>;
+			vinldo23-supply = <&vdd_3v3_reg>;
+			vinldo4-supply = <&vdd_3v3_reg>;
+			vinldo678-supply = <&vdd_3v3_reg>;
+			vinldo9-supply = <&vdd_3v3_reg>;
 
 			regulators {
 				#address-cells = <1>;
@@ -246,8 +263,8 @@
 					reg = <1>;
 					regulator-compatible = "sm0";
 					regulator-name = "vdd_sm0,vdd_core";
-					regulator-min-microvolt = <1275000>;
-					regulator-max-microvolt = <1275000>;
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <1200000>;
 					regulator-always-on;
 				};
 
@@ -255,8 +272,8 @@
 					reg = <2>;
 					regulator-compatible = "sm1";
 					regulator-name = "vdd_sm1,vdd_cpu";
-					regulator-min-microvolt = <1100000>;
-					regulator-max-microvolt = <1100000>;
+					regulator-min-microvolt = <1000000>;
+					regulator-max-microvolt = <1000000>;
 					regulator-always-on;
 				};
 
@@ -264,8 +281,8 @@
 					reg = <3>;
 					regulator-compatible = "sm2";
 					regulator-name = "vdd_sm2,vin_ldo*";
-					regulator-min-microvolt = <3700000>;
-					regulator-max-microvolt = <3700000>;
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <1800000>;
 					regulator-always-on;
 				};
 
@@ -312,8 +329,8 @@
 					reg = <10>;
 					regulator-compatible = "ldo6";
 					regulator-name = "vdd_ldo6,avdd_vdac,vddio_vi,vddio_cam";
-					regulator-min-microvolt = <1800000>;
-					regulator-max-microvolt = <1800000>;
+					regulator-min-microvolt = <2850000>;
+					regulator-max-microvolt = <2850000>;
 				};
 
 				hdmi_vdd_reg: regulator@11 {
@@ -358,7 +375,7 @@
 		};
 	};
 
-	pmc {
+	pmc@7000e400 {
 		nvidia,suspend-mode = <1>;
 		nvidia,cpu-pwr-good-time = <5000>;
 		nvidia,cpu-pwr-off-time = <5000>;
@@ -438,14 +455,6 @@
 		};
 	};
 
-	ac97: ac97 {
-		status = "okay";
-		nvidia,codec-reset-gpio = <&gpio TEGRA_GPIO(V, 0)
-			GPIO_ACTIVE_HIGH>;
-		nvidia,codec-sync-gpio = <&gpio TEGRA_GPIO(P, 0)
-			GPIO_ACTIVE_HIGH>;
-	};
-
 	usb@c5004000 {
 		status = "okay";
 		nvidia,phy-reset-gpio = <&gpio TEGRA_GPIO(V, 1)
@@ -467,7 +476,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		clk32k_in: clock {
+		clk32k_in: clock@0 {
 			compatible = "fixed-clock";
 			reg=<0>;
 			#clock-cells = <0>;
@@ -475,37 +484,17 @@
 		};
 	};
 
-	sound {
-		compatible = "nvidia,tegra-audio-wm9712-colibri_t20",
-			         "nvidia,tegra-audio-wm9712";
-		nvidia,model = "Colibri T20 AC97 Audio";
-
-		nvidia,audio-routing =
-			"Headphone", "HPOUTL",
-			"Headphone", "HPOUTR",
-			"LineIn", "LINEINL",
-			"LineIn", "LINEINR",
-			"Mic", "MIC1";
-
-		nvidia,ac97-controller = <&ac97>;
-
-		clocks = <&tegra_car TEGRA20_CLK_PLL_A>,
-			 <&tegra_car TEGRA20_CLK_PLL_A_OUT0>,
-			 <&tegra_car TEGRA20_CLK_CDEV1>;
-		clock-names = "pll_a", "pll_a_out0", "mclk";
-	};
-
 	regulators {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		vdd_5v0_reg: regulator@100 {
+		vdd_3v3_reg: regulator@100 {
 			compatible = "regulator-fixed";
 			reg = <100>;
-			regulator-name = "vdd_5v0";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
+			regulator-name = "vdd_3v3";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
 			regulator-always-on;
 		};
 
@@ -521,4 +510,24 @@
 			gpio = <&gpio TEGRA_GPIO(BB, 1) GPIO_ACTIVE_HIGH>;
 		};
 	};
+
+	sound {
+		compatible = "nvidia,tegra-audio-wm9712-colibri_t20",
+			         "nvidia,tegra-audio-wm9712";
+		nvidia,model = "Colibri T20 AC97 Audio";
+
+		nvidia,audio-routing =
+			"Headphone", "HPOUTL",
+			"Headphone", "HPOUTR",
+			"LineIn", "LINEINL",
+			"LineIn", "LINEINR",
+			"Mic", "MIC1";
+
+		nvidia,ac97-controller = <&ac97>;
+
+		clocks = <&tegra_car TEGRA20_CLK_PLL_A>,
+			 <&tegra_car TEGRA20_CLK_PLL_A_OUT0>,
+			 <&tegra_car TEGRA20_CLK_CDEV1>;
+		clock-names = "pll_a", "pll_a_out0", "mclk";
+	};
 };
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZD6Cq-0000oa-K3
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 07:25:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Jul 2015 09:24:10 +0200
Message-Id: <1436426657-5266-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
References: <1436426657-5266-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/13] ARM: i.MX51 Efikasb: update device tree
To: Barebox List <barebox@lists.infradead.org>

Use the correct display pins (which are DISP2* and not DISP1*) and
use the of_graph bindings to describe the video hardware.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx51-genesi-efika-sb.dts | 128 ++++++++++++++++++++++-----------
 1 file changed, 87 insertions(+), 41 deletions(-)

diff --git a/arch/arm/dts/imx51-genesi-efika-sb.dts b/arch/arm/dts/imx51-genesi-efika-sb.dts
index 9772259..78cb1b7 100644
--- a/arch/arm/dts/imx51-genesi-efika-sb.dts
+++ b/arch/arm/dts/imx51-genesi-efika-sb.dts
@@ -90,12 +90,34 @@
 		mux-ext-port = <3>;
 	};
 
-	backlight {
+	backlight: backlight {
 		compatible = "pwm-backlight";
+		enable-gpios = <&gpio4 12 GPIO_ACTIVE_LOW>;
 		pwms = <&pwm1 0 78770>;
-		brightness-levels = <0 4 8 16 32 64 128 255>;
-		default-brightness-level = <6>;
-        };
+		brightness-levels = <0 1 2 4 8 16 32 64 128 255>;
+		default-brightness-level = <9>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_backlight>;
+	};
+
+	panel {
+		compatible = "simple-panel";
+		backlight = <&backlight>;
+		enable-gpios = <&gpio3 13 GPIO_ACTIVE_HIGH>;
+		ddc-i2c-bus = <&i2c2>;
+		enable-delay = <200>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&mtl017_out>;
+			};
+		};
+	};
+
+	lvds_reg: lvds_regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio3 7 GPIO_ACTIVE_HIGH>;
+	};
 };
 
 &ssi1 {
@@ -115,16 +137,17 @@
 				MX51_PAD_DI1_PIN12__GPIO3_1 0x80000000		/* WLAN switch */
 				MX51_PAD_EIM_A17__GPIO2_11  0x80000000		/* Bluetooth power */
 				MX51_PAD_EIM_A23__GPIO2_17 0x80000000		/* Audio amp enable, 1 = on */
-				MX51_PAD_CSI1_D8__GPIO3_12 0x80000000		/* LVDS enable, 1 = on */
-				MX51_PAD_GPIO1_2__GPIO1_2 0x80000000		/* Backlight PWM */
-				MX51_PAD_CSI2_D19__GPIO4_12 0x80000000		/* Backlight power, 0 = on */
-				MX51_PAD_DISPB2_SER_DIN__GPIO3_5 0x80000000	/* LVDS reset (1 = reset) */
-				MX51_PAD_DISPB2_SER_CLK__GPIO3_7 0x80000000	/* LVDS power, 1 = on */
-				MX51_PAD_CSI1_D9__GPIO3_13 0x80000000		/* LCD enable (1 = on */
 				MX51_PAD_NANDF_CS0__GPIO3_16 0x80000000		/* Camera power, 0 = on */
 				MX51_PAD_GPIO1_5__GPIO1_5 0x80000000		/* USB hub reset, 0 = reset */
 				MX51_PAD_EIM_D27__GPIO2_9  0x80000000		/* USB phy reset, 0 = reset */
 				MX51_PAD_CSPI1_RDY__GPIO4_26 0x80000000		/* Audio clk enable */
+				MX51_PAD_CSI2_D19__GPIO4_12 0x80000000		/* Backlight power, 0 = on */
+			>;
+		};
+
+		pinctrl_backlight: backlightgrp {
+			fsl,pins = <
+				MX51_PAD_GPIO1_2__PWM1_PWMO 0x80000000		/* Backlight PWM */
 			>;
 		};
 
@@ -187,34 +210,32 @@
 			>;
 		};
 
-		pinctrl_ipu_disp1: ipudisp1grp {
+		pinctrl_ipu_disp2: ipudisp2grp {
 			fsl,pins = <
-				MX51_PAD_DISP1_DAT0__DISP1_DAT0	0x5
-				MX51_PAD_DISP1_DAT1__DISP1_DAT1	0x5
-				MX51_PAD_DISP1_DAT2__DISP1_DAT2	0x5
-				MX51_PAD_DISP1_DAT3__DISP1_DAT3	0x5
-				MX51_PAD_DISP1_DAT4__DISP1_DAT4	0x5
-				MX51_PAD_DISP1_DAT5__DISP1_DAT5	0x5
-				MX51_PAD_DISP1_DAT6__DISP1_DAT6	0x5
-				MX51_PAD_DISP1_DAT7__DISP1_DAT7	0x5
-				MX51_PAD_DISP1_DAT8__DISP1_DAT8	0x5
-				MX51_PAD_DISP1_DAT9__DISP1_DAT9	0x5
-				MX51_PAD_DISP1_DAT10__DISP1_DAT10 0x5
-				MX51_PAD_DISP1_DAT11__DISP1_DAT11 0x5
-				MX51_PAD_DISP1_DAT12__DISP1_DAT12 0x5
-				MX51_PAD_DISP1_DAT13__DISP1_DAT13 0x5
-				MX51_PAD_DISP1_DAT14__DISP1_DAT14 0x5
-				MX51_PAD_DISP1_DAT15__DISP1_DAT15 0x5
-				MX51_PAD_DISP1_DAT16__DISP1_DAT16 0x5
-				MX51_PAD_DISP1_DAT17__DISP1_DAT17 0x5
-				MX51_PAD_DISP1_DAT18__DISP1_DAT18 0x5
-				MX51_PAD_DISP1_DAT19__DISP1_DAT19 0x5
-				MX51_PAD_DISP1_DAT20__DISP1_DAT20 0x5
-				MX51_PAD_DISP1_DAT21__DISP1_DAT21 0x5
-				MX51_PAD_DISP1_DAT22__DISP1_DAT22 0x5
-				MX51_PAD_DISP1_DAT23__DISP1_DAT23 0x5
-				MX51_PAD_DI1_PIN2__DI1_PIN2 0x5
-				MX51_PAD_DI1_PIN3__DI1_PIN3 0x5
+				MX51_PAD_DISP2_DAT0__DISP2_DAT0     0x5
+				MX51_PAD_DISP2_DAT1__DISP2_DAT1     0x5
+				MX51_PAD_DISP2_DAT2__DISP2_DAT2     0x5
+				MX51_PAD_DISP2_DAT3__DISP2_DAT3     0x5
+				MX51_PAD_DISP2_DAT4__DISP2_DAT4     0x5
+				MX51_PAD_DISP2_DAT5__DISP2_DAT5     0x5
+				MX51_PAD_DISP2_DAT6__DISP2_DAT6     0x5
+				MX51_PAD_DISP2_DAT7__DISP2_DAT7     0x5
+				MX51_PAD_DISP2_DAT8__DISP2_DAT8     0x5
+				MX51_PAD_DISP2_DAT9__DISP2_DAT9     0x5
+				MX51_PAD_DISP2_DAT10__DISP2_DAT10   0x5
+				MX51_PAD_DISP2_DAT11__DISP2_DAT11   0x5
+				MX51_PAD_DISP2_DAT12__DISP2_DAT12   0x5
+				MX51_PAD_DISP2_DAT13__DISP2_DAT13   0x5
+				MX51_PAD_DISP2_DAT14__DISP2_DAT14   0x5
+				MX51_PAD_DISP2_DAT15__DISP2_DAT15   0x5
+				MX51_PAD_DI2_PIN2__DI2_PIN2         0x5 /* hsync */
+				MX51_PAD_DI2_PIN3__DI2_PIN3         0x5 /* vsync */
+				MX51_PAD_DI2_DISP_CLK__DI2_DISP_CLK 0x5
+				MX51_PAD_DI_GP4__DI2_PIN15          0x5
+				MX51_PAD_CSI1_D8__GPIO3_12 0x80000000		/* LVDS enable, 1 = on */
+				MX51_PAD_DISPB2_SER_DIN__GPIO3_5 0x80000000	/* LVDS reset (1 = reset) */
+				MX51_PAD_DISPB2_SER_CLK__GPIO3_7 0x80000000	/* LVDS power, 1 = on */
+				MX51_PAD_CSI1_D9__GPIO3_13 0x80000000		/* LCD enable (1 = on */
 			>;
 		};
 
@@ -342,13 +363,38 @@
 	};
 
 	lvds: mtl017@3a {
+		#address-cells = <1>;
+		#size-cells = <0>;
 		compatible = "mtl017";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_ipu_disp1>;
+		pinctrl-0 = <&pinctrl_ipu_disp2>;
+		enable-gpios =  <&gpio3 12 GPIO_ACTIVE_HIGH>;
+		reset-gpios =  <&gpio3 5 GPIO_ACTIVE_HIGH>;
+		vdd-supply = <&lvds_reg>;
 		reg = <0x3a>;
-		crtcs = <&ipu 1>;
-		edid-i2c = <&i2c2>;
-		interface-pix-fmt = "rgb565";
+
+		port@0 {
+			reg = <0>;
+
+			mtl017_in: endpoint {
+				remote-endpoint = <&ipu_di1_disp1>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+
+			mtl017_out: endpoint {
+				remote-endpoint = <&panel_in>;
+			};
+		};
+	};
+};
+
+&ipu_di1 {
+	interface-pix-fmt = "rgb565";
+	endpoint {
+		remote-endpoint = <&mtl017_in>;
 	};
 };
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

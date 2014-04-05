Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWP7D-00031k-5V
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 11:50:28 +0000
Received: from tellur.localdomain (p57B5F61C.dip0.t-ipconnect.de
 [87.181.246.28]) by lynxeye.de (Postfix) with ESMTPA id 8E39C18B4263
 for <barebox@lists.infradead.org>; Sat,  5 Apr 2014 13:49:31 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  5 Apr 2014 13:52:10 +0200
Message-Id: <1396698731-22184-4-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/5] ARM: dts: update paz00 DT to Linux 3.14
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra20-paz00.dts | 56 +++++++++++++++++++++++++-----------------
 1 file changed, 34 insertions(+), 22 deletions(-)

diff --git a/arch/arm/dts/tegra20-paz00.dts b/arch/arm/dts/tegra20-paz00.dts
index d82d406..c7cd8e6 100644
--- a/arch/arm/dts/tegra20-paz00.dts
+++ b/arch/arm/dts/tegra20-paz00.dts
@@ -1,13 +1,23 @@
 /dts-v1/;
 
+#include <dt-bindings/input/input.h>
 #include "tegra20.dtsi"
 
 / {
 	model = "Toshiba AC100 / Dynabook AZ";
 	compatible = "compal,paz00", "nvidia,tegra20";
 
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
 			status = "okay";
 
 			vdd-supply = <&hdmi_vdd_reg>;
@@ -19,7 +29,7 @@
 		};
 	};
 
-	pinmux {
+	pinmux@70000014 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&state_default>;
 
@@ -173,39 +183,39 @@
 					"gpu", "gpu7", "gpv", "i2cp", "pta",
 					"rm", "sdio1", "slxk", "spdo", "uac",
 					"uda";
-				nvidia,pull = <0>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			conf_ck32 {
 				nvidia,pins = "ck32", "ddrc", "pmca", "pmcb",
 					"pmcc", "pmcd", "pmce", "xm2c", "xm2d";
-				nvidia,pull = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
 			};
 			conf_crtp {
 				nvidia,pins = "crtp", "dap3", "dap4", "dtb",
 					"dtc", "dte", "slxa", "slxc", "slxd",
 					"spdi";
-				nvidia,pull = <0>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			conf_csus {
 				nvidia,pins = "csus", "spia", "spib", "spid",
 					"spif";
-				nvidia,pull = <1>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			conf_ddc {
 				nvidia,pins = "ddc", "irrx", "irtx", "kbca",
 					"kbcb", "kbcc", "kbcd", "kbce", "kbcf",
 					"spic", "spig", "uaa", "uab";
-				nvidia,pull = <2>;
-				nvidia,tristate = <0>;
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			conf_dta {
 				nvidia,pins = "dta", "dtd", "owc", "sdc", "sdd",
 					"spie", "spih", "uad", "uca", "ucb";
-				nvidia,pull = <2>;
-				nvidia,tristate = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			conf_hdint {
 				nvidia,pins = "hdint", "ld0", "ld1", "ld2",
@@ -214,23 +224,23 @@
 					"ld13", "ld14", "ld15", "ld16", "ld17",
 					"ldc", "ldi", "lhs", "lsc0", "lspi",
 					"lvs", "pmc";
-				nvidia,tristate = <0>;
+				nvidia,tristate = <TEGRA_PIN_DISABLE>;
 			};
 			conf_lc {
 				nvidia,pins = "lc", "ls";
-				nvidia,pull = <2>;
+				nvidia,pull = <TEGRA_PIN_PULL_UP>;
 			};
 			conf_lcsn {
 				nvidia,pins = "lcsn", "lhp0", "lhp1", "lhp2",
 					"lm0", "lm1", "lpp", "lpw0", "lpw1",
 					"lpw2", "lsc1", "lsck", "lsda", "lsdi",
 					"lvp0", "lvp1", "sdb";
-				nvidia,tristate = <1>;
+				nvidia,tristate = <TEGRA_PIN_ENABLE>;
 			};
 			conf_ld17_0 {
 				nvidia,pins = "ld17_0", "ld19_18", "ld21_20",
 					"ld23_22";
-				nvidia,pull = <1>;
+				nvidia,pull = <TEGRA_PIN_PULL_DOWN>;
 			};
 		};
 	};
@@ -264,7 +274,7 @@
 		clock-frequency = <100000>;
 	};
 
-	nvec {
+	nvec@7000c500 {
 		compatible = "nvidia,nvec";
 		reg = <0x7000c500 0x100>;
 		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
@@ -276,6 +286,8 @@
 		clocks = <&tegra_car TEGRA20_CLK_I2C3>,
 		       	 <&tegra_car TEGRA20_CLK_PLL_P_OUT3>;
 		clock-names = "div-clk", "fast-clk";
+		resets = <&tegra_car 67>;
+		reset-names = "i2c";
 	};
 
 	i2c@7000d000 {
@@ -411,7 +423,7 @@
 		};
 	};
 
-	pmc {
+	pmc@7000e400 {
 		nvidia,invert-interrupt;
 		nvidia,suspend-mode = <1>;
 		nvidia,cpu-pwr-good-time = <2000>;
@@ -468,7 +480,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		clk32k_in: clock {
+		clk32k_in: clock@0 {
 			compatible = "fixed-clock";
 			reg=<0>;
 			#clock-cells = <0>;
@@ -482,7 +494,7 @@
 		power {
 			label = "Power";
 			gpios = <&gpio TEGRA_GPIO(J, 7) GPIO_ACTIVE_LOW>;
-			linux,code = <116>; /* KEY_POWER */
+			linux,code = <KEY_POWER>;
 			gpio-key,wakeup;
 		};
 	};
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

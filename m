Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W79du-000833-HB
 for barebox@lists.infradead.org; Sat, 25 Jan 2014 20:15:56 +0000
Received: from tellur.localdomain (p4FE65AE8.dip0.t-ipconnect.de
 [79.230.90.232]) by lynxeye.de (Postfix) with ESMTPA id 7E84118B425F
 for <barebox@lists.infradead.org>; Sat, 25 Jan 2014 21:14:54 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat, 25 Jan 2014 21:15:58 +0100
Message-Id: <1390680958-9991-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1390680958-9991-1-git-send-email-dev@lynxeye.de>
References: <1390680958-9991-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/4] ARM: dts: pull in complete DTs from Linux 3.13
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra20-colibri-iris.dts |  63 +++-
 arch/arm/dts/tegra20-colibri.dtsi     | 338 ++++++++++++++++++-
 arch/arm/dts/tegra20-paz00.dts        | 318 ++++++++++++++++-
 arch/arm/dts/tegra20.dtsi             | 618 ++++++++++++++++++++++++++++++++--
 4 files changed, 1303 insertions(+), 34 deletions(-)

diff --git a/arch/arm/dts/tegra20-colibri-iris.dts b/arch/arm/dts/tegra20-colibri-iris.dts
index 6b4ee00..31b0f59 100644
--- a/arch/arm/dts/tegra20-colibri-iris.dts
+++ b/arch/arm/dts/tegra20-colibri-iris.dts
@@ -1,10 +1,16 @@
 /dts-v1/;
 
-/include/ "tegra20-colibri.dtsi"
+#include "tegra20-colibri.dtsi"
 
 / {
 	model = "Toradex Colibri T20 on Iris";
-	compatible = "toradex,iris", "toradex,colibri-t20", "nvidia,tegra20";
+	compatible = "toradex,iris", "toradex,colibri_t20", "nvidia,tegra20";
+
+	host1x {
+		hdmi {
+			status = "okay";
+		};
+	};
 
 	pinmux {
 		state_default: pinmux {
@@ -30,8 +36,61 @@
 		};
 	};
 
+	usb@c5000000 {
+		status = "okay";
+	};
+
+	usb-phy@c5000000 {
+		status = "okay";
+	};
+
+	usb@c5008000 {
+		status = "okay";
+	};
+
+	usb-phy@c5008000 {
+		status = "okay";
+	};
+
+	serial@70006000 {
+		status = "okay";
+	};
+
+	serial@70006300 {
+		status = "okay";
+	};
+
+	i2c_ddc: i2c@7000c400 {
+		status = "okay";
+	};
+
 	sdhci@c8000600 {
 		status = "okay";
 		bus-width = <4>;
+		vmmc-supply = <&vcc_sd_reg>;
+		vqmmc-supply = <&vcc_sd_reg>;
+	};
+
+	regulators {
+		regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "usb_host_vbus";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-boot-on;
+			regulator-always-on;
+			gpio = <&gpio TEGRA_GPIO(W, 2) GPIO_ACTIVE_HIGH>;
+		};
+
+		vcc_sd_reg: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "vcc_sd";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-boot-on;
+			regulator-always-on;
+		};
 	};
 };
diff --git a/arch/arm/dts/tegra20-colibri.dtsi b/arch/arm/dts/tegra20-colibri.dtsi
index 1ae5375..d6b7aef 100644
--- a/arch/arm/dts/tegra20-colibri.dtsi
+++ b/arch/arm/dts/tegra20-colibri.dtsi
@@ -1,11 +1,18 @@
-/include/ "tegra20.dtsi"
+#include "tegra20.dtsi"
 
 / {
 	model = "Toradex Colibri T20";
 	compatible = "toradex,colibri_t20", "nvidia,tegra20";
 
-	memory {
-		reg = <0x00000000 0x20000000>;
+	host1x {
+		hdmi {
+			vdd-supply = <&hdmi_vdd_reg>;
+			pll-supply = <&hdmi_pll_reg>;
+
+			nvidia,ddc-i2c-bus = <&i2c_ddc>;
+			nvidia,hpd-gpio = <&gpio TEGRA_GPIO(N, 7)
+				GPIO_ACTIVE_HIGH>;
+		};
 	};
 
 	pinmux {
@@ -188,7 +195,330 @@
 		};
 	};
 
+	i2c@7000c000 {
+		clock-frequency = <400000>;
+	};
+
+	i2c_ddc: i2c@7000c400 {
+		clock-frequency = <100000>;
+	};
+
+	i2c@7000c500 {
+		clock-frequency = <400000>;
+	};
+
+	i2c@7000d000 {
+		status = "okay";
+		clock-frequency = <400000>;
+
+		pmic: tps6586x@34 {
+			compatible = "ti,tps6586x";
+			reg = <0x34>;
+			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+
+			ti,system-power-controller;
+
+			#gpio-cells = <2>;
+			gpio-controller;
+
+			sys-supply = <&vdd_5v0_reg>;
+			vin-sm0-supply = <&sys_reg>;
+			vin-sm1-supply = <&sys_reg>;
+			vin-sm2-supply = <&sys_reg>;
+			vinldo01-supply = <&sm2_reg>;
+			vinldo23-supply = <&sm2_reg>;
+			vinldo4-supply = <&sm2_reg>;
+			vinldo678-supply = <&sm2_reg>;
+			vinldo9-supply = <&sm2_reg>;
+
+			regulators {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				sys_reg: regulator@0 {
+					reg = <0>;
+					regulator-compatible = "sys";
+					regulator-name = "vdd_sys";
+					regulator-always-on;
+				};
+
+				regulator@1 {
+					reg = <1>;
+					regulator-compatible = "sm0";
+					regulator-name = "vdd_sm0,vdd_core";
+					regulator-min-microvolt = <1275000>;
+					regulator-max-microvolt = <1275000>;
+					regulator-always-on;
+				};
+
+				regulator@2 {
+					reg = <2>;
+					regulator-compatible = "sm1";
+					regulator-name = "vdd_sm1,vdd_cpu";
+					regulator-min-microvolt = <1100000>;
+					regulator-max-microvolt = <1100000>;
+					regulator-always-on;
+				};
+
+				sm2_reg: regulator@3 {
+					reg = <3>;
+					regulator-compatible = "sm2";
+					regulator-name = "vdd_sm2,vin_ldo*";
+					regulator-min-microvolt = <3700000>;
+					regulator-max-microvolt = <3700000>;
+					regulator-always-on;
+				};
+
+				/* LDO0 is not connected to anything */
+
+				regulator@5 {
+					reg = <5>;
+					regulator-compatible = "ldo1";
+					regulator-name = "vdd_ldo1,avdd_pll*";
+					regulator-min-microvolt = <1100000>;
+					regulator-max-microvolt = <1100000>;
+					regulator-always-on;
+				};
+
+				regulator@6 {
+					reg = <6>;
+					regulator-compatible = "ldo2";
+					regulator-name = "vdd_ldo2,vdd_rtc";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <1200000>;
+				};
+
+				/* LDO3 is not connected to anything */
+
+				regulator@8 {
+					reg = <8>;
+					regulator-compatible = "ldo4";
+					regulator-name = "vdd_ldo4,avdd_osc,vddio_sys";
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <1800000>;
+					regulator-always-on;
+				};
+
+				ldo5_reg: regulator@9 {
+					reg = <9>;
+					regulator-compatible = "ldo5";
+					regulator-name = "vdd_ldo5,vdd_fuse";
+					regulator-min-microvolt = <3300000>;
+					regulator-max-microvolt = <3300000>;
+					regulator-always-on;
+				};
+
+				regulator@10 {
+					reg = <10>;
+					regulator-compatible = "ldo6";
+					regulator-name = "vdd_ldo6,avdd_vdac,vddio_vi,vddio_cam";
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <1800000>;
+				};
+
+				hdmi_vdd_reg: regulator@11 {
+					reg = <11>;
+					regulator-compatible = "ldo7";
+					regulator-name = "vdd_ldo7,avdd_hdmi";
+					regulator-min-microvolt = <3300000>;
+					regulator-max-microvolt = <3300000>;
+				};
+
+				hdmi_pll_reg: regulator@12 {
+					reg = <12>;
+					regulator-compatible = "ldo8";
+					regulator-name = "vdd_ldo8,avdd_hdmi_pll";
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <1800000>;
+				};
+
+				regulator@13 {
+					reg = <13>;
+					regulator-compatible = "ldo9";
+					regulator-name = "vdd_ldo9,avdd_2v85,vdd_ddr_rx";
+					regulator-min-microvolt = <2850000>;
+					regulator-max-microvolt = <2850000>;
+					regulator-always-on;
+				};
+
+				regulator@14 {
+					reg = <14>;
+					regulator-compatible = "ldo_rtc";
+					regulator-name = "vdd_rtc_out,vdd_cell";
+					regulator-min-microvolt = <3300000>;
+					regulator-max-microvolt = <3300000>;
+					regulator-always-on;
+				};
+			};
+		};
+
+		temperature-sensor@4c {
+			compatible = "national,lm95245";
+			reg = <0x4c>;
+		};
+	};
+
+	pmc {
+		nvidia,suspend-mode = <1>;
+		nvidia,cpu-pwr-good-time = <5000>;
+		nvidia,cpu-pwr-off-time = <5000>;
+		nvidia,core-pwr-good-time = <3845 3845>;
+		nvidia,core-pwr-off-time = <3875>;
+		nvidia,sys-clock-req-active-high;
+	};
+
+	memory-controller@7000f400 {
+		emc-table@83250 {
+			reg = <83250>;
+			compatible = "nvidia,tegra20-emc-table";
+			clock-frequency = <83250>;
+			nvidia,emc-registers =   <0x00000005 0x00000011
+				0x00000004 0x00000002 0x00000004 0x00000004
+				0x00000001 0x0000000a 0x00000002 0x00000002
+				0x00000001 0x00000001 0x00000003 0x00000004
+				0x00000003 0x00000009 0x0000000c 0x0000025f
+				0x00000000 0x00000003 0x00000003 0x00000002
+				0x00000002 0x00000001 0x00000008 0x000000c8
+				0x00000003 0x00000005 0x00000003 0x0000000c
+				0x00000002 0x00000000 0x00000000 0x00000002
+				0x00000000 0x00000000 0x00000083 0x00520006
+				0x00000010 0x00000008 0x00000000 0x00000000
+				0x00000000 0x00000000 0x00000000 0x00000000>;
+		};
+		emc-table@133200 {
+			reg = <133200>;
+			compatible = "nvidia,tegra20-emc-table";
+			clock-frequency = <133200>;
+			nvidia,emc-registers =   <0x00000008 0x00000019
+				0x00000006 0x00000002 0x00000004 0x00000004
+				0x00000001 0x0000000a 0x00000002 0x00000002
+				0x00000002 0x00000001 0x00000003 0x00000004
+				0x00000003 0x00000009 0x0000000c 0x0000039f
+				0x00000000 0x00000003 0x00000003 0x00000002
+				0x00000002 0x00000001 0x00000008 0x000000c8
+				0x00000003 0x00000007 0x00000003 0x0000000c
+				0x00000002 0x00000000 0x00000000 0x00000002
+				0x00000000 0x00000000 0x00000083 0x00510006
+				0x00000010 0x00000008 0x00000000 0x00000000
+				0x00000000 0x00000000 0x00000000 0x00000000>;
+		};
+		emc-table@166500 {
+			reg = <166500>;
+			compatible = "nvidia,tegra20-emc-table";
+			clock-frequency = <166500>;
+			nvidia,emc-registers =   <0x0000000a 0x00000021
+				0x00000008 0x00000003 0x00000004 0x00000004
+				0x00000002 0x0000000a 0x00000003 0x00000003
+				0x00000002 0x00000001 0x00000003 0x00000004
+				0x00000003 0x00000009 0x0000000c 0x000004df
+				0x00000000 0x00000003 0x00000003 0x00000003
+				0x00000003 0x00000001 0x00000009 0x000000c8
+				0x00000003 0x00000009 0x00000004 0x0000000c
+				0x00000002 0x00000000 0x00000000 0x00000002
+				0x00000000 0x00000000 0x00000083 0x004f0006
+				0x00000010 0x00000008 0x00000000 0x00000000
+				0x00000000 0x00000000 0x00000000 0x00000000>;
+		};
+		emc-table@333000 {
+			reg = <333000>;
+			compatible = "nvidia,tegra20-emc-table";
+			clock-frequency = <333000>;
+			nvidia,emc-registers =   <0x00000014 0x00000041
+				0x0000000f 0x00000005 0x00000004 0x00000005
+				0x00000003 0x0000000a 0x00000005 0x00000005
+				0x00000004 0x00000001 0x00000003 0x00000004
+				0x00000003 0x00000009 0x0000000c 0x000009ff
+				0x00000000 0x00000003 0x00000003 0x00000005
+				0x00000005 0x00000001 0x0000000e 0x000000c8
+				0x00000003 0x00000011 0x00000006 0x0000000c
+				0x00000002 0x00000000 0x00000000 0x00000002
+				0x00000000 0x00000000 0x00000083 0x00380006
+				0x00000010 0x00000008 0x00000000 0x00000000
+				0x00000000 0x00000000 0x00000000 0x00000000>;
+		};
+	};
+
+	ac97: ac97 {
+		status = "okay";
+		nvidia,codec-reset-gpio = <&gpio TEGRA_GPIO(V, 0)
+			GPIO_ACTIVE_HIGH>;
+		nvidia,codec-sync-gpio = <&gpio TEGRA_GPIO(P, 0)
+			GPIO_ACTIVE_HIGH>;
+	};
+
+	usb@c5004000 {
+		status = "okay";
+		nvidia,phy-reset-gpio = <&gpio TEGRA_GPIO(V, 1)
+			GPIO_ACTIVE_LOW>;
+	};
+
+	usb-phy@c5004000 {
+		status = "okay";
+		nvidia,phy-reset-gpio = <&gpio TEGRA_GPIO(V, 1)
+			GPIO_ACTIVE_LOW>;
+	};
+
 	sdhci@c8000600 {
-		cd-gpios = <&gpio 23 0>; /* gpio PC7 */
+		cd-gpios = <&gpio TEGRA_GPIO(C, 7) GPIO_ACTIVE_LOW>;
+	};
+
+	clocks {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		clk32k_in: clock {
+			compatible = "fixed-clock";
+			reg=<0>;
+			#clock-cells = <0>;
+			clock-frequency = <32768>;
+		};
+	};
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
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		vdd_5v0_reg: regulator@100 {
+			compatible = "regulator-fixed";
+			reg = <100>;
+			regulator-name = "vdd_5v0";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-always-on;
+		};
+
+		regulator@101 {
+			compatible = "regulator-fixed";
+			reg = <101>;
+			regulator-name = "internal_usb";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			enable-active-high;
+			regulator-boot-on;
+			regulator-always-on;
+			gpio = <&gpio TEGRA_GPIO(BB, 1) GPIO_ACTIVE_HIGH>;
+		};
 	};
 };
diff --git a/arch/arm/dts/tegra20-paz00.dts b/arch/arm/dts/tegra20-paz00.dts
index e8486aa..d82d406 100644
--- a/arch/arm/dts/tegra20-paz00.dts
+++ b/arch/arm/dts/tegra20-paz00.dts
@@ -1,13 +1,22 @@
 /dts-v1/;
 
-/include/ "tegra20.dtsi"
+#include "tegra20.dtsi"
 
 / {
 	model = "Toshiba AC100 / Dynabook AZ";
 	compatible = "compal,paz00", "nvidia,tegra20";
 
-	memory {
-		reg = <0x00000000 0x20000000>;
+	host1x {
+		hdmi {
+			status = "okay";
+
+			vdd-supply = <&hdmi_vdd_reg>;
+			pll-supply = <&hdmi_pll_reg>;
+
+			nvidia,ddc-i2c-bus = <&hdmi_ddc>;
+			nvidia,hpd-gpio = <&gpio TEGRA_GPIO(N, 7)
+				GPIO_ACTIVE_HIGH>;
+		};
 	};
 
 	pinmux {
@@ -225,4 +234,307 @@
 			};
 		};
 	};
+
+	i2s@70002800 {
+		status = "okay";
+	};
+
+	serial@70006000 {
+		status = "okay";
+	};
+
+	serial@70006200 {
+		status = "okay";
+	};
+
+	i2c@7000c000 {
+		status = "okay";
+		clock-frequency = <400000>;
+
+		alc5632: alc5632@1e {
+			compatible = "realtek,alc5632";
+			reg = <0x1e>;
+			gpio-controller;
+			#gpio-cells = <2>;
+		};
+	};
+
+	hdmi_ddc: i2c@7000c400 {
+		status = "okay";
+		clock-frequency = <100000>;
+	};
+
+	nvec {
+		compatible = "nvidia,nvec";
+		reg = <0x7000c500 0x100>;
+		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clock-frequency = <80000>;
+		request-gpios = <&gpio TEGRA_GPIO(V, 2) GPIO_ACTIVE_HIGH>;
+		slave-addr = <138>;
+		clocks = <&tegra_car TEGRA20_CLK_I2C3>,
+		       	 <&tegra_car TEGRA20_CLK_PLL_P_OUT3>;
+		clock-names = "div-clk", "fast-clk";
+	};
+
+	i2c@7000d000 {
+		status = "okay";
+		clock-frequency = <400000>;
+
+		pmic: tps6586x@34 {
+			compatible = "ti,tps6586x";
+			reg = <0x34>;
+			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+
+			#gpio-cells = <2>;
+			gpio-controller;
+
+			sys-supply = <&p5valw_reg>;
+			vin-sm0-supply = <&sys_reg>;
+			vin-sm1-supply = <&sys_reg>;
+			vin-sm2-supply = <&sys_reg>;
+			vinldo01-supply = <&sm2_reg>;
+			vinldo23-supply = <&sm2_reg>;
+			vinldo4-supply = <&sm2_reg>;
+			vinldo678-supply = <&sm2_reg>;
+			vinldo9-supply = <&sm2_reg>;
+
+			regulators {
+				sys_reg: sys {
+					regulator-name = "vdd_sys";
+					regulator-always-on;
+				};
+
+				sm0 {
+					regulator-name = "+1.2vs_sm0,vdd_core";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <1200000>;
+					regulator-always-on;
+				};
+
+				sm1 {
+					regulator-name = "+1.0vs_sm1,vdd_cpu";
+					regulator-min-microvolt = <1000000>;
+					regulator-max-microvolt = <1000000>;
+					regulator-always-on;
+				};
+
+				sm2_reg: sm2 {
+					regulator-name = "+3.7vs_sm2,vin_ldo*";
+					regulator-min-microvolt = <3700000>;
+					regulator-max-microvolt = <3700000>;
+					regulator-always-on;
+				};
+
+				/* LDO0 is not connected to anything */
+
+				ldo1 {
+					regulator-name = "+1.1vs_ldo1,avdd_pll*";
+					regulator-min-microvolt = <1100000>;
+					regulator-max-microvolt = <1100000>;
+					regulator-always-on;
+				};
+
+				ldo2 {
+					regulator-name = "+1.2vs_ldo2,vdd_rtc";
+					regulator-min-microvolt = <1200000>;
+					regulator-max-microvolt = <1200000>;
+				};
+
+				ldo3 {
+					regulator-name = "+3.3vs_ldo3,avdd_usb*";
+					regulator-min-microvolt = <3300000>;
+					regulator-max-microvolt = <3300000>;
+					regulator-always-on;
+				};
+
+				ldo4 {
+					regulator-name = "+1.8vs_ldo4,avdd_osc,vddio_sys";
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <1800000>;
+					regulator-always-on;
+				};
+
+				ldo5 {
+					regulator-name = "+2.85vs_ldo5,vcore_mmc";
+					regulator-min-microvolt = <2850000>;
+					regulator-max-microvolt = <2850000>;
+					regulator-always-on;
+				};
+
+				ldo6 {
+					/*
+					 * Research indicates this should be
+					 * 1.8v; other boards that use this
+					 * rail for the same purpose need it
+					 * set to 1.8v. The schematic signal
+					 * name is incorrect; perhaps copied
+					 * from an incorrect NVIDIA reference.
+					 */
+					regulator-name = "+2.85vs_ldo6,avdd_vdac";
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <1800000>;
+				};
+
+				hdmi_vdd_reg: ldo7 {
+					regulator-name = "+3.3vs_ldo7,avdd_hdmi";
+					regulator-min-microvolt = <3300000>;
+					regulator-max-microvolt = <3300000>;
+				};
+
+				hdmi_pll_reg: ldo8 {
+					regulator-name = "+1.8vs_ldo8,avdd_hdmi_pll";
+					regulator-min-microvolt = <1800000>;
+					regulator-max-microvolt = <1800000>;
+				};
+
+				ldo9 {
+					regulator-name = "+2.85vs_ldo9,vdd_ddr_rx";
+					regulator-min-microvolt = <2850000>;
+					regulator-max-microvolt = <2850000>;
+					regulator-always-on;
+				};
+
+				ldo_rtc {
+					regulator-name = "+3.3vs_rtc";
+					regulator-min-microvolt = <3300000>;
+					regulator-max-microvolt = <3300000>;
+					regulator-always-on;
+				};
+			};
+		};
+
+		adt7461@4c {
+			compatible = "adi,adt7461";
+			reg = <0x4c>;
+		};
+	};
+
+	pmc {
+		nvidia,invert-interrupt;
+		nvidia,suspend-mode = <1>;
+		nvidia,cpu-pwr-good-time = <2000>;
+		nvidia,cpu-pwr-off-time = <0>;
+		nvidia,core-pwr-good-time = <3845 3845>;
+		nvidia,core-pwr-off-time = <0>;
+		nvidia,sys-clock-req-active-high;
+	};
+
+	usb@c5000000 {
+		status = "okay";
+	};
+
+	usb-phy@c5000000 {
+		status = "okay";
+	};
+
+	usb@c5004000 {
+		status = "okay";
+		nvidia,phy-reset-gpio = <&gpio TEGRA_GPIO(V, 0)
+			GPIO_ACTIVE_LOW>;
+	};
+
+	usb-phy@c5004000 {
+		status = "okay";
+		nvidia,phy-reset-gpio = <&gpio TEGRA_GPIO(V, 0)
+			GPIO_ACTIVE_LOW>;
+	};
+
+	usb@c5008000 {
+		status = "okay";
+	};
+
+	usb-phy@c5008000 {
+		status = "okay";
+	};
+
+	sdhci@c8000000 {
+		status = "okay";
+		cd-gpios = <&gpio TEGRA_GPIO(V, 5) GPIO_ACTIVE_LOW>;
+		wp-gpios = <&gpio TEGRA_GPIO(H, 1) GPIO_ACTIVE_HIGH>;
+		power-gpios = <&gpio TEGRA_GPIO(V, 1) GPIO_ACTIVE_HIGH>;
+		bus-width = <4>;
+	};
+
+	sdhci@c8000600 {
+		status = "okay";
+		bus-width = <8>;
+		non-removable;
+	};
+
+	clocks {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		clk32k_in: clock {
+			compatible = "fixed-clock";
+			reg=<0>;
+			#clock-cells = <0>;
+			clock-frequency = <32768>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		power {
+			label = "Power";
+			gpios = <&gpio TEGRA_GPIO(J, 7) GPIO_ACTIVE_LOW>;
+			linux,code = <116>; /* KEY_POWER */
+			gpio-key,wakeup;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		wifi {
+			label = "wifi-led";
+			gpios = <&gpio TEGRA_GPIO(D, 0) GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "rfkill0";
+		};
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		p5valw_reg: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "+5valw";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			regulator-always-on;
+		};
+	};
+
+	sound {
+		compatible = "nvidia,tegra-audio-alc5632-paz00",
+			"nvidia,tegra-audio-alc5632";
+
+		nvidia,model = "Compal PAZ00";
+
+		nvidia,audio-routing =
+			"Int Spk", "SPKOUT",
+			"Int Spk", "SPKOUTN",
+			"Headset Mic", "MICBIAS1",
+			"MIC1", "Headset Mic",
+			"Headset Stereophone", "HPR",
+			"Headset Stereophone", "HPL",
+			"DMICDAT", "Digital Mic";
+
+		nvidia,audio-codec = <&alc5632>;
+		nvidia,i2s-controller = <&tegra_i2s1>;
+		nvidia,hp-det-gpios = <&gpio TEGRA_GPIO(W, 2)
+			GPIO_ACTIVE_HIGH>;
+
+		clocks = <&tegra_car TEGRA20_CLK_PLL_A>,
+		       	 <&tegra_car TEGRA20_CLK_PLL_A_OUT0>,
+			 <&tegra_car TEGRA20_CLK_CDEV1>;
+		clock-names = "pll_a", "pll_a_out0", "mclk";
+	};
 };
diff --git a/arch/arm/dts/tegra20.dtsi b/arch/arm/dts/tegra20.dtsi
index 2b333f5..df40b54 100644
--- a/arch/arm/dts/tegra20.dtsi
+++ b/arch/arm/dts/tegra20.dtsi
@@ -1,15 +1,159 @@
-/include/ "skeleton.dtsi"
+#include <dt-bindings/clock/tegra20-car.h>
+#include <dt-bindings/gpio/tegra-gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+#include "skeleton.dtsi"
 
 / {
 	compatible = "nvidia,tegra20";
+	interrupt-parent = <&intc>;
+
+	aliases {
+		serial0 = &uarta;
+		serial1 = &uartb;
+		serial2 = &uartc;
+		serial3 = &uartd;
+		serial4 = &uarte;
+	};
+
+	host1x {
+		compatible = "nvidia,tegra20-host1x", "simple-bus";
+		reg = <0x50000000 0x00024000>;
+		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>, /* syncpt */
+			     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>; /* general */
+		clocks = <&tegra_car TEGRA20_CLK_HOST1X>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		ranges = <0x54000000 0x54000000 0x04000000>;
+
+		mpe {
+			compatible = "nvidia,tegra20-mpe";
+			reg = <0x54040000 0x00040000>;
+			interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA20_CLK_MPE>;
+		};
+
+		vi {
+			compatible = "nvidia,tegra20-vi";
+			reg = <0x54080000 0x00040000>;
+			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA20_CLK_VI>;
+		};
+
+		epp {
+			compatible = "nvidia,tegra20-epp";
+			reg = <0x540c0000 0x00040000>;
+			interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA20_CLK_EPP>;
+		};
+
+		isp {
+			compatible = "nvidia,tegra20-isp";
+			reg = <0x54100000 0x00040000>;
+			interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA20_CLK_ISP>;
+		};
+
+		gr2d {
+			compatible = "nvidia,tegra20-gr2d";
+			reg = <0x54140000 0x00040000>;
+			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA20_CLK_GR2D>;
+		};
+
+		gr3d {
+			compatible = "nvidia,tegra20-gr3d";
+			reg = <0x54180000 0x00040000>;
+			clocks = <&tegra_car TEGRA20_CLK_GR3D>;
+		};
+
+		dc@54200000 {
+			compatible = "nvidia,tegra20-dc";
+			reg = <0x54200000 0x00040000>;
+			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA20_CLK_DISP1>,
+				 <&tegra_car TEGRA20_CLK_PLL_P>;
+			clock-names = "disp1", "parent";
+
+			rgb {
+				status = "disabled";
+			};
+		};
+
+		dc@54240000 {
+			compatible = "nvidia,tegra20-dc";
+			reg = <0x54240000 0x00040000>;
+			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA20_CLK_DISP2>,
+				 <&tegra_car TEGRA20_CLK_PLL_P>;
+			clock-names = "disp2", "parent";
+
+			rgb {
+				status = "disabled";
+			};
+		};
+
+		hdmi {
+			compatible = "nvidia,tegra20-hdmi";
+			reg = <0x54280000 0x00040000>;
+			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA20_CLK_HDMI>,
+				 <&tegra_car TEGRA20_CLK_PLL_D_OUT0>;
+			clock-names = "hdmi", "parent";
+			status = "disabled";
+		};
+
+		tvo {
+			compatible = "nvidia,tegra20-tvo";
+			reg = <0x542c0000 0x00040000>;
+			interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&tegra_car TEGRA20_CLK_TVO>;
+			status = "disabled";
+		};
+
+		dsi {
+			compatible = "nvidia,tegra20-dsi";
+			reg = <0x54300000 0x00040000>;
+			clocks = <&tegra_car TEGRA20_CLK_DSI>;
+			status = "disabled";
+		};
+	};
+
+	timer@50004600 {
+		compatible = "arm,cortex-a9-twd-timer";
+		reg = <0x50040600 0x20>;
+		interrupts = <GIC_PPI 13
+			(GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_HIGH)>;
+		clocks = <&tegra_car TEGRA20_CLK_TWD>;
+	};
+
+	intc: interrupt-controller {
+		compatible = "arm,cortex-a9-gic";
+		reg = <0x50041000 0x1000
+		       0x50040100 0x0100>;
+		interrupt-controller;
+		#interrupt-cells = <3>;
+	};
+
+	cache-controller {
+		compatible = "arm,pl310-cache";
+		reg = <0x50043000 0x1000>;
+		arm,data-latency = <5 5 2>;
+		arm,tag-latency = <4 4 2>;
+		cache-unified;
+		cache-level = <2>;
+	};
 
 	timer@60005000 {
 		compatible = "nvidia,tegra20-timer";
 		reg = <0x60005000 0x60>;
-		interrupts = <0 0 0x04
-			      0 1 0x04
-			      0 41 0x04
-			      0 42 0x04>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA20_CLK_TIMER>;
 	};
 
 	tegra_car: clock {
@@ -18,16 +162,43 @@
 		#clock-cells = <1>;
 	};
 
+	apbdma: dma {
+		compatible = "nvidia,tegra20-apbdma";
+		reg = <0x6000a000 0x1200>;
+		interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA20_CLK_APBDMA>;
+	};
+
+	ahb {
+		compatible = "nvidia,tegra20-ahb";
+		reg = <0x6000c004 0x10c>; /* AHB Arbitration + Gizmo Controller */
+	};
+
 	gpio: gpio {
 		compatible = "nvidia,tegra20-gpio";
 		reg = <0x6000d000 0x1000>;
-		interrupts = <0 32 0x04
-			      0 33 0x04
-			      0 34 0x04
-			      0 35 0x04
-			      0 55 0x04
-			      0 87 0x04
-			      0 89 0x04>;
+		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 		#gpio-cells = <2>;
 		gpio-controller;
 		#interrupt-cells = <2>;
@@ -35,47 +206,444 @@
 	};
 
 	pinmux: pinmux {
-	compatible = "nvidia,tegra20-pinmux";
-	reg = <0x70000014 0x10   /* Tri-state registers */
-	       0x70000080 0x20   /* Mux registers */
-	       0x700000a0 0x14   /* Pull-up/down registers */
-	       0x70000868 0xa8>; /* Pad control registers */
+		compatible = "nvidia,tegra20-pinmux";
+		reg = <0x70000014 0x10   /* Tri-state registers */
+		       0x70000080 0x20   /* Mux registers */
+		       0x700000a0 0x14   /* Pull-up/down registers */
+		       0x70000868 0xa8>; /* Pad control registers */
+	};
+
+	das {
+		compatible = "nvidia,tegra20-das";
+		reg = <0x70000c00 0x80>;
+	};
+
+	tegra_ac97: ac97 {
+		compatible = "nvidia,tegra20-ac97";
+		reg = <0x70002000 0x200>;
+		interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 12>;
+		clocks = <&tegra_car TEGRA20_CLK_AC97>;
+		status = "disabled";
+	};
+
+	tegra_i2s1: i2s@70002800 {
+		compatible = "nvidia,tegra20-i2s";
+		reg = <0x70002800 0x200>;
+		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 2>;
+		clocks = <&tegra_car TEGRA20_CLK_I2S1>;
+		status = "disabled";
+	};
+
+	tegra_i2s2: i2s@70002a00 {
+		compatible = "nvidia,tegra20-i2s";
+		reg = <0x70002a00 0x200>;
+		interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 1>;
+		clocks = <&tegra_car TEGRA20_CLK_I2S2>;
+		status = "disabled";
+	};
+
+	/*
+	 * There are two serial driver i.e. 8250 based simple serial
+	 * driver and APB DMA based serial driver for higher baudrate
+	 * and performace. To enable the 8250 based driver, the compatible
+	 * is "nvidia,tegra20-uart" and to enable the APB DMA based serial
+	 * driver, the comptible is "nvidia,tegra20-hsuart".
+	 */
+	uarta: serial@70006000 {
+		compatible = "nvidia,tegra20-uart";
+		reg = <0x70006000 0x40>;
+		reg-shift = <2>;
+		interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 8>;
+		clocks = <&tegra_car TEGRA20_CLK_UARTA>;
+		status = "disabled";
+	};
+
+	uartb: serial@70006040 {
+		compatible = "nvidia,tegra20-uart";
+		reg = <0x70006040 0x40>;
+		reg-shift = <2>;
+		interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 9>;
+		clocks = <&tegra_car TEGRA20_CLK_UARTB>;
+		status = "disabled";
+	};
+
+	uartc: serial@70006200 {
+		compatible = "nvidia,tegra20-uart";
+		reg = <0x70006200 0x100>;
+		reg-shift = <2>;
+		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 10>;
+		clocks = <&tegra_car TEGRA20_CLK_UARTC>;
+		status = "disabled";
+	};
+
+	uartd: serial@70006300 {
+		compatible = "nvidia,tegra20-uart";
+		reg = <0x70006300 0x100>;
+		reg-shift = <2>;
+		interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 19>;
+		clocks = <&tegra_car TEGRA20_CLK_UARTD>;
+		status = "disabled";
+	};
+
+	uarte: serial@70006400 {
+		compatible = "nvidia,tegra20-uart";
+		reg = <0x70006400 0x100>;
+		reg-shift = <2>;
+		interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 20>;
+		clocks = <&tegra_car TEGRA20_CLK_UARTE>;
+		status = "disabled";
+	};
+
+	pwm: pwm {
+		compatible = "nvidia,tegra20-pwm";
+		reg = <0x7000a000 0x100>;
+		#pwm-cells = <2>;
+		clocks = <&tegra_car TEGRA20_CLK_PWM>;
+		status = "disabled";
+	};
+
+	rtc {
+		compatible = "nvidia,tegra20-rtc";
+		reg = <0x7000e000 0x100>;
+		interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA20_CLK_RTC>;
+	};
+
+	i2c@7000c000 {
+		compatible = "nvidia,tegra20-i2c";
+		reg = <0x7000c000 0x100>;
+		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&tegra_car TEGRA20_CLK_I2C1>,
+			 <&tegra_car TEGRA20_CLK_PLL_P_OUT3>;
+		clock-names = "div-clk", "fast-clk";
+		status = "disabled";
+	};
+
+	spi@7000c380 {
+		compatible = "nvidia,tegra20-sflash";
+		reg = <0x7000c380 0x80>;
+		interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 11>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&tegra_car TEGRA20_CLK_SPI>;
+		status = "disabled";
+	};
+
+	i2c@7000c400 {
+		compatible = "nvidia,tegra20-i2c";
+		reg = <0x7000c400 0x100>;
+		interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&tegra_car TEGRA20_CLK_I2C2>,
+			 <&tegra_car TEGRA20_CLK_PLL_P_OUT3>;
+		clock-names = "div-clk", "fast-clk";
+		status = "disabled";
+	};
+
+	i2c@7000c500 {
+		compatible = "nvidia,tegra20-i2c";
+		reg = <0x7000c500 0x100>;
+		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&tegra_car TEGRA20_CLK_I2C3>,
+			 <&tegra_car TEGRA20_CLK_PLL_P_OUT3>;
+		clock-names = "div-clk", "fast-clk";
+		status = "disabled";
+	};
+
+	i2c@7000d000 {
+		compatible = "nvidia,tegra20-i2c-dvc";
+		reg = <0x7000d000 0x200>;
+		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&tegra_car TEGRA20_CLK_DVC>,
+			 <&tegra_car TEGRA20_CLK_PLL_P_OUT3>;
+		clock-names = "div-clk", "fast-clk";
+		status = "disabled";
+	};
+
+	spi@7000d400 {
+		compatible = "nvidia,tegra20-slink";
+		reg = <0x7000d400 0x200>;
+		interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 15>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&tegra_car TEGRA20_CLK_SBC1>;
+		status = "disabled";
+	};
+
+	spi@7000d600 {
+		compatible = "nvidia,tegra20-slink";
+		reg = <0x7000d600 0x200>;
+		interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 16>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&tegra_car TEGRA20_CLK_SBC2>;
+		status = "disabled";
+	};
+
+	spi@7000d800 {
+		compatible = "nvidia,tegra20-slink";
+		reg = <0x7000d800 0x200>;
+		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 17>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&tegra_car TEGRA20_CLK_SBC3>;
+		status = "disabled";
+	};
+
+	spi@7000da00 {
+		compatible = "nvidia,tegra20-slink";
+		reg = <0x7000da00 0x200>;
+		interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+		nvidia,dma-request-selector = <&apbdma 18>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		clocks = <&tegra_car TEGRA20_CLK_SBC4>;
+		status = "disabled";
+	};
+
+	kbc {
+		compatible = "nvidia,tegra20-kbc";
+		reg = <0x7000e200 0x100>;
+		interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA20_CLK_KBC>;
+		status = "disabled";
 	};
 
 	pmc {
 		compatible = "nvidia,tegra20-pmc";
 		reg = <0x7000e400 0x400>;
+		clocks = <&tegra_car TEGRA20_CLK_PCLK>, <&clk32k_in>;
+		clock-names = "pclk", "clk32k_in";
+	};
+
+	memory-controller@7000f000 {
+		compatible = "nvidia,tegra20-mc";
+		reg = <0x7000f000 0x024
+		       0x7000f03c 0x3c4>;
+		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	iommu {
+		compatible = "nvidia,tegra20-gart";
+		reg = <0x7000f024 0x00000018	/* controller registers */
+		       0x58000000 0x02000000>;	/* GART aperture */
+	};
+
+	memory-controller@7000f400 {
+		compatible = "nvidia,tegra20-emc";
+		reg = <0x7000f400 0x200>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+
+	pcie-controller {
+		compatible = "nvidia,tegra20-pcie";
+		device_type = "pci";
+		reg = <0x80003000 0x00000800   /* PADS registers */
+		       0x80003800 0x00000200   /* AFI registers */
+		       0x90000000 0x10000000>; /* configuration space */
+		reg-names = "pads", "afi", "cs";
+		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH   /* controller interrupt */
+			      GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>; /* MSI interrupt */
+		interrupt-names = "intr", "msi";
+
+		bus-range = <0x00 0xff>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+
+		ranges = <0x82000000 0 0x80000000 0x80000000 0 0x00001000   /* port 0 registers */
+			  0x82000000 0 0x80001000 0x80001000 0 0x00001000   /* port 1 registers */
+			  0x81000000 0 0          0x82000000 0 0x00010000   /* downstream I/O */
+			  0x82000000 0 0xa0000000 0xa0000000 0 0x08000000   /* non-prefetchable memory */
+			  0xc2000000 0 0xa8000000 0xa8000000 0 0x18000000>; /* prefetchable memory */
+
+		clocks = <&tegra_car TEGRA20_CLK_PEX>,
+			 <&tegra_car TEGRA20_CLK_AFI>,
+			 <&tegra_car TEGRA20_CLK_PCIE_XCLK>,
+			 <&tegra_car TEGRA20_CLK_PLL_E>;
+		clock-names = "pex", "afi", "pcie_xclk", "pll_e";
+		status = "disabled";
+
+		pci@1,0 {
+			device_type = "pci";
+			assigned-addresses = <0x82000800 0 0x80000000 0 0x1000>;
+			reg = <0x000800 0 0 0 0>;
+			status = "disabled";
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges;
+
+			nvidia,num-lanes = <2>;
+		};
+
+		pci@2,0 {
+			device_type = "pci";
+			assigned-addresses = <0x82001000 0 0x80001000 0 0x1000>;
+			reg = <0x001000 0 0 0 0>;
+			status = "disabled";
+
+			#address-cells = <3>;
+			#size-cells = <2>;
+			ranges;
+
+			nvidia,num-lanes = <2>;
+		};
+	};
+
+	usb@c5000000 {
+		compatible = "nvidia,tegra20-ehci", "usb-ehci";
+		reg = <0xc5000000 0x4000>;
+		interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+		phy_type = "utmi";
+		nvidia,has-legacy-mode;
+		clocks = <&tegra_car TEGRA20_CLK_USBD>;
+		nvidia,needs-double-reset;
+		nvidia,phy = <&phy1>;
+		status = "disabled";
+	};
+
+	phy1: usb-phy@c5000000 {
+		compatible = "nvidia,tegra20-usb-phy";
+		reg = <0xc5000000 0x4000 0xc5000000 0x4000>;
+		phy_type = "utmi";
+		clocks = <&tegra_car TEGRA20_CLK_USBD>,
+			 <&tegra_car TEGRA20_CLK_PLL_U>,
+			 <&tegra_car TEGRA20_CLK_CLK_M>,
+			 <&tegra_car TEGRA20_CLK_USBD>;
+		clock-names = "reg", "pll_u", "timer", "utmi-pads";
+		nvidia,has-legacy-mode;
+		nvidia,hssync-start-delay = <9>;
+		nvidia,idle-wait-delay = <17>;
+		nvidia,elastic-limit = <16>;
+		nvidia,term-range-adj = <6>;
+		nvidia,xcvr-setup = <9>;
+		nvidia,xcvr-lsfslew = <1>;
+		nvidia,xcvr-lsrslew = <1>;
+		status = "disabled";
+	};
+
+	usb@c5004000 {
+		compatible = "nvidia,tegra20-ehci", "usb-ehci";
+		reg = <0xc5004000 0x4000>;
+		interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+		phy_type = "ulpi";
+		clocks = <&tegra_car TEGRA20_CLK_USB2>;
+		nvidia,phy = <&phy2>;
+		status = "disabled";
+	};
+
+	phy2: usb-phy@c5004000 {
+		compatible = "nvidia,tegra20-usb-phy";
+		reg = <0xc5004000 0x4000>;
+		phy_type = "ulpi";
+		clocks = <&tegra_car TEGRA20_CLK_USB2>,
+			 <&tegra_car TEGRA20_CLK_PLL_U>,
+			 <&tegra_car TEGRA20_CLK_CDEV2>;
+		clock-names = "reg", "pll_u", "ulpi-link";
+		status = "disabled";
+	};
+
+	usb@c5008000 {
+		compatible = "nvidia,tegra20-ehci", "usb-ehci";
+		reg = <0xc5008000 0x4000>;
+		interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+		phy_type = "utmi";
+		clocks = <&tegra_car TEGRA20_CLK_USB3>;
+		nvidia,phy = <&phy3>;
+		status = "disabled";
+	};
+
+	phy3: usb-phy@c5008000 {
+		compatible = "nvidia,tegra20-usb-phy";
+		reg = <0xc5008000 0x4000 0xc5000000 0x4000>;
+		phy_type = "utmi";
+		clocks = <&tegra_car TEGRA20_CLK_USB3>,
+			 <&tegra_car TEGRA20_CLK_PLL_U>,
+			 <&tegra_car TEGRA20_CLK_CLK_M>,
+			 <&tegra_car TEGRA20_CLK_USBD>;
+		clock-names = "reg", "pll_u", "timer", "utmi-pads";
+		nvidia,hssync-start-delay = <9>;
+		nvidia,idle-wait-delay = <17>;
+		nvidia,elastic-limit = <16>;
+		nvidia,term-range-adj = <6>;
+		nvidia,xcvr-setup = <9>;
+		nvidia,xcvr-lsfslew = <2>;
+		nvidia,xcvr-lsrslew = <2>;
+		status = "disabled";
 	};
 
 	sdhci@c8000000 {
 		compatible = "nvidia,tegra20-sdhci";
 		reg = <0xc8000000 0x200>;
-		interrupts = <0 14 0x04>;
-		clocks = <&tegra_car 14>;
+		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA20_CLK_SDMMC1>;
 		status = "disabled";
 	};
 
 	sdhci@c8000200 {
 		compatible = "nvidia,tegra20-sdhci";
 		reg = <0xc8000200 0x200>;
-		interrupts = <0 15 0x04>;
-		clocks = <&tegra_car 9>;
+		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA20_CLK_SDMMC2>;
 		status = "disabled";
 	};
 
 	sdhci@c8000400 {
 		compatible = "nvidia,tegra20-sdhci";
 		reg = <0xc8000400 0x200>;
-		interrupts = <0 19 0x04>;
-		clocks = <&tegra_car 69>;
+		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA20_CLK_SDMMC3>;
 		status = "disabled";
 	};
 
 	sdhci@c8000600 {
 		compatible = "nvidia,tegra20-sdhci";
 		reg = <0xc8000600 0x200>;
-		interrupts = <0 31 0x04>;
-		clocks = <&tegra_car 15>;
+		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&tegra_car TEGRA20_CLK_SDMMC4>;
 		status = "disabled";
 	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a9";
+			reg = <0>;
+		};
+
+		cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a9";
+			reg = <1>;
+		};
+	};
+
+	pmu {
+		compatible = "arm,cortex-a9-pmu";
+		interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+	};
 };
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

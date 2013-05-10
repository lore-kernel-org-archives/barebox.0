Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uat3e-0003kj-5O
 for barebox@lists.infradead.org; Fri, 10 May 2013 19:32:46 +0000
Received: from localhost.localdomain (tmo-104-0.customers.d1-online.com
 [80.187.104.0])
 by km20343-01.keymachine.de (Postfix) with ESMTPA id 9DA197D416E
 for <barebox@lists.infradead.org>; Fri, 10 May 2013 21:32:24 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 10 May 2013 21:32:20 +0200
Message-Id: <1368214340-23493-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] tegra20: add Colibri T20 on Iris
To: barebox@lists.infradead.org

This adds the initial devicetree files for the Colibri T20 module on an
Iris carrier board.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra20-colibri-iris.dts |  38 +++++++
 arch/arm/dts/tegra20-colibri.dtsi     | 190 ++++++++++++++++++++++++++++++++++
 2 files changed, 228 insertions(+)
 create mode 100644 arch/arm/dts/tegra20-colibri-iris.dts
 create mode 100644 arch/arm/dts/tegra20-colibri.dtsi

diff --git a/arch/arm/dts/tegra20-colibri-iris.dts b/arch/arm/dts/tegra20-colibri-iris.dts
new file mode 100644
index 0000000..b3e187e
--- /dev/null
+++ b/arch/arm/dts/tegra20-colibri-iris.dts
@@ -0,0 +1,38 @@
+/dts-v1/;
+
+/include/ "tegra20-colibri.dtsi"
+
+/ {
+	model = "Toradex Colibri T20 on Iris";
+	compatible = "toradex,iris", "toradex,colibri-t20", "nvidia,tegra20";
+
+	host1x {
+		hdmi {
+			status = "okay";
+		};
+	};
+
+	pinmux {
+		state_default: pinmux {
+			hdint {
+				nvidia,tristate = <0>;
+			};
+
+			i2cddc {
+				nvidia,tristate = <0>;
+			};
+
+			sdio4 {
+				nvidia,tristate = <0>;
+			};
+
+			uarta {
+				nvidia,tristate = <0>;
+			};
+
+			uartd {
+				nvidia,tristate = <0>;
+			};
+		};
+	};
+};
diff --git a/arch/arm/dts/tegra20-colibri.dtsi b/arch/arm/dts/tegra20-colibri.dtsi
new file mode 100644
index 0000000..3644e7d
--- /dev/null
+++ b/arch/arm/dts/tegra20-colibri.dtsi
@@ -0,0 +1,190 @@
+/include/ "tegra20.dtsi"
+
+/ {
+	model = "Toradex Colibri T20";
+	compatible = "toradex,colibri_t20", "nvidia,tegra20";
+
+	memory {
+		reg = <0x00000000 0x20000000>;
+	};
+
+	pinmux {
+		pinctrl-names = "default";
+		pinctrl-0 = <&state_default>;
+
+		state_default: pinmux {
+			audio_refclk {
+				nvidia,pins = "cdev1";
+				nvidia,function = "plla_out";
+				nvidia,pull = <0>;
+				nvidia,tristate = <0>;
+			};
+			crt {
+				nvidia,pins = "crtp";
+				nvidia,function = "crt";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+			dap3 {
+				nvidia,pins = "dap3";
+				nvidia,function = "dap3";
+				nvidia,pull = <0>;
+				nvidia,tristate = <0>;
+			};
+			displaya {
+				nvidia,pins = "ld0", "ld1", "ld2", "ld3",
+					"ld4", "ld5", "ld6", "ld7", "ld8",
+					"ld9", "ld10", "ld11", "ld12", "ld13",
+					"ld14", "ld15", "ld16", "ld17",
+					"lhs", "lpw0", "lpw2", "lsc0",
+					"lsc1", "lsck", "lsda", "lspi", "lvs";
+				nvidia,function = "displaya";
+				nvidia,tristate = <1>;
+			};
+			gpio_dte {
+				nvidia,pins = "dte";
+				nvidia,function = "rsvd1";
+				nvidia,pull = <0>;
+				nvidia,tristate = <0>;
+			};
+			gpio_gmi {
+				nvidia,pins = "ata", "atc", "atd", "ate",
+					"dap1", "dap2", "dap4", "gpu", "irrx",
+					"irtx", "spia", "spib", "spic";
+				nvidia,function = "gmi";
+				nvidia,pull = <0>;
+				nvidia,tristate = <0>;
+			};
+			gpio_pta {
+				nvidia,pins = "pta";
+				nvidia,function = "rsvd4";
+				nvidia,pull = <0>;
+				nvidia,tristate = <0>;
+			};
+			gpio_uac {
+				nvidia,pins = "uac";
+				nvidia,function = "rsvd2";
+				nvidia,pull = <0>;
+				nvidia,tristate = <0>;
+			};
+			hdint {
+				nvidia,pins = "hdint";
+				nvidia,function = "hdmi";
+				nvidia,tristate = <1>;
+			};
+			i2c1 {
+				nvidia,pins = "rm";
+				nvidia,function = "i2c1";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+			i2c3 {
+				nvidia,pins = "dtf";
+				nvidia,function = "i2c3";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+			i2cddc {
+				nvidia,pins = "ddc";
+				nvidia,function = "i2c2";
+				nvidia,pull = <2>;
+				nvidia,tristate = <1>;
+			};
+			i2cp {
+				nvidia,pins = "i2cp";
+				nvidia,function = "i2cp";
+				nvidia,pull = <0>;
+				nvidia,tristate = <0>;
+			};
+			irda {
+				nvidia,pins = "uad";
+				nvidia,function = "irda";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+			nand {
+				nvidia,pins = "kbca", "kbcc", "kbcd",
+					"kbce", "kbcf";
+				nvidia,function = "nand";
+				nvidia,pull = <0>;
+				nvidia,tristate = <0>;
+			};
+			owc {
+				nvidia,pins = "owc";
+				nvidia,function = "owr";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+			pmc {
+				nvidia,pins = "pmc";
+				nvidia,function = "pwr_on";
+				nvidia,tristate = <0>;
+			};
+			pwm {
+				nvidia,pins = "sdb", "sdc", "sdd";
+				nvidia,function = "pwm";
+				nvidia,tristate = <1>;
+			};
+			sdio4 {
+				nvidia,pins = "atb", "gma", "gme";
+				nvidia,function = "sdio4";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+			spi1 {
+				nvidia,pins = "spid", "spie", "spif";
+				nvidia,function = "spi1";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+			spi4 {
+				nvidia,pins = "slxa", "slxc", "slxd", "slxk";
+				nvidia,function = "spi4";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+			uarta {
+				nvidia,pins = "sdio1";
+				nvidia,function = "uarta";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+			uartd {
+				nvidia,pins = "gmc";
+				nvidia,function = "uartd";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+			ulpi {
+				nvidia,pins = "uaa", "uab", "uda";
+				nvidia,function = "ulpi";
+				nvidia,pull = <0>;
+				nvidia,tristate = <0>;
+			};
+			ulpi_refclk {
+				nvidia,pins = "cdev2";
+				nvidia,function = "pllp_out4";
+				nvidia,pull = <0>;
+				nvidia,tristate = <0>;
+			};
+			usb_gpio {
+				nvidia,pins = "spig", "spih";
+				nvidia,function = "spi2_alt";
+				nvidia,pull = <0>;
+				nvidia,tristate = <0>;
+			};
+			vi {
+				nvidia,pins = "dta", "dtb", "dtc", "dtd";
+				nvidia,function = "vi";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+			vi_sc {
+				nvidia,pins = "csus";
+				nvidia,function = "vi_sensor_clk";
+				nvidia,pull = <0>;
+				nvidia,tristate = <1>;
+			};
+		};
+	};
+};
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

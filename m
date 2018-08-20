Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1frZTG-0006W2-Fz
 for barebox@lists.infradead.org; Mon, 20 Aug 2018 01:59:08 +0000
Received: by mail-pl0-x241.google.com with SMTP id e11-v6so6288680plb.3
 for <barebox@lists.infradead.org>; Sun, 19 Aug 2018 18:58:56 -0700 (PDT)
From: marc@cpdesign.com.au
Date: Mon, 20 Aug 2018 11:57:35 +1000
Message-Id: <20180820015736.6680-2-marc@cpdesign.com.au>
In-Reply-To: <20180820015736.6680-1-marc@cpdesign.com.au>
References: <20180820015736.6680-1-marc@cpdesign.com.au>
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
Subject: [PATCH 2/3] ARM: dts: update am335x-bone-common.dtsi to match kernel
 version
To: barebox@lists.infradead.org

From: Marc Reilly <marc@cpdesign.com.au>

This updates to the current version in dts/arm.
It is deliberately copied (rather than
#include <arm/am335x-bone-common.dtsi> ) to make the changes more apparent.

The main differences are:
 - use of AM33XX_IOPAD for pins,
 - addition of baseboard eeprom
 - addition of cape eeprom
 - more details for "tps" regualtor
 - removal of cpsw_emac1
 - change for mmc1 cd-gpios
 - enable aes and sham nodes

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/dts/am335x-bone-common.dtsi | 258 ++++++++++++++++++++++++++---------
 1 file changed, 191 insertions(+), 67 deletions(-)

diff --git a/arch/arm/dts/am335x-bone-common.dtsi b/arch/arm/dts/am335x-bone-common.dtsi
index e03ae2a8d..f9e8667f5 100644
--- a/arch/arm/dts/am335x-bone-common.dtsi
+++ b/arch/arm/dts/am335x-bone-common.dtsi
@@ -7,44 +7,49 @@
  */
 
 / {
-	chosen {
-		stdout-path = &uart0;
-	};
-
 	cpus {
 		cpu@0 {
 			cpu0-supply = <&dcdc2_reg>;
 		};
 	};
 
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>; /* 256 MB */
+	};
+
+	chosen {
+		stdout-path = &uart0;
+	};
+
 	leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&user_leds_s0>;
 
 		compatible = "gpio-leds";
 
-		led@2 {
+		led2 {
 			label = "beaglebone:green:heartbeat";
 			gpios = <&gpio1 21 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 			default-state = "off";
 		};
 
-		led@3 {
+		led3 {
 			label = "beaglebone:green:mmc0";
 			gpios = <&gpio1 22 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "mmc0";
 			default-state = "off";
 		};
 
-		led@4 {
+		led4 {
 			label = "beaglebone:green:usr2";
 			gpios = <&gpio1 23 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "cpu0";
 			default-state = "off";
 		};
 
-		led@5 {
+		led5 {
 			label = "beaglebone:green:usr3";
 			gpios = <&gpio1 24 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "mmc1";
@@ -52,7 +57,7 @@
 		};
 	};
 
-	vmmcsd_fixed: fixedregulator@0 {
+	vmmcsd_fixed: fixedregulator0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vmmcsd_fixed";
 		regulator-min-microvolt = <3300000>;
@@ -66,105 +71,119 @@
 
 	user_leds_s0: user_leds_s0 {
 		pinctrl-single,pins = <
-			0x54 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a5.gpio1_21 */
-			0x58 (PIN_OUTPUT_PULLUP | MUX_MODE7)	/* gpmc_a6.gpio1_22 */
-			0x5c (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a7.gpio1_23 */
-			0x60 (PIN_OUTPUT_PULLUP | MUX_MODE7)	/* gpmc_a8.gpio1_24 */
+			AM33XX_IOPAD(0x854, PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a5.gpio1_21 */
+			AM33XX_IOPAD(0x858, PIN_OUTPUT_PULLUP | MUX_MODE7)	/* gpmc_a6.gpio1_22 */
+			AM33XX_IOPAD(0x85c, PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a7.gpio1_23 */
+			AM33XX_IOPAD(0x860, PIN_OUTPUT_PULLUP | MUX_MODE7)	/* gpmc_a8.gpio1_24 */
 		>;
 	};
 
 	i2c0_pins: pinmux_i2c0_pins {
 		pinctrl-single,pins = <
-			0x188 (PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c0_sda.i2c0_sda */
-			0x18c (PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c0_scl.i2c0_scl */
+			AM33XX_IOPAD(0x988, PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c0_sda.i2c0_sda */
+			AM33XX_IOPAD(0x98c, PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c0_scl.i2c0_scl */
+		>;
+	};
+
+	i2c2_pins: pinmux_i2c2_pins {
+		pinctrl-single,pins = <
+			AM33XX_IOPAD(0x978, PIN_INPUT_PULLUP | MUX_MODE3)	/* uart1_ctsn.i2c2_sda */
+			AM33XX_IOPAD(0x97c, PIN_INPUT_PULLUP | MUX_MODE3)	/* uart1_rtsn.i2c2_scl */
 		>;
 	};
 
 	uart0_pins: pinmux_uart0_pins {
 		pinctrl-single,pins = <
-			0x170 (PIN_INPUT_PULLUP | MUX_MODE0)	/* uart0_rxd.uart0_rxd */
-			0x174 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* uart0_txd.uart0_txd */
+			AM33XX_IOPAD(0x970, PIN_INPUT_PULLUP | MUX_MODE0)	/* uart0_rxd.uart0_rxd */
+			AM33XX_IOPAD(0x974, PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* uart0_txd.uart0_txd */
 		>;
 	};
 
 	clkout2_pin: pinmux_clkout2_pin {
 		pinctrl-single,pins = <
-			0x1b4 (PIN_OUTPUT_PULLDOWN | MUX_MODE3)	/* xdma_event_intr1.clkout2 */
+			AM33XX_IOPAD(0x9b4, PIN_OUTPUT_PULLDOWN | MUX_MODE3)	/* xdma_event_intr1.clkout2 */
 		>;
 	};
 
 	cpsw_default: cpsw_default {
 		pinctrl-single,pins = <
 			/* Slave 1 */
-			0x110 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxerr.mii1_rxerr */
-			0x114 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* mii1_txen.mii1_txen */
-			0x118 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxdv.mii1_rxdv */
-			0x11c (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* mii1_txd3.mii1_txd3 */
-			0x120 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* mii1_txd2.mii1_txd2 */
-			0x124 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* mii1_txd1.mii1_txd1 */
-			0x128 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* mii1_txd0.mii1_txd0 */
-			0x12c (PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_txclk.mii1_txclk */
-			0x130 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxclk.mii1_rxclk */
-			0x134 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxd3.mii1_rxd3 */
-			0x138 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxd2.mii1_rxd2 */
-			0x13c (PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxd1.mii1_rxd1 */
-			0x140 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxd0.mii1_rxd0 */
+			AM33XX_IOPAD(0x910, PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxerr.mii1_rxerr */
+			AM33XX_IOPAD(0x914, PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* mii1_txen.mii1_txen */
+			AM33XX_IOPAD(0x918, PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxdv.mii1_rxdv */
+			AM33XX_IOPAD(0x91c, PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* mii1_txd3.mii1_txd3 */
+			AM33XX_IOPAD(0x920, PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* mii1_txd2.mii1_txd2 */
+			AM33XX_IOPAD(0x924, PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* mii1_txd1.mii1_txd1 */
+			AM33XX_IOPAD(0x928, PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* mii1_txd0.mii1_txd0 */
+			AM33XX_IOPAD(0x92c, PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_txclk.mii1_txclk */
+			AM33XX_IOPAD(0x930, PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxclk.mii1_rxclk */
+			AM33XX_IOPAD(0x934, PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxd3.mii1_rxd3 */
+			AM33XX_IOPAD(0x938, PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxd2.mii1_rxd2 */
+			AM33XX_IOPAD(0x93c, PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxd1.mii1_rxd1 */
+			AM33XX_IOPAD(0x940, PIN_INPUT_PULLUP | MUX_MODE0)	/* mii1_rxd0.mii1_rxd0 */
 		>;
 	};
 
 	cpsw_sleep: cpsw_sleep {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
-			0x110 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x114 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x118 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x11c (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x120 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x124 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x128 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x12c (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x130 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x134 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x138 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x13c (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x140 (PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x910, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x914, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x918, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x91c, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x920, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x924, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x928, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x92c, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x930, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x934, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x938, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x93c, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x940, PIN_INPUT_PULLDOWN | MUX_MODE7)
 		>;
 	};
 
 	davinci_mdio_default: davinci_mdio_default {
 		pinctrl-single,pins = <
 			/* MDIO */
-			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE0)	/* mdio_data.mdio_data */
-			0x14c (PIN_OUTPUT_PULLUP | MUX_MODE0)			/* mdio_clk.mdio_clk */
+			AM33XX_IOPAD(0x948, PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE0)	/* mdio_data.mdio_data */
+			AM33XX_IOPAD(0x94c, PIN_OUTPUT_PULLUP | MUX_MODE0)			/* mdio_clk.mdio_clk */
 		>;
 	};
 
 	davinci_mdio_sleep: davinci_mdio_sleep {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
-			0x148 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x14c (PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x948, PIN_INPUT_PULLDOWN | MUX_MODE7)
+			AM33XX_IOPAD(0x94c, PIN_INPUT_PULLDOWN | MUX_MODE7)
 		>;
 	};
 
 	mmc1_pins: pinmux_mmc1_pins {
 		pinctrl-single,pins = <
-			0x160 (PIN_INPUT | MUX_MODE7) /* GPIO0_6 */
+			AM33XX_IOPAD(0x960, PIN_INPUT | MUX_MODE7)		/* spio0_cs1.gpio0_6 */
+			AM33XX_IOPAD(0x8fc, PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_dat0.mmc0_dat0 */
+			AM33XX_IOPAD(0x8f8, PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_dat1.mmc0_dat1 */
+			AM33XX_IOPAD(0x8f4, PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_dat2.mmc0_dat2 */
+			AM33XX_IOPAD(0x8f0, PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_dat3.mmc0_dat3 */
+			AM33XX_IOPAD(0x904, PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_cmd.mmc0_cmd */
+			AM33XX_IOPAD(0x900, PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_clk.mmc0_clk */
+			AM33XX_IOPAD(0x9a0, PIN_INPUT | MUX_MODE4)		/* mcasp0_aclkr.mmc0_sdwp */
 		>;
 	};
 
 	emmc_pins: pinmux_emmc_pins {
 		pinctrl-single,pins = <
-			0x80 (PIN_INPUT_PULLUP | MUX_MODE2) /* gpmc_csn1.mmc1_clk */
-			0x84 (PIN_INPUT_PULLUP | MUX_MODE2) /* gpmc_csn2.mmc1_cmd */
-			0x00 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad0.mmc1_dat0 */
-			0x04 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad1.mmc1_dat1 */
-			0x08 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad2.mmc1_dat2 */
-			0x0c (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad3.mmc1_dat3 */
-			0x10 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad4.mmc1_dat4 */
-			0x14 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad5.mmc1_dat5 */
-			0x18 (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad6.mmc1_dat6 */
-			0x1c (PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad7.mmc1_dat7 */
+			AM33XX_IOPAD(0x880, PIN_INPUT_PULLUP | MUX_MODE2) /* gpmc_csn1.mmc1_clk */
+			AM33XX_IOPAD(0x884, PIN_INPUT_PULLUP | MUX_MODE2) /* gpmc_csn2.mmc1_cmd */
+			AM33XX_IOPAD(0x800, PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad0.mmc1_dat0 */
+			AM33XX_IOPAD(0x804, PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad1.mmc1_dat1 */
+			AM33XX_IOPAD(0x808, PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad2.mmc1_dat2 */
+			AM33XX_IOPAD(0x80c, PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad3.mmc1_dat3 */
+			AM33XX_IOPAD(0x810, PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad4.mmc1_dat4 */
+			AM33XX_IOPAD(0x814, PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad5.mmc1_dat5 */
+			AM33XX_IOPAD(0x818, PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad6.mmc1_dat6 */
+			AM33XX_IOPAD(0x81c, PIN_INPUT_PULLUP | MUX_MODE1) /* gpmc_ad7.mmc1_dat7 */
 		>;
 	};
 };
@@ -195,6 +214,8 @@
 &usb0 {
 	status = "okay";
 	dr_mode = "peripheral";
+	interrupts-extended = <&intc 18 &tps 0>;
+	interrupt-names = "mc", "vbus";
 };
 
 &usb1 {
@@ -217,13 +238,104 @@
 		reg = <0x24>;
 	};
 
+	baseboard_eeprom: baseboard_eeprom@50 {
+		compatible = "atmel,24c256";
+		reg = <0x50>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+		baseboard_data: baseboard_data@0 {
+			reg = <0 0x100>;
+		};
+	};
 };
 
+&i2c2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c2_pins>;
+
+	status = "okay";
+	clock-frequency = <100000>;
+
+	cape_eeprom0: cape_eeprom0@54 {
+		compatible = "atmel,24c256";
+		reg = <0x54>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		cape0_data: cape_data@0 {
+			reg = <0 0x100>;
+		};
+	};
+
+	cape_eeprom1: cape_eeprom1@55 {
+		compatible = "atmel,24c256";
+		reg = <0x55>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		cape1_data: cape_data@0 {
+			reg = <0 0x100>;
+		};
+	};
+
+	cape_eeprom2: cape_eeprom2@56 {
+		compatible = "atmel,24c256";
+		reg = <0x56>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		cape2_data: cape_data@0 {
+			reg = <0 0x100>;
+		};
+	};
+
+	cape_eeprom3: cape_eeprom3@57 {
+		compatible = "atmel,24c256";
+		reg = <0x57>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		cape3_data: cape_data@0 {
+			reg = <0 0x100>;
+		};
+	};
+};
+
+
 /include/ "tps65217.dtsi"
 
 &tps {
+	/*
+	 * Configure pmic to enter OFF-state instead of SLEEP-state ("RTC-only
+	 * mode") at poweroff.  Most BeagleBone versions do not support RTC-only
+	 * mode and risk hardware damage if this mode is entered.
+	 *
+	 * For details, see linux-omap mailing list May 2015 thread
+	 *	[PATCH] ARM: dts: am335x-bone* enable pmic-shutdown-controller
+	 * In particular, messages:
+	 *	http://www.spinics.net/lists/linux-omap/msg118585.html
+	 *	http://www.spinics.net/lists/linux-omap/msg118615.html
+	 *
+	 * You can override this later with
+	 *	&tps {  /delete-property/ ti,pmic-shutdown-controller;  }
+	 * if you want to use RTC-only mode and made sure you are not affected
+	 * by the hardware problems. (Tip: double-check by performing a current
+	 * measurement after shutdown: it should be less than 1 mA.)
+	 */
+
+	interrupts = <7>; /* NMI */
+	interrupt-parent = <&intc>;
+
+	ti,pmic-shutdown-controller;
+
+	charger {
+		status = "okay";
+	};
+
+	pwrbutton {
+		status = "okay";
+	};
+
 	regulators {
 		dcdc1_reg: regulator@0 {
+			regulator-name = "vdds_dpr";
 			regulator-always-on;
 		};
 
@@ -231,7 +343,7 @@
 			/* VDD_MPU voltage limits 0.95V - 1.26V with +/-4% tolerance */
 			regulator-name = "vdd_mpu";
 			regulator-min-microvolt = <925000>;
-			regulator-max-microvolt = <1325000>;
+			regulator-max-microvolt = <1351500>;
 			regulator-boot-on;
 			regulator-always-on;
 		};
@@ -246,18 +358,22 @@
 		};
 
 		ldo1_reg: regulator@3 {
+			regulator-name = "vio,vrtc,vdds";
 			regulator-always-on;
 		};
 
 		ldo2_reg: regulator@4 {
+			regulator-name = "vdd_3v3aux";
 			regulator-always-on;
 		};
 
 		ldo3_reg: regulator@5 {
+			regulator-name = "vdd_1v8";
 			regulator-always-on;
 		};
 
 		ldo4_reg: regulator@6 {
+			regulator-name = "vdd_3v3a";
 			regulator-always-on;
 		};
 	};
@@ -268,12 +384,8 @@
 	phy-mode = "mii";
 };
 
-&cpsw_emac1 {
-	phy_id = <&davinci_mdio>, <1>;
-	phy-mode = "mii";
-};
-
 &mac {
+	slaves = <1>;
 	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&cpsw_default>;
 	pinctrl-1 = <&cpsw_sleep>;
@@ -292,6 +404,18 @@
 	bus-width = <0x4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc1_pins>;
-	cd-gpios = <&gpio0 6 GPIO_ACTIVE_HIGH>;
-	cd-inverted;
+	cd-gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
+};
+
+&aes {
+	status = "okay";
+};
+
+&sham {
+	status = "okay";
+};
+
+&rtc {
+	clocks = <&clk_32768_ck>, <&l4_per_clkctrl AM3_CLKDIV32K_CLKCTRL 0>;
+	clock-names = "ext-clk", "int-clk";
 };
-- 
2.16.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

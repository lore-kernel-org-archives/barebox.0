Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmR-0000cd-84
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:45:53 +0100
Message-Id: <1385484367-15366-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/17] ARM: Add base am335x-phytec-phycore devicetree file
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/Makefile                  |   2 +
 arch/arm/dts/am335x-phytec-phycore.dts | 233 +++++++++++++++++++++++++++++++++
 2 files changed, 235 insertions(+)
 create mode 100644 arch/arm/dts/am335x-phytec-phycore.dts

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index e2ef0b3..9e85d5a 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -1,3 +1,5 @@
+dtb-$(CONFIG_ARCH_AM33XX) += \
+	am335x-phytec-phycore.dtb
 dtb-$(CONFIG_ARCH_IMX51) += imx51-babbage.dtb \
 	imx51-genesi-efika-sb.dtb
 dtb-$(CONFIG_ARCH_IMX53) += imx53-qsb.dtb \
diff --git a/arch/arm/dts/am335x-phytec-phycore.dts b/arch/arm/dts/am335x-phytec-phycore.dts
new file mode 100644
index 0000000..3888c67
--- /dev/null
+++ b/arch/arm/dts/am335x-phytec-phycore.dts
@@ -0,0 +1,233 @@
+/dts-v1/;
+
+#include "am33xx.dtsi"
+
+/ {
+	model = "Phytec phyCORE AM335x";
+	compatible = "phytec,phycore-am335x", "ti,am33xx";
+
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x20000000>; /* 512 MB */
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcm051_led_pins>;
+
+		led-green {
+			label = "green";
+			gpios = <&gpio1 30 0>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		led-amber {
+			label = "amber";
+			gpios = <&gpio1 31 1>;
+		};
+	};
+};
+
+&am33xx_pinmux {
+	i2c0_pins: pinmux_i2c0_pins {
+			pinctrl-single,pins = <
+			0x188 (PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c0_sda.i2c0_sda */
+			0x18c (PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c0_scl.i2c0_scl */
+		>;
+	};
+
+	spi0_pins: pinmux_spi0_pins {
+		pinctrl-single,pins = <
+			0x150 (INPUT_EN | MUX_MODE0)
+			0x154 (PULL_UP | INPUT_EN | MUX_MODE0)
+			0x158 (INPUT_EN | MUX_MODE0)
+			0x15c (PULL_UP | INPUT_EN | MUX_MODE0)
+		>;
+	};
+
+	uart0_pins: pinmux_uart0_pins {
+		pinctrl-single,pins = <
+			0x170 (PIN_INPUT_PULLUP | MUX_MODE0)    /* uart0_rxd.uart0_rxd */
+			0x174 (PIN_OUTPUT_PULLDOWN | MUX_MODE0) /* uart0_txd.uart0_txd */
+		>;
+	};
+
+	mmc1_pins: pinmux_mmc1_pins {
+		pinctrl-single,pins = <
+			0xf0 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat3.mmc0_dat3 */
+			0xf4 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat2.mmc0_dat2 */
+			0xf8 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat1.mmc0_dat1 */
+			0xfc (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat0.mmc0_dat0 */
+			0x100 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_clk.mmc0_clk */
+			0x104 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_cmd.mmc0_cmd */
+			0x160 (MUX_MODE7 | INPUT_EN | PULL_UP)	/* spi0_cs1.??, card detect */
+		>;
+	};
+
+	emac_rmii1_pins: pinmux_emac_rmii1_pins {
+		pinctrl-single,pins = <
+			0x10c (INPUT_EN | MUX_MODE1)
+			0x110 (INPUT_EN | MUX_MODE1)
+			0x114 MUX_MODE1
+			0x124 MUX_MODE1
+			0x128 MUX_MODE1
+			0x13c (INPUT_EN | MUX_MODE1)
+			0x140 (INPUT_EN | MUX_MODE1)
+			0x148 (PULL_UP | INPUT_EN | MUX_MODE0)
+			0x14c (PULL_UP | MUX_MODE0)
+			0x144 (INPUT_EN | MUX_MODE0)
+
+			/* Slave 2 */
+			0x40 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)  /* gpmc_a0.rgmii2_tctl */
+			0x44 (PIN_INPUT_PULLDOWN | MUX_MODE2)   /* gpmc_a1.rgmii2_rctl */
+			0x48 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)  /* gpmc_a2.rgmii2_td3 */
+			0x4c (PIN_OUTPUT_PULLDOWN | MUX_MODE2)  /* gpmc_a3.rgmii2_td2 */
+			0x50 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)  /* gpmc_a4.rgmii2_td1 */
+			0x54 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)  /* gpmc_a5.rgmii2_td0 */
+			0x58 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)  /* gpmc_a6.rgmii2_tclk */
+			0x5c (PIN_INPUT_PULLDOWN | MUX_MODE2)   /* gpmc_a7.rgmii2_rclk */
+			0x60 (PIN_INPUT_PULLDOWN | MUX_MODE2)   /* gpmc_a8.rgmii2_rd3 */
+			0x64 (PIN_INPUT_PULLDOWN | MUX_MODE2)   /* gpmc_a9.rgmii2_rd2 */
+			0x68 (PIN_INPUT_PULLDOWN | MUX_MODE2)   /* gpmc_a10.rgmii2_rd1 */
+			0x6c (PIN_INPUT_PULLDOWN | MUX_MODE2)   /* gpmc_a11.rgmii2_rd0 */
+		>;
+	};
+
+	nandflash_pins_s0: nandflash_pins_s0 {
+		pinctrl-single,pins = <
+			0x0 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad0.gpmc_ad0 */
+			0x4 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad1.gpmc_ad1 */
+			0x8 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad2.gpmc_ad2 */
+			0xc (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad3.gpmc_ad3 */
+			0x10 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad4.gpmc_ad4 */
+			0x14 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad5.gpmc_ad5 */
+			0x18 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad6.gpmc_ad6 */
+			0x1c (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad7.gpmc_ad7 */
+			0x70 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_wait0.gpmc_wait0 */
+			0x74 (PIN_INPUT_PULLUP | MUX_MODE7)	/* gpmc_wpn.gpio0_30 */
+			0x7c (PIN_OUTPUT | MUX_MODE0)		/* gpmc_csn0.gpmc_csn0  */
+			0x90 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_advn_ale.gpmc_advn_ale */
+			0x94 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_oen_ren.gpmc_oen_ren */
+			0x98 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_wen.gpmc_wen */
+			0x9c (PIN_OUTPUT | MUX_MODE0)		/* gpmc_be0n_cle.gpmc_be0n_cle */
+		>;
+	};
+
+	pcm051_led_pins: pinmux_pcm051_led_pins {
+		pinctrl-single,pins = <
+			0x80 (MUX_MODE7)
+			0x84 (MUX_MODE7)
+		>;
+	};
+
+	pcm051_user_pins: pinmux_pcm051_user_pins {
+		pinctrl-single,pins = <
+			0x1e4 (PULL_UP |INPUT_EN |MUX_MODE7)
+			0x1e8 (PULL_UP |INPUT_EN |MUX_MODE7)
+		>;
+	};
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins>;
+
+	status = "okay";
+	clock-frequency = <400000>;
+
+	eeprom: 24c32@52 {
+		compatible = "atmel,24c32";
+		reg = <0x52>;
+	};
+};
+
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	status = "okay";
+};
+
+&spi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi0_pins>;
+	status = "okay";
+
+	flash: m25p80 {
+		compatible = "sst,sst25vf032b", "m25p80";
+		spi-max-frequency = <15000000>;
+		reg = <1>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox-environment";
+			reg = <0x80000 0x80000>;
+		};
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
+	status = "okay";
+};
+
+&cpsw_emac0 {
+	phy_id = <&davinci_mdio>, <0>;
+	phy-mode = "rmii";
+	dual_emac_res_vlan = <1>;
+};
+
+&cpsw_emac1 {
+	phy_id = <&davinci_mdio>, <2>;
+	phy-mode = "rgmii";
+	dual_emac_res_vlan = <2>;
+};
+
+&mac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&emac_rmii1_pins>;
+	dual_emac = <1>;
+};
+
+&gpmc {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&nandflash_pins_s0>;
+	ranges = <0 0 0x08000000 0x10000000>;	/* CS0: NAND */
+	nand@0,0 {
+		reg = <0 0 0>; /* CS0, offset 0 */
+		nand-bus-width = <8>;
+		ti,nand-ecc-opt = "bch8-romcode";
+		gpmc,device-nand = "true";
+		gpmc,device-width = <1>;
+		gpmc,sync-clk-ps = <0>;
+		gpmc,cs-on-ns = <0>;
+		gpmc,cs-rd-off-ns = <30>;
+		gpmc,cs-wr-off-ns = <30>;
+		gpmc,adv-on-ns = <0>;
+		gpmc,adv-rd-off-ns = <30>;
+		gpmc,adv-wr-off-ns = <30>;
+		gpmc,we-on-ns = <0>;
+		gpmc,we-off-ns = <20>;
+		gpmc,oe-on-ns = <10>;
+		gpmc,oe-off-ns = <30>;
+		gpmc,access-ns = <30>;
+		gpmc,rd-cycle-ns = <30>;
+		gpmc,wr-cycle-ns = <30>;
+		gpmc,wait-pin = <1>;
+		gpmc,wait-on-read = "true";
+		gpmc,wait-on-write = "true";
+		gpmc,bus-turnaround-ns = <0>;
+		gpmc,cycle2cycle-delay-ns = <50>;
+		gpmc,clk-activation-ns = <0>;
+		gpmc,wait-monitoring-ns = <0>;
+		gpmc,wr-access-ns = <0>;
+		gpmc,wr-data-mux-bus-ns = <0>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+		elm_id = <&elm>;
+	};
+};
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

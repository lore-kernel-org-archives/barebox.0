Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZxEh-0005sk-OT
 for barebox@lists.infradead.org; Tue, 03 Nov 2020 14:24:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Nov 2020 15:24:28 +0100
Message-Id: <20201103142428.22290-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: dts: am335x: Fix pinctrl values
To: Barebox List <barebox@lists.infradead.org>

Linux 27c90e5e48d0 ("ARM: dts: am33xx-l4: change #pinctrl-cells from 1 to 2")
changes #pinctrl-cells from 1 to 2. With this we need three values per
pin. the upstream dts files use the AM33XX_PADCONF() macro which handles
this change, but the barebox dts files do not use this, so we have to
add an additional value. This patch is a purely mechanical version, a
more fine grained version would drop the nodes/dts files we duplicated
from upstream.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/am335x-afi-gf.dts              | 234 ++++++++++----------
 arch/arm/dts/am335x-baltos-minimal.dts      | 136 ++++++------
 arch/arm/dts/am335x-bone-common-strip.dtsi  | 100 ++++-----
 arch/arm/dts/am335x-boneblack.dts           |  44 ++--
 arch/arm/dts/am335x-phytec-phycard-som.dtsi |  72 +++---
 arch/arm/dts/am335x-phytec-phycore-som.dtsi | 108 ++++-----
 arch/arm/dts/am335x-phytec-phyflex-som.dtsi |  98 ++++----
 7 files changed, 396 insertions(+), 396 deletions(-)

diff --git a/arch/arm/dts/am335x-afi-gf.dts b/arch/arm/dts/am335x-afi-gf.dts
index cba8cbc8d6..54059dbfce 100644
--- a/arch/arm/dts/am335x-afi-gf.dts
+++ b/arch/arm/dts/am335x-afi-gf.dts
@@ -370,186 +370,186 @@
 &am33xx_pinmux {
 	dcan0_pins: pinmux_dcan0_pins {
 		pinctrl-single,pins = <
-			0x11c (PIN_OUTPUT_PULLUP | MUX_MODE1)	/* mii1_txd3.dcan0_tx_mux0, OUTPUT_PULLUP | MODE1 */
-			0x120 (PIN_INPUT_PULLUP | MUX_MODE1)	/* mii1_txd2.dcan0_rx_mux0, INPUT_PULLUP | MODE1 */
+			0x11c PIN_OUTPUT_PULLUP MUX_MODE1	/* mii1_txd3.dcan0_tx_mux0, OUTPUT_PULLUP | MODE1 */
+			0x120 PIN_INPUT_PULLUP MUX_MODE1	/* mii1_txd2.dcan0_rx_mux0, INPUT_PULLUP | MODE1 */
 		>;
 	};
 	eth_pins: pinmux_eth_pins {
 		pinctrl-single,pins = <
 			/* RMII2 (mezzanine) */
-			0x040 (PIN_OUTPUT_PULLDOWN | MUX_MODE3)	/* gpmc_a0.rmii2_txen, OUTPUT_PULLDOWN | MODE3 */
-			0x050 (PIN_INPUT_PULLDOWN | MUX_MODE3)	/* gpmc_a4.rmii2_txd1, INPUT_PULLDOWN | MODE3 */
-			0x054 (PIN_INPUT_PULLDOWN | MUX_MODE3)	/* gpmc_a5.rmii2_txd0, INPUT_PULLDOWN | MODE3 */
-			0x068 (PIN_INPUT_PULLDOWN | MUX_MODE3)	/* gpmc_a10.rmii2_rxd1, INPUT_PULLDOWN | MODE3 */
-			0x06c (PIN_INPUT_PULLDOWN | MUX_MODE3)	/* gpmc_a11.rmii2_rxd0, INPUT_PULLDOWN | MODE3 */
-			0x070 (PIN_INPUT_PULLUP | MUX_MODE3)	/* gpmc_wait0.rmii2_crs_dv, INPUT_PULLUP | MODE3 */ /* PHYAD pin */
-			0x074 (PIN_INPUT_PULLUP | MUX_MODE3)	/* gpmc_wpn.rmii2_rxer, INPUT_PULLUP | MODE3 */
-			0x108 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_col.rmii2_refclk, INPUT_PULLDOWN | MODE1 */
+			0x040 PIN_OUTPUT_PULLDOWN MUX_MODE3	/* gpmc_a0.rmii2_txen, OUTPUT_PULLDOWN | MODE3 */
+			0x050 PIN_INPUT_PULLDOWN MUX_MODE3	/* gpmc_a4.rmii2_txd1, INPUT_PULLDOWN | MODE3 */
+			0x054 PIN_INPUT_PULLDOWN MUX_MODE3	/* gpmc_a5.rmii2_txd0, INPUT_PULLDOWN | MODE3 */
+			0x068 PIN_INPUT_PULLDOWN MUX_MODE3	/* gpmc_a10.rmii2_rxd1, INPUT_PULLDOWN | MODE3 */
+			0x06c PIN_INPUT_PULLDOWN MUX_MODE3	/* gpmc_a11.rmii2_rxd0, INPUT_PULLDOWN | MODE3 */
+			0x070 PIN_INPUT_PULLUP MUX_MODE3	/* gpmc_wait0.rmii2_crs_dv, INPUT_PULLUP | MODE3 */ /* PHYAD pin */
+			0x074 PIN_INPUT_PULLUP MUX_MODE3	/* gpmc_wpn.rmii2_rxer, INPUT_PULLUP | MODE3 */
+			0x108 PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_col.rmii2_refclk, INPUT_PULLDOWN | MODE1 */
 			/* RMII1 (board) */
-			0x10c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_crs.rmii1_crs_dv, INPUT_PULLDOWN | MODE1 */
-			0x110 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rx_er.rmii1_rxer, INPUT_PULLDOWN | MODE1 */
-			0x114 (PIN_OUTPUT_PULLDOWN | MUX_MODE1)	/* mii1_tx_en.rmii1_txen, OUTPUT_PULLDOWN | MODE1 */
-			0x124 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_txd1.rmii1_txd1, INPUT_PULLDOWN | MODE1 */
-			0x128 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_txd0.rmii1_txd0, INPUT_PULLDOWN | MODE1 */
-			0x13c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxd1.rmii1_rxd1, INPUT_PULLDOWN | MODE1 */
-			0x140 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxd0.rmii1_rxd0, INPUT_PULLDOWN | MODE1 */
-			0x144 (PIN_INPUT_PULLDOWN | MUX_MODE0)	/* rmii1_ref_clk.rmii1_refclk, INPUT_PULLDOWN | MODE0 */
+			0x10c PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_crs.rmii1_crs_dv, INPUT_PULLDOWN | MODE1 */
+			0x110 PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_rx_er.rmii1_rxer, INPUT_PULLDOWN | MODE1 */
+			0x114 PIN_OUTPUT_PULLDOWN MUX_MODE1	/* mii1_tx_en.rmii1_txen, OUTPUT_PULLDOWN | MODE1 */
+			0x124 PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_txd1.rmii1_txd1, INPUT_PULLDOWN | MODE1 */
+			0x128 PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_txd0.rmii1_txd0, INPUT_PULLDOWN | MODE1 */
+			0x13c PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_rxd1.rmii1_rxd1, INPUT_PULLDOWN | MODE1 */
+			0x140 PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_rxd0.rmii1_rxd0, INPUT_PULLDOWN | MODE1 */
+			0x144 PIN_INPUT_PULLDOWN MUX_MODE0	/* rmii1_ref_clk.rmii1_refclk, INPUT_PULLDOWN | MODE0 */
 			/* MDIO (board & mezzanine) */
-			0x148 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mdio.mdio_data, INPUT_PULLUP | MODE0 */
-			0x14c (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* mdc.mdio_clk, OUTPUT_PULLUP | MODE0 */
+			0x148 PIN_INPUT_PULLUP MUX_MODE0	/* mdio.mdio_data, INPUT_PULLUP | MODE0 */
+			0x14c PIN_OUTPUT_PULLUP MUX_MODE0	/* mdc.mdio_clk, OUTPUT_PULLUP | MODE0 */
 		>;
 	};
 	spi0_pins: pinmux_spi0_pins { /* SPI NOR-Flash & FRAM */
 		pinctrl-single,pins = <
-			0x150 (PIN_INPUT_PULLUP | MUX_MODE0)	/* spi0_sclk, INPUT_PULLUP | MODE0 */
-			0x154 (PIN_INPUT_PULLUP | MUX_MODE0)	/* spi0_d0, INPUT_PULLUP | MODE0 */
-			0x158 (PIN_INPUT_PULLUP | MUX_MODE0)	/* spi0_d1, INPUT_PULLUP | MODE0 */
-			0x15c (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* spi0_cs0, OUTPUT_PULLUP | MODE0 */
-			0x160 (PIN_OUTPUT_PULLUP | MUX_MODE0)	/* spi0_cs1, OUTPUT_PULLUP | MODE0 */
+			0x150 PIN_INPUT_PULLUP MUX_MODE0	/* spi0_sclk, INPUT_PULLUP | MODE0 */
+			0x154 PIN_INPUT_PULLUP MUX_MODE0	/* spi0_d0, INPUT_PULLUP | MODE0 */
+			0x158 PIN_INPUT_PULLUP MUX_MODE0	/* spi0_d1, INPUT_PULLUP | MODE0 */
+			0x15c PIN_OUTPUT_PULLUP MUX_MODE0	/* spi0_cs0, OUTPUT_PULLUP | MODE0 */
+			0x160 PIN_OUTPUT_PULLUP MUX_MODE0	/* spi0_cs1, OUTPUT_PULLUP | MODE0 */
 		>;
 	};
 	spi1_pins: pinmux_spi1_pins { /* SPI (mezzanine) */
 		pinctrl-single,pins = <
-			0x170 (PIN_OUTPUT_PULLUP | MUX_MODE1)	/* uart0_rxd.spi1_cs0_mux3, OUTPUT_PULLUP | MODE1 */
-			0x174 (PIN_OUTPUT_PULLUP | MUX_MODE1)	/* uart0_txd.spi1_cs1_mux3, OUTPUT_PULLUP | MODE1 */
-			0x190 (PIN_INPUT_PULLUP | MUX_MODE3)	/* mcasp0_aclkx.spi1_sclk_mux2, INPUT_PULLUP | MODE3 */
-			0x194 (PIN_INPUT_PULLUP | MUX_MODE3)	/* mcasp0_fsx.spi1_d0_mux2, INPUT_PULLUP | MODE3 */
-			0x198 (PIN_INPUT_PULLUP | MUX_MODE3)	/* mcasp0_axr0.spi1_d1_mux2, INPUT_PULLUP | MODE3 */
+			0x170 PIN_OUTPUT_PULLUP MUX_MODE1	/* uart0_rxd.spi1_cs0_mux3, OUTPUT_PULLUP | MODE1 */
+			0x174 PIN_OUTPUT_PULLUP MUX_MODE1	/* uart0_txd.spi1_cs1_mux3, OUTPUT_PULLUP | MODE1 */
+			0x190 PIN_INPUT_PULLUP MUX_MODE3	/* mcasp0_aclkx.spi1_sclk_mux2, INPUT_PULLUP | MODE3 */
+			0x194 PIN_INPUT_PULLUP MUX_MODE3	/* mcasp0_fsx.spi1_d0_mux2, INPUT_PULLUP | MODE3 */
+			0x198 PIN_INPUT_PULLUP MUX_MODE3	/* mcasp0_axr0.spi1_d1_mux2, INPUT_PULLUP | MODE3 */
 		>;
 	};
 	usb0_pins: pinmux_usb0_pins { /* USB-HOST (mezzanine) */
 		pinctrl-single,pins = <
-			0x208 (PIN_INPUT | MUX_MODE0)	/* usb0_dm, INPUT | MODE0 */
-			0x20c (PIN_INPUT | MUX_MODE0)	/* usb0_dp, INPUT | MODE0 */
-			0x210 (PIN_INPUT | MUX_MODE0)	/* usb0_ce, INPUT | MODE0 */
-			0x214 (PIN_INPUT | MUX_MODE0)	/* usb0_id, INPUT | MODE0 */
-			0x218 (PIN_INPUT | MUX_MODE0)	/* usb0_vbus, INPUT | MODE0 */
-			0x21c (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* usb0_drvvbus, OUTPUT_PULLDOWN | MODE0 */
+			0x208 PIN_INPUT MUX_MODE0	/* usb0_dm, INPUT | MODE0 */
+			0x20c PIN_INPUT MUX_MODE0	/* usb0_dp, INPUT | MODE0 */
+			0x210 PIN_INPUT MUX_MODE0	/* usb0_ce, INPUT | MODE0 */
+			0x214 PIN_INPUT MUX_MODE0	/* usb0_id, INPUT | MODE0 */
+			0x218 PIN_INPUT MUX_MODE0	/* usb0_vbus, INPUT | MODE0 */
+			0x21c PIN_OUTPUT_PULLDOWN MUX_MODE0	/* usb0_drvvbus, OUTPUT_PULLDOWN | MODE0 */
 		>;
 	};
 	usb1_pins: pinmux_usb1_pins { /* USB-OTG (front) */
 		pinctrl-single,pins = <
-			0x220 (PIN_INPUT | MUX_MODE0)	/* usb1_dm, INPUT | MODE0 */
-			0x224 (PIN_INPUT | MUX_MODE0)	/* usb1_dp, INPUT | MODE0 */
-			0x228 (PIN_INPUT | MUX_MODE0)	/* usb1_ce, INPUT | MODE0 */
-			0x22c (PIN_INPUT | MUX_MODE0)	/* usb1_id, INPUT | MODE0 */
-			0x230 (PIN_INPUT | MUX_MODE0)	/* usb1_vbus, INPUT | MODE0 */
-			0x234 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* usb1_drvvbus, OUTPUT_PULLDOWN | MODE0 */
+			0x220 PIN_INPUT MUX_MODE0	/* usb1_dm, INPUT | MODE0 */
+			0x224 PIN_INPUT MUX_MODE0	/* usb1_dp, INPUT | MODE0 */
+			0x228 PIN_INPUT MUX_MODE0	/* usb1_ce, INPUT | MODE0 */
+			0x22c PIN_INPUT MUX_MODE0	/* usb1_id, INPUT | MODE0 */
+			0x230 PIN_INPUT MUX_MODE0	/* usb1_vbus, INPUT | MODE0 */
+			0x234 PIN_OUTPUT_PULLDOWN MUX_MODE0	/* usb1_drvvbus, OUTPUT_PULLDOWN | MODE0 */
 		>;
 	};
 	uart0_pins: pinmux_uart0_pins { /* debug, later spi1 CS1/2 */
 		pinctrl-single,pins = <
-			0x170 (PIN_INPUT_PULLUP | MUX_MODE0)	/* uart0_rxd */
-			0x174 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* uart0_txd */
+			0x170 PIN_INPUT_PULLUP MUX_MODE0	/* uart0_rxd */
+			0x174 PIN_OUTPUT_PULLDOWN MUX_MODE0	/* uart0_txd */
 		>;
 	};
 	uart1_pins: pinmux_uart1_pins { /* UART1 (PRU) */
 		pinctrl-single,pins = <
-			0x180 (PIN_INPUT | MUX_MODE5)	/* uart1_rxd.pr1_uart0_rxd_mux1, INPUT | MODE5 (RS485_RXD)*/
-			0x184 (PIN_OUTPUT | MUX_MODE5)	/* uart1_txd.pr1_uart0_txd_mux1, OUTPUT | MODE5 (RS485_TXD) */
+			0x180 PIN_INPUT MUX_MODE5	/* uart1_rxd.pr1_uart0_rxd_mux1, INPUT | MODE5 (RS485_RXD)*/
+			0x184 PIN_OUTPUT MUX_MODE5	/* uart1_txd.pr1_uart0_txd_mux1, OUTPUT | MODE5 (RS485_TXD) */
 		>;
 	};
 	uart2_pins: pinmux_uart2_pins { /* UART2 (console) */
 		pinctrl-single,pins = <
-			0x12c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_tx_clk.uart2_rxd_mux0, INPUT_PULLDOWN | MODE1 (UART2_RXD) */
-			0x130 (PIN_OUTPUT_PULLDOWN | MUX_MODE1)	/* mii1_rx_clk.uart2_txd_mux0, OUTPUT_PULLDOWN | MODE1 (UART2_TXD) */
+			0x12c PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_tx_clk.uart2_rxd_mux0, INPUT_PULLDOWN | MODE1 (UART2_RXD) */
+			0x130 PIN_OUTPUT_PULLDOWN MUX_MODE1	/* mii1_rx_clk.uart2_txd_mux0, OUTPUT_PULLDOWN | MODE1 (UART2_TXD) */
 		>;
 	};
 	i2c0_pins: pinmux_i2c0_pins {
 		pinctrl-single,pins = <
-			0x188 (PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c0_sda, SLEWCTRL_SLOW | INPUT_PULLUP | MODE0 */
-			0x18c (PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c0_scl, SLEWCTRL_SLOW | INPUT_PULLUP | MODE0 */
+			0x188 PIN_INPUT_PULLUP MUX_MODE0	/* i2c0_sda, SLEWCTRL_SLOW | INPUT_PULLUP | MODE0 */
+			0x18c PIN_INPUT_PULLUP MUX_MODE0	/* i2c0_scl, SLEWCTRL_SLOW | INPUT_PULLUP | MODE0 */
 		>;
 	};
 	i2c1_pins: pinmux_i2c1_pins { /* 1-wire */
 		pinctrl-single,pins = <
-			0x168 (PIN_INPUT_PULLUP | MUX_MODE3)	/* uart0_ctsn.i2c1_sda_mux1, SLEWCTRL_SLOW | INPUT_PULLUP | MODE3 */
-			0x16c (PIN_INPUT_PULLUP | MUX_MODE3)	/* uart0_rtsn.i2c1_scl_mux1, SLEWCTRL_SLOW | INPUT_PULLUP | MODE3 */
+			0x168 PIN_INPUT_PULLUP MUX_MODE3	/* uart0_ctsn.i2c1_sda_mux1, SLEWCTRL_SLOW | INPUT_PULLUP | MODE3 */
+			0x16c PIN_INPUT_PULLUP MUX_MODE3	/* uart0_rtsn.i2c1_scl_mux1, SLEWCTRL_SLOW | INPUT_PULLUP | MODE3 */
 		>;
 	};
 	i2c2_pins: pinmux_i2c2_pins { /* (mezzanine) */
 		pinctrl-single,pins = <
-			0x178 (PIN_INPUT_PULLUP | MUX_MODE3)	/* uart1_ctsn.i2c2_sda_mux0, SLEWCTRL_SLOW | INPUT_PULLUP | MODE3 */
-			0x17c (PIN_INPUT_PULLUP | MUX_MODE3)	/* uart1_rtsn.i2c2_scl_mux0, SLEWCTRL_SLOW | INPUT_PULLUP | MODE3 */
+			0x178 PIN_INPUT_PULLUP MUX_MODE3	/* uart1_ctsn.i2c2_sda_mux0, SLEWCTRL_SLOW | INPUT_PULLUP | MODE3 */
+			0x17c PIN_INPUT_PULLUP MUX_MODE3	/* uart1_rtsn.i2c2_scl_mux0, SLEWCTRL_SLOW | INPUT_PULLUP | MODE3 */
 		>;
 	};
 	gpio0_pins: pinmux_gpio0_pins {
 		pinctrl-single,pins = <
-			0x020 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_ad8.gpio0[22], OUTPUT_PULLDOWN | MODE7 (LED3) */ /* PWM later */
-			0x024 (PIN_INPUT_PULLDOWN | MUX_MODE7)	/* gpmc_ad9.gpio0[23], INPUT_PULLDOWN | MODE7 (RMII2_INTRP) */
-			0x028 (PIN_INPUT_PULLUP | MUX_MODE7)	/* gpmc_ad10.gpio0[26], INPUT_PULLUP | MODE7 (BUTTON0) */
-			0x02c (PIN_INPUT_PULLDOWN | MUX_MODE7)	/* gpmc_ad11.gpio0[27], INPUT_PULLDOWN | MODE7 (PWR_INT)*/
-			0x0d0 (PIN_INPUT | MUX_MODE7)	/* lcd_data12.gpio0[8], INPUT | MODE7 (SYSBOOT12) */
-			0x0d4 (PIN_INPUT | MUX_MODE7)	/* lcd_data13.gpio0[9], INPUT | MODE7 (SYSBOOT13) */
-			0x0d8 (PIN_INPUT | MUX_MODE7)	/* lcd_data14.gpio0[10], INPUT | MODE7 (SYSBOOT14) */
-			0x0dc (PIN_INPUT | MUX_MODE7)	/* lcd_data15.gpio0[11], INPUT | MODE7 (SYSBOOT15) */
-			0x164 (PIN_INPUT_PULLDOWN | MUX_MODE7)	/* ecap0_in_pwm0_out.gpio0[7], INPUT_PULLDOWN | MODE7 (MEZZANINE_GPIO0) */
-			0x1b4 (PIN_INPUT_PULLDOWN | MUX_MODE7)	/* xdma_event_intr1.gpio0[20], INPUT_PULLDOWN | MODE7 (MEZZANINE_GPIO3) */
+			0x020 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_ad8.gpio0[22], OUTPUT_PULLDOWN | MODE7 (LED3) */ /* PWM later */
+			0x024 PIN_INPUT_PULLDOWN MUX_MODE7	/* gpmc_ad9.gpio0[23], INPUT_PULLDOWN | MODE7 (RMII2_INTRP) */
+			0x028 PIN_INPUT_PULLUP MUX_MODE7	/* gpmc_ad10.gpio0[26], INPUT_PULLUP | MODE7 (BUTTON0) */
+			0x02c PIN_INPUT_PULLDOWN MUX_MODE7	/* gpmc_ad11.gpio0[27], INPUT_PULLDOWN | MODE7 (PWR_INT)*/
+			0x0d0 PIN_INPUT MUX_MODE7	/* lcd_data12.gpio0[8], INPUT | MODE7 (SYSBOOT12) */
+			0x0d4 PIN_INPUT MUX_MODE7	/* lcd_data13.gpio0[9], INPUT | MODE7 (SYSBOOT13) */
+			0x0d8 PIN_INPUT MUX_MODE7	/* lcd_data14.gpio0[10], INPUT | MODE7 (SYSBOOT14) */
+			0x0dc PIN_INPUT MUX_MODE7	/* lcd_data15.gpio0[11], INPUT | MODE7 (SYSBOOT15) */
+			0x164 PIN_INPUT_PULLDOWN MUX_MODE7	/* ecap0_in_pwm0_out.gpio0[7], INPUT_PULLDOWN | MODE7 (MEZZANINE_GPIO0) */
+			0x1b4 PIN_INPUT_PULLDOWN MUX_MODE7	/* xdma_event_intr1.gpio0[20], INPUT_PULLDOWN | MODE7 (MEZZANINE_GPIO3) */
 		>;
 	};
 	gpio1_pins: pinmux_gpio1_pins {
 		pinctrl-single,pins = <
-			0x000 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_ad0.gpio1[0], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x004 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_ad1.gpio1[1], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x008 (PIN_INPUT | MUX_MODE7)	/* gpmc_ad2.gpio1[2], INPUT | MODE7 (BOARD_REV1) */
-			0x00c (PIN_INPUT_PULLUP | MUX_MODE7)	/* gpmc_ad3.gpio1[3], INPUT_PULLUP | MODE7 (1WIRE_INT) */
-			0x010 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_ad4.gpio1[4], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x014 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_ad5.gpio1[5], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x018 (PIN_INPUT | MUX_MODE7)	/* gpmc_ad6.gpio1[6], INPUT | MODE7 (BOARD_REV0) */
-			0x01c (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_ad7.gpio1[7], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x030 (PIN_INPUT_PULLUP | MUX_MODE7)	/* gpmc_ad12.gpio1[12], INPUT_PULLUP | MODE7 (PG_24V) */
-			0x034 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_ad13.gpio1[13], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x038 (PIN_INPUT_PULLUP | MUX_MODE7)	/* gpmc_ad14.gpio1[14], INPUT_PULLUP | MODE7 (SDCARD_CD) */
-			0x03c (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_ad15.gpio1[15], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x044 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a1.gpio1[17], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x048 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a2.gpio1[18], OUTPUT_PULLDOWN | MODE7 (LED1) */ /* PWM later */
-			0x04c (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a3.gpio1[19], OUTPUT_PULLDOWN | MODE7 (LED2) */ /* PWM later */
-			0x058 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a6.gpio1[22], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x05c (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a7.gpio1[23], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x060 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a8.gpio1[24], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x064 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a9.gpio1[25], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x078 (PIN_INPUT_PULLUP | MUX_MODE7)	/* gpmc_ben1.gpio1[28], INPUT_PULLUP | MODE7 (USB1_OCn) */
-			0x07c (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_csn0.gpio1[29], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x080 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_csn1.gpio1[30], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x084 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_csn2.gpio1[31], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x000 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_ad0.gpio1[0], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x004 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_ad1.gpio1[1], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x008 PIN_INPUT MUX_MODE7		/* gpmc_ad2.gpio1[2], INPUT | MODE7 (BOARD_REV1) */
+			0x00c PIN_INPUT_PULLUP MUX_MODE7	/* gpmc_ad3.gpio1[3], INPUT_PULLUP | MODE7 (1WIRE_INT) */
+			0x010 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_ad4.gpio1[4], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x014 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_ad5.gpio1[5], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x018 PIN_INPUT MUX_MODE7		/* gpmc_ad6.gpio1[6], INPUT | MODE7 (BOARD_REV0) */
+			0x01c PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_ad7.gpio1[7], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x030 PIN_INPUT_PULLUP MUX_MODE7	/* gpmc_ad12.gpio1[12], INPUT_PULLUP | MODE7 (PG_24V) */
+			0x034 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_ad13.gpio1[13], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x038 PIN_INPUT_PULLUP MUX_MODE7	/* gpmc_ad14.gpio1[14], INPUT_PULLUP | MODE7 (SDCARD_CD) */
+			0x03c PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_ad15.gpio1[15], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x044 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_a1.gpio1[17], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x048 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_a2.gpio1[18], OUTPUT_PULLDOWN | MODE7 (LED1) */ /* PWM later */
+			0x04c PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_a3.gpio1[19], OUTPUT_PULLDOWN | MODE7 (LED2) */ /* PWM later */
+			0x058 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_a6.gpio1[22], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x05c PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_a7.gpio1[23], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x060 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_a8.gpio1[24], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x064 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_a9.gpio1[25], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x078 PIN_INPUT_PULLUP MUX_MODE7	/* gpmc_ben1.gpio1[28], INPUT_PULLUP | MODE7 (USB1_OCn) */
+			0x07c PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_csn0.gpio1[29], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x080 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_csn1.gpio1[30], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x084 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_csn2.gpio1[31], OUTPUT_PULLDOWN | MODE7 (NC) */
 		>;
 	};
 	gpio2_pins: pinmux_gpio2_pins {
 		pinctrl-single,pins = <
-			0x088 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_csn3.gpio2[0], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x08c (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_clk.gpio2[1], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x090 (PIN_INPUT | MUX_MODE7)	/* gpmc_advn_ale.gpio2[2], INPUT | MODE7 (BOARD_REV2) */
-			0x094 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_oen_ren.gpio2[3], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x098 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_wen.gpio2[4], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x09c (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_ben0_cle.gpio2[5], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x0a0 (PIN_INPUT | MUX_MODE7)	/* lcd_data0.gpio2[6], INPUT | MODE7 (SYSBOOT0) */
-			0x0a4 (PIN_INPUT | MUX_MODE7)	/* lcd_data1.gpio2[7], INPUT | MODE7 (SYSBOOT1) */
-			0x0a8 (PIN_INPUT | MUX_MODE7)	/* lcd_data2.gpio2[8], INPUT | MODE7 (SYSBOOT2) */
-			0x0ac (PIN_INPUT | MUX_MODE7)	/* lcd_data3.gpio2[9], INPUT | MODE7 (SYSBOOT3) */
-			0x0b0 (PIN_INPUT | MUX_MODE7)	/* lcd_data4.gpio2[10], INPUT | MODE7 (SYSBOOT4) */
-			0x0b4 (PIN_INPUT | MUX_MODE7)	/* lcd_data5.gpio2[11], INPUT | MODE7 (SYSBOOT5) */
-			0x0b8 (PIN_INPUT | MUX_MODE7)	/* lcd_data6.gpio2[12], INPUT | MODE7 (SYSBOOT6) */
-			0x0bc (PIN_INPUT | MUX_MODE7)	/* lcd_data7.gpio2[13], INPUT | MODE7 (SYSBOOT7) */
-			0x0c0 (PIN_INPUT | MUX_MODE7)	/* lcd_data8.gpio2[14], INPUT | MODE7 (SYSBOOT8) */
-			0x0c4 (PIN_INPUT | MUX_MODE7)	/* lcd_data9.gpio2[15], INPUT | MODE7 (SYSBOOT9) */
-			0x0c8 (PIN_INPUT | MUX_MODE7)	/* lcd_data10.gpio2[16], INPUT | MODE7 (SYSBOOT10) */
-			0x0cc (PIN_INPUT | MUX_MODE7)	/* lcd_data11.gpio2[17], INPUT | MODE7 (SYSBOOT11) */
-			0x0e0 (PIN_INPUT | MUX_MODE7)	/* lcd_vsync.gpio2[22], INPUT | MODE7 (BOARD_CONF1) */
-			0x0e4 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* lcd_hsync.gpio2[23], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x0e8 (PIN_INPUT | MUX_MODE7)	/* lcd_pclk.gpio2[24], INPUT | MODE7 (BOARD_CONF0) */
-			0x0ec (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* lcd_ac_bias_en.gpio2[25], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x134 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* mii1_rxd3.gpio2[18], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x138 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* mii1_rxd2.gpio2[19], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x088 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_csn3.gpio2[0], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x08c PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_clk.gpio2[1], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x090 PIN_INPUT MUX_MODE7	/* gpmc_advn_ale.gpio2[2], INPUT | MODE7 (BOARD_REV2) */
+			0x094 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_oen_ren.gpio2[3], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x098 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_wen.gpio2[4], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x09c PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_ben0_cle.gpio2[5], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x0a0 PIN_INPUT MUX_MODE7	/* lcd_data0.gpio2[6], INPUT | MODE7 (SYSBOOT0) */
+			0x0a4 PIN_INPUT MUX_MODE7	/* lcd_data1.gpio2[7], INPUT | MODE7 (SYSBOOT1) */
+			0x0a8 PIN_INPUT MUX_MODE7	/* lcd_data2.gpio2[8], INPUT | MODE7 (SYSBOOT2) */
+			0x0ac PIN_INPUT MUX_MODE7	/* lcd_data3.gpio2[9], INPUT | MODE7 (SYSBOOT3) */
+			0x0b0 PIN_INPUT MUX_MODE7	/* lcd_data4.gpio2[10], INPUT | MODE7 (SYSBOOT4) */
+			0x0b4 PIN_INPUT MUX_MODE7	/* lcd_data5.gpio2[11], INPUT | MODE7 (SYSBOOT5) */
+			0x0b8 PIN_INPUT MUX_MODE7	/* lcd_data6.gpio2[12], INPUT | MODE7 (SYSBOOT6) */
+			0x0bc PIN_INPUT MUX_MODE7	/* lcd_data7.gpio2[13], INPUT | MODE7 (SYSBOOT7) */
+			0x0c0 PIN_INPUT MUX_MODE7	/* lcd_data8.gpio2[14], INPUT | MODE7 (SYSBOOT8) */
+			0x0c4 PIN_INPUT MUX_MODE7	/* lcd_data9.gpio2[15], INPUT | MODE7 (SYSBOOT9) */
+			0x0c8 PIN_INPUT MUX_MODE7	/* lcd_data10.gpio2[16], INPUT | MODE7 (SYSBOOT10) */
+			0x0cc PIN_INPUT MUX_MODE7	/* lcd_data11.gpio2[17], INPUT | MODE7 (SYSBOOT11) */
+			0x0e0 PIN_INPUT MUX_MODE7	/* lcd_vsync.gpio2[22], INPUT | MODE7 (BOARD_CONF1) */
+			0x0e4 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* lcd_hsync.gpio2[23], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x0e8 PIN_INPUT MUX_MODE7	/* lcd_pclk.gpio2[24], INPUT | MODE7 (BOARD_CONF0) */
+			0x0ec PIN_OUTPUT_PULLDOWN MUX_MODE7	/* lcd_ac_bias_en.gpio2[25], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x134 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* mii1_rxd3.gpio2[18], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x138 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* mii1_rxd2.gpio2[19], OUTPUT_PULLDOWN | MODE7 (NC) */
 		>;
 	};
 	gpio3_pins: pinmux_gpio3_pins {
 		pinctrl-single,pins = <
-			0x118 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* mii1_rx_dv.gpio3[4], OUTPUT_PULLDOWN | MODE7 (NC) */
-			0x19c (PIN_INPUT_PULLDOWN | MUX_MODE7)	/* mcasp0_ahclkr.gpio3[17], INPUT_PULLDOWN | MODE7 (MEZZANINE_GPIO1) */
-			0x1a0 (PIN_OUTPUT_PULLUP | MUX_MODE7)	/* mcasp0_aclkr.gpio3[18], OUTPUT_PULLUP | MODE7 (DCAN0_LBK) */ /* enable loopback by default */
-			0x1a4 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* mcasp0_fsr.gpio3[19], OUTPUT_PULLDOWN | MODE7 (RS485_DE) */
-			0x1a8 (PIN_OUTPUT_PULLUP | MUX_MODE7)	/* mcasp0_axr1.gpio3[20], OUTPUT_PULLUP | MODE7 (1WIRE_SLEEP) */
-			0x1ac (PIN_INPUT_PULLDOWN | MUX_MODE7)	/* mcasp0_ahclkx.gpio3[21], INPUT_PULLDOWN | MODE7 (MEZZANINE_GPIO2) */
+			0x118 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* mii1_rx_dv.gpio3[4], OUTPUT_PULLDOWN | MODE7 (NC) */
+			0x19c PIN_INPUT_PULLDOWN MUX_MODE7	/* mcasp0_ahclkr.gpio3[17], INPUT_PULLDOWN | MODE7 (MEZZANINE_GPIO1) */
+			0x1a0 PIN_OUTPUT_PULLUP MUX_MODE7	/* mcasp0_aclkr.gpio3[18], OUTPUT_PULLUP | MODE7 (DCAN0_LBK) */ /* enable loopback by default */
+			0x1a4 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* mcasp0_fsr.gpio3[19], OUTPUT_PULLDOWN | MODE7 (RS485_DE) */
+			0x1a8 PIN_OUTPUT_PULLUP MUX_MODE7	/* mcasp0_axr1.gpio3[20], OUTPUT_PULLUP | MODE7 (1WIRE_SLEEP) */
+			0x1ac PIN_INPUT_PULLDOWN MUX_MODE7	/* mcasp0_ahclkx.gpio3[21], INPUT_PULLDOWN | MODE7 (MEZZANINE_GPIO2) */
 		>;
 	};
 };
diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
index a57bb6c802..dff901f050 100644
--- a/arch/arm/dts/am335x-baltos-minimal.dts
+++ b/arch/arm/dts/am335x-baltos-minimal.dts
@@ -47,25 +47,25 @@
 &am33xx_pinmux {
 	mmc1_pins: pinmux_mmc1_pins {
 		pinctrl-single,pins = <
-			0xf0 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat3.mmc0_dat3 */
-			0xf4 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat2.mmc0_dat2 */
-			0xf8 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat1.mmc0_dat1 */
-			0xfc (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat0.mmc0_dat0 */
-			0x100 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_clk.mmc0_clk */
-			0x104 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_cmd.mmc0_cmd */
+			0xf0 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_dat3.mmc0_dat3 */
+			0xf4 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_dat2.mmc0_dat2 */
+			0xf8 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_dat1.mmc0_dat1 */
+			0xfc (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_dat0.mmc0_dat0 */
+			0x100 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_clk.mmc0_clk */
+			0x104 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_cmd.mmc0_cmd */
 		>;
 	};
 
 	i2c1_pins: pinmux_i2c1_pins {
 		pinctrl-single,pins = <
-			0x158 0x2a      /* spi0_d1.i2c1_sda_mux3, INPUT | MODE2 */
-			0x15c 0x2a      /* spi0_cs0.i2c1_scl_mux3, INPUT | MODE2 */
+			0x158 0x2a 0    /* spi0_d1.i2c1_sda_mux3, INPUT | MODE2 */
+			0x15c 0x2a 0    /* spi0_cs0.i2c1_scl_mux3, INPUT | MODE2 */
 		>;
 	};
 
 	tps65910_pins: pinmux_tps65910_pins {
 		pinctrl-single,pins = <
-			0x078 (PIN_INPUT_PULLUP | MUX_MODE7)      /* gpmc_ben1.gpio1[28] */
+			0x078 PIN_INPUT_PULLUP MUX_MODE7      /* gpmc_ben1.gpio1[28] */
 		>;
 
 	};
@@ -77,99 +77,99 @@
 
 	uart0_pins: pinmux_uart0_pins {
 		pinctrl-single,pins = <
-			0x170 (PIN_INPUT_PULLUP | MUX_MODE0)	/* uart0_rxd.uart0_rxd */
-			0x174 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)		/* uart0_txd.uart0_txd */
+			0x170 PIN_INPUT_PULLUP MUX_MODE0	/* uart0_rxd.uart0_rxd */
+			0x174 PIN_OUTPUT_PULLDOWN MUX_MODE0	/* uart0_txd.uart0_txd */
 		>;
 	};
 
 	cpsw_default: cpsw_default {
 		pinctrl-single,pins = <
 			/* Slave 1 */
-			0x10c (PIN_INPUT_PULLDOWN | MUX_MODE1)       /* mii1_crs.rmii1_crs_dv */
-			0x114 (PIN_OUTPUT_PULLDOWN | MUX_MODE1)      /* mii1_tx_en.rmii1_txen */
-			0x124 (PIN_OUTPUT_PULLDOWN | MUX_MODE1)      /* mii1_txd1.rmii1_txd1 */
-			0x128 (PIN_OUTPUT_PULLDOWN | MUX_MODE1)      /* mii1_txd0.rmii1_txd0 */
-			0x13c (PIN_INPUT_PULLDOWN | MUX_MODE1)      /* mii1_rxd1.rmii1_rxd1 */
-			0x140 (PIN_INPUT_PULLDOWN | MUX_MODE1)      /* mii1_rxd0.rmii1_rxd0 */
-			0x144 (PIN_INPUT_PULLDOWN | MUX_MODE0)      /* rmii1_ref_clk.rmii1_refclk */
+			0x10c PIN_INPUT_PULLDOWN MUX_MODE1     /* mii1_crs.rmii1_crs_dv */
+			0x114 PIN_OUTPUT_PULLDOWN MUX_MODE1    /* mii1_tx_en.rmii1_txen */
+			0x124 PIN_OUTPUT_PULLDOWN MUX_MODE1    /* mii1_txd1.rmii1_txd1 */
+			0x128 PIN_OUTPUT_PULLDOWN MUX_MODE1    /* mii1_txd0.rmii1_txd0 */
+			0x13c PIN_INPUT_PULLDOWN MUX_MODE1     /* mii1_rxd1.rmii1_rxd1 */
+			0x140 PIN_INPUT_PULLDOWN MUX_MODE1     /* mii1_rxd0.rmii1_rxd0 */
+			0x144 PIN_INPUT_PULLDOWN MUX_MODE0     /* rmii1_ref_clk.rmii1_refclk */
 
 
 			/* Slave 2 */
-			0x40 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a0.rgmii2_tctl */
-			0x44 (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a1.rgmii2_rctl */
-			0x48 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a2.rgmii2_td3 */
-			0x4c (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a3.rgmii2_td2 */
-			0x50 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a4.rgmii2_td1 */
-			0x54 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a5.rgmii2_td0 */
-			0x58 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a6.rgmii2_tclk */
-			0x5c (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a7.rgmii2_rclk */
-			0x60 (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a8.rgmii2_rd3 */
-			0x64 (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a9.rgmii2_rd2 */
-			0x68 (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a10.rgmii2_rd1 */
-			0x6c (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* gpmc_a11.rgmii2_rd0 */
+			0x40 PIN_OUTPUT_PULLDOWN MUX_MODE2	/* gpmc_a0.rgmii2_tctl */
+			0x44 PIN_INPUT_PULLDOWN MUX_MODE2	/* gpmc_a1.rgmii2_rctl */
+			0x48 PIN_OUTPUT_PULLDOWN MUX_MODE2	/* gpmc_a2.rgmii2_td3 */
+			0x4c PIN_OUTPUT_PULLDOWN MUX_MODE2	/* gpmc_a3.rgmii2_td2 */
+			0x50 PIN_OUTPUT_PULLDOWN MUX_MODE2	/* gpmc_a4.rgmii2_td1 */
+			0x54 PIN_OUTPUT_PULLDOWN MUX_MODE2	/* gpmc_a5.rgmii2_td0 */
+			0x58 PIN_OUTPUT_PULLDOWN MUX_MODE2	/* gpmc_a6.rgmii2_tclk */
+			0x5c PIN_INPUT_PULLDOWN MUX_MODE2	/* gpmc_a7.rgmii2_rclk */
+			0x60 PIN_INPUT_PULLDOWN MUX_MODE2	/* gpmc_a8.rgmii2_rd3 */
+			0x64 PIN_INPUT_PULLDOWN MUX_MODE2	/* gpmc_a9.rgmii2_rd2 */
+			0x68 PIN_INPUT_PULLDOWN MUX_MODE2	/* gpmc_a10.rgmii2_rd1 */
+			0x6c PIN_INPUT_PULLDOWN MUX_MODE2	/* gpmc_a11.rgmii2_rd0 */
 		>;
 	};
 
 	cpsw_sleep: cpsw_sleep {
 		pinctrl-single,pins = <
 			/* Slave 1 reset value */
-			0x10c (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x114 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x124 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x128 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x13c (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x140 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x144 (PIN_INPUT_PULLDOWN | MUX_MODE7)
+			0x10c PIN_INPUT_PULLDOWN MUX_MODE7
+			0x114 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x124 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x128 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x13c PIN_INPUT_PULLDOWN MUX_MODE7
+			0x140 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x144 PIN_INPUT_PULLDOWN MUX_MODE7
 
 			/* Slave 2 reset value*/
-			0x40 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x44 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x48 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x4c (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x50 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x54 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x58 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x5c (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x60 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x64 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x68 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x6c (PIN_INPUT_PULLDOWN | MUX_MODE7)
+			0x40 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x44 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x48 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x4c PIN_INPUT_PULLDOWN MUX_MODE7
+			0x50 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x54 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x58 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x5c PIN_INPUT_PULLDOWN MUX_MODE7
+			0x60 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x64 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x68 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x6c PIN_INPUT_PULLDOWN MUX_MODE7
 		>;
 	};
 
 	davinci_mdio_default: davinci_mdio_default {
 		pinctrl-single,pins = <
 			/* MDIO */
-			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE0)	/* mdio_data.mdio_data */
-			0x14c (PIN_OUTPUT_PULLUP | MUX_MODE0)			/* mdio_clk.mdio_clk */
+			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST) MUX_MODE0	/* mdio_data.mdio_data */
+			0x14c PIN_OUTPUT_PULLUP MUX_MODE0			/* mdio_clk.mdio_clk */
 		>;
 	};
 
 	davinci_mdio_sleep: davinci_mdio_sleep {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
-			0x148 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x14c (PIN_INPUT_PULLDOWN | MUX_MODE7)
+			0x148 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x14c PIN_INPUT_PULLDOWN MUX_MODE7
 		>;
 	};
 
 	nandflash_pins_s0: nandflash_pins_s0 {
 		pinctrl-single,pins = <
-			0x0 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad0.gpmc_ad0 */
-			0x4 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad1.gpmc_ad1 */
-			0x8 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad2.gpmc_ad2 */
-			0xc (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad3.gpmc_ad3 */
-			0x10 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad4.gpmc_ad4 */
-			0x14 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad5.gpmc_ad5 */
-			0x18 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad6.gpmc_ad6 */
-			0x1c (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad7.gpmc_ad7 */
-			0x70 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_wait0.gpmc_wait0 */
-			0x74 (PIN_INPUT_PULLUP | MUX_MODE7)	/* gpmc_wpn.gpio0_30 */
-			0x7c (PIN_OUTPUT | MUX_MODE0)		/* gpmc_csn0.gpmc_csn0  */
-			0x90 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_advn_ale.gpmc_advn_ale */
-			0x94 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_oen_ren.gpmc_oen_ren */
-			0x98 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_wen.gpmc_wen */
-			0x9c (PIN_OUTPUT | MUX_MODE0)		/* gpmc_be0n_cle.gpmc_be0n_cle */
+			0x0 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad0.gpmc_ad0 */
+			0x4 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad1.gpmc_ad1 */
+			0x8 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad2.gpmc_ad2 */
+			0xc PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad3.gpmc_ad3 */
+			0x10 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad4.gpmc_ad4 */
+			0x14 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad5.gpmc_ad5 */
+			0x18 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad6.gpmc_ad6 */
+			0x1c PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad7.gpmc_ad7 */
+			0x70 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_wait0.gpmc_wait0 */
+			0x74 PIN_INPUT_PULLUP MUX_MODE7	/* gpmc_wpn.gpio0_30 */
+			0x7c PIN_OUTPUT MUX_MODE0	/* gpmc_csn0.gpmc_csn0  */
+			0x90 PIN_OUTPUT MUX_MODE0	/* gpmc_advn_ale.gpmc_advn_ale */
+			0x94 PIN_OUTPUT MUX_MODE0	/* gpmc_oen_ren.gpmc_oen_ren */
+			0x98 PIN_OUTPUT MUX_MODE0	/* gpmc_wen.gpmc_wen */
+			0x9c PIN_OUTPUT MUX_MODE0	/* gpmc_be0n_cle.gpmc_be0n_cle */
 		>;
 	};
 };
diff --git a/arch/arm/dts/am335x-bone-common-strip.dtsi b/arch/arm/dts/am335x-bone-common-strip.dtsi
index e03ae2a8d3..5be246bd6f 100644
--- a/arch/arm/dts/am335x-bone-common-strip.dtsi
+++ b/arch/arm/dts/am335x-bone-common-strip.dtsi
@@ -66,105 +66,105 @@
 
 	user_leds_s0: user_leds_s0 {
 		pinctrl-single,pins = <
-			0x54 (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a5.gpio1_21 */
-			0x58 (PIN_OUTPUT_PULLUP | MUX_MODE7)	/* gpmc_a6.gpio1_22 */
-			0x5c (PIN_OUTPUT_PULLDOWN | MUX_MODE7)	/* gpmc_a7.gpio1_23 */
-			0x60 (PIN_OUTPUT_PULLUP | MUX_MODE7)	/* gpmc_a8.gpio1_24 */
+			0x54 PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_a5.gpio1_21 */
+			0x58 PIN_OUTPUT_PULLUP MUX_MODE7	/* gpmc_a6.gpio1_22 */
+			0x5c PIN_OUTPUT_PULLDOWN MUX_MODE7	/* gpmc_a7.gpio1_23 */
+			0x60 PIN_OUTPUT_PULLUP MUX_MODE7	/* gpmc_a8.gpio1_24 */
 		>;
 	};
 
 	i2c0_pins: pinmux_i2c0_pins {
 		pinctrl-single,pins = <
-			0x188 (PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c0_sda.i2c0_sda */
-			0x18c (PIN_INPUT_PULLUP | MUX_MODE0)	/* i2c0_scl.i2c0_scl */
+			0x188 PIN_INPUT_PULLUP MUX_MODE0	/* i2c0_sda.i2c0_sda */
+			0x18c PIN_INPUT_PULLUP MUX_MODE0	/* i2c0_scl.i2c0_scl */
 		>;
 	};
 
 	uart0_pins: pinmux_uart0_pins {
 		pinctrl-single,pins = <
-			0x170 (PIN_INPUT_PULLUP | MUX_MODE0)	/* uart0_rxd.uart0_rxd */
-			0x174 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* uart0_txd.uart0_txd */
+			0x170 PIN_INPUT_PULLUP MUX_MODE0	/* uart0_rxd.uart0_rxd */
+			0x174 PIN_OUTPUT_PULLDOWN MUX_MODE0	/* uart0_txd.uart0_txd */
 		>;
 	};
 
 	clkout2_pin: pinmux_clkout2_pin {
 		pinctrl-single,pins = <
-			0x1b4 (PIN_OUTPUT_PULLDOWN | MUX_MODE3)	/* xdma_event_intr1.clkout2 */
+			0x1b4 PIN_OUTPUT_PULLDOWN MUX_MODE3	/* xdma_event_intr1.clkout2 */
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
+			0x110 PIN_INPUT_PULLUP MUX_MODE0	/* mii1_rxerr.mii1_rxerr */
+			0x114 PIN_OUTPUT_PULLDOWN MUX_MODE0	/* mii1_txen.mii1_txen */
+			0x118 PIN_INPUT_PULLUP MUX_MODE0	/* mii1_rxdv.mii1_rxdv */
+			0x11c PIN_OUTPUT_PULLDOWN MUX_MODE0	/* mii1_txd3.mii1_txd3 */
+			0x120 PIN_OUTPUT_PULLDOWN MUX_MODE0	/* mii1_txd2.mii1_txd2 */
+			0x124 PIN_OUTPUT_PULLDOWN MUX_MODE0	/* mii1_txd1.mii1_txd1 */
+			0x128 PIN_OUTPUT_PULLDOWN MUX_MODE0	/* mii1_txd0.mii1_txd0 */
+			0x12c PIN_INPUT_PULLUP MUX_MODE0	/* mii1_txclk.mii1_txclk */
+			0x130 PIN_INPUT_PULLUP MUX_MODE0	/* mii1_rxclk.mii1_rxclk */
+			0x134 PIN_INPUT_PULLUP MUX_MODE0	/* mii1_rxd3.mii1_rxd3 */
+			0x138 PIN_INPUT_PULLUP MUX_MODE0	/* mii1_rxd2.mii1_rxd2 */
+			0x13c PIN_INPUT_PULLUP MUX_MODE0	/* mii1_rxd1.mii1_rxd1 */
+			0x140 PIN_INPUT_PULLUP MUX_MODE0	/* mii1_rxd0.mii1_rxd0 */
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
+			0x110 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x114 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x118 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x11c PIN_INPUT_PULLDOWN MUX_MODE7
+			0x120 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x124 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x128 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x12c PIN_INPUT_PULLDOWN MUX_MODE7
+			0x130 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x134 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x138 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x13c PIN_INPUT_PULLDOWN MUX_MODE7
+			0x140 PIN_INPUT_PULLDOWN MUX_MODE7
 		>;
 	};
 
 	davinci_mdio_default: davinci_mdio_default {
 		pinctrl-single,pins = <
 			/* MDIO */
-			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE0)	/* mdio_data.mdio_data */
-			0x14c (PIN_OUTPUT_PULLUP | MUX_MODE0)			/* mdio_clk.mdio_clk */
+			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST) MUX_MODE0	/* mdio_data.mdio_data */
+			0x14c PIN_OUTPUT_PULLUP MUX_MODE0			/* mdio_clk.mdio_clk */
 		>;
 	};
 
 	davinci_mdio_sleep: davinci_mdio_sleep {
 		pinctrl-single,pins = <
 			/* MDIO reset value */
-			0x148 (PIN_INPUT_PULLDOWN | MUX_MODE7)
-			0x14c (PIN_INPUT_PULLDOWN | MUX_MODE7)
+			0x148 PIN_INPUT_PULLDOWN MUX_MODE7
+			0x14c PIN_INPUT_PULLDOWN MUX_MODE7
 		>;
 	};
 
 	mmc1_pins: pinmux_mmc1_pins {
 		pinctrl-single,pins = <
-			0x160 (PIN_INPUT | MUX_MODE7) /* GPIO0_6 */
+			0x160 PIN_INPUT MUX_MODE7 /* GPIO0_6 */
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
+			0x80 PIN_INPUT_PULLUP MUX_MODE2 /* gpmc_csn1.mmc1_clk */
+			0x84 PIN_INPUT_PULLUP MUX_MODE2 /* gpmc_csn2.mmc1_cmd */
+			0x00 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad0.mmc1_dat0 */
+			0x04 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad1.mmc1_dat1 */
+			0x08 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad2.mmc1_dat2 */
+			0x0c PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad3.mmc1_dat3 */
+			0x10 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad4.mmc1_dat4 */
+			0x14 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad5.mmc1_dat5 */
+			0x18 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad6.mmc1_dat6 */
+			0x1c PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad7.mmc1_dat7 */
 		>;
 	};
 };
diff --git a/arch/arm/dts/am335x-boneblack.dts b/arch/arm/dts/am335x-boneblack.dts
index c06a532e48..3c286c71bf 100644
--- a/arch/arm/dts/am335x-boneblack.dts
+++ b/arch/arm/dts/am335x-boneblack.dts
@@ -41,32 +41,32 @@
 &am33xx_pinmux {
 	nxp_hdmi_bonelt_pins: nxp_hdmi_bonelt_pins {
 		pinctrl-single,pins = <
-			0x1b0 0x03      /* xdma_event_intr0, OMAP_MUX_MODE3 | AM33XX_PIN_OUTPUT */
-			0xa0 0x08       /* lcd_data0.lcd_data0, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xa4 0x08       /* lcd_data1.lcd_data1, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xa8 0x08       /* lcd_data2.lcd_data2, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xac 0x08       /* lcd_data3.lcd_data3, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xb0 0x08       /* lcd_data4.lcd_data4, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xb4 0x08       /* lcd_data5.lcd_data5, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xb8 0x08       /* lcd_data6.lcd_data6, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xbc 0x08       /* lcd_data7.lcd_data7, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xc0 0x08       /* lcd_data8.lcd_data8, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xc4 0x08       /* lcd_data9.lcd_data9, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xc8 0x08       /* lcd_data10.lcd_data10, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xcc 0x08       /* lcd_data11.lcd_data11, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xd0 0x08       /* lcd_data12.lcd_data12, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xd4 0x08       /* lcd_data13.lcd_data13, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xd8 0x08       /* lcd_data14.lcd_data14, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xdc 0x08       /* lcd_data15.lcd_data15, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
-			0xe0 0x00       /* lcd_vsync.lcd_vsync, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT */
-			0xe4 0x00       /* lcd_hsync.lcd_hsync, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT */
-			0xe8 0x00       /* lcd_pclk.lcd_pclk, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT */
-			0xec 0x00       /* lcd_ac_bias_en.lcd_ac_bias_en, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT */
+			0x1b0 0x03 0      /* xdma_event_intr0, OMAP_MUX_MODE3 | AM33XX_PIN_OUTPUT */
+			0xa0 0x08 0       /* lcd_data0.lcd_data0, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xa4 0x08 0       /* lcd_data1.lcd_data1, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xa8 0x08 0       /* lcd_data2.lcd_data2, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xac 0x08 0       /* lcd_data3.lcd_data3, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xb0 0x08 0       /* lcd_data4.lcd_data4, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xb4 0x08 0       /* lcd_data5.lcd_data5, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xb8 0x08 0       /* lcd_data6.lcd_data6, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xbc 0x08 0       /* lcd_data7.lcd_data7, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xc0 0x08 0       /* lcd_data8.lcd_data8, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xc4 0x08 0       /* lcd_data9.lcd_data9, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xc8 0x08 0       /* lcd_data10.lcd_data10, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xcc 0x08 0       /* lcd_data11.lcd_data11, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xd0 0x08 0       /* lcd_data12.lcd_data12, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xd4 0x08 0       /* lcd_data13.lcd_data13, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xd8 0x08 0       /* lcd_data14.lcd_data14, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xdc 0x08 0       /* lcd_data15.lcd_data15, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT | AM33XX_PULL_DISA */
+			0xe0 0x00 0       /* lcd_vsync.lcd_vsync, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT */
+			0xe4 0x00 0       /* lcd_hsync.lcd_hsync, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT */
+			0xe8 0x00 0       /* lcd_pclk.lcd_pclk, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT */
+			0xec 0x00 0       /* lcd_ac_bias_en.lcd_ac_bias_en, OMAP_MUX_MODE0 | AM33XX_PIN_OUTPUT */
 		>;
 	};
 	nxp_hdmi_bonelt_off_pins: nxp_hdmi_bonelt_off_pins {
 		pinctrl-single,pins = <
-			0x1b0 0x03      /* xdma_event_intr0, OMAP_MUX_MODE3 | AM33XX_PIN_OUTPUT */
+			0x1b0 0x03 0      /* xdma_event_intr0, OMAP_MUX_MODE3 | AM33XX_PIN_OUTPUT */
 		>;
 	};
 };
diff --git a/arch/arm/dts/am335x-phytec-phycard-som.dtsi b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
index 1d45d60dc0..e459824a77 100644
--- a/arch/arm/dts/am335x-phytec-phycard-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycard-som.dtsi
@@ -14,73 +14,73 @@
 
 	i2c0_pins: pinmux_i2c0_pins {
 			pinctrl-single,pins = <
-			0x188 (PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c0_sda.i2c0_sda */
-			0x18c (PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c0_scl.i2c0_scl */
+			0x188 PIN_INPUT_PULLUP MUX_MODE0    /* i2c0_sda.i2c0_sda */
+			0x18c PIN_INPUT_PULLUP MUX_MODE0    /* i2c0_scl.i2c0_scl */
 		>;
 	};
 
 	uart0_pins: pinmux_uart0_pins {
 		pinctrl-single,pins = <
-			0x170 (PIN_INPUT_PULLUP | MUX_MODE0)    /* uart0_rxd.uart0_rxd */
-			0x174 (PIN_OUTPUT_PULLDOWN | MUX_MODE0) /* uart0_txd.uart0_txd */
+			0x170 PIN_INPUT_PULLUP MUX_MODE0    /* uart0_rxd.uart0_rxd */
+			0x174 PIN_OUTPUT_PULLDOWN MUX_MODE0 /* uart0_txd.uart0_txd */
 		>;
 	};
 
 	uart3_pins: pinmux_uart3 {
 		pinctrl-single,pins = <
-			0x134 (PIN_INPUT_PULLUP | MUX_MODE1)    /* mii1_rxd3.uart3_rxd */
-			0x138 (PIN_OUTPUT_PULLDOWN | MUX_MODE1) /* mii1_rxd2.uart3_txd */
+			0x134 PIN_INPUT_PULLUP MUX_MODE1    /* mii1_rxd3.uart3_rxd */
+			0x138 PIN_OUTPUT_PULLDOWN MUX_MODE1 /* mii1_rxd2.uart3_txd */
 		>;
 	};
 
 	mmc1_pins: pinmux_mmc1_pins {
 		pinctrl-single,pins = <
-			0xf0 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat3.mmc0_dat3 */
-			0xf4 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat2.mmc0_dat2 */
-			0xf8 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat1.mmc0_dat1 */
-			0xfc (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat0.mmc0_dat0 */
-			0x100 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_clk.mmc0_clk */
-			0x104 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_cmd.mmc0_cmd */
+			0xf0 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_dat3.mmc0_dat3 */
+			0xf4 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_dat2.mmc0_dat2 */
+			0xf8 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_dat1.mmc0_dat1 */
+			0xfc (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_dat0.mmc0_dat0 */
+			0x100 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_clk.mmc0_clk */
+			0x104 (INPUT_EN | PULL_UP) MUX_MODE0	/* mmc0_cmd.mmc0_cmd */
 		>;
 	};
 
 	emac_rmii1_pins: pinmux_emac_rmii1_pins {
 		pinctrl-single,pins = <
-			0x10c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_crs.rmii1_crs_dv */
-			0x110 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxerr.rmii1_rxerr */
-			0x114 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txen.rmii1_txen */
-			0x124 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txd1.rmii1_txd1 */
-			0x128 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txd0.rmii1_txd0 */
-			0x13c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxd1.rmii1_rxd1 */
-			0x140 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxd0.rmii1_rxd0 */
-			0x144 (PIN_INPUT_PULLDOWN | MUX_MODE0)	/* rmii1_refclk.rmii1_refclk */
+			0x10c PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_crs.rmii1_crs_dv */
+			0x110 PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_rxerr.rmii1_rxerr */
+			0x114 PIN_OUTPUT MUX_MODE1		/* mii1_txen.rmii1_txen */
+			0x124 PIN_OUTPUT MUX_MODE1		/* mii1_txd1.rmii1_txd1 */
+			0x128 PIN_OUTPUT MUX_MODE1		/* mii1_txd0.rmii1_txd0 */
+			0x13c PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_rxd1.rmii1_rxd1 */
+			0x140 PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_rxd0.rmii1_rxd0 */
+			0x144 PIN_INPUT_PULLDOWN MUX_MODE0	/* rmii1_refclk.rmii1_refclk */
 		>;
 	};
 
 	nandflash_pins_s0: nandflash_pins_s0 {
 		pinctrl-single,pins = <
-			0x0 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad0.gpmc_ad0 */
-			0x4 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad1.gpmc_ad1 */
-			0x8 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad2.gpmc_ad2 */
-			0xc (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad3.gpmc_ad3 */
-			0x10 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad4.gpmc_ad4 */
-			0x14 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad5.gpmc_ad5 */
-			0x18 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad6.gpmc_ad6 */
-			0x1c (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad7.gpmc_ad7 */
-			0x70 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_wait0.gpmc_wait0 */
-			0x7c (PIN_OUTPUT | MUX_MODE0)		/* gpmc_csn0.gpmc_csn0  */
-			0x90 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_advn_ale.gpmc_advn_ale */
-			0x94 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_oen_ren.gpmc_oen_ren */
-			0x98 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_wen.gpmc_wen */
-			0x9c (PIN_OUTPUT | MUX_MODE0)		/* gpmc_be0n_cle.gpmc_be0n_cle */
+			0x0 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad0.gpmc_ad0 */
+			0x4 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad1.gpmc_ad1 */
+			0x8 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad2.gpmc_ad2 */
+			0xc PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad3.gpmc_ad3 */
+			0x10 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad4.gpmc_ad4 */
+			0x14 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad5.gpmc_ad5 */
+			0x18 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad6.gpmc_ad6 */
+			0x1c PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad7.gpmc_ad7 */
+			0x70 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_wait0.gpmc_wait0 */
+			0x7c PIN_OUTPUT MUX_MODE0	/* gpmc_csn0.gpmc_csn0  */
+			0x90 PIN_OUTPUT MUX_MODE0	/* gpmc_advn_ale.gpmc_advn_ale */
+			0x94 PIN_OUTPUT MUX_MODE0	/* gpmc_oen_ren.gpmc_oen_ren */
+			0x98 PIN_OUTPUT MUX_MODE0	/* gpmc_wen.gpmc_wen */
+			0x9c PIN_OUTPUT MUX_MODE0	/* gpmc_be0n_cle.gpmc_be0n_cle */
 		>;
 	};
 
 	davinci_mdio_default: davinci_mdio_default {
 		pinctrl-single,pins = <
 			/* MDIO */
-			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE0)	/* mdio_data.mdio_data */
-			0x14c (PIN_OUTPUT_PULLUP | MUX_MODE0)			/* mdio_clk.mdio_clk */
+			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST) MUX_MODE0	/* mdio_data.mdio_data */
+			0x14c PIN_OUTPUT_PULLUP MUX_MODE0			/* mdio_clk.mdio_clk */
 		>;
 	};
 };
diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index ae3f70acdd..4b2ff9b2ea 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -19,111 +19,111 @@
 &am33xx_pinmux {
 	usb_pins: pinmux_usb_pins {
 		pinctrl-single,pins = <
-			0x21c (PIN_OUTPUT_PULLDOWN | MUX_MODE0) /* usb0_drvvbus.usb0_drvvbus */
-			0x234 (PIN_OUTPUT_PULLDOWN | MUX_MODE0) /* usb1_drvvbus.usb1_drvvbus */
+			0x21c PIN_OUTPUT_PULLDOWN MUX_MODE0 /* usb0_drvvbus.usb0_drvvbus */
+			0x234 PIN_OUTPUT_PULLDOWN MUX_MODE0 /* usb1_drvvbus.usb1_drvvbus */
 		>;
 	};
 
 	i2c0_pins: pinmux_i2c0_pins {
 			pinctrl-single,pins = <
-			0x188 (PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c0_sda.i2c0_sda */
-			0x18c (PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c0_scl.i2c0_scl */
+			0x188 PIN_INPUT_PULLUP MUX_MODE0    /* i2c0_sda.i2c0_sda */
+			0x18c PIN_INPUT_PULLUP MUX_MODE0    /* i2c0_scl.i2c0_scl */
 		>;
 	};
 
 	spi0_pins: pinmux_spi0_pins {
 		pinctrl-single,pins = <
-			0x150 (PIN_INPUT_PULLDOWN | MUX_MODE0)	/* spi0_clk.spi0_clk */
-			0x154 (PIN_INPUT_PULLDOWN | MUX_MODE0)	/* spi0_d0.spi0_d0 */
-			0x158 (PIN_INPUT_PULLUP | MUX_MODE0)	/* spi0_d1.spi0_d1 */
-			0x15c (PIN_INPUT_PULLUP | MUX_MODE0)	/* spi0_cs0.spi0_cs0 */
+			0x150 PIN_INPUT_PULLDOWN MUX_MODE0	/* spi0_clk.spi0_clk */
+			0x154 PIN_INPUT_PULLDOWN MUX_MODE0	/* spi0_d0.spi0_d0 */
+			0x158 PIN_INPUT_PULLUP MUX_MODE0	/* spi0_d1.spi0_d1 */
+			0x15c PIN_INPUT_PULLUP MUX_MODE0	/* spi0_cs0.spi0_cs0 */
 		>;
 	};
 
 	uart0_pins: pinmux_uart0_pins {
 		pinctrl-single,pins = <
-			0x170 (PIN_INPUT_PULLUP | MUX_MODE0)    /* uart0_rxd.uart0_rxd */
-			0x174 (PIN_OUTPUT_PULLDOWN | MUX_MODE0) /* uart0_txd.uart0_txd */
+			0x170 PIN_INPUT_PULLUP MUX_MODE0    /* uart0_rxd.uart0_rxd */
+			0x174 PIN_OUTPUT_PULLDOWN MUX_MODE0 /* uart0_txd.uart0_txd */
 		>;
 	};
 
 	mmc1_pins: pinmux_mmc1_pins {
 		pinctrl-single,pins = <
-			0xf0 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat3.mmc0_dat3 */
-			0xf4 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat2.mmc0_dat2 */
-			0xf8 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat1.mmc0_dat1 */
-			0xfc (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_dat0.mmc0_dat0 */
-			0x100 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_clk.mmc0_clk */
-			0x104 (MUX_MODE0 | INPUT_EN | PULL_UP)	/* mmc0_cmd.mmc0_cmd */
+			0xf0 MUX_MODE0 (INPUT_EN | PULL_UP)	/* mmc0_dat3.mmc0_dat3 */
+			0xf4 MUX_MODE0 (INPUT_EN | PULL_UP)	/* mmc0_dat2.mmc0_dat2 */
+			0xf8 MUX_MODE0 (INPUT_EN | PULL_UP)	/* mmc0_dat1.mmc0_dat1 */
+			0xfc MUX_MODE0 (INPUT_EN | PULL_UP)	/* mmc0_dat0.mmc0_dat0 */
+			0x100 MUX_MODE0 (INPUT_EN | PULL_UP)	/* mmc0_clk.mmc0_clk */
+			0x104 MUX_MODE0 (INPUT_EN | PULL_UP)	/* mmc0_cmd.mmc0_cmd */
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
+			0x80 PIN_INPUT_PULLUP MUX_MODE2 /* gpmc_csn1.mmc1_clk */
+			0x84 PIN_INPUT_PULLUP MUX_MODE2 /* gpmc_csn2.mmc1_cmd */
+			0x00 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad0.mmc1_dat0 */
+			0x04 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad1.mmc1_dat1 */
+			0x08 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad2.mmc1_dat2 */
+			0x0c PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad3.mmc1_dat3 */
+			0x10 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad4.mmc1_dat4 */
+			0x14 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad5.mmc1_dat5 */
+			0x18 PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad6.mmc1_dat6 */
+			0x1c PIN_INPUT_PULLUP MUX_MODE1 /* gpmc_ad7.mmc1_dat7 */
 		>;
 	};
 
 	emac_rmii1_pins: pinmux_emac_rmii1_pins {
 		pinctrl-single,pins = <
-			0x10c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_crs.rmii1_crs_dv */
-			0x110 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxerr.rmii1_rxerr */
-			0x114 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txen.rmii1_txen */
-			0x124 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txd1.rmii1_txd1 */
-			0x128 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txd0.rmii1_txd0 */
-			0x13c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxd1.rmii1_rxd1 */
-			0x140 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxd0.rmii1_rxd0 */
-			0x144 (PIN_INPUT_PULLDOWN | MUX_MODE0)	/* rmii1_refclk.rmii1_refclk */
+			0x10c PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_crs.rmii1_crs_dv */
+			0x110 PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_rxerr.rmii1_rxerr */
+			0x114 PIN_OUTPUT MUX_MODE1		/* mii1_txen.rmii1_txen */
+			0x124 PIN_OUTPUT MUX_MODE1		/* mii1_txd1.rmii1_txd1 */
+			0x128 PIN_OUTPUT MUX_MODE1		/* mii1_txd0.rmii1_txd0 */
+			0x13c PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_rxd1.rmii1_rxd1 */
+			0x140 PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_rxd0.rmii1_rxd0 */
+			0x144 PIN_INPUT_PULLDOWN MUX_MODE0	/* rmii1_refclk.rmii1_refclk */
 		>;
 	};
 
 	nandflash_pins_s0: nandflash_pins_s0 {
 		pinctrl-single,pins = <
-			0x0 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad0.gpmc_ad0 */
-			0x4 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad1.gpmc_ad1 */
-			0x8 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad2.gpmc_ad2 */
-			0xc (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad3.gpmc_ad3 */
-			0x10 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad4.gpmc_ad4 */
-			0x14 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad5.gpmc_ad5 */
-			0x18 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad6.gpmc_ad6 */
-			0x1c (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad7.gpmc_ad7 */
-			0x70 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_wait0.gpmc_wait0 */
-			0x7c (PIN_OUTPUT | MUX_MODE0)		/* gpmc_csn0.gpmc_csn0  */
-			0x90 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_advn_ale.gpmc_advn_ale */
-			0x94 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_oen_ren.gpmc_oen_ren */
-			0x98 (PIN_OUTPUT | MUX_MODE0)		/* gpmc_wen.gpmc_wen */
-			0x9c (PIN_OUTPUT | MUX_MODE0)		/* gpmc_be0n_cle.gpmc_be0n_cle */
+			0x0 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad0.gpmc_ad0 */
+			0x4 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad1.gpmc_ad1 */
+			0x8 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad2.gpmc_ad2 */
+			0xc PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad3.gpmc_ad3 */
+			0x10 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad4.gpmc_ad4 */
+			0x14 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad5.gpmc_ad5 */
+			0x18 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad6.gpmc_ad6 */
+			0x1c PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad7.gpmc_ad7 */
+			0x70 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_wait0.gpmc_wait0 */
+			0x7c PIN_OUTPUT MUX_MODE0	/* gpmc_csn0.gpmc_csn0  */
+			0x90 PIN_OUTPUT MUX_MODE0	/* gpmc_advn_ale.gpmc_advn_ale */
+			0x94 PIN_OUTPUT MUX_MODE0	/* gpmc_oen_ren.gpmc_oen_ren */
+			0x98 PIN_OUTPUT MUX_MODE0	/* gpmc_wen.gpmc_wen */
+			0x9c PIN_OUTPUT MUX_MODE0	/* gpmc_be0n_cle.gpmc_be0n_cle */
 		>;
 	};
 
 	davinci_mdio_default: davinci_mdio_default {
 		pinctrl-single,pins = <
 			/* MDIO */
-			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE0)	/* mdio_data.mdio_data */
-			0x14c (PIN_OUTPUT_PULLUP | MUX_MODE0)			/* mdio_clk.mdio_clk */
+			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST) MUX_MODE0	/* mdio_data.mdio_data */
+			0x14c PIN_OUTPUT_PULLUP MUX_MODE0			/* mdio_clk.mdio_clk */
 		>;
 	};
 
 	pcm051_led_pins: pinmux_pcm051_led_pins {
 		pinctrl-single,pins = <
-			0x80 (MUX_MODE7)
-			0x84 (MUX_MODE7)
+			0x80 0 MUX_MODE7
+			0x84 0 MUX_MODE7
 		>;
 	};
 
 	pcm051_user_pins: pinmux_pcm051_user_pins {
 		pinctrl-single,pins = <
-			0x1e4 (PULL_UP |INPUT_EN |MUX_MODE7)
-			0x1e8 (PULL_UP |INPUT_EN |MUX_MODE7)
+			0x1e4 (PULL_UP |INPUT_EN) MUX_MODE7
+			0x1e8 (PULL_UP |INPUT_EN) MUX_MODE7
 		>;
 	};
 };
diff --git a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
index 0325c81346..29776f4556 100644
--- a/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phyflex-som.dtsi
@@ -35,90 +35,90 @@
 &am33xx_pinmux {
 	i2c0_pins: pinmux_i2c0_pins {
 			pinctrl-single,pins = <
-			0x188 (PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c0_sda */
-			0x18c (PIN_INPUT_PULLUP | MUX_MODE0)    /* i2c0_scl */
+			0x188 PIN_INPUT_PULLUP MUX_MODE0    /* i2c0_sda */
+			0x18c PIN_INPUT_PULLUP MUX_MODE0    /* i2c0_scl */
 		>;
 	};
 
 	spi0_pins: pinmux_spi0_pins {
 		pinctrl-single,pins = <
-			0x150 (PIN_INPUT_PULLDOWN | MUX_MODE0)  /* spi0_clk.spi0_clk */
-			0x154 (PIN_INPUT_PULLDOWN | MUX_MODE0)  /* spi0_d0.spi0_d0 */
-			0x158 (PIN_INPUT_PULLUP | MUX_MODE0)    /* spi0_d1.spi0_d1 */
-			0x15c (PIN_INPUT_PULLUP | MUX_MODE0)	/* spi0_cs0.spi0_cs0 */
+			0x150 PIN_INPUT_PULLDOWN MUX_MODE0  /* spi0_clk.spi0_clk */
+			0x154 PIN_INPUT_PULLDOWN MUX_MODE0  /* spi0_d0.spi0_d0 */
+			0x158 PIN_INPUT_PULLUP MUX_MODE0    /* spi0_d1.spi0_d1 */
+			0x15c PIN_INPUT_PULLUP MUX_MODE0	/* spi0_cs0.spi0_cs0 */
 		>;
 	};
 
 	uart0_pins: pinmux_uart0_pins {
 		pinctrl-single,pins = <
-			0x170 (PIN_INPUT_PULLUP | MUX_MODE0)    /* uart0_rxd */
-			0x174 (PIN_OUTPUT_PULLDOWN | MUX_MODE0) /* uart0_txd */
+			0x170 PIN_INPUT_PULLUP MUX_MODE0    /* uart0_rxd */
+			0x174 PIN_OUTPUT_PULLDOWN MUX_MODE0 /* uart0_txd */
 		>;
 	};
 
 	mmc1_pins: pinmux_mmc1_pins {
 		pinctrl-single,pins = <
-			0x0f0 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_dat3 */
-			0x0f4 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_dat2 */
-			0x0f8 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_dat1 */
-			0x0fc (PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_dat0 */
-			0x100 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_clk */
-			0x104 (PIN_INPUT_PULLUP | MUX_MODE0)	/* mmc0_cmd */
+			0x0f0 PIN_INPUT_PULLUP MUX_MODE0	/* mmc0_dat3 */
+			0x0f4 PIN_INPUT_PULLUP MUX_MODE0	/* mmc0_dat2 */
+			0x0f8 PIN_INPUT_PULLUP MUX_MODE0	/* mmc0_dat1 */
+			0x0fc PIN_INPUT_PULLUP MUX_MODE0	/* mmc0_dat0 */
+			0x100 PIN_INPUT_PULLUP MUX_MODE0	/* mmc0_clk */
+			0x104 PIN_INPUT_PULLUP MUX_MODE0	/* mmc0_cmd */
 		>;
 	};
 
 	emac_rgmii1_pins: pinmux_emac_rgmii1_pins {
 		pinctrl-single,pins = <
-			0x114 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* mii1_tx_en.rgmii1_tctl */
-			0x118 (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* mii1_rx_dv.rgmii1_rctl */
-			0x11c (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* mii1_txd3.rgmii1_td3 */
-			0x120 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* mii1_txd2.rgmii1_td2 */
-			0x124 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* mii1_txd1.rgmii1_td1 */
-			0x128 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* mii1_txd0.rgmii1_td0 */
-			0x12c (PIN_OUTPUT_PULLDOWN | MUX_MODE2)	/* mii1_tx_clk.rgmii1_tclk */
-			0x130 (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* mii1_rx_clk.rgmii1_rclk */
-			0x134 (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* mii1_rxd3.rgmii1_rd3 */
-			0x138 (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* mii1_rxd2.rgmii1_rd2 */
-			0x13c (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* mii1_rxd1.rgmii1_rd1 */
-			0x140 (PIN_INPUT_PULLDOWN | MUX_MODE2)	/* mii1_rxd0.rgmii1_rd0 */
+			0x114 PIN_OUTPUT_PULLDOWN MUX_MODE2	/* mii1_tx_en.rgmii1_tctl */
+			0x118 PIN_INPUT_PULLDOWN MUX_MODE2	/* mii1_rx_dv.rgmii1_rctl */
+			0x11c PIN_OUTPUT_PULLDOWN MUX_MODE2	/* mii1_txd3.rgmii1_td3 */
+			0x120 PIN_OUTPUT_PULLDOWN MUX_MODE2	/* mii1_txd2.rgmii1_td2 */
+			0x124 PIN_OUTPUT_PULLDOWN MUX_MODE2	/* mii1_txd1.rgmii1_td1 */
+			0x128 PIN_OUTPUT_PULLDOWN MUX_MODE2	/* mii1_txd0.rgmii1_td0 */
+			0x12c PIN_OUTPUT_PULLDOWN MUX_MODE2	/* mii1_tx_clk.rgmii1_tclk */
+			0x130 PIN_INPUT_PULLDOWN MUX_MODE2	/* mii1_rx_clk.rgmii1_rclk */
+			0x134 PIN_INPUT_PULLDOWN MUX_MODE2	/* mii1_rxd3.rgmii1_rd3 */
+			0x138 PIN_INPUT_PULLDOWN MUX_MODE2	/* mii1_rxd2.rgmii1_rd2 */
+			0x13c PIN_INPUT_PULLDOWN MUX_MODE2	/* mii1_rxd1.rgmii1_rd1 */
+			0x140 PIN_INPUT_PULLDOWN MUX_MODE2	/* mii1_rxd0.rgmii1_rd0 */
 		>;
 	};
 
 	emac_rmii2_pins: pinmux_emac_rmii2_pins {
 		pinctrl-single,pins = <
-			0x040 (PIN_OUTPUT_PULLDOWN | MUX_MODE3)	/* gpmc_a0.rmii2_txen */
-			0x050 (PIN_OUTPUT_PULLDOWN | MUX_MODE3)	/* gpmc_a4.rmii2_txd1 */
-			0x054 (PIN_OUTPUT_PULLDOWN | MUX_MODE3)	/* gpmc_a5.rmii2_txd0 */
-			0x068 (PIN_INPUT_PULLDOWN | MUX_MODE3)	/* gpmc_a10.rmii2_rxd1 */
-			0x06c (PIN_INPUT_PULLDOWN | MUX_MODE3)	/* gpmc_a11.rmii2_rxd0 */
-			0x074 (PIN_INPUT_PULLUP | MUX_MODE3)	/* gpmc_wpn.rmii2_rxer */
-			0x108 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_col.rmii2_refclk */
+			0x040 PIN_OUTPUT_PULLDOWN MUX_MODE3	/* gpmc_a0.rmii2_txen */
+			0x050 PIN_OUTPUT_PULLDOWN MUX_MODE3	/* gpmc_a4.rmii2_txd1 */
+			0x054 PIN_OUTPUT_PULLDOWN MUX_MODE3	/* gpmc_a5.rmii2_txd0 */
+			0x068 PIN_INPUT_PULLDOWN MUX_MODE3	/* gpmc_a10.rmii2_rxd1 */
+			0x06c PIN_INPUT_PULLDOWN MUX_MODE3	/* gpmc_a11.rmii2_rxd0 */
+			0x074 PIN_INPUT_PULLUP MUX_MODE3	/* gpmc_wpn.rmii2_rxer */
+			0x108 PIN_INPUT_PULLDOWN MUX_MODE1	/* mii1_col.rmii2_refclk */
 		>;
 	};
 
 	davinci_mdio_default: davinci_mdio_default {
 		pinctrl-single,pins = <
-			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE0)	/* mdio_data */
-			0x14c (PIN_OUTPUT_PULLUP | MUX_MODE0)			/* mdio_clk */
+			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST) MUX_MODE0	/* mdio_data */
+			0x14c PIN_OUTPUT_PULLUP MUX_MODE0			/* mdio_clk */
 		>;
 	};
 
 	nandflash_pins_s0: nandflash_pins_s0 {
 		pinctrl-single,pins = <
-			0x000 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad0 */
-			0x004 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad1 */
-			0x008 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad2 */
-			0x00c (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad3 */
-			0x010 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad4 */
-			0x014 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad5 */
-			0x018 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad6 */
-			0x01c (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_ad7 */
-			0x070 (PIN_INPUT_PULLUP | MUX_MODE0)	/* gpmc_wait0 */
-			0x07c (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* gpmc_csn0 */
-			0x090 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* gpmc_advn_ale */
-			0x094 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* gpmc_oen_ren */
-			0x098 (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* gpmc_wen */
-			0x09c (PIN_OUTPUT_PULLDOWN | MUX_MODE0)	/* gpmc_be0n_cle */
+			0x000 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad0 */
+			0x004 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad1 */
+			0x008 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad2 */
+			0x00c PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad3 */
+			0x010 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad4 */
+			0x014 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad5 */
+			0x018 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad6 */
+			0x01c PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_ad7 */
+			0x070 PIN_INPUT_PULLUP MUX_MODE0	/* gpmc_wait0 */
+			0x07c PIN_OUTPUT_PULLDOWN MUX_MODE0	/* gpmc_csn0 */
+			0x090 PIN_OUTPUT_PULLDOWN MUX_MODE0	/* gpmc_advn_ale */
+			0x094 PIN_OUTPUT_PULLDOWN MUX_MODE0	/* gpmc_oen_ren */
+			0x098 PIN_OUTPUT_PULLDOWN MUX_MODE0	/* gpmc_wen */
+			0x09c PIN_OUTPUT_PULLDOWN MUX_MODE0	/* gpmc_be0n_cle */
 		>;
 	};
 };
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

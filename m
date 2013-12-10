Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqOKV-0000ar-Cx
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 14:30:32 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D8406BF0FA
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2013 14:30:58 +0100 (CET)
From: y@numalfix.phytec.de
Date: Tue, 10 Dec 2013 15:30:08 +0100
Message-Id: <1386685809-21530-2-git-send-email-y>
In-Reply-To: <1386685809-21530-1-git-send-email-y>
References: <1386685809-21530-1-git-send-email-y>
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
Subject: [PATCH 2/3] pcm051: ethernet and dts fixes
To: barebox@lists.infradead.org

From: Jan Weitzel <j.weitzel@phytec.de>

add compatible phytec,pcm051
clean up pinmux_emac_rmii1_pins
introduce davinci_mdio_default pin group
set AM33XX_MAC_MII_SEL via dts rmii-clock-ext
use bch8 as ecc mode
add pagesize to 24c32@52

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/boards/pcm051/board.c         |    3 +-
 arch/arm/dts/am335x-phytec-phycore.dts |   40 ++++++++++++++++++++++---------
 2 files changed, 29 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/pcm051/board.c
index a64d219..91e8208 100644
--- a/arch/arm/boards/pcm051/board.c
+++ b/arch/arm/boards/pcm051/board.c
@@ -39,11 +39,10 @@ static struct omap_barebox_part pcm051_barebox_part = {
 
 static int pcm051_devices_init(void)
 {
-	if (!of_machine_is_compatible("phytec,phycore-am335x"))
+	if (!of_machine_is_compatible("phytec,pcm051"))
 		return 0;
 
 	am33xx_register_ethaddr(0, 0);
-	writel(0x69, AM33XX_MAC_MII_SEL);
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_SPI:
diff --git a/arch/arm/dts/am335x-phytec-phycore.dts b/arch/arm/dts/am335x-phytec-phycore.dts
index 81c08fd..6196eb3 100644
--- a/arch/arm/dts/am335x-phytec-phycore.dts
+++ b/arch/arm/dts/am335x-phytec-phycore.dts
@@ -4,7 +4,7 @@
 
 / {
 	model = "Phytec phyCORE AM335x";
-	compatible = "phytec,phycore-am335x", "ti,am33xx";
+	compatible = "phytec,phycore-am335x", "phytec,pcm051", "ti,am33xx";
 
 	chosen {
 		linux,stdout-path = &uart0;
@@ -83,16 +83,14 @@
 
 	emac_rmii1_pins: pinmux_emac_rmii1_pins {
 		pinctrl-single,pins = <
-			0x10c (INPUT_EN | MUX_MODE1)
-			0x110 (INPUT_EN | MUX_MODE1)
-			0x114 MUX_MODE1
-			0x124 MUX_MODE1
-			0x128 MUX_MODE1
-			0x13c (INPUT_EN | MUX_MODE1)
-			0x140 (INPUT_EN | MUX_MODE1)
-			0x148 (PULL_UP | INPUT_EN | MUX_MODE0)
-			0x14c (PULL_UP | MUX_MODE0)
-			0x144 (INPUT_EN | MUX_MODE0)
+			0x10c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_crs.rmii1_crs_dv */
+			0x110 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxerr.rmii1_rxerr */
+			0x114 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txen.rmii1_txen */
+			0x124 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txd1.rmii1_txd1 */
+			0x128 (PIN_OUTPUT | MUX_MODE1)		/* mii1_txd0.rmii1_txd0 */
+			0x13c (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxd1.rmii1_rxd1 */
+			0x140 (PIN_INPUT_PULLDOWN | MUX_MODE1)	/* mii1_rxd0.rmii1_rxd0 */
+			0x144 (PIN_INPUT_PULLDOWN | MUX_MODE0)	/* rmii1_refclk.rmii1_refclk */
 
 			/* Slave 2 */
 			0x40 (PIN_OUTPUT_PULLDOWN | MUX_MODE2)  /* gpmc_a0.rgmii2_tctl */
@@ -130,6 +128,14 @@
 		>;
 	};
 
+	davinci_mdio_default: davinci_mdio_default {
+		pinctrl-single,pins = <
+			/* MDIO */
+			0x148 (PIN_INPUT_PULLUP | SLEWCTRL_FAST | MUX_MODE0)	/* mdio_data.mdio_data */
+			0x14c (PIN_OUTPUT_PULLUP | MUX_MODE0)			/* mdio_clk.mdio_clk */
+		>;
+	};
+
 	pcm051_led_pins: pinmux_pcm051_led_pins {
 		pinctrl-single,pins = <
 			0x80 (MUX_MODE7)
@@ -154,6 +160,7 @@
 
 	eeprom: 24c32@52 {
 		compatible = "atmel,24c32";
+		pagesize = <32>;
 		reg = <0x52>;
 	};
 };
@@ -204,6 +211,15 @@
 	status = "okay";
 };
 
+&davinci_mdio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&davinci_mdio_default>;
+};
+
+&phy_sel {
+	rmii-clock-ext;
+};
+
 &cpsw_emac0 {
 	phy_id = <&davinci_mdio>, <0>;
 	phy-mode = "rmii";
@@ -230,7 +246,7 @@
 	nand: nand@0,0 {
 		reg = <0 0 0>; /* CS0, offset 0 */
 		nand-bus-width = <8>;
-		ti,nand-ecc-opt = "bch8-romcode";
+		ti,nand-ecc-opt = "bch8";
 		gpmc,device-nand = "true";
 		gpmc,device-width = <1>;
 		gpmc,sync-clk-ps = <0>;
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

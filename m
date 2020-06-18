Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZf-0001qQ-6B
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:12 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:10:53 +0200
Message-Id: <20200618091102.30150-7-a.fatoum@pengutronix.de>
In-Reply-To: <20200618091102.30150-1-a.fatoum@pengutronix.de>
References: <20200618091102.30150-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 06/15] ARM: dts: reference nodes to extend by phandles instead
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Many device trees upstream have moved to memory@BASE_ADDRESS for the
memory node instead of a unit-name-less memory node. This has resulted
in breakage[1] in barebox, because some device trees feature an upstream
memory size that's not available in all variants and the barebox device
tree must override it, not create a second correct node next to the broken
one and risk of_add_memory allocating banks with bogus sizes.

To avoid this happening in future, to memory or to other nodes, extension
of nodes should happen via phandles throughout, because a phandle is assumed
to be more stable and if one is removed a compile error results instead
of creating a new node somewhere. For nodes lacking a phandle, we can
use the &{/path} syntax to declare an anonymous phandle that will fail
to compile when the upstream path changes. This is better than having
devices fail to boot at runtime.

[1]: 0d26ce1c11a1 ("ARM: Phytec phyFLEX i.MX6: delete wrong memory node")

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/armada-370-mirabox-bb.dts        |  12 +-
 arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts |   8 +-
 arch/arm/dts/at91-microchip-ksz9477-evb.dts   |   6 +-
 arch/arm/dts/at91-sama5d27_giantboard.dts     |   6 +-
 arch/arm/dts/at91sam9263ek.dts                |  45 +++--
 arch/arm/dts/at91sam9x5ek.dts                 |  30 ++-
 arch/arm/dts/dove-cubox-bb.dts                |   8 +-
 arch/arm/dts/fsl-ls1046a-rdb.dts              | 108 +++++------
 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts     | 171 +++++++++---------
 arch/arm/dts/imx53-guf-vincell-lt.dts         |  10 +-
 arch/arm/dts/imx53-guf-vincell.dts            |  10 +-
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi       |   4 +-
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi  |   4 +-
 arch/arm/dts/imx6ul-litesom.dtsi              |   4 +-
 .../dts/kirkwood-guruplug-server-plus-bb.dts  |   8 +-
 arch/arm/dts/kirkwood-openblocks_a6-bb.dts    |   8 +-
 arch/arm/dts/kirkwood-topkick-bb.dts          |   8 +-
 arch/arm/dts/socfpga_arria10_achilles.dts     |  32 ++--
 arch/arm/dts/stm32mp151.dtsi                  |  25 +--
 arch/arm/dts/stm32mp157a-dk1.dtsi             |  22 +--
 arch/arm/dts/tegra124-jetson-tk1.dts          |   6 +-
 arch/arm/dts/versatile-pb.dts                 |   6 +-
 arch/arm/dts/vf610-zii-cfu1.dts               |   4 +
 arch/arm/dts/vf610-zii-dev-rev-b.dts          |  16 +-
 24 files changed, 248 insertions(+), 313 deletions(-)

diff --git a/arch/arm/dts/armada-370-mirabox-bb.dts b/arch/arm/dts/armada-370-mirabox-bb.dts
index 315678151abc..99263d485446 100644
--- a/arch/arm/dts/armada-370-mirabox-bb.dts
+++ b/arch/arm/dts/armada-370-mirabox-bb.dts
@@ -9,14 +9,8 @@
 	chosen {
 		stdout-path = "/soc/internal-regs/serial@12000";
 	};
+};
 
-	soc {
-		internal-regs {
-			gpio_leds {
-				green_pwr_led {
-					barebox,default-trigger = "heartbeat";
-				};
-			};
-		};
-	};
+&{/soc/internal-regs/gpio_leds/green_pwr_led} {
+	barebox,default-trigger = "heartbeat";
 };
diff --git a/arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts b/arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts
index 5f1a6073814d..b43bac37dd54 100644
--- a/arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts
+++ b/arch/arm/dts/armada-xp-lenovo-ix4-300d-bb.dts
@@ -5,10 +5,6 @@
 
 #include "arm/armada-xp-lenovo-ix4-300d.dts"
 
-/ {
-	gpio-leds {
-		power-led {
-			linux,default-trigger = "heartbeat";
-		};
-	};
+&{/gpio-leds/power-led} {
+	linux,default-trigger = "heartbeat";
 };
diff --git a/arch/arm/dts/at91-microchip-ksz9477-evb.dts b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
index 075cdcd088a5..a0c3ce39bbf7 100644
--- a/arch/arm/dts/at91-microchip-ksz9477-evb.dts
+++ b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
@@ -27,10 +27,10 @@
 			file-path = "barebox.env";
 		};
 	};
+};
 
-	memory {
-		reg = <0x20000000 0x10000000>;
-	};
+&{/memory} {
+	reg = <0x20000000 0x10000000>;
 };
 
 &pinctrl {
diff --git a/arch/arm/dts/at91-sama5d27_giantboard.dts b/arch/arm/dts/at91-sama5d27_giantboard.dts
index 7e48fa18ae71..2ef516bd9e95 100644
--- a/arch/arm/dts/at91-sama5d27_giantboard.dts
+++ b/arch/arm/dts/at91-sama5d27_giantboard.dts
@@ -38,10 +38,10 @@
 			linux,default-trigger = "mmc0";
 		};
 	};
+};
 
-	memory {
-		reg = <0x20000000 0x8000000>;
-	};
+&{/memory} {
+	reg = <0x20000000 0x8000000>;
 };
 
 &slow_xtal {
diff --git a/arch/arm/dts/at91sam9263ek.dts b/arch/arm/dts/at91sam9263ek.dts
index 37f895d6ca73..90131081441e 100644
--- a/arch/arm/dts/at91sam9263ek.dts
+++ b/arch/arm/dts/at91sam9263ek.dts
@@ -7,32 +7,29 @@
 		};
 	};
 
-	ahb {
-		apb {
-			mmc1: mmc@fff84000 {
-				pinctrl-0 = <
-					&pinctrl_board_mmc1
-					&pinctrl_mmc1_clk
-					&pinctrl_mmc1_slot0_cmd_dat0
-					&pinctrl_mmc1_slot0_dat1_3>;
-					cd-gpios = <&pioE 18 GPIO_ACTIVE_HIGH>;
-					status = "okay";
-					slot@0 {
-						reg = <0>;
-						bus-width = <4>;
-						cd-gpios = <&pioE 18 GPIO_ACTIVE_HIGH>;
-						wp-gpios = <&pioE 19 GPIO_ACTIVE_HIGH>;
-					};
-			};
+};
 
-			pinctrl@fffff200 {
-				pinctrl_board_mmc1: mmc1-board {
-					atmel,pins =
-						<AT91_PIOE 18 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH	/* PE18 gpio CD pin pull up and deglitch */
-						 AT91_PIOE 19 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;		/* PE19 gpio WP pin pull up */
-				};
-			};
+&{/ahb/apb/mmc@fff84000} {
+	pinctrl-0 = <
+		&pinctrl_board_mmc1
+		&pinctrl_mmc1_clk
+		&pinctrl_mmc1_slot0_cmd_dat0
+		&pinctrl_mmc1_slot0_dat1_3>;
+		cd-gpios = <&pioE 18 GPIO_ACTIVE_HIGH>;
+		status = "okay";
+		slot@0 {
+			reg = <0>;
+			bus-width = <4>;
+			cd-gpios = <&pioE 18 GPIO_ACTIVE_HIGH>;
+			wp-gpios = <&pioE 19 GPIO_ACTIVE_HIGH>;
 		};
+};
+
+&{/ahb/apb/pinctrl@fffff200} {
+	pinctrl_board_mmc1: mmc1-board {
+		atmel,pins =
+			<AT91_PIOE 18 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH	/* PE18 gpio CD pin pull up and deglitch */
+			 AT91_PIOE 19 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP>;		/* PE19 gpio WP pin pull up */
 	};
 };
 
diff --git a/arch/arm/dts/at91sam9x5ek.dts b/arch/arm/dts/at91sam9x5ek.dts
index bc2a279709d3..c753268fb994 100644
--- a/arch/arm/dts/at91sam9x5ek.dts
+++ b/arch/arm/dts/at91sam9x5ek.dts
@@ -14,25 +14,23 @@
 		mmc0 = &mmc0;
 		mmc1 = &mmc1;
 	};
+};
 
-	i2c-gpio-0 {
-		status = "okay";
-	};
+&{/i2c-gpio-0} {
+	status = "okay";
+};
 
-	leds {
-		/*
-		 * PB18 has a resource conflict since it is both used
-                 * as a heartbeat LED and 1-wire bus in the kernel
-                 * device tree. Because 1-wire EEPROMs contains
-                 * importatnt revision information we move heartbeat
-                 * to PD21 and remove the original pb18 node
-		 */
-		/delete-node/ pb18;
+/*
+ * PB18 has a resource conflict since it is both used
+ * as a heartbeat LED and 1-wire bus in the kernel
+ * device tree. Because 1-wire EEPROMs contains
+ * importatnt revision information we move heartbeat
+ * to PD21 and remove the original pb18 node
+ */
+/delete-node/ &{/leds/pb18};
 
-		pd21 {
-			linux,default-trigger = "heartbeat";
-		};
-	};
+&{/leds/pd21} {
+	linux,default-trigger = "heartbeat";
 };
 
 &spi0 {
diff --git a/arch/arm/dts/dove-cubox-bb.dts b/arch/arm/dts/dove-cubox-bb.dts
index 83e1d5df50da..06966d9c2ee2 100644
--- a/arch/arm/dts/dove-cubox-bb.dts
+++ b/arch/arm/dts/dove-cubox-bb.dts
@@ -9,10 +9,8 @@
 	chosen {
 		stdout-path = &uart0;
 	};
+};
 
-	leds {
-		power {
-			barebox,default-trigger = "heartbeat";
-		};
-	};
+&{/leds/power} {
+		barebox,default-trigger = "heartbeat";
 };
diff --git a/arch/arm/dts/fsl-ls1046a-rdb.dts b/arch/arm/dts/fsl-ls1046a-rdb.dts
index 23e43701f304..c211b26ae90e 100644
--- a/arch/arm/dts/fsl-ls1046a-rdb.dts
+++ b/arch/arm/dts/fsl-ls1046a-rdb.dts
@@ -61,72 +61,52 @@
 
 /delete-node/ &non_existent_eeprom;
 
-&fman0 {
-	ethernet@e0000 {
-		status = "disabled";
-	};
-
-	ethernet@e2000 {
-		status = "disabled";
-	};
-
-	ethernet@e4000 {
-		phy-mode = "rgmii-id";
-	};
-
-	ethernet@e6000 {
-		phy-mode = "rgmii-id";
-	};
-
-	ethernet@e8000 {
-	};
-
-	ethernet@ea000 {
-	};
-
-	ethernet@f0000 {
-	};
+&enet0 {
+	status = "disabled";
+};
 
-	ethernet@f2000 {
-	};
+&enet1 {
+	status = "disabled";
+};
 
-	mdio@fc000 {
-	};
+&enet2 {
+	phy-mode = "rgmii-id";
+};
 
-	mdio@fd000 {
-	};
+&enet3 {
+	phy-mode = "rgmii-id";
+};
 
-	mdio@e1000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@e1000} {
+	status = "disabled";
+};
 
-	mdio@e3000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@e3000} {
+	status = "disabled";
+};
 
-	mdio@e5000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@e5000} {
+	status = "disabled";
+};
 
-	mdio@e7000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@e7000} {
+	status = "disabled";
+};
 
-	mdio@e9000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@e9000} {
+	status = "disabled";
+};
 
-	mdio@eb000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@eb000} {
+	status = "disabled";
+};
 
-	mdio@f1000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@f1000} {
+	status = "disabled";
+};
 
-	mdio@f3000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@f3000} {
+	status = "disabled";
 };
 
 &usb0 {
@@ -143,16 +123,14 @@
 	dr_mode = "host";
 };
 
-&soc {
-	pcie1: pcie@3400000 {
-		status = "okay";
-	};
+&{/soc/pcie@3400000} {
+	status = "okay";
+};
 
-	pcie2: pcie@3500000 {
-		status = "okay";
-	};
+&{/soc/pcie@3500000} {
+	status = "okay";
+};
 
-	pcie3: pcie@3600000 {
-		status = "okay";
-	};
+&{/soc/pcie@3600000} {
+	status = "okay";
 };
diff --git a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
index 7b17fe2210f4..7f9a764a8259 100644
--- a/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
+++ b/arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts
@@ -225,121 +225,120 @@
 
 &fman0 {
 	status = "okay";
+};
 
-	ethernet@e0000 { /* EMAC.1 */
-		phy-connection-type = "sgmii";
+&enet0 { /* EMAC.1 */
+	phy-connection-type = "sgmii";
+};
 
-	};
+&enet1 { /* EMAC.2 */
+	phy-connection-type = "sgmii";
+};
 
-	ethernet@e2000 { /* EMAC.2 */
-		phy-connection-type = "sgmii";
-	};
+&enet2 { /* EMAC.3 */
+	phy-handle = <&rgmii_phy1>;
+	phy-connection-type = "rgmii";
+	phy-mode = "rgmii-id";
+};
 
-	ethernet@e4000 { /* EMAC.3 */
-		phy-handle = <&rgmii_phy1>;
-		phy-connection-type = "rgmii";
-		phy-mode = "rgmii-id";
-	};
+&enet3 { /* EMAC.4 */
+	phy-handle = <&rgmii_phy2>;
+	phy-connection-type = "rgmii";
+	phy-mode = "rgmii-id";
+};
 
-	ethernet@e6000 { /* EMAC.4 */
-		phy-handle = <&rgmii_phy2>;
-		phy-connection-type = "rgmii";
-		phy-mode = "rgmii-id";
-	};
+&enet4 { /* EMAC.5 */
+	phy-connection-type = "sgmii";
+};
 
-	ethernet@e8000 { /* EMAC.5 */
-		phy-connection-type = "sgmii";
-	};
+&enet5 { /* EMAC.6 */
+	phy-connection-type = "sgmii";
+};
 
-	ethernet@ea000 { /* EMAC.6 */
-		phy-connection-type = "sgmii";
-	};
+&enet6 { /* EMAC.9 */
+	phy-connection-type = "sgmii";
+};
 
-	ethernet@f0000 { /* EMAC.9 */
-		phy-connection-type = "sgmii";
-	};
+&enet7 { /* EMAC.10 */
+	phy-connection-type = "sgmii";
+};
 
-	ethernet@f2000 { /* EMAC.10 */
-		phy-connection-type = "sgmii";
-	};
+&{/soc/fman@1a00000/mdio@e1000} {
+	status = "disabled";
+};
 
-	mdio@e1000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@e3000} {
+	status = "disabled";
+};
 
-	mdio@e3000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@e5000} {
+	status = "disabled";
+};
 
-	mdio@e5000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@e7000} {
+	status = "disabled";
+};
 
-	mdio@e7000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@e9000} {
+	status = "disabled";
+};
 
-	mdio@e9000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@eb000} {
+	status = "disabled";
+};
 
-	mdio@eb000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@f1000} {
+	status = "disabled";
+};
 
-	mdio@f1000 {
-		status = "disabled";
-	};
+&{/soc/fman@1a00000/mdio@f3000} {
+	status = "disabled";
+};
 
-	mdio@f3000 {
-		status = "disabled";
+&mdio0 {
+	rgmii_phy1: ethernet-phy@0e {
+		reg = <0x0e>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
+		ti,tx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
+		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
 	};
 
-	mdio@fc000 {
-		rgmii_phy1: ethernet-phy@0e {
-			reg = <0x0e>;
-			ti,rx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
-			ti,tx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
-			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
-		};
-
-		rgmii_phy2: ethernet-phy@0c {
-			reg = <0x0c>;
-			ti,rx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
-			ti,tx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
-			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
-		};
-
-		qsgmii1_phy1: ethernet-phy@1c {
-			reg = <0x1c>;
-		};
+	rgmii_phy2: ethernet-phy@0c {
+		reg = <0x0c>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
+		ti,tx-internal-delay = <DP83867_RGMIIDCTL_1_50_NS>;
+		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_8_B_NIB>;
+	};
 
-		qsgmii1_phy2: ethernet-phy@1d {
-			reg = <0x1d>;
-		};
+	qsgmii1_phy1: ethernet-phy@1c {
+		reg = <0x1c>;
+	};
 
-		qsgmii2_phy1: ethernet-phy@00 {
-			reg = <0x00>;
-		};
+	qsgmii1_phy2: ethernet-phy@1d {
+		reg = <0x1d>;
+	};
 
-		qsgmii2_phy2: ethernet-phy@01 {
-			reg = <0x01>;
-		};
+	qsgmii2_phy1: ethernet-phy@00 {
+		reg = <0x00>;
+	};
 
-		qsgmii2_phy3: ethernet-phy@02 {
-			reg = <0x02>;
-		};
+	qsgmii2_phy2: ethernet-phy@01 {
+		reg = <0x01>;
+	};
 
-		qsgmii2_phy4: ethernet-phy@03 {
-			reg = <0x03>;
-		};
+	qsgmii2_phy3: ethernet-phy@02 {
+		reg = <0x02>;
 	};
 
-	mdio@fd000 {
-		status = "disabled";
+	qsgmii2_phy4: ethernet-phy@03 {
+		reg = <0x03>;
 	};
 };
 
+&xmdio0 {
+	status = "disabled";
+};
+
 &qflash0 {
 	partitions {
 		#address-cells = <1>;
diff --git a/arch/arm/dts/imx53-guf-vincell-lt.dts b/arch/arm/dts/imx53-guf-vincell-lt.dts
index 4c6205135aee..0cc6ffc288f7 100644
--- a/arch/arm/dts/imx53-guf-vincell-lt.dts
+++ b/arch/arm/dts/imx53-guf-vincell-lt.dts
@@ -30,12 +30,6 @@
 		};
 	};
 
-	clocks {
-		ckih1 {
-			clock-frequency = <0>;
-		};
-	};
-
 	panel: panel {
 		compatible = "giantplus,gpg482739qs5", "simple-panel";
 		power-supply = <&reg_panel>;
@@ -119,6 +113,10 @@
 	};
 };
 
+&{/clocks/ckih1} {
+	clock-frequency = <0>;
+};
+
 &audmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_audmux>;
diff --git a/arch/arm/dts/imx53-guf-vincell.dts b/arch/arm/dts/imx53-guf-vincell.dts
index d34b59f4d31f..9686a2cb579f 100644
--- a/arch/arm/dts/imx53-guf-vincell.dts
+++ b/arch/arm/dts/imx53-guf-vincell.dts
@@ -25,12 +25,6 @@
 		stdout-path = &uart2;
 	};
 
-	clocks {
-		ckih1 {
-			clock-frequency = <0>;
-		};
-	};
-
 	panel: panel {
 		compatible = "ampire,am800480r3tmqwa1h", "simple-panel";
 		enable-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
@@ -74,6 +68,10 @@
 	};
 };
 
+&{/clocks/ckih1} {
+	clock-frequency = <0>;
+};
+
 &audmux {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_audmux>;
diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 3cb8b3782a0f..b83511cb011f 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -12,8 +12,6 @@
 #include <arm/imx6qdl-phytec-pfla02.dtsi>
 
 / {
-	/delete-node/ memory@10000000;
-
 	chosen {
 		environment-nand {
 			compatible = "barebox,environment";
@@ -53,6 +51,8 @@
 	};
 };
 
+/delete-node/ &{/memory@10000000};
+
 &ecspi3 {
 	flash: flash@0 {
 		partitions {
diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index e99846c2b67f..2fb920945f8a 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -33,10 +33,10 @@
 			status = "disabled";
 		};
 	};
-
-	/delete-node/ memory@10000000;
 };
 
+/delete-node/ &{/memory@10000000};
+
 &fec {
 	/delete-property/ phy-supply;
 	phy-reset-duration = <10>; /* in msecs */
diff --git a/arch/arm/dts/imx6ul-litesom.dtsi b/arch/arm/dts/imx6ul-litesom.dtsi
index 8b73bfdd6f54..3776d160ca46 100644
--- a/arch/arm/dts/imx6ul-litesom.dtsi
+++ b/arch/arm/dts/imx6ul-litesom.dtsi
@@ -3,6 +3,4 @@
  * to dynamic memory size detection based on DDR controller settings
  */
 
-/ {
-	/delete-node/ memory@80000000;
-};
+/delete-node/ &{/memory@80000000};
diff --git a/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts b/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
index aba7c06160d0..1be03a7ac0d3 100644
--- a/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
+++ b/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
@@ -5,10 +5,6 @@
 
 #include "arm/kirkwood-guruplug-server-plus.dts"
 
-/ {
-	gpio-leds {
-		health-r {
-			barebox,default-trigger = "heartbeat";
-		};
-	};
+&{/gpio-leds/health-r} {
+	barebox,default-trigger = "heartbeat";
 };
diff --git a/arch/arm/dts/kirkwood-openblocks_a6-bb.dts b/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
index 42bfb07c949c..b13ab2ab93f0 100644
--- a/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
+++ b/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
@@ -4,10 +4,6 @@
 
 #include "arm/kirkwood-openblocks_a6.dts"
 
-/ {
-	gpio-leds {
-		led-green {
-			barebox,default-trigger = "heartbeat";
-		};
-	};
+&{/gpio-leds/led-green} {
+	barebox,default-trigger = "heartbeat";
 };
diff --git a/arch/arm/dts/kirkwood-topkick-bb.dts b/arch/arm/dts/kirkwood-topkick-bb.dts
index 20b74b111d91..c70d654c52cd 100644
--- a/arch/arm/dts/kirkwood-topkick-bb.dts
+++ b/arch/arm/dts/kirkwood-topkick-bb.dts
@@ -5,10 +5,6 @@
 
 #include "arm/kirkwood-topkick.dts"
 
-/ {
-	gpio-leds {
-		system {
-			barebox,default-trigger = "heartbeat";
-		};
-	};
+&{/gpio-leds/system} {
+	barebox,default-trigger = "heartbeat";
 };
diff --git a/arch/arm/dts/socfpga_arria10_achilles.dts b/arch/arm/dts/socfpga_arria10_achilles.dts
index 4c6460fb60aa..2fce0114c89a 100644
--- a/arch/arm/dts/socfpga_arria10_achilles.dts
+++ b/arch/arm/dts/socfpga_arria10_achilles.dts
@@ -124,26 +124,22 @@
 			default_attempts = <3>;
 		};
 	};
+};
 
-	soc {
-		clkmgr@ffd04000 {
-			clocks {
-				osc1 {
-					clock-frequency = <25000000>;
-				};
+&{/soc/clkmgr@ffd04000/clocks/osc1} {
+	clock-frequency = <25000000>;
+};
 
-				cb_intosc_hs_div2_clk {
-					clock-frequency = <0>;
-				};
-				cb_intosc_ls_clk {
-					clock-frequency = <60000000>;
-				};
-				f2s_free_clk {
-					clock-frequency = <200000000>;
-				};
-			};
-		};
-	};
+&{/soc/clkmgr@ffd04000/clocks/cb_intosc_hs_div2_clk} {
+	clock-frequency = <0>;
+};
+
+&{/soc/clkmgr@ffd04000/clocks/cb_intosc_ls_clk} {
+	clock-frequency = <60000000>;
+};
+
+&{/soc/clkmgr@ffd04000/clocks/f2s_free_clk} {
+	clock-frequency = <200000000>;
 };
 
 &gmac1 {
diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index a647694405e3..5ff3b96fae4a 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -1,10 +1,5 @@
 
 / {
-	clocks {
-		/* Needed to let barebox find the clock nodes */
-		compatible = "simple-bus";
-	};
-
 	aliases {
 		gpio0 = &gpioa;
 		gpio1 = &gpiob;
@@ -35,15 +30,21 @@
 		pwm17 = &{/soc/timer@44008000/pwm};
 	};
 
-	psci {
+};
+
+&{/clocks} {
+	/* Needed to let barebox find the clock nodes */
+	compatible = "simple-bus";
+};
+
+&{/psci} {
 		compatible = "arm,psci-0.2";
-	};
+};
 
-	soc {
-		memory-controller@5a003000 {
-			compatible = "st,stm32mp1-ddr";
-			reg = <0x5a003000 0x1000>;
-		};
+&{/soc} {
+	memory-controller@5a003000 {
+		compatible = "st,stm32mp1-ddr";
+		reg = <0x5a003000 0x1000>;
 	};
 };
 
diff --git a/arch/arm/dts/stm32mp157a-dk1.dtsi b/arch/arm/dts/stm32mp157a-dk1.dtsi
index baaf60b18fa8..3a10ff9cf9b3 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dtsi
+++ b/arch/arm/dts/stm32mp157a-dk1.dtsi
@@ -14,17 +14,17 @@
 			device-path = &sdmmc1, "partname:barebox-environment";
 		};
 	};
+};
 
-	led {
-		red {
-			label = "error";
-			gpios = <&gpioa 13 GPIO_ACTIVE_LOW>;
-			default-state = "off";
-			status = "okay";
-		};
-
-		blue {
-			default-state = "on";
-		};
+&{/led} {
+	red {
+		label = "error";
+		gpios = <&gpioa 13 GPIO_ACTIVE_LOW>;
+		default-state = "off";
+		status = "okay";
 	};
 };
+
+&{/led/blue} {
+	default-state = "on";
+};
diff --git a/arch/arm/dts/tegra124-jetson-tk1.dts b/arch/arm/dts/tegra124-jetson-tk1.dts
index 00eef6cacd19..7fd97b029e94 100644
--- a/arch/arm/dts/tegra124-jetson-tk1.dts
+++ b/arch/arm/dts/tegra124-jetson-tk1.dts
@@ -7,11 +7,7 @@
 
 		environment {
 			compatible = "barebox,environment";
-			device-path = &emmc, "partname:boot1";
+			device-path = &{/sdhci@700b0600}, "partname:boot1"; /* eMMC */
 		};
 	};
-
-	/* eMMC */
-	emmc: sdhci@700b0600 {
-	};
 };
diff --git a/arch/arm/dts/versatile-pb.dts b/arch/arm/dts/versatile-pb.dts
index 8c80f8c2935e..d374f5429120 100644
--- a/arch/arm/dts/versatile-pb.dts
+++ b/arch/arm/dts/versatile-pb.dts
@@ -3,8 +3,8 @@
 / {
 	model = "ARM Versatile PB";
 	compatible = "arm,versatile-pb";
+};
 
-	memory {
-		reg = <0x0 0x04000000>;
-	};
+&{/memory} {
+	reg = <0x0 0x04000000>;
 };
diff --git a/arch/arm/dts/vf610-zii-cfu1.dts b/arch/arm/dts/vf610-zii-cfu1.dts
index 70cd9d1ba9b7..922693061251 100644
--- a/arch/arm/dts/vf610-zii-cfu1.dts
+++ b/arch/arm/dts/vf610-zii-cfu1.dts
@@ -26,6 +26,10 @@
 	};
 };
 
+&{/gpio-leds/led-status} {
+	linux,default-trigger = "heartbeat";
+};
+
 &i2c0 {
 	fiber_eeprom0: eeprom@50 {
 		compatible = "atmel,24c04";
diff --git a/arch/arm/dts/vf610-zii-dev-rev-b.dts b/arch/arm/dts/vf610-zii-dev-rev-b.dts
index abc5237080c6..2949042bc34b 100644
--- a/arch/arm/dts/vf610-zii-dev-rev-b.dts
+++ b/arch/arm/dts/vf610-zii-dev-rev-b.dts
@@ -8,16 +8,12 @@
 
 #include "vf610-zii-dev.dtsi"
 
-/ {
-	spi0 {
-		flash@0 {
-			#address-cells = <1>;
-			#size-cells = <0>;
+&{/spi0/flash@0} {
+	#address-cells = <1>;
+	#size-cells = <0>;
 
-			partition@0 {
-				label = "bootloader";
-				reg = <0x0 0x100000>;
-			};
-		};
+	partition@0 {
+		label = "bootloader";
+		reg = <0x0 0x100000>;
 	};
 };
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

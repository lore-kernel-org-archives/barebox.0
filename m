Delivery-date: Mon, 26 Sep 2022 10:20:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjLQ-00F9lk-V6
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 10:20:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjLO-0001qD-IA
	for lore@pengutronix.de; Mon, 26 Sep 2022 10:20:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Ai/CsvLXQM0NiAv9sFQYEdURkJUzAgWAxuvykqt6Kw=; b=rA/D0sAwvmOJX+db5DXudT7GAA
	G9/LZPQtTnvp+sdp8KMoq/3M5YuoJIhJaQq4GgtYwld0XqScZ5jGQYfh1Vy7DixHFP6zMLQwwqHUq
	hmjxd0dGvEoRTZ1JOqyvvooM2RVwUEpbM0M4PoGFR7puGmEc9sfYo/l4yvqMLA1FD0kfH1ZUTlCFy
	NteC5XE386yjT2LuLjpXLQb2Bh1Z0tnYD57yiUJNodUTIJT1RFxQwQt4IPUgeTPUNsaJf3IIYJAdp
	unAzhgsryuJOKmQdFSI5nZ+SdjpdgWyI43utC8hSUWFLD9lCPVekwFWWUmac6djWpJcuRfHehVcac
	wBWPjp2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjK0-0034ex-56; Mon, 26 Sep 2022 08:18:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJE-00347m-9M
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 08:17:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJB-0001Dp-BR; Mon, 26 Sep 2022 10:17:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJC-002zkG-0p; Mon, 26 Sep 2022 10:17:44 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJ9-000K2b-6B; Mon, 26 Sep 2022 10:17:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Sep 2022 10:17:39 +0200
Message-Id: <20220926081740.76968-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220926081740.76968-1-o.rempel@pengutronix.de>
References: <20220926081740.76968-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_011748_551846_84F11DCE 
X-CRM114-Status: GOOD (  17.04  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 7/8] ARM: dts: Skov i.MX6: start using mainlined kernel dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Skov i.MX6 device tree is mainline now, so now we can start using it in
the barebox.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6q-skov-imx6.dts    |   4 -
 arch/arm/dts/imx6qdl-skov-imx6.dtsi | 233 +++-------------------------
 2 files changed, 25 insertions(+), 212 deletions(-)

diff --git a/arch/arm/dts/imx6q-skov-imx6.dts b/arch/arm/dts/imx6q-skov-imx6.dts
index fea84cb498..a14ddbf6db 100644
--- a/arch/arm/dts/imx6q-skov-imx6.dts
+++ b/arch/arm/dts/imx6q-skov-imx6.dts
@@ -17,10 +17,6 @@
 / {
 	model = "Skov IMX6";
 	compatible = "skov,imx6", "fsl,imx6q";
-
-	chosen {
-		stdout-path = &uart2;
-	};
 };
 
 &i2c2 {
diff --git a/arch/arm/dts/imx6qdl-skov-imx6.dtsi b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
index 371a931e53..f4610ee1e7 100644
--- a/arch/arm/dts/imx6qdl-skov-imx6.dtsi
+++ b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
@@ -9,7 +9,7 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-#include <dt-bindings/gpio/gpio.h>
+#include <arm/imx6qdl-skov-cpu.dtsi>
 
 / {
 	aliases {
@@ -30,29 +30,6 @@
 		};
 	};
 
-	leds {
-		compatible = "gpio-leds";
-
-		led0: D1 {
-			label = "D1";
-			gpios = <&gpio1 2 0>;
-			default-state = "on";
-			linux,default-trigger = "heartbeat";
-		};
-
-		led1: D2 {
-			label = "D2";
-			gpios = <&gpio1 0 0>;
-			default-state = "off";
-		};
-
-		led2: D3 {
-			label = "D3";
-			gpios = <&gpio1 4 0>;
-			default-state = "on";
-		};
-	};
-
 	/* State: mutable part */
 	state: state {
 		magic = <0x34a0fc27>;
@@ -241,20 +218,6 @@
 	};
 };
 
-&pwm2 {
-	/* used for backlight brightness */
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_pwm2_2>;
-	status = "okay";
-};
-
-&pwm3 {
-	/* used for LCD contrast control */
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_pwm3_2>;
-	status = "okay";
-};
-
 &i2c2 {
 	clock-frequency = <100000>;
 	pinctrl-names = "default";
@@ -278,21 +241,6 @@
 	status = "okay";
 };
 
-/* no usbh2 */
-&usbphynop1 {
-	status = "disabled";
-};
-
-/* no usbh3 */
-&usbphynop2 {
-	status = "disabled";
-};
-
-&usbotg {
-	disable-over-current;
-	status = "okay";
-};
-
 &iomuxc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_hog>;
@@ -300,10 +248,6 @@
 	pinctrl_hog: hoggrp {
 		/* we need a few pins as GPIOs */
 		fsl,pins = <
-			/* MMC IO voltage select */
-			MX6QDL_PAD_GPIO_18__GPIO7_IO13 0x40000058
-			/* MMC Power Supply Switch (since revision C)
-			MX6QDL_PAD_SD3_RST__GPIO7_IO08 0x40000058
 			/* Backlight Power Supply Switch (since revision B)
 			MX6QDL_PAD_RGMII_TD3__GPIO6_IO23 0x40000058
 			/* Backlight Brightness */
@@ -313,70 +257,6 @@
 		>;
 	};
 
-	pinctrl_uart2: uart2grp {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_D26__UART2_TX_DATA 0x1b0b1
-			MX6QDL_PAD_EIM_D27__UART2_RX_DATA 0x1b0b1
-		>;
-	};
-
-	pinctrl_ecspi1: ecspi1grp {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_D17__ECSPI1_MISO 0x100b1
-			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI 0x100b1
-			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK 0x100b1
-			MX6QDL_PAD_EIM_D24__GPIO3_IO24 0x40000058 /* CS# signal */
-		>;
-	};
-
-	/* pins for eth0 */
-	pinctrl_enet: enetgrp {
-		fsl,pins = <
-			MX6QDL_PAD_ENET_MDIO__ENET_MDIO 0x100b0
-			MX6QDL_PAD_ENET_MDC__ENET_MDC 0x100b0
-			MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN 0x100b0
-			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN 0x100b0
-			MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0 0x100b0
-			MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1 0x100b0
-			MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0 0x100b0
-			MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1 0x100b0
-			MX6QDL_PAD_GPIO_16__ENET_REF_CLK 0x400000c0
-		>;
-	};
-
-	pinctrl_usdhc3: usdhc3grp {
-		fsl,pins = <
-			MX6QDL_PAD_SD3_CMD__SD3_CMD 0x17059
-			MX6QDL_PAD_SD3_CLK__SD3_CLK 0x10059
-			MX6QDL_PAD_SD3_DAT0__SD3_DATA0 0x17059
-			MX6QDL_PAD_SD3_DAT1__SD3_DATA1 0x17059
-			MX6QDL_PAD_SD3_DAT2__SD3_DATA2 0x17059
-			MX6QDL_PAD_SD3_DAT3__SD3_DATA3 0x17059
-			MX6QDL_PAD_SD3_DAT4__GPIO7_IO01 0x1b040 /* WP */
-			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00 0x1b040 /* CD */
-		>;
-	};
-
-	pinctrl_gpmi_nand: gpminandgrp {
-		fsl,pins = <
-			MX6QDL_PAD_NANDF_CLE__NAND_CLE 0xb0b1
-			MX6QDL_PAD_NANDF_ALE__NAND_ALE 0xb0b1
-			MX6QDL_PAD_NANDF_RB0__NAND_READY_B 0xb000
-			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B 0xb0b1
-			MX6QDL_PAD_NANDF_CS1__NAND_CE1_B 0xb0b1
-			MX6QDL_PAD_SD4_CMD__NAND_RE_B 0xb0b1
-			MX6QDL_PAD_SD4_CLK__NAND_WE_B 0xb0b1
-			MX6QDL_PAD_NANDF_D0__NAND_DATA00 0xb0b1
-			MX6QDL_PAD_NANDF_D1__NAND_DATA01 0xb0b1
-			MX6QDL_PAD_NANDF_D2__NAND_DATA02 0xb0b1
-			MX6QDL_PAD_NANDF_D3__NAND_DATA03 0xb0b1
-			MX6QDL_PAD_NANDF_D4__NAND_DATA04 0xb0b1
-			MX6QDL_PAD_NANDF_D5__NAND_DATA05 0xb0b1
-			MX6QDL_PAD_NANDF_D6__NAND_DATA06 0xb0b1
-			MX6QDL_PAD_NANDF_D7__NAND_DATA07 0xb0b1
-		>;
-	};
-
 	pinctrl_i2c2_2: i2c2grp-2 {
 		fsl,pins = <
 			/* internal 22 k pull up required */
@@ -424,18 +304,6 @@
 			MX6QDL_PAD_RGMII_TD3__GPIO6_IO23	0x40000058
 		>;
 	};
-
-	pinctrl_pwm2_2: pwm2grp-2 {
-		fsl,pins = <
-			MX6QDL_PAD_GPIO_1__PWM2_OUT		0x00058
-		>;
-	};
-
-	pinctrl_pwm3_2: pwm3grp-2 {
-		fsl,pins = <
-			MX6QDL_PAD_SD1_DAT1__PWM3_OUT		0x00058
-		>;
-	};
 };
 
 &clks {
@@ -445,43 +313,34 @@
 				 <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
 };
 
-/* console */
-&uart2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_uart2>;
-	status = "okay";
-};
-
 /* spi */
 &ecspi1 {
-	fsl,spi-num-chipselects = <1>;
-	cs-gpios = <&gpio3 24 0>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_ecspi1>;
-	status = "okay";
+	flash@0 {
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
 
-	norflash: m25p80@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "jedec,spi-nor";
-		spi-max-frequency = <54000000>;
-		reg = <0>;
-	};
-};
+			partition@0 {
+				label = "barebox";
+				reg = <0x0 0x100000>;
+			};
 
-/* eth0 */
-&fec {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_enet>;
-	phy-mode = "rmii";
-	status = "okay";
-	phy-reset-gpios = <&gpio1 5 0>;
-	phy-reset-duration = <100>;
-	#address-cells = <0>;
-	#size-cells = <1>;
-	fixed-link {
-		speed = <100>;
-		full-duplex;
+			/* space left to let barebox grow */
+
+			/* placed near the end of the NOR memory */
+			barebox_env: partition@780000 {
+				label = "barebox-environment";
+				reg = <0x780000 0x40000>;
+			};
+
+			/* placed at the end of the NOR memory */
+			state_storage: partition@7C0000 {
+				label = "barebox-state";
+				/* four times mirrored */
+				reg = <0x7C0000 0x40000>;
+			};
+		};
 	};
 };
 
@@ -506,21 +365,7 @@
 	status = "okay";
 };
 
-&usdhc3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_usdhc3>;
-	wp-gpios = <&gpio7 1 0>;
-	cd-gpios = <&gpio7 0 0>;
-	status = "okay";
-	fsl,delay-line;
-};
-
 &gpmi {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_gpmi_nand>;
-	nand-on-flash-bbt;
-	status = "okay";
-
 	partitions {
 		compatible = "fixed-partitions";
 		#address-cells = <1>;
@@ -533,34 +378,6 @@
 	};
 };
 
-/* define the SPI based 8 MiB NOR flash layout */
-&norflash {
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0x100000>;
-		};
-
-		/* space left to let barebox grow */
-
-		/* placed near the end of the NOR memory */
-		barebox_env: partition@780000 {
-			label = "barebox-environment";
-			reg = <0x780000 0x40000>;
-		};
-
-		/* placed at the end of the NOR memory */
-		state_storage: partition@7C0000 {
-			label = "barebox-state";
-			reg = <0x7C0000 0x40000>; /* four times mirrored */
-		};
-	};
-};
-
 &ocotp {
 	barebox,provide-mac-address = <&fec 0x620>;
 };
-- 
2.30.2




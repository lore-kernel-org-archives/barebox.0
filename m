Delivery-date: Wed, 20 Sep 2023 13:30:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivPr-004ZwB-G5
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 13:30:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivPo-0006O0-OM
	for lore@pengutronix.de; Wed, 20 Sep 2023 13:30:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EzoSdP7foq4vXULnVYxDa87yDTCuR1gbCglYV5FX474=; b=iorvRRQJ+YQdxJjqEvNkwSIL4n
	y7UJovplKMW2RAI/yeLe3Yw64SJgLJCb1YxFe8mKGgyXkHov7ivJeWMSqDIqJNOdd2TfWUeUOCH10
	DyfpRRHeGUdeZn1fjZzjUZ9zxT60hQqmUfa0Bn73fhb8Lpk4NrYjue+QS0gh/x/osLrX90N2/nBuS
	QV7cRigFNQ7bIrlaIIfnTHolanntuHgV0EFXanQFhWJBvhkLKC+BCLdb3RrGGYbMXDFc4uXzP48Ev
	FsKLavszgLiyf33FzK5ip6vbcGo3FsOKq7owTM0YbMRog97ETPNmSPXHxEve/tCR+kugsJ37/NyuM
	2qPVEdhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qivOk-002sJc-1O;
	Wed, 20 Sep 2023 11:29:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qivOg-002sIe-1v
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 11:29:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qivOf-00067c-Gd; Wed, 20 Sep 2023 13:29:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qivOf-007fuZ-4N; Wed, 20 Sep 2023 13:29:33 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qivOe-00Bhzt-Rc; Wed, 20 Sep 2023 13:29:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Sep 2023 13:29:32 +0200
Message-Id: <20230920112932.2790725-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_042934_785480_071C344C 
X-CRM114-Status: GOOD (  12.59  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: phycore-stm32mp15: Use upstream dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The phycore-stm32mp15 board has long been mainlined. Switch the
board to use the upstream dts files.

This at least has the effect that now the PMIC is probed as our
downstream dts hasn't enabled the i2c4 node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../dts/stm32mp157c-phycore-stm32mp1-3.dts    |  16 +-
 ...stm32mp157c-phycore-stm32mp15-pinctrl.dtsi |  92 ------
 .../stm32mp157c-phycore-stm32mp15-som.dtsi    | 271 ------------------
 3 files changed, 2 insertions(+), 377 deletions(-)
 delete mode 100644 arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
 delete mode 100644 arch/arm/dts/stm32mp157c-phycore-stm32mp15-som.dtsi

diff --git a/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts b/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
index a34a2a337f..02540b560e 100644
--- a/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
+++ b/arch/arm/dts/stm32mp157c-phycore-stm32mp1-3.dts
@@ -6,12 +6,8 @@
 
 /dts-v1/;
 
-#include <dt-bindings/gpio/gpio.h>
-#include <arm/st/stm32mp157.dtsi>
-#include <arm/st/stm32mp15xc.dtsi>
-#include <arm/st/stm32mp15-pinctrl.dtsi>
-#include <arm/st/stm32mp15xxac-pinctrl.dtsi>
-#include "stm32mp157c-phycore-stm32mp15-som.dtsi"
+#include <arm/st/stm32mp157c-phycore-stm32mp1-3.dts>
+#include "stm32mp151.dtsi"
 
 / {
 	model = "PHYTEC phyCORE-STM32MP1-3 SoM";
@@ -31,11 +27,3 @@ environment-emmc {
 		};
 	};
 };
-
-&sdmmc1 {
-        status = "okay";
-};
-
-&sdmmc2 {
-        status = "okay";
-};
diff --git a/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi b/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
deleted file mode 100644
index aa41006c23..0000000000
--- a/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
+++ /dev/null
@@ -1,92 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
-/*
- * Copyright (C) Phytec GmbH 2019-2020 - All Rights Reserved
- * Author: Dom VOVARD <dom.vovard@linrt.com>.
- */
-#include <arm/st/stm32mp15-pinctrl.dtsi>
-
-&ethernet0_rgmii_pins_a {
-	pins1 {
-		pinmux = <STM32_PINMUX('G', 4, AF11)>,	/* ETH_RGMII_GTX_CLK */
-			 <STM32_PINMUX('G', 13, AF11)>, /* ETH_RGMII_TXD0 */
-			 <STM32_PINMUX('G', 14, AF11)>, /* ETH_RGMII_TXD1 */
-			 <STM32_PINMUX('C', 2, AF11)>,	/* ETH_RGMII_TXD2 */
-			 <STM32_PINMUX('E', 2, AF11)>,	/* ETH_RGMII_TXD3 */
-			 <STM32_PINMUX('B', 11, AF11)>, /* ETH_RGMII_TX_CTL */
-			 <STM32_PINMUX('A', 2, AF11)>,	/* ETH_MDIO */
-			 <STM32_PINMUX('C', 1, AF11)>;	/* ETH_MDC */
-		bias-disable;
-		drive-push-pull;
-		slew-rate = <2>;
-	};
-	pins2 {
-		pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
-			 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
-			 <STM32_PINMUX('H', 6, AF11)>, /* ETH_RGMII_RXD2 */
-			 <STM32_PINMUX('B', 1, AF11)>, /* ETH_RGMII_RXD3 */
-			 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RGMII_RX_CLK */
-			 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RGMII_RX_CTL */
-		bias-disable;
-	};
-};
-
-&pinctrl {
-	sdmmc1_dir_pins_b: sdmmc1-dir-1 {
-		pins1 {
-			pinmux = <STM32_PINMUX('E', 12, AF8)>, /* SDMMC1_D0DIR */
-				 <STM32_PINMUX('E', 14, AF11)>, /* SDMMC1_D123DIR */
-				 <STM32_PINMUX('B', 9, AF11)>; /* SDMMC1_CDIR */
-			slew-rate = <3>;
-			drive-push-pull;
-			bias-pull-up;
-		};
-		pins2 {
-			pinmux = <STM32_PINMUX('E', 4, AF8)>; /* SDMMC1_CKIN */
-			bias-pull-up;
-		};
-	};
-};
-
-&sdmmc1_b4_pins_a {
-	pins1 {
-		pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1_D0 */
-			 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1_D1 */
-			 <STM32_PINMUX('E', 6, AF8)>, /* SDMMC1_D2 */
-			 <STM32_PINMUX('C', 11, AF12)>, /* SDMMC1_D3 */
-			 <STM32_PINMUX('D', 2, AF12)>; /* SDMMC1_CMD */
-		slew-rate = <1>;
-		drive-push-pull;
-		bias-disable;
-	};
-	pins2 {
-		pinmux = <STM32_PINMUX('C', 12, AF12)>; /* SDMMC1_CK */
-		slew-rate = <2>;
-		drive-push-pull;
-		bias-disable;
-	};
-};
-
-&sdmmc2_d47_pins_a {
-	pins {
-		pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
-			 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
-			 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
-			 <STM32_PINMUX('D', 3, AF9)>; /* SDMMC2_D7 */
-		slew-rate = <1>;
-		drive-push-pull;
-		bias-pull-up;
-	};
-};
-
-&uart4_pins_a {
-	pins1 {
-		pinmux = <STM32_PINMUX('B', 9, AF8)>; /* UART4_TX */
-		bias-disable;
-		drive-push-pull;
-		slew-rate = <0>;
-	};
-	pins2 {
-		pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
-		bias-disable;
-	};
-};
diff --git a/arch/arm/dts/stm32mp157c-phycore-stm32mp15-som.dtsi b/arch/arm/dts/stm32mp157c-phycore-stm32mp15-som.dtsi
deleted file mode 100644
index a40e59ae2e..0000000000
--- a/arch/arm/dts/stm32mp157c-phycore-stm32mp15-som.dtsi
+++ /dev/null
@@ -1,271 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
-/*
- * Copyright (C) Phytec GmbH 2019-2020 - All Rights Reserved
- * Author: Dom VOVARD <dom.vovard@linrt.com>.
- */
-
-#include "stm32mp157c-phycore-stm32mp15-pinctrl.dtsi"
-#include <dt-bindings/net/ti-dp83867.h>
-#include "stm32mp151.dtsi"
-
-/ {
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	aliases {
-		serial0 = &uart4;
-		serial1 = &usart3;
-	};
-
-	vin: vin {
-		compatible = "regulator-fixed";
-		regulator-name = "vin";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		regulator-always-on;
-	};
-
-	pwr_irq: pwr@50001020 {
-		compatible = "st,stm32mp1-pwr";
-		reg = <0x50001020 0x100>;
-	};
-};
-
-&bsec {
-	board_id: board_id@ec {
-		reg = <0xec 0x4>;
-		st,non-secure-otp;
-	};
-};
-
-&clk_hse {
-	st,digbypass;
-};
-
-&cpu0 {
-	cpu-supply = <&vddcore>;
-};
-
-&cpu1 {
-	cpu-supply = <&vddcore>;
-};
-
-&ethernet0 {
-	pinctrl-names = "default", "sleep";
-	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
-	pinctrl-1 = <&ethernet0_rgmii_sleep_pins_a>;
-	phy-mode = "rgmii-id";
-	phy-handle = <&ethphy>;
-	max-speed = <1000>;
-	st,eth-clk-sel;
-	status = "okay";
-
-	mdio0 {
-		compatible = "snps,dwmac-mdio";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ethphy: ethernet-phy@1 {
-			reg = <1>;
-		};
-	};
-};
-
-&i2c4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c4_pins_a>;
-	i2c-scl-rising-time-ns = <185>;
-	i2c-scl-falling-time-ns = <20>;
-
-	pmic: stpmic@33 {
-		compatible = "st,stpmic1";
-		reg = <0x33>;
-
-		regulators {
-			compatible = "st,stpmic1-regulators";
-			buck1-supply = <&vin>;
-			buck2-supply = <&vin>;
-			buck3-supply = <&vin>;
-			buck4-supply = <&vin>;
-			ldo1-supply = <&v3v3>;
-			ldo2-supply = <&v3v3>;
-			ldo3-supply = <&vdd_ddr>;
-			ldo4-supply = <&vin>;
-			ldo5-supply = <&v3v3>;
-			ldo6-supply = <&v3v3>;
-			vref_ddr-supply = <&vin>;
-			boost-supply = <&vin>;
-			pwr_sw1-supply = <&bst_out>;
-			pwr_sw2-supply = <&bst_out>;
-
-			vddcore: buck1 {
-				regulator-name = "vddcore";
-				regulator-min-microvolt = <1200000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-always-on;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			vdd_ddr: buck2 {
-				regulator-name = "vdd_ddr";
-				regulator-min-microvolt = <1350000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-always-on;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			vdd: buck3 {
-				regulator-name = "vdd";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				st,mask-reset;
-				regulator-initial-mode = <0>;
-				regulator-over-current-protection;
-			};
-
-			v3v3: buck4 {
-				regulator-name = "v3v3";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-				regulator-over-current-protection;
-				regulator-initial-mode = <0>;
-			};
-
-			v1v8_audio: ldo1 {
-				regulator-name = "v1v8_audio";
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-always-on;
-			};
-
-			vdd_eth_2v5: ldo2 {
-				regulator-name = "vdd_eth_2v5";
-				regulator-min-microvolt = <2500000>;
-				regulator-max-microvolt = <2500000>;
-				regulator-always-on;
-			};
-
-			vtt_ddr: ldo3 {
-				regulator-name = "vtt_ddr";
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <750000>;
-				regulator-always-on;
-				regulator-over-current-protection;
-			};
-
-			vdd_usb: ldo4 {
-				regulator-name = "vdd_usb";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			vdda: ldo5 {
-				regulator-name = "vdda";
-				regulator-min-microvolt = <2900000>;
-				regulator-max-microvolt = <2900000>;
-				regulator-boot-on;
-			};
-
-			vdd_eth_1v0: ldo6 {
-				regulator-name = "vdd_eth_1v0";
-				regulator-min-microvolt = <1000000>;
-				regulator-max-microvolt = <1000000>;
-				regulator-always-on;
-			};
-
-			vref_ddr: vref_ddr {
-				regulator-name = "vref_ddr";
-				regulator-always-on;
-				regulator-over-current-protection;
-			};
-
-			bst_out: boost {
-				regulator-name = "bst_out";
-			};
-
-			vbus_otg: pwr_sw1 {
-				regulator-name = "vbus_otg";
-			};
-
-			vbus_sw: pwr_sw2 {
-				regulator-name = "vbus_sw";
-				regulator-active-discharge = <1>;
-			};
-		};
-	};
-};
-
-&iwdg2 {
-	timeout-sec = <32>;
-	status = "okay";
-};
-
-&pwr_regulators {
-	vdd-supply = <&vdd>;
-	vdd_3v3_usbfs-supply = <&vdd_usb>;
-};
-
-&rng1 {
-	status = "okay";
-};
-
-&sdmmc1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc1_b4_pins_a>;
-	disable-wp;
-	st,neg-edge;
-	bus-width = <4>;
-	vmmc-supply = <&v3v3>;
-	status = "disabled";
-};
-
-&sdmmc2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
-	non-removable;
-	no-sd;
-	no-sdio;
-	st,neg-edge;
-	bus-width = <8>;
-	vmmc-supply = <&v3v3>;
-	vqmmc-supply = <&v3v3>;
-	mmc-ddr-3_3v;
-	status = "disabled";
-};
-
-&uart4 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&uart4_pins_a>;
-	status = "okay";
-};
-
-&usart3 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&usart3_pins_a>;
-	status = "disabled";
-};
-
-&usbotg_hs {
-	phys = <&usbphyc_port1 0>;
-	phy-names = "usb2-phy";
-	usb-role-switch;
-	status = "okay";
-};
-
-&usbphyc {
-	status = "okay";
-};
-
-&usbphyc_port0 {
-	phy-supply = <&vdd_usb>;
-};
-
-&usbphyc_port1 {
-	phy-supply = <&vdd_usb>;
-};
-- 
2.39.2




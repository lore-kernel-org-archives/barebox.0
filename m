Delivery-date: Wed, 29 May 2024 12:27:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCGXF-0019AR-2f
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 12:27:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCGXE-0004t4-Vm
	for lore@pengutronix.de; Wed, 29 May 2024 12:27:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bx0YodQellQ8x+VhOMPqHW+Pc8YXSkXHgFbG4LGhU0E=; b=lfJcaFvmsqDhLs0Ooc8E232agd
	O5PRjGig/lpfAH6O2emkXwREw5a/KXjXwkNvZmkJZXdspbspJXYP8Y5qgLQvmPWS+8a8YG92CTxbw
	jcwK8MjCtPUnwzpGyJloR2WNnOjDteMWgOgpLr9wYBxNosCXAfgnO4VfFTIrdCEBnHE9KrEb5pi0j
	SZXlXwmR/FUQPUTcROWjFLmSP5f2eztVH3ROGKUEkOOl7KKldUjohLn5zPxD322KyenHsfZ+x6Q8+
	oiWhQ887zw9rBdX33kBC7f3oMsg6GgV0gh1xwdWoiLnAZB3mkeFZjRRNVKF5Oh3XV+4P4RmXromRn
	eDc8CZUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCGWg-00000003o0W-0Ey9;
	Wed, 29 May 2024 10:27:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCGWb-00000003nzt-1q2E
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 10:27:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sCGWZ-0004m6-CA; Wed, 29 May 2024 12:27:15 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sCGWY-003Rz6-3v; Wed, 29 May 2024 12:27:14 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sCGWY-002cLt-0E;
	Wed, 29 May 2024 12:27:14 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 29 May 2024 12:27:13 +0200
Message-Id: <20240529102713.624072-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_032717_811554_DC992DF5 
X-CRM114-Status: GOOD (  10.79  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] ARM: dts: stm32mp151-prtt1c: sync with the kernel dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Remove the barebox-specific device tree code in favor of the upstream
kernel version. With most of the issues now resolved, we can rely on the
kernel's version.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/stm32mp151-prtt1c.dts | 188 ++---------------------------
 1 file changed, 7 insertions(+), 181 deletions(-)

diff --git a/arch/arm/dts/stm32mp151-prtt1c.dts b/arch/arm/dts/stm32mp151-prtt1c.dts
index 4eaf6712a5..faea9451cc 100644
--- a/arch/arm/dts/stm32mp151-prtt1c.dts
+++ b/arch/arm/dts/stm32mp151-prtt1c.dts
@@ -3,13 +3,14 @@
 // SPDX-FileCopyrightText: 2021 Oleksij Rempel, Pengutronix
 /dts-v1/;
 
-#include "stm32mp151-prtt1l.dtsi"
+#include <arm/st/stm32mp151a-prtt1c.dts>
 
-/ {
-	model = "Protonic PRTT1C";
-	compatible = "prt,prtt1c", "st,stm32mp151";
+#include "stm32mp151.dtsi"
 
+/ {
 	chosen {
+		stdout-path = "serial0:115200n8";
+
 		environment-sd {
 			compatible = "barebox,environment";
 			device-path = &sdmmc1, "partname:barebox-environment";
@@ -24,182 +25,7 @@ environment-emmc {
 	};
 
 	aliases {
-		mdio-gpio0 = &mdio0;
-	};
-
-	clock_ksz9031: clock-ksz9031 {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <25000000>;
-	};
-
-	mdio0: mdio {
-		compatible = "virtual,mdio-gpio";
-		#address-cells = <1>;
-		#size-cells = <0>;
-		gpios = <&gpioc 1 GPIO_ACTIVE_HIGH
-			 &gpioa 2 GPIO_ACTIVE_HIGH>;
-
-		t1l0_phy: ethernet-phy@6 {
-			compatible = "ethernet-phy-id2000.0181";
-			reg = <6>;
-			interrupts-extended = <&gpioa 4 IRQ_TYPE_LEVEL_LOW>;
-			reset-gpios = <&gpioa 3 GPIO_ACTIVE_LOW>;
-		};
-
-		t1l1_phy: ethernet-phy@7 {
-			compatible = "ethernet-phy-id2000.0181";
-			reg = <7>;
-			interrupts-extended = <&gpiog 8 IRQ_TYPE_LEVEL_LOW>;
-			reset-gpios = <&gpiog 12 GPIO_ACTIVE_LOW>;
-		};
-
-		t1l2_phy: ethernet-phy@10 {
-			compatible = "ethernet-phy-id2000.0181";
-			reg = <10>;
-			interrupts-extended = <&gpiog 10 IRQ_TYPE_LEVEL_LOW>;
-			reset-gpios = <&gpiog 11 GPIO_ACTIVE_LOW>;
-		};
-
-		rj45_phy: ethernet-phy@2 {
-			reg = <2>;
-			interrupts-extended = <&gpiog 7 IRQ_TYPE_LEVEL_LOW>;
-			reset-gpios = <&gpiog 9 GPIO_ACTIVE_LOW>;
-			reset-assert-us = <10000>;
-			reset-deassert-us = <1000>;
-
-			clocks = <&clock_ksz9031>;
-		};
-	};
-
-	spi-gpio-0 {
-		compatible = "spi-gpio";
-		gpio-sck = <&gpioa 5 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpiob 5 GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpioa 6 GPIO_ACTIVE_HIGH>;
-		cs-gpios = <&gpioa 15 GPIO_ACTIVE_LOW>;
-		num-chipselects = <1>;
-
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		switch@0 {
-			compatible = "nxp,sja1105q";
-			reg = <0>;
-			spi-max-frequency = <4000000>;
-			spi-rx-delay-us = <1>;
-			spi-tx-delay-us = <1>;
-			spi-cpha;
-
-			reset-gpios = <&gpioe 6 GPIO_ACTIVE_LOW>;
-
-			ports {
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				port@0 {
-					reg = <0>;
-					label = "t1l0";
-					phy-mode = "rmii";
-					phy-handle = <&t1l0_phy>;
-				};
-
-				port@1 {
-					reg = <1>;
-					label = "t1l1";
-					phy-mode = "rmii";
-					phy-handle = <&t1l1_phy>;
-				};
-
-				port@2 {
-					reg = <2>;
-					phy-mode = "rmii";
-					label = "t1l2";
-					phy-handle = <&t1l2_phy>;
-				};
-
-				port@3 {
-					reg = <3>;
-					label = "rj45";
-					phy-handle = <&rj45_phy>;
-					phy-mode = "rgmii-id";
-				};
-
-				port@4 {
-					reg = <4>;
-					label = "cpu";
-					ethernet = <&ethernet0>;
-					phy-mode = "rmii";
-
-					fixed-link {
-						speed = <100>;
-						full-duplex;
-					};
-				};
-			};
-		};
-	};
-
-
-};
-
-&ethernet0 {
-	pinctrl-0 = <&ethernet0_rmii_pins_a>;
-	pinctrl-names = "default";
-	phy-mode = "rmii";
-	status = "okay";
-
-	fixed-link {
-		speed = <100>;
-		full-duplex;
-	};
-};
-
-&sdmmc2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_a>;
-	disable-wp;
-	disable-cd;
-	no-removable;
-	no-sd;
-	no-sdio;
-	no-1-8-v;
-	st,neg-edge;
-	bus-width = <8>;
-	vmmc-supply = <&v3v3>;
-	vqmmc-supply = <&v3v3>;
-	status = "okay";
-};
-
-&ethernet0_rmii_pins_a {
-	pins1 {
-		pinmux = <STM32_PINMUX('B', 12, AF11)>, /* ETH1_RMII_TXD0 */
-			 <STM32_PINMUX('B', 13, AF11)>, /* ETH1_RMII_TXD1 */
-			 <STM32_PINMUX('B', 11, AF11)>; /* ETH1_RMII_TX_EN */
-	};
-	pins2 {
-		pinmux = <STM32_PINMUX('C', 4, AF11)>,  /* ETH1_RMII_RXD0 */
-			 <STM32_PINMUX('C', 5, AF11)>,  /* ETH1_RMII_RXD1 */
-			 <STM32_PINMUX('A', 1, AF11)>,  /* ETH1_RMII_REF_CLK input */
-			 <STM32_PINMUX('A', 7, AF11)>;  /* ETH1_RMII_CRS_DV */
-	};
-};
-
-&sdmmc2_b4_pins_a {
-	pins1 {
-		pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
-			 <STM32_PINMUX('B', 7, AF10)>, /* SDMMC2_D1 */
-			 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
-			 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
-			 <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
-	};
-};
-
-&sdmmc2_d47_pins_a {
-	pins {
-		pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
-			 <STM32_PINMUX('A', 9, AF10)>, /* SDMMC2_D5 */
-			 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
-			 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
+		serial0 = &uart4;
+		ethernet0 = &ethernet0;
 	};
 };
-- 
2.39.2




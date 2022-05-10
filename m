Delivery-date: Tue, 10 May 2022 14:16:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noOml-008HoE-Ci
	for lore@lore.pengutronix.de; Tue, 10 May 2022 14:16:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noOmj-0000Uv-N0
	for lore@pengutronix.de; Tue, 10 May 2022 14:16:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yqsi5biCt9AL36iTh4FVdFclzSmNhhV8lXJNLUESJqo=; b=SRicxGWkbUau2P
	jThxxUvv+RCX4H7nvaMSZTMzqc3ve6vTAtW1RSI/ib6apUCe/YJdY3uubRwLk3N3X3NFpek9CQ88H
	agbFJj2uBdFFFlGXUapMwgvaYyzFukthrbQiAJK47XnnQTeWOngFLKncRWe6v095nj6sfqUTqfvBZ
	bo/ziAFnWGcQl5Aqp5bqoQ3ZYjEBp5UQgZzwQGBpM/WjTSGpDCAr4waERe0dIGYLqTdcwcvP0ZQmw
	fv9nHF6sFbKSq0PilBDV1NtdqW6Ul7NFZx0/IDRn8UdCJi8fBPsiyeSwtQrcVM0ikdKWZd7eCz1zv
	IUvFZh4dIPCLV11Qfldg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noOlW-001nAM-AC; Tue, 10 May 2022 12:14:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noOlP-001n6v-8z
 for barebox@lists.infradead.org; Tue, 10 May 2022 12:14:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1noOlO-000098-2Q; Tue, 10 May 2022 14:14:50 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1noOlO-001UDu-Nm; Tue, 10 May 2022 14:14:49 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1noOlM-000uKt-MW; Tue, 10 May 2022 14:14:48 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 10 May 2022 14:14:47 +0200
Message-Id: <20220510121447.216507-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220510121447.216507-1-o.rempel@pengutronix.de>
References: <20220510121447.216507-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_051451_372737_957985DF 
X-CRM114-Status: GOOD (  11.40  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 2/2] ARM: dts: stm32mp151-prtt1c: add DSA switch and MDIO
 nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For netboot support we need to configure switch and PHYs. So, provide
needed nodes.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/stm32mp151-prtt1c.dts | 124 ++++++++++++++++++++++++++++-
 1 file changed, 120 insertions(+), 4 deletions(-)

diff --git a/arch/arm/dts/stm32mp151-prtt1c.dts b/arch/arm/dts/stm32mp151-prtt1c.dts
index fc411f9719..4eaf6712a5 100644
--- a/arch/arm/dts/stm32mp151-prtt1c.dts
+++ b/arch/arm/dts/stm32mp151-prtt1c.dts
@@ -22,13 +22,131 @@
 			status = "disabled";
 		};
 	};
+
+	aliases {
+		mdio-gpio0 = &mdio0;
+	};
+
+	clock_ksz9031: clock-ksz9031 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <25000000>;
+	};
+
+	mdio0: mdio {
+		compatible = "virtual,mdio-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		gpios = <&gpioc 1 GPIO_ACTIVE_HIGH
+			 &gpioa 2 GPIO_ACTIVE_HIGH>;
+
+		t1l0_phy: ethernet-phy@6 {
+			compatible = "ethernet-phy-id2000.0181";
+			reg = <6>;
+			interrupts-extended = <&gpioa 4 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpioa 3 GPIO_ACTIVE_LOW>;
+		};
+
+		t1l1_phy: ethernet-phy@7 {
+			compatible = "ethernet-phy-id2000.0181";
+			reg = <7>;
+			interrupts-extended = <&gpiog 8 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpiog 12 GPIO_ACTIVE_LOW>;
+		};
+
+		t1l2_phy: ethernet-phy@10 {
+			compatible = "ethernet-phy-id2000.0181";
+			reg = <10>;
+			interrupts-extended = <&gpiog 10 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpiog 11 GPIO_ACTIVE_LOW>;
+		};
+
+		rj45_phy: ethernet-phy@2 {
+			reg = <2>;
+			interrupts-extended = <&gpiog 7 IRQ_TYPE_LEVEL_LOW>;
+			reset-gpios = <&gpiog 9 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <1000>;
+
+			clocks = <&clock_ksz9031>;
+		};
+	};
+
+	spi-gpio-0 {
+		compatible = "spi-gpio";
+		gpio-sck = <&gpioa 5 GPIO_ACTIVE_HIGH>;
+		gpio-mosi = <&gpiob 5 GPIO_ACTIVE_HIGH>;
+		gpio-miso = <&gpioa 6 GPIO_ACTIVE_HIGH>;
+		cs-gpios = <&gpioa 15 GPIO_ACTIVE_LOW>;
+		num-chipselects = <1>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		switch@0 {
+			compatible = "nxp,sja1105q";
+			reg = <0>;
+			spi-max-frequency = <4000000>;
+			spi-rx-delay-us = <1>;
+			spi-tx-delay-us = <1>;
+			spi-cpha;
+
+			reset-gpios = <&gpioe 6 GPIO_ACTIVE_LOW>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					label = "t1l0";
+					phy-mode = "rmii";
+					phy-handle = <&t1l0_phy>;
+				};
+
+				port@1 {
+					reg = <1>;
+					label = "t1l1";
+					phy-mode = "rmii";
+					phy-handle = <&t1l1_phy>;
+				};
+
+				port@2 {
+					reg = <2>;
+					phy-mode = "rmii";
+					label = "t1l2";
+					phy-handle = <&t1l2_phy>;
+				};
+
+				port@3 {
+					reg = <3>;
+					label = "rj45";
+					phy-handle = <&rj45_phy>;
+					phy-mode = "rgmii-id";
+				};
+
+				port@4 {
+					reg = <4>;
+					label = "cpu";
+					ethernet = <&ethernet0>;
+					phy-mode = "rmii";
+
+					fixed-link {
+						speed = <100>;
+						full-duplex;
+					};
+				};
+			};
+		};
+	};
+
+
 };
 
 &ethernet0 {
 	pinctrl-0 = <&ethernet0_rmii_pins_a>;
 	pinctrl-names = "default";
 	phy-mode = "rmii";
-	phy-reset-gpios = <&gpioa 3 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	fixed-link {
@@ -57,9 +175,7 @@
 	pins1 {
 		pinmux = <STM32_PINMUX('B', 12, AF11)>, /* ETH1_RMII_TXD0 */
 			 <STM32_PINMUX('B', 13, AF11)>, /* ETH1_RMII_TXD1 */
-			 <STM32_PINMUX('B', 11, AF11)>, /* ETH1_RMII_TX_EN */
-			 <STM32_PINMUX('A', 2, AF11)>,  /* ETH1_MDIO */
-			 <STM32_PINMUX('C', 1, AF11)>;  /* ETH1_MDC */
+			 <STM32_PINMUX('B', 11, AF11)>; /* ETH1_RMII_TX_EN */
 	};
 	pins2 {
 		pinmux = <STM32_PINMUX('C', 4, AF11)>,  /* ETH1_RMII_RXD0 */
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


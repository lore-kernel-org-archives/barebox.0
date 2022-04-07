Delivery-date: Thu, 07 Apr 2022 11:22:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOLi-00AIEy-Uv
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 11:22:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncOLg-00037O-6W
	for lore@pengutronix.de; Thu, 07 Apr 2022 11:22:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BvTVVZgF3BuDExcjaWFWqPQAmCsm/wwnglr9hxFwGMo=; b=XKzeFXai4DFm46
	dIpcu5F3sAdRNtn7yqWoQuIbbL/sSTKexUNgnLksYWpvBgrH4N20lIHMwkPG7cdRKssGEjTbzJlTf
	t2ihEGhma9r3zyLvVyV1aGowJZUc7rTbuTxS3fHjqc9PfNMNV449FY23WOUkTTo+OWMetcpm3r8gH
	BJFJksJgO3UoiuW9+eV6XoYP8Z43rt93M8CQu/iFNaYfNKkP89s1uRbofX9G090DvIhZqTn6DA7pv
	0h/Qt0ZmofNmEsI4cSIKNaRhvVRxIWfd3rkCSXN7iipVF3xwMBfDOQ1xly1vUYvQA4GkhOqmUc6ha
	R+G1CTPp4qqlMSYUrxEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOKB-00Anku-4K; Thu, 07 Apr 2022 09:21:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncNzN-00Ae1l-Gy
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 08:59:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNzM-000697-9y; Thu, 07 Apr 2022 10:59:36 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNzN-001Zu5-20; Thu, 07 Apr 2022 10:59:35 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1ncNzK-003zgt-TL; Thu, 07 Apr 2022 10:59:34 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  7 Apr 2022 10:59:33 +0200
Message-Id: <20220407085933.952078-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_015937_640267_CF9BB7BF 
X-CRM114-Status: GOOD (  11.38  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] ARM: dts: at91-microchip-ksz9477-evb: start using kernel DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This DT is mainlined to the kernel. Now we can start using kernel
version. At same time it will fix SPI and KSZ switch detection.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/at91-microchip-ksz9477-evb.dts | 140 +-------------------
 1 file changed, 4 insertions(+), 136 deletions(-)

diff --git a/arch/arm/dts/at91-microchip-ksz9477-evb.dts b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
index b7e619a363..3762361b53 100644
--- a/arch/arm/dts/at91-microchip-ksz9477-evb.dts
+++ b/arch/arm/dts/at91-microchip-ksz9477-evb.dts
@@ -1,27 +1,10 @@
-/*
- * at91-microchip-ksz9477-evb.dts - Device Tree file for the EVB-KSZ9477 board
- *
- *  Copyright (C) 2014 Atmel,
- *		  2014 Nicolas Ferre <nicolas.ferre@atmel.com>
- *		  2018 Ahmad Fatoum <a.fatoum@pengutronix.de>
- *
- * Licensed under GPLv2 or later.
- */
+/* SPDX-License-Identifier: GPL-2.0 */
 /dts-v1/;
-#include <arm/sama5d36.dtsi>
+#include <arm/at91-sama5d3_ksz9477_evb.dts>
 #include "sama5d3.dtsi"
 
 / {
-	model = "Microchip EVB-KSZ9477";
-	compatible = "atmel,sama5d3-ksz9477-evb", "atmel,sama5d3", "atmel,sama5";
-
-	aliases {
-		mmc0 = &mmc0;
-	};
-
 	chosen {
-		stdout-path = &dbgu;
-
 		environment {
 			compatible = "barebox,environment";
 			device-path = &mmc0, "partname:0";
@@ -34,121 +17,6 @@
 	reg = <0x20000000 0x10000000>;
 };
 
-&pinctrl {
-	board {
-		pinctrl_mmc0_cd: mmc0_cd {
-			atmel,pins =
-				<AT91_PIOE 0 AT91_PERIPH_GPIO AT91_PINCTRL_PULL_UP_DEGLITCH>;
-		};
-
-		pinctrl_spi_ksz: spi_ksz {
-			atmel,pins =
-				<
-				AT91_PIOB 28 AT91_PERIPH_GPIO AT91_PINCTRL_DEGLITCH
-				AT91_PIOC 31 AT91_PERIPH_GPIO AT91_PINCTRL_DEGLITCH
-				>;
-		};
-	};
-};
-
-&slow_xtal {
-	clock-frequency = <32768>;
-};
-
-&main_xtal {
-	clock-frequency = <12000000>;
-};
-
-&dbgu {
-	status = "okay";
-};
-
-&macb0 {
-	phy-mode = "rgmii";
-	gpios = <&pioB 28 GPIO_ACTIVE_LOW>;
-	status = "okay";
-
-	fixed-link {
-		speed = <1000>;
-		full-duplex;
-	};
-};
-
-&mmc0 {
-	pinctrl-0 = <&pinctrl_mmc0_clk_cmd_dat0 &pinctrl_mmc0_dat1_3 &pinctrl_mmc0_dat4_7 &pinctrl_mmc0_cd>;
-	status = "okay";
-	slot@0 {
-		reg = <0>;
-		bus-width = <8>;
-		cd-gpios = <&pioE 0 GPIO_ACTIVE_LOW>;
-	};
-};
-
-&pmc {
-	main: mainck {
-		clock-frequency = <12000000>;
-	};
-};
-
-&spi1 {
-	pinctrl-0 = <&pinctrl_spi_ksz>;
-	cs-gpios = <&pioC 25 0>;
-	id = <1>;
-	status = "okay";
-
-	ksz9477: ksz9477@0 {
-		compatible = "microchip,ksz9477", "microchip,ksz9893";
-		reg = <0>;
-
-		/* Bus clock is 132 MHz. */
-		spi-max-frequency = <44000000>;
-		spi-cpha;
-		spi-cpol;
-		gpios = <&pioB 28 GPIO_ACTIVE_LOW>;
-		status = "okay";
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			port@0 {
-				reg = <0>;
-				label = "lan0";
-			};
-
-			port@1 {
-				reg = <1>;
-				label = "lan1";
-			};
-
-			port@2 {
-				reg = <2>;
-				label = "lan2";
-			};
-
-			port@3 {
-				reg = <3>;
-				label = "lan3";
-			};
-
-			port@4 {
-				reg = <4>;
-				label = "lan4";
-			};
-
-			port@5 {
-				reg = <5>;
-				label = "cpu";
-				ethernet = <&macb0>;
-				phy-mode = "rgmii-id";
-
-				fixed-link {
-					speed = <1000>;
-					full-duplex;
-				};
-			};
-
-			/* port 6 is connected to eth0 */
-		};
-	};
+&reg_vcc_mmc0 {
+	status = "disabled";
 };
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Fri, 17 Feb 2023 18:33:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4bb-00AI6E-Cm
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 18:33:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT4bW-00057i-Ms
	for lore@pengutronix.de; Fri, 17 Feb 2023 18:33:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qHVi5kOBO8lX80aN37Ssc23yHDQWnKN6/3zUIXtKAJA=; b=P1eAojLkg5AejbitYQXtuCKGwM
	vwgUh9eRBHoAgAzMonF7QNQq7T88K3Se8/cl4NwuhSwJrN11Q6fb6uLavQ34vzdN+hVUaCvOmIeEw
	5nuf7InkJQZf8c5RMscxCsMuvQgEkwYeYqMEANbIg5gttUHKwTDQrKxMbJrVn8QyWUVzEZs8iB7NM
	CkGnwAHmGlaeDkkGoXgbcML4mL87mJlnG9ry86WtUX90s6+yb0idoNUO20GQw29QZmg7loArziTvc
	zHPGZOtvwr1d+gdAQpDZzwvekqlGSSwBiH/GCReoitdaLStSwF0o9B9Wp7NwuA61conFLFlTymf5j
	qIjku8HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4aa-00FFqN-09; Fri, 17 Feb 2023 17:32:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT4Zc-00FFGX-0w
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 17:31:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4Za-0004E3-Qn; Fri, 17 Feb 2023 18:31:02 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZY-005dTu-Uz; Fri, 17 Feb 2023 18:31:02 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT4ZW-007iyK-4Q; Fri, 17 Feb 2023 18:30:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 18:30:57 +0100
Message-Id: <20230217173057.1839835-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
References: <20230217173057.1839835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_093104_139088_D095BAB8 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 20/20] ARM: dts: i.MX8MN: evk: reduce duplication in barebox-added nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

imx8mn-evk.dtsi, which is also used for the DDR4 variant, already contains
everything we customize in imx8mn-evk for the LPDDR4 variant, so drop
the duplication.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mn-evk.dts  | 83 ------------------------------------
 arch/arm/dts/imx8mn-evk.dtsi |  2 +
 2 files changed, 2 insertions(+), 83 deletions(-)

diff --git a/arch/arm/dts/imx8mn-evk.dts b/arch/arm/dts/imx8mn-evk.dts
index fb2e40ed898a..eb6e1312f4cb 100644
--- a/arch/arm/dts/imx8mn-evk.dts
+++ b/arch/arm/dts/imx8mn-evk.dts
@@ -4,86 +4,3 @@
 
 #include <arm64/freescale/imx8mn-evk.dts>
 #include "imx8mn-evk.dtsi"
-#include "imx8mn.dtsi"
-
-/ {
-	chosen {
-		environment-sd {
-			compatible = "barebox,environment";
-			device-path = &env_sd2;
-			status = "disabled";
-		};
-		environment-emmc {
-			compatible = "barebox,environment";
-			device-path = &env_sd3;
-			status = "disabled";
-		};
-	};
-};
-
-&fec1 {
-	phy-reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
-};
-
-&usdhc2 {
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
-
-	env_sd2: partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
-	};
-};
-
-&usdhc3 {
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0xe0000>;
-	};
-
-	env_sd3: partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
-	};
-};
-
-&ocotp {
-	barebox,provide-mac-address = <&fec1 0x640>;
-};
-
-&iomuxc {
-	pinctrl_flexspi0: flexspi0grp {
-		fsl,pins = <
-		MX8MN_IOMUXC_NAND_ALE_QSPI_A_SCLK	0x1c4
-		MX8MN_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B	0x84
-		MX8MN_IOMUXC_NAND_DATA00_QSPI_A_DATA0	0x84
-		MX8MN_IOMUXC_NAND_DATA01_QSPI_A_DATA1	0x84
-		MX8MN_IOMUXC_NAND_DATA02_QSPI_A_DATA2	0x84
-		MX8MN_IOMUXC_NAND_DATA03_QSPI_A_DATA3	0x84
-		>;
-	};
-};
-
-&flexspi {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexspi0>;
-
-	system_flash: flash@0 {
-		reg = <0>;
-		compatible = "jedec,spi-nor";
-		spi-max-frequency = <80000000>;
-		spi-tx-bus-width = <4>;
-		spi-rx-bus-width = <4>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-	};
-};
diff --git a/arch/arm/dts/imx8mn-evk.dtsi b/arch/arm/dts/imx8mn-evk.dtsi
index b55b2f324f12..d15f66ff403b 100644
--- a/arch/arm/dts/imx8mn-evk.dtsi
+++ b/arch/arm/dts/imx8mn-evk.dtsi
@@ -4,6 +4,8 @@
  * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
  */
 
+#include "imx8mn.dtsi"
+
 / {
 	chosen {
 		environment-sd {
-- 
2.30.2




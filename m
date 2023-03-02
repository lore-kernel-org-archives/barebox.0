Delivery-date: Thu, 02 Mar 2023 11:41:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNS-006TPy-6l
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:41:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgNR-0003Ef-EP
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:41:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KtXgJtc7ME+kJ2tznnvuY6CprbcZ7lSUVwWpjfahtnA=; b=GvcH82X9fNaTvLRmXXBIGJQ5nm
	yitGBEr2wal36s+uipfJZxVdm64QkiI1BXBOVU3WypuntceQUYsKwDX23t9zSnU2yM2/KYWAs5suD
	oKOrc9QUwxyA5GGIFTOTVIwQVfRTDzLN60nCHfZb0eBDGLLs6jLzH6+8j2/ny0ibZrdvLuQMf9AP5
	YCKZtNVo0m3P0VNP2kDOh5Be9ewKfPBBYTzkcIK3h5nr59G7t8/Ep7KV+CcU3A/yNF031xhpxlfjt
	l1fiA492t1uOBDYeN0gAzPvR9H7Z1yObybOBbiObAoZWVG1sW0yxzsaltOj/qJhMcs81MmMd7lbv8
	seWosjoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgME-001hLc-Qu; Thu, 02 Mar 2023 10:40:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgM1-001hHL-Lf
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:40:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLk-0002W4-9F; Thu, 02 Mar 2023 11:39:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLi-001J5P-2y; Thu, 02 Mar 2023 11:39:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgLg-003wZI-Jv; Thu, 02 Mar 2023 11:39:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 11:39:43 +0100
Message-Id: <20230302103943.939422-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302103943.939422-1-s.hauer@pengutronix.de>
References: <20230302103943.939422-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_024005_770428_60468A0E 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] ARM: dts: imx6ull-jozacp: Move regulators out of subnode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

regulators shall no longer be collected in an extra subnode. Move them
up one level.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6ull-jozacp.dtsi | 72 +++++++++++++++-----------------
 1 file changed, 33 insertions(+), 39 deletions(-)

diff --git a/arch/arm/dts/imx6ull-jozacp.dtsi b/arch/arm/dts/imx6ull-jozacp.dtsi
index f7d35684f8..53f617d4f8 100644
--- a/arch/arm/dts/imx6ull-jozacp.dtsi
+++ b/arch/arm/dts/imx6ull-jozacp.dtsi
@@ -30,48 +30,42 @@
 		reg = <0x80000000 0x10000000>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		reg_5v: 5v-regulator {
-			compatible = "regulator-fixed";
-			regulator-name = "regulator-5V";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-		};
+	reg_5v: 5v-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "regulator-5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 
-		reg_3p3v: 3p3-regulator {
-			compatible = "regulator-fixed";
-			regulator-name = "regulator-3P3V";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			vin-supply = <&reg_5v>;
-			regulator-always-on;
-		};
+	reg_3p3v: 3p3-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "regulator-3P3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&reg_5v>;
+		regulator-always-on;
+	};
 
-		reg_1p4v: 1p4-regulator {
-			compatible = "regulator-fixed";
-			regulator-name = "regulator-1P4V";
-			regulator-min-microvolt = <1400000>;
-			regulator-max-microvolt = <1400000>;
-			vin-supply = <&reg_5v>;
-			regulator-always-on;
-		};
+	reg_1p4v: 1p4-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "regulator-1P4V";
+		regulator-min-microvolt = <1400000>;
+		regulator-max-microvolt = <1400000>;
+		vin-supply = <&reg_5v>;
+		regulator-always-on;
+	};
 
-		reg_vbus: vbus-regulator {
-			pinctrl-names = "default";
-			pinctrl-0 = <&pinctrl_vbus>;
-			compatible = "regulator-fixed";
-			regulator-name = "regulator-vbus";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			vin-supply = <&reg_5v>;
-			gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	reg_vbus: vbus-regulator {
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_vbus>;
+		compatible = "regulator-fixed";
+		regulator-name = "regulator-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&reg_5v>;
+		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
 	};
 
 	usdhc2_pwrseq: usdhc2-pwrseq {
-- 
2.30.2




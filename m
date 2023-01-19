Delivery-date: Thu, 19 Jan 2023 16:58:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pIXIv-00GdUh-8F
	for lore@lore.pengutronix.de; Thu, 19 Jan 2023 16:58:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pIXIs-0005q8-Lq
	for lore@pengutronix.de; Thu, 19 Jan 2023 16:58:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9JHoj1DkFyCQD+uv0OpQEkI3ebzjBMMXcA2gIH9xHYE=; b=SKZUPWKcDZ7py6vIbDc5GQ6fR8
	7SKk2FBiILDWrAJmfBLJQ5crlznNMI/aZTfp2XTESyu5wPvuZYntNsg/YjyH/0QqNTSOQVksrzXcg
	sSAXo0rHzWHFyJQVyttu1Sw6tVxqp55sySvRaG0ZMPUIWT+X15QzWBtf21dGHzKboAvwctDmNRPvP
	xKDqaBC3fFHBIC7cICIHqPr0SPPXkUwD2AnYPVFGFyakxGkIqwc9pkXdGuTOMlQdLK6UMW9vScd8I
	+vme6ieTvB8AUZ6l+jV3RFoPFXOARYEJ/1YttlvCSnVy1ci4UaTGW9Srf1hvD5miXPJ6mZZF72uYa
	q0OPiQqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIXHB-005nNx-Ko; Thu, 19 Jan 2023 15:56:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIXGv-005nLl-NW
	for barebox@lists.infradead.org; Thu, 19 Jan 2023 15:56:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pIXGu-0005W8-8E; Thu, 19 Jan 2023 16:56:12 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pIXGt-007B6T-Hy; Thu, 19 Jan 2023 16:56:11 +0100
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pIXGs-00DC8v-BC; Thu, 19 Jan 2023 16:56:10 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org,
	johannes.schneider@leica-geosystems.com
Date: Thu, 19 Jan 2023 16:56:01 +0100
Message-Id: <20230119155602.3144835-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_075613_809349_3AADBFAA 
X-CRM114-Status: GOOD (  14.31  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/2] ARM: i.MX8MM: split barebox dts into dtsi file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Move the dts file into a dtsi file. This is in preparation for the
imx8mm-evkb support which will reuse the config. No functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v3:
- new in this series

 arch/arm/dts/imx8mm-evk.dts  | 54 +--------------------------------
 arch/arm/dts/imx8mm-evk.dtsi | 58 ++++++++++++++++++++++++++++++++++++
 2 files changed, 59 insertions(+), 53 deletions(-)
 create mode 100644 arch/arm/dts/imx8mm-evk.dtsi

diff --git a/arch/arm/dts/imx8mm-evk.dts b/arch/arm/dts/imx8mm-evk.dts
index 3ced5a934c..abe0a2e450 100644
--- a/arch/arm/dts/imx8mm-evk.dts
+++ b/arch/arm/dts/imx8mm-evk.dts
@@ -8,56 +8,4 @@
 
 #include <arm64/freescale/imx8mm-evk.dts>
 #include "imx8mm.dtsi"
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
-&reg_usdhc2_vmmc {
-	off-on-delay-us = <20000>;
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
+#include "imx8mm-evk.dtsi"
diff --git a/arch/arm/dts/imx8mm-evk.dtsi b/arch/arm/dts/imx8mm-evk.dtsi
new file mode 100644
index 0000000000..4d64dcad1c
--- /dev/null
+++ b/arch/arm/dts/imx8mm-evk.dtsi
@@ -0,0 +1,58 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2017 NXP
+ * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
+ */
+
+/ {
+	chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &env_sd2;
+			status = "disabled";
+		};
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &env_sd3;
+			status = "disabled";
+		};
+	};
+};
+
+&reg_usdhc2_vmmc {
+	off-on-delay-us = <20000>;
+};
+
+&usdhc2 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	env_sd2: partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
+
+&usdhc3 {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	partition@0 {
+		label = "barebox";
+		reg = <0x0 0xe0000>;
+	};
+
+	env_sd3: partition@e0000 {
+		label = "barebox-environment";
+		reg = <0xe0000 0x20000>;
+	};
+};
+
+&ocotp {
+	barebox,provide-mac-address = <&fec1 0x640>;
+};
-- 
2.30.2




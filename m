Delivery-date: Thu, 09 Mar 2023 11:45:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDmH-00EiSX-T2
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 11:45:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paDmG-0001OX-Jn
	for lore@pengutronix.de; Thu, 09 Mar 2023 11:45:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FVlsjNnQUWPKRwZHX+OIUp4AzvB49GevDTeIv9TL/NI=; b=0xPwcbvMt85Rh5ZY+VE3kGUyrD
	XA6TrO0y74tFIUFBmByXjgh2BdccgiECGVh5bTom1v51dL0uawNFKc/FSBT7K73n+wS+4Xer+LPxE
	hw143W0hEwAtsNSqXxGsSRPvM3MOF19OU88crwN9BLipWeGps8/4aVof59D8CATmKcU9YIJC/uUvq
	Y1U70lnrk7ahsX/N3NAvC0ePkcOIdqBwo7/XDnm6ugG8hv1iLsooHhXox60x8uIxstsG/BUmkPBGv
	Z2IffFLYlhdxM/cPfYICo5f/PK2r7kM+qss9/t3Zjx34TUGXGp2iejz9d/3sPk8w6qryIWD1ilMY1
	c/PO716Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDkx-009AYh-Eo; Thu, 09 Mar 2023 10:44:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paDiv-0099IW-L8
	for barebox@bombadil.infradead.org; Thu, 09 Mar 2023 10:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=FVlsjNnQUWPKRwZHX+OIUp4AzvB49GevDTeIv9TL/NI=; b=T5rcXGop/3y9YaKNg66EJ7CkOB
	RwbeNgtg4rwbG8noGKyjPYY03upL9ayHhXuvEwQqQJX/qR33RKu6jIC2eNaqhZsl+gk726SQF9aUe
	KR6Lur4ZPgrinf+SWQVELVIjqLZSTVBN97obSYFZ0+1vTxDHgjRCiwEXFfvGMwlgfLG4nOhRiJKpN
	TFq1jgCG1trkPNUHuzSnteCoKqMfEWcCFfU2q0gG5POnqZpKVzSZKPh9qb9KySiwl2kA34oxtoPHj
	fJGkX9G1rs0+Hwp1D7g6a/MJUdG9GWx9DOFaIThroR0cNO6Igx769z/vO6F+QByr67oRPOTtYSQXf
	v/oNSdYQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1paDhY-0005RI-1j
	for barebox@lists.infradead.org;
	Thu, 09 Mar 2023 10:42:11 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1paDhS-0007YT-GL
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:40:42 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 09 Mar 2023 11:40:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v1-20-7b3c3fa295f5@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v1-0-7b3c3fa295f5@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_104048_760089_CD6A0605 
X-CRM114-Status: UNSURE (   8.04  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 20/21] ARM: i.MX8M: add qspi barebox and
 barebox-environment partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use the same partition size layout as done for SD/eMMC devices.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx8mm-evk.dtsi | 19 +++++++++++++++++++
 arch/arm/dts/imx8mn-evk.dtsi | 19 +++++++++++++++++++
 arch/arm/dts/imx8mp-evk.dts  | 19 +++++++++++++++++++
 3 files changed, 57 insertions(+)

diff --git a/arch/arm/dts/imx8mm-evk.dtsi b/arch/arm/dts/imx8mm-evk.dtsi
index 4d64dcad1c..a657faa6bc 100644
--- a/arch/arm/dts/imx8mm-evk.dtsi
+++ b/arch/arm/dts/imx8mm-evk.dtsi
@@ -19,6 +19,25 @@
 	};
 };
 
+&{flexspi/flash@0} {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xe0000>;
+		};
+
+		partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
+	};
+
+};
+
 &reg_usdhc2_vmmc {
 	off-on-delay-us = <20000>;
 };
diff --git a/arch/arm/dts/imx8mn-evk.dtsi b/arch/arm/dts/imx8mn-evk.dtsi
index d15f66ff40..c23075216e 100644
--- a/arch/arm/dts/imx8mn-evk.dtsi
+++ b/arch/arm/dts/imx8mn-evk.dtsi
@@ -21,6 +21,25 @@
 	};
 };
 
+&flash0 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xe0000>;
+		};
+
+		partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
+	};
+
+};
+
 &usdhc2 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
index 28d8c5f929..0acc3731d5 100644
--- a/arch/arm/dts/imx8mp-evk.dts
+++ b/arch/arm/dts/imx8mp-evk.dts
@@ -35,6 +35,25 @@
 	reset-deassert-us = <100000>;
 };
 
+&{flexspi/flash@0} {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0xe0000>;
+		};
+
+		partition@e0000 {
+			label = "barebox-environment";
+			reg = <0xe0000 0x20000>;
+		};
+	};
+
+};
+
 &reg_usdhc2_vmmc {
 	off-on-delay-us = <20000>;
 };

-- 
2.30.2




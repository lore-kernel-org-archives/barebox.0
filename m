Delivery-date: Thu, 28 Sep 2023 13:00:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qloku-00F2NZ-AM
	for lore@lore.pengutronix.de; Thu, 28 Sep 2023 13:00:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlokr-0003gF-4z
	for lore@pengutronix.de; Thu, 28 Sep 2023 13:00:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YpttLD7I3+pZ2ntRJB62EIhnjQOpZ55GEbCEEyoJuvA=; b=cI8MFO2gDSffAKl/cdLbLogiL5
	9ua9Ibls3nEERbewWeQrbCkQzUQlwnkJhZm/o3CY6JyRJ8uG47wsxAVIvjF4bdFnsR/4SNWLY4UEE
	gqKNN60lIAcBrCXwx66TcHOHO4wV4JdwEtRfrMGqkvTPYo3/Acsw/9qG/vTSnvbGqo5mpt9ecq+l2
	9HHQXX/+QAudVjuY6dZ/fERnGZl2tct2dAvav9xwGPGw012eX5kXUYY2BihUGO9opSjnDvllaQzHk
	OKFIZCgAuPjWRlBhMawXiEEpbpFS6IPLV6LwPiU+mEBOx3lUs+j+nqg2lNyZFLAQ7Rnzwq95jXM2Q
	LjQv2lJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlojQ-0030Fq-1o;
	Thu, 28 Sep 2023 10:58:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlojE-00305l-1n
	for barebox@lists.infradead.org;
	Thu, 28 Sep 2023 10:58:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-00032w-Qt; Thu, 28 Sep 2023 12:58:38 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-009Yar-BL; Thu, 28 Sep 2023 12:58:38 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-00AXdi-0x;
	Thu, 28 Sep 2023 12:58:38 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 28 Sep 2023 12:58:32 +0200
Message-Id: <20230928105837.2512555-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928105837.2512555-1-o.rempel@pengutronix.de>
References: <20230928105837.2512555-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_035844_616023_F195129D 
X-CRM114-Status: UNSURE (   8.55  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/7] arm: dts: imx8mp-skov: Add pins for hardware variant detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Define pins in imx8mp-skov device tree for detecting hardware variants.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx8mp-skov.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
index 4c83bb6bc2..4b73022938 100644
--- a/arch/arm/dts/imx8mp-skov.dts
+++ b/arch/arm/dts/imx8mp-skov.dts
@@ -369,6 +369,23 @@ &wdog1 {
 };
 
 &iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			/* varaint id */
+			MX8MP_IOMUXC_GPIO1_IO08__GPIO1_IO08				0x100
+			MX8MP_IOMUXC_GPIO1_IO09__GPIO1_IO09				0x100
+			MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10				0x100
+			MX8MP_IOMUXC_GPIO1_IO11__GPIO1_IO11				0x100
+			MX8MP_IOMUXC_GPIO1_IO12__GPIO1_IO12				0x100
+			MX8MP_IOMUXC_GPIO1_IO13__GPIO1_IO13				0x100
+			MX8MP_IOMUXC_GPIO1_IO14__GPIO1_IO14				0x100
+			MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15				0x100
+		>;
+	};
+
 	pinctrl_eqos: eqosgrp {
 		fsl,pins = <
 			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x91
-- 
2.39.2




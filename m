Delivery-date: Thu, 17 Apr 2025 11:07:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5LDC-001oYF-2n
	for lore@lore.pengutronix.de;
	Thu, 17 Apr 2025 11:07:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5LDC-0008DW-9w
	for lore@pengutronix.de; Thu, 17 Apr 2025 11:07:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IMTH4zb2v+ctbImu94GdFw0+kv6MJc9e9mIdHSCcjyk=; b=XqnImu+ULdlcSbIrAUZyY1IDXc
	3Lj/zVc/pHrRlSSMYg9OQedd+Gag74ExKTBHXx5gGc+KtQKD/RUIu1rrCjjRsvg9bLOrpq84yiDvG
	LW5c/3suP3Ws4l62cAkx1YC1VNZpGIn9vwVqcjOAuE6c0xE+PQ+dlS/NFUJPqp11EAT4gqjkq6nqO
	RKPZAYSEtq4we4cLD7Ne99Jb9dGJycTe1q5VxmhEq8YQUiTL6qMhoybpFnUQdDSPZPQUyTu56T2PW
	naVEncciecB7rljBlKxePfTPcwP6Gq1XQ8IpFQow5maxOYIi58hKK2Ys6ISI1heE/knG0zLy5SRWx
	3qDOVwaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5LCX-0000000CNlz-45DE;
	Thu, 17 Apr 2025 09:06:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Kug-0000000CKPa-0MJ1
	for barebox@lists.infradead.org;
	Thu, 17 Apr 2025 08:48:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <fpg@pengutronix.de>)
	id 1u5Kud-0001TP-03; Thu, 17 Apr 2025 10:47:59 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <fpg@pengutronix.de>)
	id 1u5Kuc-000ilO-2b;
	Thu, 17 Apr 2025 10:47:58 +0200
Received: from fpg by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <fpg@pengutronix.de>)
	id 1u5Kuc-00E8Ew-2O;
	Thu, 17 Apr 2025 10:47:58 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 17 Apr 2025 10:47:23 +0200
Message-Id: <20250417084723.3368038-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_014802_121080_41200188 
X-CRM114-Status: UNSURE (   9.82  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: tqma93xx add dummy supply to regulator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The regulator for the usdhc2 references the BUCK4 as its input.
The BUCK4 is part of the pca9451, which in turn is not a regulator
in barebox, so there is a problem during initialisation:

WARNING: imx-esdhc 42860000.mmc@42860000.of: Failed to get 'vmmc' regulator (ignored)

Since the dependency could not be resolved, the reg_usdhc2_vmmc
regulator is not correctly initialized, leaving the gpio in a floating
state, which results in the GPIO being low, which in turn disables
the SD-Card.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/dts/imx93-tqma93xx.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/dts/imx93-tqma93xx.dtsi b/arch/arm/dts/imx93-tqma93xx.dtsi
index 40425e39a7..aafeadc275 100644
--- a/arch/arm/dts/imx93-tqma93xx.dtsi
+++ b/arch/arm/dts/imx93-tqma93xx.dtsi
@@ -15,6 +15,9 @@ pca9451a: pmic@25 {
 		reg = <0x25>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_pca9451>;
+		regulators {
+			barebox,allow-dummy-supply;
+		};
 	};
 };
 
-- 
2.39.5




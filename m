Delivery-date: Thu, 05 Jun 2025 14:45:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9ya-0040xF-1I
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 14:45:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yY-0005oS-8H
	for lore@pengutronix.de; Thu, 05 Jun 2025 14:45:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ZtTxw9EQBvPAz1YTFF9iL8vXHnzVMgNl6nbrzwiaXQ=; b=G2EIIZy9hZml1+GTVvkwjuc2YB
	YIwBZ1vMcnN5DbZrxOdb67PJ5hYOnI0DOKL0ZaB82Dn35F+s4IznWnuozqgngInnSzNbfGpRv9J3k
	gkohxovv1rrfLmwVrbqCJtKDFkhOqo0juw/UMWFEv5ghRkqRQFtFO2VhwQSCZ80pjvwt4jTqAjj2x
	wj7UIMXGZMLubzGJgZ7eCnVhDQQ3czr3f3H69Ld2FCOVw9WJDbfXPBG9KGsqaOb0ge6+perYgPBk/
	4XbEcuTHWcKlgu86U/RvJYyzB2vUYqUUsTSHlaWnRHzclLVVTUVID6Sf19KsKX8uewS928Luq464h
	irOx5egg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9y0-0000000FVMk-0CXI;
	Thu, 05 Jun 2025 12:45:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9vU-0000000FV3U-0hGo
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 12:42:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0003Mv-W1; Thu, 05 Jun 2025 14:42:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-001xgR-1r;
	Thu, 05 Jun 2025 14:42:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1U;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-5-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=3332;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1pg9/PUBkOME7NPEK/N3KHs8IKO6nhBX2y9PLI1oqxY=;
 b=0g+1K8y5T0aqT8rYAejEuIVi5Ze9KOWJ9L5wONzFLdT2VjU2/8KWSnkzU906RUwaTnKTqinjq
 qw0ctaGgLVNBebWS9FRan4/9z2GdYWoQeH/dcBwDvgNfJuGvSqiRubk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_054232_230317_9A89CB87 
X-CRM114-Status: GOOD (  12.15  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/33] ARM: dts: am62l: Fix assigned-clock-parents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AM62l device trees we imported to barebox have problems with the
clock parents which is described in [1] and [2].

There is no way the Kernel or barebox SCMI clk drivers can work with the
current way the clk parents are specified in the downstream TF-A. This
problem is acknowledged by TI and will hopefully be fixed.

This patch fixes the clk parents the way that I hope TI will do it as
well. Currently this only works with a patched downstream TF-A.

[1] https://lore.kernel.org/all/aCcSG5ah12N0yOwi@pengutronix.de/
[2] https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/34834/1/plat/ti/k3/common/drivers/scmi/scmi_clock.c#165

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-main.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/dts/k3-am62l-main.dtsi b/arch/arm/dts/k3-am62l-main.dtsi
index f6fbaaede8c36ac0aab92bef7763202bb0ab30dc..d161df3215c35a2d3de67e8ca021b9a9a89edb80 100644
--- a/arch/arm/dts/k3-am62l-main.dtsi
+++ b/arch/arm/dts/k3-am62l-main.dtsi
@@ -217,7 +217,7 @@ rti0: watchdog@e000000 {
 		clocks = <&scmi_clk 273>;
 		power-domains = <&scmi_pds 60>;
 		assigned-clocks = <&scmi_clk 273>;
-		assigned-clock-parents = <&scmi_clk 1>;
+		assigned-clock-parents = <&scmi_clk 275>;
 	};
 
 	rti1: watchdog@e010000 {
@@ -226,7 +226,7 @@ rti1: watchdog@e010000 {
 		clocks = <&scmi_clk 279>;
 		power-domains = <&scmi_pds 61>;
 		assigned-clocks = <&scmi_clk 279>;
-		assigned-clock-parents = <&scmi_clk 1>;
+		assigned-clock-parents = <&scmi_clk 281>;
 	};
 
 	fss: bus@fc00000 {
@@ -317,7 +317,7 @@ sdhci0: mmc@fa10000 {
 		clocks = <&scmi_clk 122>, <&scmi_clk 123>;
 		clock-names = "clk_ahb", "clk_xin";
 		assigned-clocks = <&scmi_clk 123>;
-		assigned-clock-parents = <&scmi_clk 0>;
+		assigned-clock-parents = <&scmi_clk 124>;
 		bus-width = <8>;
 		ti,clkbuf-sel = <0x7>;
 		ti,otap-del-sel-legacy = <0x0>;
@@ -334,7 +334,7 @@ sdhci1: mmc@fa00000 {
 		clocks = <&scmi_clk 106>, <&scmi_clk 107>;
 		clock-names = "clk_ahb", "clk_xin";
 		assigned-clocks = <&scmi_clk 107>;
-		assigned-clock-parents = <&scmi_clk 0>;
+		assigned-clock-parents = <&scmi_clk 108>;
 		bus-width = <4>;
 		ti,clkbuf-sel = <0x7>;
 		ti,otap-del-sel-legacy = <0x0>;
@@ -351,7 +351,7 @@ sdhci2: mmc@fa20000 {
 		clocks = <&scmi_clk 114>, <&scmi_clk 115>;
 		clock-names = "clk_ahb", "clk_xin";
 		assigned-clocks = <&scmi_clk 115>;
-		assigned-clock-parents = <&scmi_clk 0>;
+		assigned-clock-parents = <&scmi_clk 116>;
 		bus-width = <4>;
 		ti,clkbuf-sel = <0x7>;
 		ti,otap-del-sel-legacy = <0x0>;
@@ -600,7 +600,7 @@ tscadc0: tscadc@28001000 {
 		power-domains = <&scmi_pds 0>;
 		clocks = <&scmi_clk 0>;
 		assigned-clocks = <&scmi_clk 0>;
-		assigned-clock-parents = <&scmi_clk 2>;
+		assigned-clock-parents = <&scmi_clk 3>;
 		assigned-clock-rates = <60000000>;
 		clock-names = "fck";
 		status = "disabled";
@@ -618,7 +618,7 @@ dphy_tx0: phy@301c0000 {
 		clock-names = "psm", "pll_ref";
 		power-domains = <&scmi_pds 86>;
 		assigned-clocks = <&scmi_clk 341>;
-		assigned-clock-parents = <&scmi_clk 0>;
+		assigned-clock-parents = <&scmi_clk 342>;
 		assigned-clock-rates = <25000000>;
 		#phy-cells = <0>;
 		status = "disabled";

-- 
2.39.5




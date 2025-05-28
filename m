Delivery-date: Wed, 28 May 2025 13:46:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFEr-001AmA-1M
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 13:46:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFEq-0002qh-Q9
	for lore@pengutronix.de; Wed, 28 May 2025 13:46:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ZtTxw9EQBvPAz1YTFF9iL8vXHnzVMgNl6nbrzwiaXQ=; b=upH5EZ2mqto3eWu5PLiTnozEic
	om4hWXS2YZPmS0BnRv8GyRKzEGctzJvUTuT4CoaQYhptHr+k+tnFVjPHXo0O5KmM8sDL+kcmJbQNy
	ht9EQj+drH8s6WCLoF1zX+vnt4nPYfGVI1LwOMx7kDob2NmvKYOnl63ZLt6NdEfZKBvBHeQTTmPiy
	fPi7gh7oCorDn0a9gCS8hxUIm4TCidWDQlJsUDB8ms8I7a3FsDFak++qkNfOi6g8pbXNgyCQX/tZL
	T/XfHVFDwVtSAwz7D+6QsjiTfY1WMminnjFH8o9j0jO8Lx84A3hhXEVeVu+HtEnhatZ16ki16pFY3
	76jii+pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFE8-0000000D0Ah-1HG2;
	Wed, 28 May 2025 11:45:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFE4-0000000D07b-0Lg7
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:45:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00021W-SG; Wed, 28 May 2025 13:45:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-000a7F-1n;
	Wed, 28 May 2025 13:45:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1U;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-5-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=3332;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1pg9/PUBkOME7NPEK/N3KHs8IKO6nhBX2y9PLI1oqxY=;
 b=Ow+QzbPGNTWlg9gPBexzjkiU6lgGSbG3NJieIbyVDN9UyPAdJueJbeimsBN2xu0p/mgPzNNUB
 Az3xdWvGZ90Do69yIIKz07Et0B8IiYY/Vnmi1cIXNqrZtaAHrMGqwcD
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_044540_136540_49662439 
X-CRM114-Status: GOOD (  12.09  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/31] ARM: dts: am62l: Fix assigned-clock-parents
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




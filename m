Delivery-date: Mon, 15 Sep 2025 16:42:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyAP3-003LdX-1L
	for lore@lore.pengutronix.de;
	Mon, 15 Sep 2025 16:42:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyAP2-0004h2-SM
	for lore@pengutronix.de; Mon, 15 Sep 2025 16:42:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nQ+cU6p/Bl8xhnZCEbt9yykF59XMi2zmjJFxd7uqZrw=; b=Te7UTzPh5szwFy3Zs9LVGsxbXJ
	lgUWZRwscgtH7tBBubmOZL0RK5N29Tw+gzrxeIaFviw9E0U2NXzCHg2JtAnO+tv3SvwyMCNZ7GUh3
	wP7KgVm4J1kjqDbA7+1brYC35/4Pr7lBrD+3RUpsrolKXZ/Q4tS5H1zY2h8C4lLmnZf4ymIK7kv3x
	b2BLtpCxmDKx7hQU+af6GfM92C8BjXk9j41qv/qBUpFKo0l+Sp1fOeM20KKiIcBNqkCkdRtEIOz6+
	5EGB1YLqy1lyLlAxBTAyIAbvXvpUgGw90vhrHZSYpJGJRm7QJ2AmLHNEFmxVvQY8uBbo4bjMt21Sr
	099Sg7fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyAOf-00000004kjd-440g;
	Mon, 15 Sep 2025 14:41:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyAOd-00000004kiI-1Djo
	for barebox@lists.infradead.org;
	Mon, 15 Sep 2025 14:41:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyAOb-0004VW-QR; Mon, 15 Sep 2025 16:41:33 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyAOb-001RAE-24;
	Mon, 15 Sep 2025 16:41:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyAOb-00000007fbC-2EVZ;
	Mon, 15 Sep 2025 16:41:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 15 Sep 2025 16:41:26 +0200
Message-ID: <20250915144126.1828195-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_074135_333290_D9BB082E 
X-CRM114-Status: UNSURE (   9.12  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: k3-am62l: read MAC address from E-Fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-main.dtsi   | 1 +
 arch/arm/dts/k3-am62l-wakeup.dtsi | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-main.dtsi b/arch/arm/dts/k3-am62l-main.dtsi
index b7b52d6b56..f1f67c1cc4 100644
--- a/arch/arm/dts/k3-am62l-main.dtsi
+++ b/arch/arm/dts/k3-am62l-main.dtsi
@@ -744,6 +744,7 @@ cpsw_port1: port@1 {
 				ti,mac-only;
 				label = "port1";
 				phys = <&phy_gmii_sel 1>;
+				ti,syscon-efuse = <&cpsw_mac_syscon 0x0>;
 			};
 
 			cpsw_port2: port@2 {
diff --git a/arch/arm/dts/k3-am62l-wakeup.dtsi b/arch/arm/dts/k3-am62l-wakeup.dtsi
index 1e4ca8ec7b..272110daab 100644
--- a/arch/arm/dts/k3-am62l-wakeup.dtsi
+++ b/arch/arm/dts/k3-am62l-wakeup.dtsi
@@ -129,5 +129,10 @@ chipid: chipid@14 {
 			reg = <0x14 0x4>;
 			bootph-all;
 		};
+
+		cpsw_mac_syscon: ethernet-mac-syscon@2000 {
+			compatible = "ti,am62p-cpsw-mac-efuse", "syscon";
+			reg = <0x2000 0x8>;
+		};
 	};
 };
-- 
2.47.3




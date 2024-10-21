Delivery-date: Mon, 21 Oct 2024 09:25:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2mmv-006yv4-1M
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 09:25:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2mmu-0006GI-TE
	for lore@pengutronix.de; Mon, 21 Oct 2024 09:25:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oBgp1Xnkoq5x0YI6FKLcgtYIx1NWzP4tigGg7nUwiio=; b=u2/E0ERlNC0T1xOx3QYmvVyYBA
	tYWS4Sb4DHLswx+9e68ZNrHsZXvZb2CdVdt5b062HTFuEykbQHGqGLdK8kDv64VrF8dsyDEWyGj4K
	iTR3Fd39zp11p6E5U5H6vysd4l0fSPwtnBZo+S4Yz2qEFmMsjo1kWMj5dVBSiOJfVW6eZ1fcUPnZ1
	33axihS5qvXnTNcofGvXZ0EkWYjWiqonVqGnYyMosBnKkjtvh22nXnAohUaw2cOPpZ2QCAidwwWiB
	Ay7iVZ1k67hQLlEoEfb1BLQWk18rG2m754/982sFfkgqi94hGVggSnw8UgS//A+N0fY9VNRrgJzLK
	+AOy/I5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mmH-00000006MXg-2iNS;
	Mon, 21 Oct 2024 07:24:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mj9-00000006Lml-3AvY
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 07:21:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-0005o0-VR; Mon, 21 Oct 2024 09:21:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-000ecW-1r;
	Mon, 21 Oct 2024 09:21:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-00FGWz-1b;
	Mon, 21 Oct 2024 09:21:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Oct 2024 09:21:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-arm-layerscape-tfa-v1-9-0980697b6f66@pengutronix.de>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
In-Reply-To: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729495277; l=610;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lG7BSUGaq/ymo2vZVj1WIOgcK/FnCrRM0YH2KkjjgV4=;
 b=mUiuKquZRuHeD0VBiQZH1sIywI3/N0st7uZJNxj31Rkmyg5XBSg5SAPNbdgkgsp50Gfv3dUXO
 fNiCU4Qo/lrDZGJp2gQBd+ZY+u+QMG4n+e8v51UvL+rzzlbmb8NnIAg
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_002119_890733_F3710C13 
X-CRM114-Status: UNSURE (   9.66  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] ARM: Layerscape: LS1046a: add PSCI node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike other SoCs the LS1046a upstream dtsi files do not have a PSCI
node. Add one for barebox and Linux to find the PSCI support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/fsl-ls1046a.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/dts/fsl-ls1046a.dtsi b/arch/arm/dts/fsl-ls1046a.dtsi
index a661cb0c89..2dc24ba8c7 100644
--- a/arch/arm/dts/fsl-ls1046a.dtsi
+++ b/arch/arm/dts/fsl-ls1046a.dtsi
@@ -4,4 +4,9 @@ / {
 	aliases {
 		mmc0 = &esdhc;
 	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
 };

-- 
2.39.5




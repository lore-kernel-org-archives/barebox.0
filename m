Delivery-date: Wed, 06 Sep 2023 15:12:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdsKh-0060k6-35
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 15:12:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdsKf-0000BC-Bw
	for lore@pengutronix.de; Wed, 06 Sep 2023 15:12:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7BeXTP6m40ZXG2yu5UhRg+xYVzmAjALE9nyL7qmVFNw=; b=PFuYtAQ9XQNx6obm2ZCfUzWp+5
	+rfAhhl4hOGx8UdvWxGyspZ0BptOFoFotf8mkKxAoC/sCHDXfShbatUemxru0uDjkJF573amOuQEA
	vMsidpAuz1fTDIZBeZyhOsgzuforuB9B03NWYLl+Ui4ZqZjXAx2kPUCt8PX5E9EolCOTyw7LI/QTU
	aHQSqYpMJwyIBQfY8uCEwSxITPLONUAuO6ZFnVeqcTHSiQXykvs5PA19dn2jryWhiDE/FlJ5LjRIt
	1wz3ifZJMz9dWJXP+KOdXutFPR8b4yksce0xhTPyDtOuCYrTSBbp8c3wK5ApviMB9x9gcEhw9o0o7
	69ZgPnOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdsJU-009thU-13;
	Wed, 06 Sep 2023 13:11:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdsJQ-009tdx-1W
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 13:11:18 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1qdsJO-0008GM-HV; Wed, 06 Sep 2023 15:11:14 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de,
	Bastian Krause <bst@pengutronix.de>
Date: Wed,  6 Sep 2023 15:11:13 +0200
Message-Id: <20230906131113.1593228-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_061116_509710_D46F8B6C 
X-CRM114-Status: UNSURE (   7.61  )
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
Subject: [PATCH] ARM: dts: i.MX8: add pwm aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 arch/arm/dts/imx8mm.dtsi | 4 ++++
 arch/arm/dts/imx8mn.dtsi | 9 +++++++++
 arch/arm/dts/imx8mp.dtsi | 7 +++++++
 3 files changed, 20 insertions(+)

diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
index 22ae01a20a2..982174375ec 100644
--- a/arch/arm/dts/imx8mm.dtsi
+++ b/arch/arm/dts/imx8mm.dtsi
@@ -5,6 +5,10 @@
 / {
 	aliases {
 		gpr.reboot_mode = &reboot_mode_gpr;
+		pwm0 = &pwm1;
+		pwm1 = &pwm2;
+		pwm2 = &pwm3;
+		pwm3 = &pwm4;
 	};
 };
 
diff --git a/arch/arm/dts/imx8mn.dtsi b/arch/arm/dts/imx8mn.dtsi
index 17e8f78bf2d..098bf0a3671 100644
--- a/arch/arm/dts/imx8mn.dtsi
+++ b/arch/arm/dts/imx8mn.dtsi
@@ -2,6 +2,15 @@
 
 #include <dt-bindings/features/imx8m.h>
 
+/ {
+	aliases {
+		pwm0 = &pwm1;
+		pwm1 = &pwm2;
+		pwm2 = &pwm3;
+		pwm3 = &pwm4;
+	};
+};
+
 feat: &ocotp {
 	#feature-cells = <1>;
 	barebox,feature-controller;
diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 0059c7b87b6..04767ad382c 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -8,6 +8,13 @@ remoteproc_cm7: remoteproc-cm7 {
 		clocks = <&clk IMX8MP_CLK_M7_CORE>;
 		syscon = <&src>;
 	};
+
+	aliases {
+		pwm0 = &pwm1;
+		pwm1 = &pwm2;
+		pwm2 = &pwm3;
+		pwm3 = &pwm4;
+	};
 };
 
 /* Temporary workaround until snps,gfladj-refclk-lpm-sel-quirk is supported */
-- 
2.39.2




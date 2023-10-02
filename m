Delivery-date: Mon, 02 Oct 2023 12:18:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0Z-001uHc-MY
	for lore@lore.pengutronix.de; Mon, 02 Oct 2023 12:18:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0W-00042t-Op
	for lore@pengutronix.de; Mon, 02 Oct 2023 12:18:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mVSMJ5Okc2pAUqp/nD/aYOrEdgQXg/KCNfEN0vhWoOw=; b=lQe9j9DdO0fgBzPqirpMEO3C9C
	z7xd5ozlSS44lI+UqvBwgAdR9ocjo76NMWKXr5dcwnEmKU19yHZspF+LQYYkqMgFAVecI4Z9/79JY
	8yz2pgsR2KfZx657/CxGVsFBZSVFIF2n3jCENwUWx9xZyZGSGPGQzhJGbGLRZ9pqTCsIhOnjuSaRJ
	jdksLyAt0w9+Vqfi2pxvBVhun2wAQvRDLjuCj4AuoctILf/38lCemBpN6ANPdMnabsYg/P83iw2rC
	YQGfUsRUV9AE7wmrdkox093cKF+hrvDerPNXZeMPlXCKKXwpkscU7lN6XTe7aZJj1ZR1evRpIes+L
	AFBq9fcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFzI-00CIlg-1G;
	Mon, 02 Oct 2023 10:17:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFz8-00CIgy-2r
	for barebox@lists.infradead.org;
	Mon, 02 Oct 2023 10:17:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz6-0003TO-8f; Mon, 02 Oct 2023 12:17:04 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-00AV2N-LH; Mon, 02 Oct 2023 12:17:03 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-009xL7-1w;
	Mon, 02 Oct 2023 12:17:03 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  2 Oct 2023 12:16:47 +0200
Message-Id: <20231002101654.2373000-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002101654.2373000-1-o.rempel@pengutronix.de>
References: <20231002101654.2373000-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_031706_968957_68362D39 
X-CRM114-Status: GOOD (  10.44  )
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
Subject: [PATCH v2 03/10] arm: dts: imx8mp-skov: Switch to GPT for eMMC partitioning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move away from using device tree to define eMMC partitions for
imx8mp-skov. Adopt GPT based partitioning, specifically for the
barebox-environment. And prepare it for state partition in the next
patch.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx8mp-skov.dts | 20 +-------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
index 4b73022938..1d4738dbd7 100644
--- a/arch/arm/dts/imx8mp-skov.dts
+++ b/arch/arm/dts/imx8mp-skov.dts
@@ -22,7 +22,7 @@ environment-sd {
 
 		environment-emmc {
 			compatible = "barebox,environment";
-			device-path = &env_emmc;
+			device-path = &usdhc3, "partname:barebox-environment";
 			status = "disabled";
 		};
 	};
@@ -103,24 +103,6 @@ env_sd: partition@e0000 {
 	};
 };
 
-&usdhc3 {
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <2>;
-		#size-cells = <2>;
-
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0x0 0x0 0x100000>;
-		};
-
-		env_emmc: partition@e0000 {
-			label = "barebox-environment";
-			reg = <0x0 0x100000 0x0 0x100000>;
-		};
-	};
-};
-
 &A53_0 {
 	cpu-supply = <&buck2>;
 };
-- 
2.39.2




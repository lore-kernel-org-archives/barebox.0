Delivery-date: Thu, 28 Sep 2023 13:00:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlokw-00F2P6-H4
	for lore@lore.pengutronix.de; Thu, 28 Sep 2023 13:00:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlokt-0003hX-Ru
	for lore@pengutronix.de; Thu, 28 Sep 2023 13:00:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wNslZG/SnNXb5mLMbuU1DE8yFwhrVnbZnhMAKpquu/w=; b=ONZ1UM2Ycaw3u+LFLaRQfpVSTv
	Z4CqzC2oBkDRntJQLPgY/0mLwkACfQ697HxuNCxah2G73csMUrMYjONruWi2ll2U8eaBvAY9OpY0P
	6wQOEmWCKcfz7cV2osgb0OY9s1vRtup0bWcXIKKKhnK0dxBlk4C98zc2tkM0VMGY1cUhEDZXtkKc6
	8l2BMJbgsinUHSB0mRkXJYNOwiMPBj5ymhe99w0ZnKCb417kbRalGbTRoNKsih4ARkYrUbjmAutKC
	7G6u5MAKrQ0RFq0hvzYoKFgdR3UieEoSbup3ufdRxz7Pvtc/stvwszwylpLeQR1L3cqB7oMw4TwA0
	b2H9oBBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlojN-0030EB-0m;
	Thu, 28 Sep 2023 10:58:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlojE-00305t-1r
	for barebox@lists.infradead.org;
	Thu, 28 Sep 2023 10:58:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-00032z-Si; Thu, 28 Sep 2023 12:58:38 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-009Yat-CK; Thu, 28 Sep 2023 12:58:38 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qloj8-00AXdq-12;
	Thu, 28 Sep 2023 12:58:38 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 28 Sep 2023 12:58:34 +0200
Message-Id: <20230928105837.2512555-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928105837.2512555-1-o.rempel@pengutronix.de>
References: <20230928105837.2512555-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_035844_718287_E34196E7 
X-CRM114-Status: GOOD (  10.56  )
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
Subject: [PATCH v1 4/7] arm: dts: imx8mp-skov: Simplify SD partition definition to 1 cell
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Update the partition definitions for SD card in imx8mp-skov to use
single cell for address and size, streamlining the format.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx8mp-skov.dts | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
index 1d4738dbd7..b94b9dd51d 100644
--- a/arch/arm/dts/imx8mp-skov.dts
+++ b/arch/arm/dts/imx8mp-skov.dts
@@ -88,17 +88,17 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 &usdhc2 {
 	partitions {
 		compatible = "fixed-partitions";
-		#address-cells = <2>;
-		#size-cells = <2>;
+		#address-cells = <1>;
+		#size-cells = <1>;
 
 		partition@0 {
 			label = "barebox";
-			reg = <0x0 0x0 0x0 0x100000>;
+			reg = <0x0 0x100000>;
 		};
 
-		env_sd: partition@e0000 {
+		env_sd: partition@100000 {
 			label = "barebox-environment";
-			reg = <0x0 0x100000 0x0 0x100000>;
+			reg = <0x100000 0x100000>;
 		};
 	};
 };
-- 
2.39.2




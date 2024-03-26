Delivery-date: Tue, 26 Mar 2024 11:37:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4BS-0054bz-2X
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:37:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4BQ-00031c-QS
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:37:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yuiHILuiYYNX3HTi5sODZo7BT2hz+GYYOlP4dBqDUzo=; b=F+24AkOq8JsOgzSxPpTCjDECHw
	8zPdvRtS7HwGvEn0H8SBxbmyBQtMRdpu9EyTl0Pad+m6vGNlMvHLVTT7S20g3yhOX9mAmmTVOY2a+
	xJ3WA0tosRBHAFcDCarxjG1NP1vwBnYqOMOwcgA4yYWgxOwpxHTBupunWaKQOG1o7EhxaltjO1tdd
	l2DJg5yCSii2sNwG7OO6GGTb8dr9Bcf0l03cSbw1+maGX+h9t6F2Li1A5dqdhs3IonR6hQq0Rh5GY
	Gjhh2ymwXn/2UdaQU7hoa9TMbzjqiotZG+vcol6Dm71pRdHgO4TdNVQ8/WiVfLAaymzHk5uB++CX0
	cvKAQJXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp4Ai-000000045mm-2DKQ;
	Tue, 26 Mar 2024 10:36:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp4AJ-000000045WM-0Knx
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:36:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49t-00023S-ND; Tue, 26 Mar 2024 11:35:57 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49r-008b6t-Lb; Tue, 26 Mar 2024 11:35:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-2L;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:46 +0100
Message-Id: <20240326100746.471532-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_033623_357882_FE1C86DD 
X-CRM114-Status: GOOD (  10.90  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 16/16] ARM: dts: rk3588-rock-5b: remove pci ranges quirks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We did not support non 1:1 mappings between CPU and PCI bus, so
we had to adjust the ranges property to be 1:1 instead to make
PCIe work on the Rock-5b board. This has been fixed now, so we can
remove the overwritten ranges property.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3588-rock-5b.dts | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/arch/arm/dts/rk3588-rock-5b.dts b/arch/arm/dts/rk3588-rock-5b.dts
index ddff76028e..0af5442870 100644
--- a/arch/arm/dts/rk3588-rock-5b.dts
+++ b/arch/arm/dts/rk3588-rock-5b.dts
@@ -62,21 +62,6 @@ &pcie30phy {
 	status = "disabled";
 };
 
-&pcie2x1l2 {
-	/*
-	 * Originally in upstream dts this is:
-	 * ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
-	 *          <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x00e00000>,
-	 *          <0x03000000 0x0 0x40000000 0xa 0x00000000 0x0 0x40000000>;
-	 *
-	 * Overwriting this shouldn't be necessary, but without it PCI doesn't
-	 * work. We have some deficiency in the PCI driver that causes this.
-	 */
-	ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
-		 <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x00e00000>,
-		 <0x03000000 0xa 0x00000000 0xa 0x00000000 0x0 0x40000000>;
-};
-
 &pcie2x1l0 {
 	/* Does not work in barebox */
 	status = "disabled";
-- 
2.39.2




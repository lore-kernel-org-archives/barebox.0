Delivery-date: Wed, 03 Sep 2025 08:14:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utglf-007XyU-0w
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:14:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgle-0006Ga-4U
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:14:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vlBsPJoH5lRZYeGlea4VEsG7G/zS2NXhfbtsCyZbqh4=; b=K3e3p3FeJyGQtyn1nAed4RzNqZ
	bfV903zuS3GHasF8wIOny47gGPo3LK9/QsVm+NRrc1rRuR4uVwasfOHAxl12hNz3xBIr/zRTRWtY3
	yYf2Fy8xMxyNbpG+o7ybWMaknE6pW9WsarqjgOydfjmBbh0wYqeUPZMA5JVVmKuvkMjs7s9hPJAwy
	+ym/ck+pns5aqWTmaMj3CepbCgPLcCCkM+tMIm0syeY2iGxsOZ9uuQhN+joGtkOzNtaE6nqA0F/TJ
	peaQAPhrwYucXqIBRoU2ScPyJEk/NWzKy/bf4GLvLXcSJg4yF8B/LQOr/KrDezWlaJEM78+Bebm6Q
	z7jsQc5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgl4-00000004WCX-1WKg;
	Wed, 03 Sep 2025 06:14:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgjQ-00000004VXh-1Vfm
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:12:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgjN-0005q8-AS; Wed, 03 Sep 2025 08:12:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgjN-003Vwm-0R;
	Wed, 03 Sep 2025 08:12:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgjN-00000009kLY-085s;
	Wed, 03 Sep 2025 08:12:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  3 Sep 2025 08:12:27 +0200
Message-ID: <20250903061227.2323100-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_231232_431518_B01361A3 
X-CRM114-Status: UNSURE (   8.85  )
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
Subject: [PATCH] ARM: rk3576-prtpuk: remove unused vp0_out_dsi1 node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

compiliing rk3576-prtpuk-linux.dts generates a warning:

arch/arm/dts/rk3576-prtpuk-linux.dts:448.28-451.4: Warning (graph_endpoint): /soc/vop@27d00000/ports/port@0/endpoint@10: graph node unit address error, expected "a"

The node is unused currently in its incomplete state, so just remove it.
While at it remove commented out pwm nodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3576-prtpuk-linux.dts | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/arch/arm/dts/rk3576-prtpuk-linux.dts b/arch/arm/dts/rk3576-prtpuk-linux.dts
index 2085adbaa8..d3b7d07718 100644
--- a/arch/arm/dts/rk3576-prtpuk-linux.dts
+++ b/arch/arm/dts/rk3576-prtpuk-linux.dts
@@ -443,20 +443,3 @@ &vop {
 &vop_mmu {
 	status = "okay";
 };
-
-&vp0 {
-	vp0_out_dsi1: endpoint@ROCKCHIP_VOP2_EP_DP0 {
-		reg = <ROCKCHIP_VOP2_EP_DP0>;
-		/* remote-endpoint = <...>; ?? */
-	};
-};
-
-/*
-&pwm1 {
-	status = "okay";
-};
-
-&pwm2 {
-	status = "okay";
-};
-*/
-- 
2.47.2




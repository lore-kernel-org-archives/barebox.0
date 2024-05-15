Delivery-date: Wed, 15 May 2024 15:17:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7EVD-00FrWH-0m
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 15:17:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7EVC-0000Rc-8N
	for lore@pengutronix.de; Wed, 15 May 2024 15:17:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pREL0FvWp8ckT1rmOfd9gOIQGxbWp8k6Sb6Sr3DxPPg=; b=0xoDfZW98LbLQd5tYXOprkdM58
	cmOKMnyu96ZHGDHCOfs2VLZtTeH44pwHtjfpo+ANklxnPFhHCg333SrQPkAl1J7CG4BzsFSOC4voi
	jMwE4bvQreeok5LdGsG0uQNSIA4RsqoOsaYVm5oT+Wip5kuuHAg20sCgF5v/wgYTjm7O7NKTaWtVm
	zglWK9sY4SLW9v1E0Bh32oEGjJF7DXM0j4STUGXSYV24ou7w/d47YMu8pEWL4HPbxTb5tjyDDobsH
	dCbRmoQHYK6qSPvYzqqOBlRc6mEm2cLbTh5uUVwVEkL8NWnoSIwiAAn3vM5BE1H7i7dzIHcjbLA+U
	lnME1HhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7EUe-00000001cSp-41mm;
	Wed, 15 May 2024 13:16:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7EUb-00000001cR3-3ndg
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 13:16:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1s7EUZ-0008W0-4H; Wed, 15 May 2024 15:16:23 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1s7EUY-001Xj9-OI; Wed, 15 May 2024 15:16:22 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1s7EUY-001eNP-2F;
	Wed, 15 May 2024 15:16:22 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 15 May 2024 15:16:08 +0200
Message-Id: <20240515131607.393479-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_061625_973802_129A963A 
X-CRM114-Status: GOOD (  11.35  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: GoMe e143_01: fix default state priorities
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

During the initial installation we can forgo writing an initial state
variable set to the eMMC if it is zeroed, and if the default values
priorities are set correctly. Since only the first rootfs partition is
populated during the install process, it should be preferred over the
second rootfs.

Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/arm/dts/imx7d-gome-e143_01.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx7d-gome-e143_01.dts b/arch/arm/dts/imx7d-gome-e143_01.dts
index ea118ddc76f7..ed7f3cfa216b 100644
--- a/arch/arm/dts/imx7d-gome-e143_01.dts
+++ b/arch/arm/dts/imx7d-gome-e143_01.dts
@@ -50,7 +50,7 @@ remaining_attempts@0 {
 				priority@4 {
 					reg = <0x4 0x4>;
 					type = "uint32";
-					default = <10>;
+					default = <20>;
 				};
 			};
 
@@ -67,7 +67,7 @@ remaining_attempts@8 {
 				priority@c {
 					reg = <0xc 0x4>;
 					type = "uint32";
-					default = <20>;
+					default = <10>;
 				};
 			};
 
-- 
2.39.2




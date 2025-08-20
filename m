Delivery-date: Wed, 20 Aug 2025 14:19:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmT-002cDZ-1l
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 14:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohmS-0007qD-Du
	for lore@pengutronix.de; Wed, 20 Aug 2025 14:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5vTweKdZemGhfvNsCYLgvqVzFglXHj0DByxu49yql6s=; b=XREpD1dEg/C7kICw4CWMtMuuMr
	vM/cAa41mjBGRbguTzhl263Z/o7z0f9hdsOVL/t3nEHzrPp0ZSiZQ2/lw2YydJ3muG/6vC38vcAwT
	X3CIM5/kLQqo1lRuYObG1/PyjHPO3E/A6uStVhDA2loiHSS4WHkVudOGjsYNba3F2iilZCMnrQ4gB
	TrMfbNxJe3bb6euaGtSfRkUPsMgYoDIoFkKtmwVR6I8yPvYb/iwFKfPtSIgi1KhJA8XKg0zXcM4r/
	/DWg6OVo21sAxeqYIpDW75SREx9nr9sTMIMyIjiBUjlmS/7bmy95XqGQnya0siSMZdurHCwPAqSvQ
	OvR6syVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohmH-0000000DXBm-03vU;
	Wed, 20 Aug 2025 12:18:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofsQ-0000000D6uy-16bd
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 10:17:08 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uofsN-0005Ap-Qi; Wed, 20 Aug 2025 12:17:03 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 20 Aug 2025 12:16:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-rkimage-signed-v1-3-0ad3d1d1c952@pengutronix.de>
References: <20250820-rkimage-signed-v1-0-0ad3d1d1c952@pengutronix.de>
In-Reply-To: <20250820-rkimage-signed-v1-0-0ad3d1d1c952@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_031706_314910_21F4A189 
X-CRM114-Status: GOOD (  11.25  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] ARM: rockchip: bootm: don't propagate error from
 register_image_handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

register_image_handler() always returns 0 and never fails.

Make this obvious by not propagating the return code from
register_image_handler() but always returning 0 in
rockchip_register_barebox_image_handler().

This is a preparation for adding more image handlers for Rockchip.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-rockchip/bootm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/bootm.c b/arch/arm/mach-rockchip/bootm.c
index 6f4aa278087639cf2088c4e0f83929f7c2b59db9..097b0af7d8ba29a37e50dcb0f7d823c0456d1020 100644
--- a/arch/arm/mach-rockchip/bootm.c
+++ b/arch/arm/mach-rockchip/bootm.c
@@ -118,6 +118,8 @@ static int rockchip_register_barebox_image_handler(void)
 	if (rockchip_soc() < 0)
 		return 0;
 
-	return register_image_handler(&image_handler_rkns_barebox_image);
+	register_image_handler(&image_handler_rkns_barebox_image);
+
+	return 0;
 }
 late_initcall(rockchip_register_barebox_image_handler);

-- 
2.39.5




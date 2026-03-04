Delivery-date: Wed, 04 Mar 2026 14:06:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxlvW-007zOP-0p
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 14:06:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxlvW-0003ZM-KU
	for lore@pengutronix.de; Wed, 04 Mar 2026 14:06:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rdcz2+rm59epJ70bka6XdyV5PSPSea84ZKdBId89VTA=; b=NPbH8frPOSqhEl
	IEGjRfy7XZAgdKOP6itS/RSErIUfECwxlkPVCDjgDhV7aFhq8Yas6A5JzQnFSZUPXrQvz5B4WXn7m
	WEuf87L1hXYLq3f0Y898BHnmjpF2DulGjh9VC4SbkFy31tGT3FRN8HK9OWrcGcIxo9ON0wGjWB/D1
	G4agvl4SbLxOzsdv/YHa+CTwn0v6jgTcX0ivVO93ovhq5HNX6kfGsuF4Mro/BOrwgTATsbtnhWfzy
	drQf4Ola0IN6YCwpc70Gj2H84zuQkyLuA4zX64YLP2eiJKWtCW58LnoEJmy5Xk6d7TVAev5nebQ4Q
	n6X4icVbh7gBkeGlUEcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxlv2-0000000HDiv-2EWL;
	Wed, 04 Mar 2026 13:05:40 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxlv0-0000000HDiW-35xA
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 13:05:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=Rdcz2+rm59epJ70bka6XdyV5PSPSea84ZKdBId89VTA=;
	b=XmOcnjjNTwjHybI5naiQDoJz9l4NskVxdNb7XIuzcKesBdShrce8lQXcz0T2UwLbNNbmqMbKxyk73
	 5j7G1tlzvhMGpqOFOdVxEiipZtOSawQ4p4ZcVUOs/RTewRqed53MPLIdOUQQ6oIi5BRlPQInaVHIB8
	 c8J3WahjUuU9ps4ZMVvnB1LGwOF4m3cGedj1CidMtUjYTIdcJlxhmwPVCGHRbPekuE1XHH+tijviT1
	 BtCSwnne48ebwjeCfx4n1muPk3p0e9F/psu4igCeZYjWfO6kjyyNtNFzSr7pQwJKV9gjIt4HXbYV9E
	 XaYZtOmeUad0H/gwppnJk7XCjfxXjUg==
X-MSG-ID: d5a21c36-17ca-11f1-9155-005056817704
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 14:05:34 +0100
Message-ID: <20260304130534.559591-1-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_050538_936062_66F982E4 
X-CRM114-Status: UNSURE (   9.21  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] phy: rockchip: naneng-combphy: Fix number of phys in the RK3562
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RK3562 has only one combphy with only 1 phy_id.

Fixes: 2edcc72c (phy: rockchip: naneng-combphy: Add RK3562 support)

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 4a2e5f11ee..de8d88afd3 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -550,7 +550,7 @@ static const struct rockchip_combphy_grfcfg rk3562_combphy_grfcfgs = {
 };
 
 static const struct rockchip_combphy_cfg rk3562_combphy_cfgs = {
-	.num_phys = 2,
+	.num_phys = 1,
 	.phy_ids = {
 		0xff750000
 	},
-- 
2.43.0




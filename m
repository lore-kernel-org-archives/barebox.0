Delivery-date: Thu, 14 Apr 2022 09:57:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neuLj-001SSw-JX
	for lore@lore.pengutronix.de; Thu, 14 Apr 2022 09:57:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neuLh-0003y0-3D
	for lore@pengutronix.de; Thu, 14 Apr 2022 09:57:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O1Fdf2A1xVZ2uH6PiRgYBvYJr/ULCt649YdKfVy0FyI=; b=d5xqm6vmR7XX7F
	0MdTp2cbQ9WIwJH07LyIMRJeQQdHAyynrZBeltkpwYLtEO2bKjNkexAgx8krupSjAs/+3lAGYa+Qn
	Hu4x0H/8Y0t0Hidu+FpJrKwDh7OtFKzS/ZyGYgMWQBPH8tT2imoHnYscrzuc0ScGkxnCl7pqYaPQP
	6+DbiqEeeXNoIz0i+WCtrghjjHbqNwRPh3CKehrPphuxPWgUot5FttAxB7d81TAgg7PwtLrfkEWIh
	PwAttBvkTXEBYD+8LLPHQJ8QvFHpE2t9WN8/FijmA3RBOREM6BE3qyHxkdJbJaWHzc4qhxxFrPWG+
	xqFZrtzBjWVG9OuyEFIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neuKL-004Rz8-Bl; Thu, 14 Apr 2022 07:55:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neuKG-004Rym-PP
 for barebox@lists.infradead.org; Thu, 14 Apr 2022 07:55:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1neuKE-0003gx-8W; Thu, 14 Apr 2022 09:55:34 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neuKE-002w9Z-WE; Thu, 14 Apr 2022 09:55:33 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1neuKC-005kx2-La; Thu, 14 Apr 2022 09:55:32 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 14 Apr 2022 09:55:30 +0200
Message-Id: <20220414075530.1372003-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_005536_864598_0534B94E 
X-CRM114-Status: GOOD (  14.85  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1] net: phy: do not call adjust_link() form
 phy_device_attach()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

phy_device_attach() is usually called from eth_open() to enable
interface, configure MAC, etc. Some times we have situations like this:
1. find and configure PHY
2. define PHY as clock provider for MAC
3. reset and configure MAC
4. detect link and speed and configure MAC accordingly.

Which works as expected unless we use fixed PHY. Since fixed-phy was
handled differently by the PHY code, we did step 4. before step 3. In
this case we will loose MAC speed configuration at least on designware-eqos
Ethernet controller.

With this change, we handle real PHY and virtual fixed-PHY in the same way.
So, adjust_link() (step 4.) will be called after edev->open() (step 3.)
as it should be for both variants.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/phy.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 85cdd7862f..adff9dadd1 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -54,6 +54,13 @@ int phy_update_status(struct phy_device *phydev)
 			return ret;
 	}
 
+	/*
+	 * If the phy is a fixed-link, set it to active state to trigger
+	 * MAC configuration
+	 */
+	if (!phydev->bus && !phydev->link)
+		phydev->link = 1;
+
 	if (phydev->speed == oldspeed && phydev->duplex == oldduplex &&
 	    phydev->link == oldlink)
 		return 0;
@@ -311,7 +318,7 @@ struct phy_device *of_phy_register_fixed_link(struct device_node *np,
 
 	phydev->dev.parent = &edev->dev;
 	phydev->registered = 1;
-	phydev->link = 1;
+	phydev->link = 0;
 
 	if (of_property_read_u32(np, "speed", &phydev->speed))
 		return NULL;
@@ -401,10 +408,6 @@ static int phy_device_attach(struct phy_device *phy, struct eth_device *edev,
 
 	phy->adjust_link = adjust_link;
 
-	/* If the phy is a fixed-link, then call adjust_link directly */
-	if (!phy->bus && adjust_link)
-		adjust_link(edev);
-
 	return 0;
 }
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Mon, 26 Sep 2022 10:19:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjL0-00F9ix-OH
	for lore@lore.pengutronix.de; Mon, 26 Sep 2022 10:19:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ocjKz-0001eD-IR
	for lore@pengutronix.de; Mon, 26 Sep 2022 10:19:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nMKp17DYZZfq7rk+tO+fuUiPfurYczWL+mb86LRYuTo=; b=Wlnm0K6Ok7KNIv4n3m/zvMcAgK
	zS017AiPu8efBK+KNiYBE9vBdHiuazdVArZ3RZq7dXmxRVt+dX/ydKF2dcPtzDJrwjLZI/h8DfxWw
	FZAoQejGrvhhM0WRJtr7JKGQHBVhvqnvJfhRUqamkI9gXAHfUlYx7tPJj7Pt4IFOmpXgAc0JnrDQa
	30gwB0rxuftWCYnj7h2QRP+wnl9CmgPofVS6/3DA3Rp869Ru9YcnZyyDNWDQuAuq9ArB/tHf4tOVG
	xerfUPGblJR3Q6R2D4q9q16R0iGf8UzQ611KMr+bg7WsycTL4RX9k32Vdj7q86kGTGdWobccmlmgx
	UjkeX7Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJT-0034Kr-Na; Mon, 26 Sep 2022 08:18:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocjJE-00347i-6b
	for barebox@lists.infradead.org; Mon, 26 Sep 2022 08:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJB-0001Dn-7j; Mon, 26 Sep 2022 10:17:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJB-002zkD-Tk; Mon, 26 Sep 2022 10:17:44 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1ocjJ9-000K2K-4B; Mon, 26 Sep 2022 10:17:43 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Sep 2022 10:17:33 +0200
Message-Id: <20220926081740.76968-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_011748_311333_C3F3F064 
X-CRM114-Status: GOOD (  10.36  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/8] mdio_bus: do reset only on PHY devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Do not reset MDIO devices. Device drivers should handle it.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index f06ab68f50..a68b0e47c0 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -263,12 +263,13 @@ static int of_mdiobus_register(struct mii_bus *mdio, struct device_node *np)
 		}
 
 		of_pinctrl_select_state_default(child);
-		of_mdiobus_reset_phy(mdio, child);
 
-		if (of_mdiobus_child_is_phy(child))
+		if (of_mdiobus_child_is_phy(child)) {
+			of_mdiobus_reset_phy(mdio, child);
 			of_mdiobus_register_phy(mdio, child, addr);
-		else
+		} else {
 			of_mdiobus_register_device(mdio, child, addr);
+		}
 	}
 
 	return 0;
-- 
2.30.2




Delivery-date: Wed, 21 Feb 2024 16:04:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8o-00HNoa-05
	for lore@lore.pengutronix.de;
	Wed, 21 Feb 2024 16:04:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rco8n-0005AJ-89
	for lore@pengutronix.de; Wed, 21 Feb 2024 16:04:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RXn4FNye2RiRf+69wYfSRqR/KKlZKiGGKuT1NdlzGOY=; b=MnNsleFOZ8nRFqhP3SiTsPHVGW
	i+NLfy5+nhGWwba/IifwvIRQfXtTxCDLIChN1VsyJCgUebiAJcGXvNKWtOnnw/BbXL1OldBqp0y5D
	JdJMaoS3APMxXPIDHDogwVyW9Oz8amWoIp1lz155cVXrxK41qIe6ei9tiVHZ32TEKnsm/QZSk+qZv
	P4nDbisLdP5kluJGF5EbDDo3O3S2gQzE/BozhLEOjfy1dUwvLyOkulZ13RF2wjPpioNXwk0Gj1Bs5
	cg9tboiTSaIxGCrZk99MJaSQxjTObqwe4bmkzLrVuQXS+o7pOdjysyGaK+KlB0Ft7R7EKQdPv606u
	SgxMTSlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco8A-00000001OP6-1ulY;
	Wed, 21 Feb 2024 15:03:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rco86-00000001OMA-20DG
	for barebox@lists.infradead.org;
	Wed, 21 Feb 2024 15:03:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0004hM-Th; Wed, 21 Feb 2024 16:03:24 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-0023jF-Fh; Wed, 21 Feb 2024 16:03:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rco84-00BYvn-1E;
	Wed, 21 Feb 2024 16:03:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 21 Feb 2024 16:03:22 +0100
Message-Id: <20240221150323.2715164-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221150323.2715164-1-s.hauer@pengutronix.de>
References: <20240221150323.2715164-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_070326_592190_ADD11567 
X-CRM114-Status: GOOD (  15.75  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/8] net: phy: fix miibus parent device of_node not matching phy node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The device node of a miibus parent device usually points to the ethernet
device node whereas the parent device node of a phy device usually
points to the mdio {} subnode between the ethernet node and the phy
node, so both can't match. Ethernet drivers usually provide a pointer
to the mdio {} subnode in miibus::dev.of_node, so use that to match
against the phy nodes parent.

This occured on a TQMa6UL where two FECs are registered, but both phys
are connected to the FEC2.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/mdio_bus.c | 10 +++-------
 drivers/net/phy/phy.c      |  2 +-
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 94123ef614..eed7c779e7 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -316,19 +316,15 @@ int mdiobus_register(struct mii_bus *bus)
 
 	pr_info("%s: probed\n", dev_name(&bus->dev));
 
+	if (!bus->dev.of_node)
+		bus->dev.of_node = bus->parent->of_node;
+
 	if (bus->dev.of_node) {
 		bus->dev.of_node->dev = &bus->dev;
 
 		/* Register PHY's as child node to mdio node */
 		of_mdiobus_register(bus, bus->dev.of_node);
 	}
-	else if (bus->parent->of_node) {
-		/*
-		 * Register PHY's as child node to the ethernet node,
-		 * if there was no mdio node
-		 */
-		of_mdiobus_register(bus, bus->parent->of_node);
-	}
 
 	return 0;
 }
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index ad02732ff9..abd78b2c80 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -358,7 +358,7 @@ static struct phy_device *of_mdio_find_phy(struct eth_device *edev)
 	if (!of_property_read_u32(phy_node, "reg", &addr)) {
 		of_device_ensure_probed(phy_node->parent);
 		for_each_mii_bus(bus) {
-			if (bus->parent->of_node == phy_node->parent) {
+			if (bus->dev.of_node == phy_node->parent) {
 				struct phy_device *phy = mdiobus_scan(bus, addr);
 				if (!IS_ERR(phy))
 					return phy;
-- 
2.39.2




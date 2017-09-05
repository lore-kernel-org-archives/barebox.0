Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra1.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dp9f8-0004Xc-9S
 for barebox@lists.infradead.org; Tue, 05 Sep 2017 08:56:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id 1682328186F
 for <barebox@lists.infradead.org>; Tue,  5 Sep 2017 10:56:25 +0200 (CEST)
Received: from zimbra1.kalray.eu ([127.0.0.1])
 by localhost (zimbra1.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id FovNmJFhmKAt for <barebox@lists.infradead.org>;
 Tue,  5 Sep 2017 10:56:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id BA9DB281981
 for <barebox@lists.infradead.org>; Tue,  5 Sep 2017 10:56:24 +0200 (CEST)
Received: from zimbra1.kalray.eu ([127.0.0.1])
 by localhost (zimbra1.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id rzsfNXRaP0US for <barebox@lists.infradead.org>;
 Tue,  5 Sep 2017 10:56:24 +0200 (CEST)
Received: from zimbra1.kalray.eu (localhost [127.0.0.1])
 by zimbra1.kalray.eu (Postfix) with ESMTP id A8F6B281922
 for <barebox@lists.infradead.org>; Tue,  5 Sep 2017 10:56:24 +0200 (CEST)
Date: Tue, 5 Sep 2017 10:56:24 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalray.eu>
Message-ID: <1566403872.328360912.1504601784430.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Phy: Check NULL bus case and undetected phy via of
To: Barebox List <barebox@lists.infradead.org>

From 5e87dc2c24051c2cd2985e513c5a825d51d9bb00 Mon Sep 17 00:00:00 2001
From: Clement Leger <clement.leger@kalray.eu>
Date: Tue, 5 Sep 2017 10:37:23 +0200
Subject: [PATCH] Phy: Check NULL bus case and undetected phy via of

phy_device_connect can be called with NULL miibus for automatic match
with the phy described in the device tree. In the case where the phy
was not detected for some unknown reason, the next calls will be done
with a NULL bus. This will lead to undefined behavior and more probably
crashes.
---
 drivers/net/phy/phy.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 7132516..e8f7726 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -405,6 +405,11 @@ int phy_device_connect(struct eth_device *edev, struct mii_bus *bus, int addr,
 		goto out;
 	}
 
+	if (!bus) {
+		ret = -ENODEV;
+		goto out;
+	}
+
 	if (addr >= 0) {
 		phy = mdiobus_scan(bus, addr);
 		if (IS_ERR(phy)) {
-- 
1.8.3.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

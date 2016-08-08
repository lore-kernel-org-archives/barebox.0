Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bWlL6-0004Rm-DI
 for barebox@lists.infradead.org; Mon, 08 Aug 2016 14:15:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bWlKk-0006YD-A3
 for barebox@lists.infradead.org; Mon, 08 Aug 2016 16:15:14 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  8 Aug 2016 16:15:14 +0200
Message-Id: <1470665714-29139-1-git-send-email-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] net: phy: fixed-link: read link parameters from devicetree
To: barebox@lists.infradead.org

Implement the missing reading of the fixed link parameters from
the devicetree properties.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v2: fix coding style
---
 drivers/net/phy/phy.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 13b832470926..4f228829e510 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -309,11 +309,14 @@ static struct phy_device *of_phy_register_fixed_link(struct device_node *np,
 
 	phydev->dev.parent = &edev->dev;
 	phydev->registered = 1;
-	phydev->speed = 1000;
-	phydev->duplex = 1;
-	phydev->pause = phydev->asym_pause = 0;
 	phydev->link = 1;
 
+	if (of_property_read_u32(np, "speed", &phydev->speed))
+		return NULL;
+	phydev->duplex = of_property_read_bool(np, "full-duplex");
+	phydev->pause = of_property_read_bool(np, "pause");
+	phydev->asym_pause = of_property_read_bool(np, "asym-pause");
+
 	return phydev;
 }
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

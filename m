Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eiy5L-0008Hh-3F
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 07:54:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Feb 2018 08:54:22 +0100
Message-Id: <20180206075422.25457-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: phy: fixed-link: read link parameters from devicetree
To: Barebox List <barebox@lists.infradead.org>

From: Lucas Stach <l.stach@pengutronix.de>

Implement the missing reading of the fixed link parameters from
the devicetree properties.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/phy/phy.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 2b8fa63c06..42dcad9069 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -309,8 +309,13 @@ static struct phy_device *of_phy_register_fixed_link(struct device_node *np,
 
 	phydev->dev.parent = &edev->dev;
 	phydev->registered = 1;
-	phydev->speed = 1000;
-	phydev->duplex = 1;
+	phydev->link = 1;
+
+	if (of_property_read_u32(np, "speed", &phydev->speed))
+		return NULL;
+	phydev->duplex = of_property_read_bool(np,"full-duplex");
+	phydev->pause = of_property_read_bool(np, "pause");
+	phydev->asym_pause = of_property_read_bool(np, "asym-pause");
 
 	return phydev;
 }
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

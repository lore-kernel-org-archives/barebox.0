Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2L7-00049O-8A
 for barebox@lists.infradead.org; Wed, 11 Mar 2020 14:28:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Mar 2020 15:27:54 +0100
Message-Id: <20200311142757.25263-14-s.hauer@pengutronix.de>
In-Reply-To: <20200311142757.25263-1-s.hauer@pengutronix.de>
References: <20200311142757.25263-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/16] net: phy: Also print link down messages
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

Not only print when the link comes up, but also when it goes down.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index ccdc9f3716..a440edffd6 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -46,6 +46,7 @@ int phy_update_status(struct phy_device *phydev)
 	struct eth_device *edev = phydev->attached_dev;
 	int ret;
 	int oldspeed = phydev->speed, oldduplex = phydev->duplex;
+	int oldlink = phydev->link;
 
 	if (drv) {
 		ret = drv->read_status(phydev);
@@ -53,7 +54,8 @@ int phy_update_status(struct phy_device *phydev)
 			return ret;
 	}
 
-	if (phydev->speed == oldspeed && phydev->duplex == oldduplex)
+	if (phydev->speed == oldspeed && phydev->duplex == oldduplex &&
+	    phydev->link == oldlink)
 		return 0;
 
 	if (phydev->adjust_link)
@@ -62,6 +64,8 @@ int phy_update_status(struct phy_device *phydev)
 	if (phydev->link)
 		dev_info(&edev->dev, "%dMbps %s duplex link detected\n",
 				phydev->speed, phydev->duplex ? "full" : "half");
+	else if (oldlink)
+		dev_info(&edev->dev, "link down\n");
 
 	return 0;
 }
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

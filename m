Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dujON-0001vb-Ps
 for barebox@lists.infradead.org; Wed, 20 Sep 2017 18:06:37 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 20 Sep 2017 20:05:55 +0200
Message-Id: <20170920180557.22857-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 1/3] net: ag71xx: define parent devices
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

without it we are not able to set mac address from other driver.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/net/ag71xx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index 1cec26360..a422aacdd 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -580,6 +580,7 @@ static int ag71xx_probe(struct device_d *dev)
 	miibus = &priv->miibus;
 	dev->priv = edev;
 	edev->priv = priv;
+	edev->parent = dev;
 
 	edev->init = ag71xx_ether_init;
 	edev->open = ag71xx_ether_open;
@@ -597,6 +598,7 @@ static int ag71xx_probe(struct device_d *dev)
 	miibus->read = ag71xx_ether_mii_read;
 	miibus->write = ag71xx_ether_mii_write;
 	miibus->priv = priv;
+	miibus->parent = dev;
 
 	/* enable switch core */
 	rd = ar7240_reg_rd(AR71XX_PLL_BASE + AR933X_ETHSW_CLOCK_CONTROL_REG);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

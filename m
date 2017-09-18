Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dtz7r-0006Xa-MZ
 for barebox@lists.infradead.org; Mon, 18 Sep 2017 16:42:29 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Mon, 18 Sep 2017 18:41:45 +0200
Message-Id: <20170918164145.21235-1-linux@rempel-privat.de>
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
Subject: [PATCH v1] net: ag71xx: disable eth interface on barebox shutdown
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

If not disable, DMA RX engine will keep to write in to allocated
memory area. As soon as some code or data of target OS will be placed to
this area it will be overwritten by incoming network package.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/net/ag71xx.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ag71xx.c b/drivers/net/ag71xx.c
index 54f0bd9aa..1cec26360 100644
--- a/drivers/net/ag71xx.c
+++ b/drivers/net/ag71xx.c
@@ -578,6 +578,7 @@ static int ag71xx_probe(struct device_d *dev)
 	priv = xzalloc(sizeof(struct ag71xx));
 	edev = &priv->netdev;
 	miibus = &priv->miibus;
+	dev->priv = edev;
 	edev->priv = priv;
 
 	edev->init = ag71xx_ether_init;
@@ -659,6 +660,13 @@ static int ag71xx_probe(struct device_d *dev)
 	return 0;
 }
 
+static void ag71xx_remove(struct device_d *dev)
+{
+	struct eth_device *edev = dev->priv;
+
+	ag71xx_ether_halt(edev);
+}
+
 static __maybe_unused struct of_device_id ag71xx_dt_ids[] = {
 	{ .compatible = "qca,ar9331-ge0", .data = &ag71xx_cfg_ar9331_ge0, },
 	{ .compatible = "qca,ar9344-gmac0", .data = &ag71xx_cfg_ar9344_gmac0, },
@@ -668,6 +676,7 @@ static __maybe_unused struct of_device_id ag71xx_dt_ids[] = {
 static struct driver_d ag71xx_driver = {
 	.name	= "ag71xx-gmac",
 	.probe		= ag71xx_probe,
+	.remove		= ag71xx_remove,
 	.of_compatible = DRV_OF_COMPAT(ag71xx_dt_ids),
 };
 device_platform_driver(ag71xx_driver);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

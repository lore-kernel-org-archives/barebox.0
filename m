Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y8UrH-0007gI-3I
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 14:11:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Jan 2015 15:11:20 +0100
Message-Id: <1420553480-18235-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: cpsw: ignore error on slave setup
To: barebox@lists.infradead.org

The CPSW has two slaves. When one of them fails to setup continue
anyway with the other one. This fixes a crash in the beaglebone black
which only has one slave connected. The code doesn't find a phy on
the second slave and bails out, but the error path is broken: It frees
the private data structures which contains used resources.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 29 ++++++++++++++---------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index b6618ad..799fac8 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -910,6 +910,16 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 	struct eth_device	*edev = &slave->edev;
 	struct device_d		*dev = &slave->dev;
 	int ret;
+	struct phy_device *phy;
+
+	phy = mdiobus_scan(&priv->miibus, priv->slaves[slave_num].phy_id);
+	if (IS_ERR(phy))
+		return PTR_ERR(phy);
+
+	phy->dev.device_node = priv->slaves[slave_num].dev.device_node;
+	ret = phy_register_device(phy);
+	if (ret)
+		return ret;
 
 	sprintf(dev->name, "cpsw-slave");
 	dev->id = slave->slave_num;
@@ -1199,22 +1209,11 @@ int cpsw_probe(struct device_d *dev)
 	mdiobus_register(&priv->miibus);
 
 	for (i = 0; i < priv->num_slaves; i++) {
-		struct phy_device *phy;
-
-		phy = mdiobus_scan(&priv->miibus, priv->slaves[i].phy_id);
-		if (IS_ERR(phy)) {
-			ret = PTR_ERR(phy);
-			goto out;
-		}
-
-		phy->dev.device_node = priv->slaves[i].dev.device_node;
-		ret = phy_register_device(phy);
-		if (ret)
-			goto out;
-
 		ret = cpsw_slave_setup(&priv->slaves[i], i, priv);
-		if (ret)
-			goto out;
+		if (ret) {
+			dev_err(dev, "Failed to setup slave %d: %s\n", i, strerror(-ret));
+			continue;
+		}
 	}
 
 	return 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

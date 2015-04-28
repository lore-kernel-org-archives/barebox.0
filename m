Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yn3Kz-0005fM-JG
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 11:06:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Apr 2015 13:05:37 +0200
Message-Id: <1430219137-8294-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1430219137-8294-1-git-send-email-s.hauer@pengutronix.de>
References: <1430219137-8294-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] net: cpsw: unregister device on remove callback
To: Barebox List <barebox@lists.infradead.org>

The CPSW uses DMA, so we should quiesce the device before leaving
barebox. This patch unregisters the CPSW properly on the device
remove callback. To do this we have to fix the error path in
cpsw_slave_setup, since this function can fail and we need a
known slave status in the remove function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 44 +++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 7687254..c0db96b 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -916,20 +916,22 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 	struct phy_device *phy;
 
 	phy = mdiobus_scan(&priv->miibus, priv->slaves[slave_num].phy_id);
-	if (IS_ERR(phy))
-		return PTR_ERR(phy);
+	if (IS_ERR(phy)) {
+		ret = PTR_ERR(phy);
+		goto err_out;
+	}
 
 	phy->dev.device_node = priv->slaves[slave_num].dev.device_node;
 	ret = phy_register_device(phy);
 	if (ret)
-		return ret;
+		goto err_out;
 
 	sprintf(dev->name, "cpsw-slave");
 	dev->id = slave->slave_num;
 	dev->parent = priv->dev;
 	ret = register_device(dev);
 	if (ret)
-		return ret;
+		goto err_register_dev;
 
 	dev_dbg(&slave->dev, "* %s\n", __func__);
 
@@ -948,7 +950,20 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 	edev->set_ethaddr = cpsw_set_hwaddr;
 	edev->parent	= dev;
 
-	return eth_register(edev);
+	ret = eth_register(edev);
+	if (ret)
+		goto err_register_edev;
+
+	return 0;
+
+err_register_dev:
+	phy_unregister_device(phy);
+err_register_edev:
+	unregister_device(dev);
+err_out:
+	slave->slave_num = -1;
+
+	return ret;
 }
 
 struct cpsw_data {
@@ -1219,6 +1234,8 @@ int cpsw_probe(struct device_d *dev)
 		}
 	}
 
+	dev->priv = priv;
+
 	return 0;
 out:
 	free(priv->slaves);
@@ -1227,6 +1244,22 @@ out:
 	return ret;
 }
 
+static void cpsw_remove(struct device_d *dev)
+{
+	struct cpsw_priv	*priv = dev->priv;
+	int i;
+
+	for (i = 0; i < priv->num_slaves; i++) {
+		struct cpsw_slave *slave = &priv->slaves[i];
+		if (slave->slave_num < 0)
+			continue;
+
+		eth_unregister(&slave->edev);
+	}
+
+	mdiobus_unregister(&priv->miibus);
+}
+
 static __maybe_unused struct of_device_id cpsw_dt_ids[] = {
 	{
 		.compatible = "ti,cpsw",
@@ -1238,6 +1271,7 @@ static __maybe_unused struct of_device_id cpsw_dt_ids[] = {
 static struct driver_d cpsw_driver = {
 	.name   = "cpsw",
 	.probe  = cpsw_probe,
+	.remove = cpsw_remove,
 	.of_compatible = DRV_OF_COMPAT(cpsw_dt_ids),
 };
 device_platform_driver(cpsw_driver);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

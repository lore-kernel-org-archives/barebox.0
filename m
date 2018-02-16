Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1emack-0006j7-9G
 for barebox@lists.infradead.org; Fri, 16 Feb 2018 07:40:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Feb 2018 08:39:46 +0100
Message-Id: <20180216073946.1120-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: cpsw: remove unnecessary mdiobus_scan()
To: Barebox List <barebox@lists.infradead.org>
Cc: Andreas Schmidt <mail@schmidt-andreas.de>

No need to call mdiobus_scan() manually. it is called from
phy_device_connect() already in cpsw_open() which does all
the magic to connect a network device with its phy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 18 ++----------------
 1 file changed, 2 insertions(+), 16 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index d11ca33f70..54ee5f327a 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -913,25 +913,13 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 	struct eth_device	*edev = &slave->edev;
 	struct device_d		*dev = &slave->dev;
 	int ret;
-	struct phy_device *phy;
-
-	phy = mdiobus_scan(&priv->miibus, priv->slaves[slave_num].phy_id);
-	if (IS_ERR(phy)) {
-		ret = PTR_ERR(phy);
-		goto err_out;
-	}
-
-	phy->dev.device_node = priv->slaves[slave_num].dev.device_node;
-	ret = phy_register_device(phy);
-	if (ret)
-		goto err_out;
 
 	sprintf(dev->name, "cpsw-slave");
 	dev->id = slave->slave_num;
 	dev->parent = priv->dev;
 	ret = register_device(dev);
 	if (ret)
-		goto err_register_dev;
+		return ret;
 
 	dev_dbg(&slave->dev, "* %s\n", __func__);
 
@@ -956,11 +944,9 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 
 	return 0;
 
-err_register_dev:
-	phy_unregister_device(phy);
 err_register_edev:
 	unregister_device(dev);
-err_out:
+
 	slave->slave_num = -1;
 
 	return ret;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns1.lah-a2.de ([84.19.186.99] helo=lah-a2.de)
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eliRO-00066j-Dz
 for barebox@lists.infradead.org; Tue, 13 Feb 2018 21:48:44 +0000
Received: from localhost (p508514AE.dip0.t-ipconnect.de [80.133.20.174])
 by lah-a2.de (Postfix) with ESMTPSA id 4BF4C408737D
 for <barebox@lists.infradead.org>; Tue, 13 Feb 2018 22:46:03 +0100 (CET)
From: Andreas Schmidt <mail@schmidt-andreas.de>
Date: Tue, 13 Feb 2018 22:48:16 +0100
Message-Id: <20180213214816.28520-1-mail@schmidt-andreas.de>
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
Subject: [PATCH] net: cpsw: fix probe with fixed-link
To: barebox@lists.infradead.org

If cpsw slave is set to fixed-link cpsw probe still try to probe and use
a phy. This patch fix cpsw probe in case of fixed-link.

Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
---
 drivers/net/cpsw.c | 41 +++++++++++++++++++++++++++--------------
 1 file changed, 27 insertions(+), 14 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index d11ca33f7..37e480248 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -184,6 +184,7 @@ struct cpsw_slave {
 	struct eth_device		edev;
 	struct cpsw_priv		*cpsw;
 	struct device_d			dev;
+	int				fixed_link;
 };
 
 struct cpdma_desc {
@@ -913,18 +914,20 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 	struct eth_device	*edev = &slave->edev;
 	struct device_d		*dev = &slave->dev;
 	int ret;
-	struct phy_device *phy;
+	struct phy_device *phy = NULL;
 
-	phy = mdiobus_scan(&priv->miibus, priv->slaves[slave_num].phy_id);
-	if (IS_ERR(phy)) {
-		ret = PTR_ERR(phy);
-		goto err_out;
-	}
+	if (!slave->fixed_link) {
+		phy = mdiobus_scan(&priv->miibus, priv->slaves[slave_num].phy_id);
+		if (IS_ERR(phy)) {
+			ret = PTR_ERR(phy);
+			goto err_out;
+		}
 
-	phy->dev.device_node = priv->slaves[slave_num].dev.device_node;
-	ret = phy_register_device(phy);
-	if (ret)
-		goto err_out;
+		phy->dev.device_node = priv->slaves[slave_num].dev.device_node;
+		ret = phy_register_device(phy);
+		if (ret)
+			goto err_out;
+	}
 
 	sprintf(dev->name, "cpsw-slave");
 	dev->id = slave->slave_num;
@@ -957,7 +960,8 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 	return 0;
 
 err_register_dev:
-	phy_unregister_device(phy);
+	if (!slave->fixed_link)
+		phy_unregister_device(phy);
 err_register_edev:
 	unregister_device(dev);
 err_out:
@@ -1103,11 +1107,20 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 			uint32_t phy_id[2];
 
 			ret = of_property_read_u32_array(child, "phy_id", phy_id, 2);
-			if (ret)
-				return ret;
+			if (!ret) {
+				slave->phy_id = phy_id[1];
+				slave->fixed_link = 0;
+			} else {
+				struct device_node *fl_np;
+				fl_np = of_find_node_by_name(child, "fixed-link");
+				if (fl_np) {
+					slave->phy_id = -1;
+					slave->fixed_link = 1;
+				} else
+					return ret;
+			}
 
 			slave->dev.device_node = child;
-			slave->phy_id = phy_id[1];
 			slave->phy_if = of_get_phy_mode(child);
 			slave->slave_num = i;
 
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008G5-KB
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:55 +0100
Message-Id: <1385131741-28280-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/17] net: cpsw: straighten error path
To: barebox@lists.infradead.org

This mainly has the effect of checking the return value of eth_register.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index a79859b..9f79bd9 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -904,7 +904,7 @@ static void cpsw_slave_init_data(struct cpsw_slave *slave, int slave_num,
 	slave->phy_if	= data->phy_if;
 }
 
-static void cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
+static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 			    struct cpsw_priv *priv)
 {
 	void			*regs = priv->regs;
@@ -927,7 +927,7 @@ static void cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 	edev->set_ethaddr = cpsw_set_hwaddr;
 	edev->parent	= priv->dev;
 
-	eth_register(edev);
+	return eth_register(edev);
 }
 
 struct cpsw_data {
@@ -1033,7 +1033,7 @@ int cpsw_probe(struct device_d *dev)
 	if (dev->device_node) {
 		ret = cpsw_probe_dt(priv);
 		if (ret)
-			return ret;
+			goto out;
 	} else {
 		priv->data = *data;
 		priv->num_slaves = data->num_slaves;
@@ -1057,7 +1057,8 @@ int cpsw_probe(struct device_d *dev)
 		cpsw_data = &cpsw2_data;
 		break;
 	default:
-		return -EINVAL;
+		ret = -EINVAL;
+		goto out;
 	}
 
 	priv->descs		= regs + cpsw_data->cppi_ram_ofs;
@@ -1112,9 +1113,16 @@ int cpsw_probe(struct device_d *dev)
 
 	mdiobus_register(&priv->miibus);
 
-	cpsw_slave_setup(&priv->slaves[0], 0, priv);
+	ret = cpsw_slave_setup(&priv->slaves[0], 0, priv);
+	if (ret)
+		goto out;
 
 	return 0;
+out:
+	free(priv->slaves);
+	free(priv);
+
+	return ret;
 }
 
 static __maybe_unused struct of_device_id cpsw_dt_ids[] = {
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

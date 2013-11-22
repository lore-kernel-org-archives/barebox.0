Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008Fy-56
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:50 +0100
Message-Id: <1385131741-28280-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/17] net: cpsw: inline slave_data
To: barebox@lists.infradead.org

Devicetree probed cpsw devices won't have platform_data, so inline
the fields from slave_data instead of keeping a pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index e51a8b1..25ba3d9 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -175,7 +175,8 @@ struct cpsw_slave {
 	struct cpsw_sliver_regs		*sliver;
 	int				slave_num;
 	u32				mac_control;
-	struct cpsw_slave_data		*data;
+	int				phy_id;
+	phy_interface_t			phy_if;
 };
 
 struct cpdma_desc {
@@ -765,13 +766,13 @@ static int cpsw_init(struct eth_device *edev)
 static int cpsw_open(struct eth_device *edev)
 {
 	struct cpsw_priv *priv = edev->priv;
-	struct cpsw_slave_data	*slave_data = priv->data.slave_data;
+	struct cpsw_slave *slave = &priv->slaves[0];
 	int i, ret;
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
-	ret = phy_device_connect(edev, &priv->miibus, slave_data[0].phy_id,
-				 cpsw_adjust_link, 0, slave_data[0].phy_if);
+	ret = phy_device_connect(edev, &priv->miibus, slave->phy_id,
+				 cpsw_adjust_link, 0, slave->phy_if);
 	if (ret)
 		return ret;
 
@@ -908,7 +909,8 @@ static void cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
 	slave->slave_num = slave_num;
-	slave->data	= data;
+	slave->phy_id	= data->phy_id;
+	slave->phy_if	= data->phy_if;
 	slave->regs	= regs + priv->slave_ofs + priv->slave_size * slave_num;
 	slave->sliver	= regs + priv->sliver_ofs + SLIVER_SIZE * slave_num;
 }
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

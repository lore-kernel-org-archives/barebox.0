Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008G1-55
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:52 +0100
Message-Id: <1385131741-28280-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/17] net: cpsw: move eth_device into slave
To: barebox@lists.infradead.org

An ethernet device is per slave, not per cpsw.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 33 ++++++++++++++++-----------------
 1 file changed, 16 insertions(+), 17 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index f021f31..d969654 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -179,6 +179,7 @@ struct cpsw_slave {
 	u32				mac_control;
 	int				phy_id;
 	phy_interface_t			phy_if;
+	struct eth_device		edev;
 };
 
 struct cpdma_desc {
@@ -199,7 +200,6 @@ struct cpdma_chan {
 
 struct cpsw_priv {
 	struct device_d			*dev;
-	struct eth_device		edev;
 	struct mii_bus			miibus;
 
 	u32				version;
@@ -575,7 +575,7 @@ static int cpsw_set_hwaddr(struct eth_device *edev, unsigned char *mac)
 static void cpsw_slave_update_link(struct cpsw_slave *slave,
 				   struct cpsw_priv *priv, int *link)
 {
-	struct phy_device *phydev = priv->edev.phydev;
+	struct phy_device *phydev = slave->edev.phydev;
 	u32 mac_control = 0;
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
@@ -915,12 +915,25 @@ static void cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 			    struct cpsw_priv *priv)
 {
 	void			*regs = priv->regs;
+	struct eth_device	*edev = &slave->edev;
 
 	dev_dbg(priv->dev, "* %s\n", __func__);
 
 	slave->slave_num = slave_num;
 	slave->regs	= regs + priv->slave_ofs + priv->slave_size * slave_num;
 	slave->sliver	= regs + priv->sliver_ofs + SLIVER_SIZE * slave_num;
+
+	edev->priv	= priv;
+	edev->init	= cpsw_init;
+	edev->open	= cpsw_open;
+	edev->halt	= cpsw_halt;
+	edev->send	= cpsw_send;
+	edev->recv	= cpsw_recv;
+	edev->get_ethaddr = cpsw_get_hwaddr;
+	edev->set_ethaddr = cpsw_set_hwaddr;
+	edev->parent	= priv->dev;
+
+	eth_register(edev);
 }
 
 struct cpsw_data {
@@ -1011,7 +1024,6 @@ int cpsw_probe(struct device_d *dev)
 	struct cpsw_platform_data *data = (struct cpsw_platform_data *)dev->platform_data;
 	struct cpsw_priv	*priv;
 	void __iomem		*regs;
-	struct eth_device	*edev;
 	uint64_t start;
 	uint32_t phy_mask;
 	struct cpsw_data *cpsw_data;
@@ -1037,7 +1049,6 @@ int cpsw_probe(struct device_d *dev)
 
 	priv->channels = 8;
 	priv->ale_entries = 1024;
-	edev = &priv->edev;
 
 	priv->host_port         = 0;
 	priv->regs		= regs;
@@ -1066,18 +1077,6 @@ int cpsw_probe(struct device_d *dev)
 	priv->slave_size	= cpsw_data->slave_size;
 	priv->sliver_ofs	= cpsw_data->sliver_ofs;
 
-	for_each_slave(priv, cpsw_slave_setup, idx, priv);
-
-	edev->priv	= priv;
-	edev->init	= cpsw_init;
-	edev->open	= cpsw_open;
-	edev->halt	= cpsw_halt;
-	edev->send	= cpsw_send;
-	edev->recv	= cpsw_recv;
-	edev->get_ethaddr = cpsw_get_hwaddr;
-	edev->set_ethaddr = cpsw_set_hwaddr;
-	edev->parent	= dev;
-
 	priv->miibus.read = cpsw_mdio_read;
 	priv->miibus.write = cpsw_mdio_write;
 	priv->miibus.priv = priv;
@@ -1119,7 +1118,7 @@ int cpsw_probe(struct device_d *dev)
 
 	mdiobus_register(&priv->miibus);
 
-	eth_register(edev);
+	for_each_slave(priv, cpsw_slave_setup, idx, priv);
 
 	return 0;
 }
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

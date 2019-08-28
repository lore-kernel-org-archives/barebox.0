Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2v7t-00032m-PG
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 10:24:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Aug 2019 12:24:00 +0200
Message-Id: <20190828102402.18332-5-s.hauer@pengutronix.de>
In-Reply-To: <20190828102402.18332-1-s.hauer@pengutronix.de>
References: <20190828102402.18332-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] net: cpsw: Make phy its own driver
To: Barebox List <barebox@lists.infradead.org>

This makes of_phy_device_connect() work properly when the phy is
specified in the device tree. Without it of_mdio_find_phy() will
not find the right device. It will match:

bus->parent->device_node == phy_node->parent

Without this patch bus->parent->device_node will be the ethernet node
and phy_node->parent will be the ti,cpsw-mdio node. With the MDIO device
node registered as device of its own both nodes above will be the
ti,cpsw-mdio node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 178 ++++++++++++++++++++++++---------------------
 1 file changed, 96 insertions(+), 82 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index df8981d02e..b9a6575009 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -191,7 +191,6 @@ struct cpdma_chan {
 
 struct cpsw_priv {
 	struct device_d			*dev;
-	struct mii_bus			miibus;
 
 	u32				version;
 	struct cpsw_platform_data	data;
@@ -199,7 +198,6 @@ struct cpsw_priv {
 	uint8_t				mac_addr[6];
 
 	struct cpsw_regs		*regs;
-	struct cpsw_mdio_regs		*mdio_regs;
 	void				*dma_regs;
 	struct cpsw_host_regs		*host_port_regs;
 	void				*ale_regs;
@@ -219,6 +217,12 @@ struct cpsw_priv {
 	struct cpsw_slave		*slaves;
 };
 
+struct cpsw_mdio_priv {
+	struct device_d			*dev;
+	struct mii_bus			miibus;
+	struct cpsw_mdio_regs		*mdio_regs;
+};
+
 static int cpsw_ale_get_field(u32 *ale_entry, u32 start, u32 bits)
 {
 	int idx;
@@ -450,7 +454,7 @@ static inline void cpsw_ale_port_state(struct cpsw_priv *priv, int port,
 }
 
 /* wait until hardware is ready for another user access */
-static u32 wait_for_user_access(struct cpsw_priv *priv)
+static u32 wait_for_user_access(struct cpsw_mdio_priv *priv)
 {
 	struct cpsw_mdio_regs *mdio_regs = priv->mdio_regs;
 	u32 tmp;
@@ -473,7 +477,7 @@ static u32 wait_for_user_access(struct cpsw_priv *priv)
 
 static int cpsw_mdio_read(struct mii_bus *bus, int phy_id, int phy_reg)
 {
-	struct cpsw_priv *priv = bus->priv;
+	struct cpsw_mdio_priv *priv = bus->priv;
 	struct cpsw_mdio_regs *mdio_regs = priv->mdio_regs;
 
 	u32 tmp;
@@ -494,7 +498,7 @@ static int cpsw_mdio_read(struct mii_bus *bus, int phy_id, int phy_reg)
 
 static int cpsw_mdio_write(struct mii_bus *bus, int phy_id, int phy_reg, u16 value)
 {
-	struct cpsw_priv *priv = bus->priv;
+	struct cpsw_mdio_priv *priv = bus->priv;
 	struct cpsw_mdio_regs *mdio_regs = priv->mdio_regs;
 	u32 tmp;
 
@@ -510,6 +514,81 @@ static int cpsw_mdio_write(struct mii_bus *bus, int phy_id, int phy_reg, u16 val
 	return 0;
 }
 
+static int cpsw_mdio_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct cpsw_mdio_priv *priv;
+	uint64_t start;
+	uint32_t phy_mask;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	priv->mdio_regs = IOMEM(iores->start);
+	priv->miibus.read = cpsw_mdio_read;
+	priv->miibus.write = cpsw_mdio_write;
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
+
+	/*
+	 * set enable and clock divider
+	 *
+	 * FIXME: Use a clock to calculate the divider
+	 */
+	writel(0xff | CONTROL_ENABLE, &priv->mdio_regs->control);
+
+	/*
+	 * wait for scan logic to settle:
+	 * the scan time consists of (a) a large fixed component, and (b) a
+	 * small component that varies with the mii bus frequency.  These
+	 * were estimated using measurements at 1.1 and 2.2 MHz on tnetv107x
+	 * silicon.  Since the effect of (b) was found to be largely
+	 * negligible, we keep things simple here.
+	 */
+	udelay(1000);
+
+	start = get_time_ns();
+	while (1) {
+		phy_mask = readl(&priv->mdio_regs->alive);
+		if (phy_mask) {
+			dev_info(dev, "detected phy mask 0x%x\n", phy_mask);
+			phy_mask = ~phy_mask;
+			break;
+		}
+		if (is_timeout(start, 256 * MSECOND)) {
+			dev_err(dev, "no live phy, scanning all\n");
+			phy_mask = 0;
+			break;
+		}
+	}
+
+	priv->miibus.phy_mask = phy_mask;
+
+	ret = mdiobus_register(&priv->miibus);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id cpsw_mdio_dt_ids[] = {
+	{
+		.compatible = "ti,cpsw-mdio",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d cpsw_mdio_driver = {
+	.name   = "cpsw-mdio",
+	.probe  = cpsw_mdio_probe,
+	.of_compatible = DRV_OF_COMPAT(cpsw_mdio_dt_ids),
+};
+coredevice_platform_driver(cpsw_mdio_driver);
+
 static inline void soft_reset(struct cpsw_priv *priv, void *reg)
 {
 	int ret;
@@ -549,9 +628,9 @@ static int cpsw_set_hwaddr(struct eth_device *edev, const unsigned char *mac)
 	return 0;
 }
 
-static void cpsw_slave_update_link(struct cpsw_slave *slave,
-				   struct cpsw_priv *priv, int *link)
+static void cpsw_adjust_link(struct eth_device *edev)
 {
+	struct cpsw_slave *slave = edev->priv;
 	struct phy_device *phydev = slave->edev.phydev;
 	u32 mac_control = 0;
 
@@ -561,7 +640,6 @@ static void cpsw_slave_update_link(struct cpsw_slave *slave,
 		return;
 
 	if (phydev->link) {
-		*link = 1;
 		mac_control = BIT(5); /* MIIEN */
 		if (phydev->speed == SPEED_10)
 			mac_control |= BIT(18);	/* In Band mode	*/
@@ -584,27 +662,6 @@ static void cpsw_slave_update_link(struct cpsw_slave *slave,
 	writel(mac_control, &slave->sliver->mac_control);
 }
 
-static int cpsw_update_link(struct cpsw_slave *slave, struct cpsw_priv *priv)
-{
-	int link = 0;
-
-	dev_dbg(&slave->dev, "* %s\n", __func__);
-
-	cpsw_slave_update_link(slave, priv, &link);
-
-	return link;
-}
-
-static void cpsw_adjust_link(struct eth_device *edev)
-{
-	struct cpsw_slave *slave = edev->priv;
-	struct cpsw_priv *priv = slave->cpsw;
-
-	dev_dbg(&slave->dev, "* %s\n", __func__);
-
-	cpsw_update_link(slave, priv);
-}
-
 static inline u32 cpsw_get_slave_port(struct cpsw_priv *priv, u32 slave_num)
 {
 	if (priv->host_port == 0)
@@ -748,6 +805,11 @@ static int cpsw_open(struct eth_device *edev)
 
 	dev_dbg(&slave->dev, "* %s\n", __func__);
 
+	ret = phy_device_connect(edev, NULL, slave->phy_id,
+				 cpsw_adjust_link, 0, slave->phy_if);
+	if (ret)
+		return ret;
+
 	/* soft reset the controller and initialize priv */
 	soft_reset(priv, &priv->regs->soft_reset);
 
@@ -774,7 +836,6 @@ static int cpsw_open(struct eth_device *edev)
 	cpsw_ale_add_mcast(priv, ethbdaddr, 1 << priv->host_port);
 
 	cpsw_slave_init(slave, priv);
-	cpsw_update_link(slave, priv);
 
 	/* init descriptor pool */
 	for (i = 0; i < NUM_DESCS; i++) {
@@ -898,11 +959,6 @@ static int cpsw_slave_setup(struct cpsw_slave *slave, int slave_num,
 
 	edev->parent = dev;
 
-	ret = phy_device_connect(edev, &priv->miibus, slave->phy_id,
-				 cpsw_adjust_link, 0, slave->phy_if);
-	if (ret)
-		goto err_out;
-
 	dev_set_name(dev, "cpsw-slave");
 	dev->id = slave->slave_num;
 	dev->parent = priv->dev;
@@ -936,7 +992,7 @@ err_register_dev:
 	phy_unregister_device(edev->phydev);
 err_register_edev:
 	unregister_device(dev);
-err_out:
+
 	slave->slave_num = -1;
 
 	return ret;
@@ -1117,13 +1173,15 @@ static int cpsw_probe(struct device_d *dev)
 	struct cpsw_platform_data *data = (struct cpsw_platform_data *)dev->platform_data;
 	struct cpsw_priv	*priv;
 	void __iomem		*regs;
-	uint64_t start;
-	uint32_t phy_mask;
 	struct cpsw_data *cpsw_data;
 	int i, ret;
 
 	dev_dbg(dev, "* %s\n", __func__);
 
+	ret = of_platform_populate(dev->device_node, NULL, dev);
+	if (ret)
+		return ret;
+
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
@@ -1168,53 +1226,11 @@ static int cpsw_probe(struct device_d *dev)
 	priv->dma_regs		= regs + cpsw_data->cpdma_reg_ofs;
 	priv->ale_regs		= regs + cpsw_data->ale_reg_ofs;
 	priv->state_ram		= regs + cpsw_data->state_ram_ofs;
-	priv->mdio_regs		= regs + cpsw_data->mdio_reg_ofs;
 
 	priv->slave_ofs		= cpsw_data->slave_ofs;
 	priv->slave_size	= cpsw_data->slave_size;
 	priv->sliver_ofs	= cpsw_data->sliver_ofs;
 
-	priv->miibus.read = cpsw_mdio_read;
-	priv->miibus.write = cpsw_mdio_write;
-	priv->miibus.priv = priv;
-	priv->miibus.parent = dev;
-
-	/*
-	 * set enable and clock divider
-	 *
-	 * FIXME: Use a clock to calculate the divider
-	 */
-	writel(0xff | CONTROL_ENABLE, &priv->mdio_regs->control);
-
-	/*
-	 * wait for scan logic to settle:
-	 * the scan time consists of (a) a large fixed component, and (b) a
-	 * small component that varies with the mii bus frequency.  These
-	 * were estimated using measurements at 1.1 and 2.2 MHz on tnetv107x
-	 * silicon.  Since the effect of (b) was found to be largely
-	 * negligible, we keep things simple here.
-	 */
-	udelay(1000);
-
-	start = get_time_ns();
-	while (1) {
-		phy_mask = readl(&priv->mdio_regs->alive);
-		if (phy_mask) {
-			dev_info(dev, "detected phy mask 0x%x\n", phy_mask);
-			phy_mask = ~phy_mask;
-			break;
-		}
-		if (is_timeout(start, 256 * MSECOND)) {
-			dev_err(dev, "no live phy, scanning all\n");
-			phy_mask = 0;
-			break;
-		}
-	}
-
-	priv->miibus.phy_mask = phy_mask;
-
-	mdiobus_register(&priv->miibus);
-
 	for (i = 0; i < priv->num_slaves; i++) {
 		ret = cpsw_slave_setup(&priv->slaves[i], i, priv);
 		if (ret) {
@@ -1245,8 +1261,6 @@ static void cpsw_remove(struct device_d *dev)
 
 		eth_unregister(&slave->edev);
 	}
-
-	mdiobus_unregister(&priv->miibus);
 }
 
 static __maybe_unused struct of_device_id cpsw_dt_ids[] = {
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

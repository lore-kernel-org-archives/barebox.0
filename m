Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXoHg-00005Y-1H
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 14:17:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Dec 2018 15:17:10 +0100
Message-Id: <20181214141730.26181-4-s.hauer@pengutronix.de>
In-Reply-To: <20181214141730.26181-1-s.hauer@pengutronix.de>
References: <20181214141730.26181-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/23] net: davinci-emac: switch to device tree support
To: Barebox List <barebox@lists.infradead.org>
Cc: Heinrich Toews <heinrich.toews@wago.com>, Sascha@pengutronix.de, Hauer@pengutronix.de

From: Heinrich Toews <heinrich.toews@wago.com>

This adds device tree support to the davinci-emac driver.

This needs some changes to the driver as the device has four different
resources. Three of them are merged into a single resource in the
dts files with the node providing offsets for the different resources
to base address. The mdio node is found separately in the dts, so we
have to split this out to a different driver. Since this driver has been
unused previously, we do not bother maintaining two different probe
methods and remove platform probe support at the same time.

Signed-off-by: Heinrich Toews <heinrich.toews@wago.com>
Signed-off-by: Sascha Hauer, <s.hauer@pengutronix.de>
---
 drivers/net/davinci_emac.c               | 154 +++++++++++++----------
 include/platform_data/eth-davinci-emac.h |  10 --
 2 files changed, 85 insertions(+), 79 deletions(-)
 delete mode 100644 include/platform_data/eth-davinci-emac.h

diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index bda62214ef..ff35b746e2 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -32,18 +32,16 @@
 #include <asm/system.h>
 #include <linux/phy.h>
 #include <mach/emac_defs.h>
-#include <platform_data/eth-davinci-emac.h>
+#include <of_net.h>
 #include "davinci_emac.h"
 
 struct davinci_emac_priv {
 	struct device_d *dev;
 	struct eth_device edev;
-	struct mii_bus miibus;
 
 	/* EMAC Addresses */
 	void __iomem *adap_emac; /* = EMAC_BASE_ADDR */
 	void __iomem *adap_ewrap; /* = EMAC_WRAPPER_BASE_ADDR */
-	void __iomem *adap_mdio; /* = EMAC_MDIO_BASE_ADDR */
 
 	/* EMAC descriptors */
 	void __iomem *emac_desc_base; /* = EMAC_WRAPPER_RAM_ADDR */
@@ -58,8 +56,6 @@ struct davinci_emac_priv {
 
 	/* PHY-specific information */
 	phy_interface_t interface;
-	uint8_t phy_addr;
-	uint32_t phy_flags;
 
 	/* mac_addr[0] goes out on the wire first */
 	uint8_t mac_addr[6];
@@ -86,7 +82,13 @@ static inline void __iomem *HW_TO_BD(uint32_t x)
 #define HW_TO_BD(x)     (x)
 #endif
 
-static void davinci_eth_mdio_enable(struct davinci_emac_priv *priv)
+struct davinci_mdio_priv {
+	struct device_d *dev;
+	struct mii_bus miibus;
+	void __iomem *adap_mdio; /* = EMAC_MDIO_BASE_ADDR */
+};
+
+static void davinci_eth_mdio_enable(struct davinci_mdio_priv *priv)
 {
 	uint32_t	clkdiv;
 
@@ -106,7 +108,7 @@ static void davinci_eth_mdio_enable(struct davinci_emac_priv *priv)
 }
 
 /* wait until hardware is ready for another user access */
-static int wait_for_user_access(struct davinci_emac_priv *priv, uint32_t *val)
+static int wait_for_user_access(struct davinci_mdio_priv *priv, uint32_t *val)
 {
 	u32 tmp;
 	uint64_t start = get_time_ns();
@@ -132,7 +134,7 @@ static int wait_for_user_access(struct davinci_emac_priv *priv, uint32_t *val)
 
 static int davinci_miibus_read(struct mii_bus *bus, int addr, int reg)
 {
-	struct davinci_emac_priv *priv = bus->priv;
+	struct davinci_mdio_priv *priv = bus->priv;
 	uint16_t value;
 	int tmp, ret;
 
@@ -162,7 +164,7 @@ static int davinci_miibus_read(struct mii_bus *bus, int addr, int reg)
 
 static int davinci_miibus_write(struct mii_bus *bus, int addr, int reg, u16 value)
 {
-	struct davinci_emac_priv *priv = bus->priv;
+	struct davinci_mdio_priv *priv = bus->priv;
 	int ret;
 
 	ret = wait_for_user_access(priv, NULL);
@@ -220,7 +222,7 @@ static int davinci_emac_init(struct eth_device *edev)
 static int davinci_emac_open(struct eth_device *edev)
 {
 	struct davinci_emac_priv *priv = edev->priv;
-	uint32_t clkdiv, cnt;
+	uint32_t cnt;
 	void __iomem *rx_desc;
 	unsigned long mac_hi, mac_lo;
 	int ret;
@@ -322,16 +324,10 @@ static int davinci_emac_open(struct eth_device *edev)
 		EMAC_MACCONTROL_RMIISPEED_100),
 	       priv->adap_emac + EMAC_MACCONTROL);
 
-	/* Init MDIO & get link state */
-	clkdiv = (EMAC_MDIO_BUS_FREQ / EMAC_MDIO_CLOCK_FREQ) - 1;
-	writel((clkdiv & 0xff) | MDIO_CONTROL_ENABLE | MDIO_CONTROL_FAULT,
-		priv->adap_mdio + EMAC_MDIO_CONTROL);
-
 	/* Start receive process */
 	writel(BD_TO_HW(priv->emac_rx_desc), priv->adap_emac + EMAC_RX0HDP);
 
-	ret = phy_device_connect(edev, &priv->miibus, priv->phy_addr, NULL,
-	                         priv->phy_flags, priv->interface);
+	ret = phy_device_connect(edev, NULL, -1, NULL, 0, priv->interface);
 	if (ret)
 		return ret;
 
@@ -540,19 +536,13 @@ out:
 static int davinci_emac_probe(struct device_d *dev)
 {
 	struct resource *iores;
-	struct davinci_emac_platform_data *pdata;
 	struct davinci_emac_priv *priv;
-	uint64_t start;
-	uint32_t phy_mask;
+	uint32_t ctrl_reg_offset;
+	uint32_t ctrl_ram_offset;
+	struct device_node *np = dev->device_node;
 
 	dev_dbg(dev, "+ emac_probe\n");
 
-	if (!dev->platform_data) {
-		dev_err(dev, "no platform_data\n");
-		return -ENODEV;
-	}
-	pdata = dev->platform_data;
-
 	priv = xzalloc(sizeof(*priv));
 	dev->priv = priv;
 
@@ -561,22 +551,14 @@ static int davinci_emac_probe(struct device_d *dev)
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-	priv->adap_emac = IOMEM(iores->start);
 
-	iores = dev_request_mem_resource(dev, 1);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
 	priv->adap_ewrap = IOMEM(iores->start);
 
-	iores = dev_request_mem_resource(dev, 2);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	priv->adap_mdio = IOMEM(iores->start);
+	of_property_read_u32(np, "ti,davinci-ctrl-reg-offset", &ctrl_reg_offset);
+	priv->adap_emac = IOMEM(iores->start) + ctrl_reg_offset;
 
-	iores = dev_request_mem_resource(dev, 3);
-	if (IS_ERR(iores))
-		return PTR_ERR(iores);
-	priv->emac_desc_base = IOMEM(iores->start);
+	of_property_read_u32(np, "ti,davinci-ctrl-ram-offset", &ctrl_ram_offset);
+	priv->emac_desc_base = IOMEM(iores->start) + ctrl_ram_offset;
 
 	/* EMAC descriptors */
 	priv->emac_rx_desc = priv->emac_desc_base + EMAC_RX_DESC_BASE;
@@ -598,37 +580,7 @@ static int davinci_emac_probe(struct device_d *dev)
 	priv->edev.set_ethaddr = davinci_emac_set_ethaddr;
 	priv->edev.parent = dev;
 
-	davinci_eth_mdio_enable(priv);
-
-	start = get_time_ns();
-	while (1) {
-		phy_mask = readl(priv->adap_mdio + EMAC_MDIO_ALIVE);
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
-	if (pdata->interface_rmii)
-		priv->interface = PHY_INTERFACE_MODE_RMII;
-	else
-		priv->interface = PHY_INTERFACE_MODE_MII;
-	priv->phy_addr = pdata->phy_addr;
-	priv->phy_flags = pdata->force_link ? PHYLIB_FORCE_LINK : 0;
-
-	priv->miibus.read = davinci_miibus_read;
-	priv->miibus.write = davinci_miibus_write;
-	priv->miibus.priv = priv;
-	priv->miibus.parent = dev;
-	priv->miibus.phy_mask = phy_mask;
-
-	mdiobus_register(&priv->miibus);
+	priv->interface = of_get_phy_mode(np);
 
 	eth_register(&priv->edev);
 
@@ -643,9 +595,73 @@ static void davinci_emac_remove(struct device_d *dev)
 	davinci_emac_halt(&priv->edev);
 }
 
+static __maybe_unused struct of_device_id davinci_emac_dt_ids[] = {
+	{
+		.compatible = "ti,am3517-emac",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d davinci_emac_driver = {
 	.name   = "davinci_emac",
 	.probe  = davinci_emac_probe,
 	.remove = davinci_emac_remove,
+	.of_compatible = DRV_OF_COMPAT(davinci_emac_dt_ids),
 };
 device_platform_driver(davinci_emac_driver);
+
+static int davinci_mdio_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct davinci_mdio_priv *priv;
+	int ret;
+	uint32_t clkdiv;
+
+	priv = xzalloc(sizeof(*priv));
+
+	priv->dev = dev;
+	priv->miibus.read = davinci_miibus_read;
+	priv->miibus.write = davinci_miibus_write;
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	priv->adap_mdio = IOMEM(iores->start);
+
+	davinci_eth_mdio_enable(priv);
+
+	/* Init MDIO & get link state */
+	clkdiv = (EMAC_MDIO_BUS_FREQ / EMAC_MDIO_CLOCK_FREQ) - 1;
+	writel((clkdiv & 0xff) | MDIO_CONTROL_ENABLE | MDIO_CONTROL_FAULT,
+		priv->adap_mdio + EMAC_MDIO_CONTROL);
+
+	ret = mdiobus_register(&priv->miibus);
+	if (ret)
+		goto err;
+
+	return 0;
+
+err:
+	free(priv);
+
+	return ret;
+}
+
+static __maybe_unused struct of_device_id davinci_mdio_dt_ids[] = {
+	{
+		.compatible = "ti,davinci_mdio",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d davinci_mdio_driver = {
+	.name   = "davinci_mdio",
+	.probe  = davinci_mdio_probe,
+	.of_compatible = DRV_OF_COMPAT(davinci_mdio_dt_ids),
+};
+device_platform_driver(davinci_mdio_driver);
diff --git a/include/platform_data/eth-davinci-emac.h b/include/platform_data/eth-davinci-emac.h
deleted file mode 100644
index caead1fecf..0000000000
--- a/include/platform_data/eth-davinci-emac.h
+++ /dev/null
@@ -1,10 +0,0 @@
-#ifndef __NET_DAVINCI_EMAC_H__
-#define __NET_DAVINCI_EMAC_H__
-
-struct davinci_emac_platform_data {
-	int phy_addr;
-	bool force_link;
-	bool interface_rmii;
-};
-
-#endif /* __NET_DAVINCI_EMAC_H__ */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJ2qc-0008L5-Hz
 for barebox@lists.infradead.org; Mon, 09 Sep 2013 14:53:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Sep 2013 16:53:20 +0200
Message-Id: <1378738401-723-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1378738401-723-1-git-send-email-s.hauer@pengutronix.de>
References: <1378738401-723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] net: designware: Add decvicetree support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/designware.c | 54 ++++++++++++++++++++++++++++++++++++++++--------
 include/net/designware.h |  1 +
 2 files changed, 46 insertions(+), 9 deletions(-)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 0b5390d..a71e2e9 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -29,12 +29,12 @@
 #include <init.h>
 #include <io.h>
 #include <net.h>
+#include <of_net.h>
 #include <asm/mmu.h>
 #include <net/designware.h>
 #include <linux/phy.h>
 #include "designware.h"
 
-
 struct dw_eth_dev {
 	struct eth_device netdev;
 	struct mii_bus miibus;
@@ -57,6 +57,14 @@ struct dw_eth_dev {
 	int enh_desc;
 };
 
+struct dw_eth_drvdata {
+	bool enh_desc;
+};
+
+static struct dw_eth_drvdata dwmac_370a_drvdata = {
+	.enh_desc = 1,
+};
+
 /* Speed specific definitions */
 #define SPEED_10M		1
 #define SPEED_100M		2
@@ -399,6 +407,14 @@ static void dwc_version(struct device_d *dev, u32 hwid)
 		uid, synid);
 }
 
+static int dwc_probe_dt(struct device_d *dev, struct dw_eth_dev *priv)
+{
+	priv->phy_addr = -1;
+	priv->interface = of_get_phy_mode(dev->device_node);
+
+	return 0;
+}
+
 static int dwc_ether_probe(struct device_d *dev)
 {
 	struct dw_eth_dev *priv;
@@ -406,14 +422,27 @@ static int dwc_ether_probe(struct device_d *dev)
 	struct mii_bus *miibus;
 	void __iomem *base;
 	struct dwc_ether_platform_data *pdata = dev->platform_data;
-
-	if (!pdata) {
-		printf("dwc_ether: no platform_data\n");
-		return -ENODEV;
-	}
+	int ret;
+	struct dw_eth_drvdata *drvdata;
 
 	priv = xzalloc(sizeof(struct dw_eth_dev));
 
+	ret = dev_get_drvdata(dev, (unsigned long *)&drvdata);
+	if (ret)
+		return ret;
+
+	priv->enh_desc = drvdata->enh_desc;
+
+	if (pdata) {
+		priv->phy_addr = pdata->phy_addr;
+		priv->interface = pdata->interface;
+		priv->fix_mac_speed = pdata->fix_mac_speed;
+	} else {
+		ret = dwc_probe_dt(dev, priv);
+		if (ret)
+			return ret;
+	}
+
 	base = dev_request_mem_region(dev, 0);
 	priv->mac_regs_p = base;
 	dwc_version(dev, readl(&priv->mac_regs_p->version));
@@ -424,7 +453,6 @@ static int dwc_ether_probe(struct device_d *dev)
 		CONFIG_RX_DESCR_NUM * sizeof(struct dmamacdescr));
 	priv->txbuffs = dma_alloc(TX_TOTAL_BUFSIZE);
 	priv->rxbuffs = dma_alloc(RX_TOTAL_BUFSIZE);
-	priv->fix_mac_speed = pdata->fix_mac_speed;
 
 	edev = &priv->netdev;
 	miibus = &priv->miibus;
@@ -439,8 +467,6 @@ static int dwc_ether_probe(struct device_d *dev)
 	edev->get_ethaddr = dwc_ether_get_ethaddr;
 	edev->set_ethaddr = dwc_ether_set_ethaddr;
 
-	priv->phy_addr = pdata->phy_addr;
-	priv->interface = pdata->interface;
 	miibus->parent = dev;
 	miibus->read = dwc_ether_mii_read;
 	miibus->write = dwc_ether_mii_write;
@@ -455,9 +481,19 @@ static void dwc_ether_remove(struct device_d *dev)
 {
 }
 
+static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
+	{
+		.compatible = "snps,dwmac-3.70a",
+		.data = (unsigned long)&dwmac_370a_drvdata,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d dwc_ether_driver = {
 	.name = "designware_eth",
 	.probe = dwc_ether_probe,
 	.remove = dwc_ether_remove,
+	.of_compatible = DRV_OF_COMPAT(dwc_ether_compatible),
 };
 device_platform_driver(dwc_ether_driver);
diff --git a/include/net/designware.h b/include/net/designware.h
index 3f31c97..7a7a26a 100644
--- a/include/net/designware.h
+++ b/include/net/designware.h
@@ -7,6 +7,7 @@ struct dwc_ether_platform_data {
 	int phy_addr;
 	phy_interface_t interface;
 	void (*fix_mac_speed)(int speed);
+	bool enh_desc;	/* use Alternate/Enhanced Descriptor configurations */
 };
 
 #endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

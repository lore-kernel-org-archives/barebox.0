Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THdGG-000315-9i
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 16:17:58 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Fri, 28 Sep 2012 18:17:45 +0200
Message-Id: <1348849066-32265-3-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1348849066-32265-1-git-send-email-jlu@pengutronix.de>
References: <1348849066-32265-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 2/3] davinci_emac: adjust to new phylib framework
To: barebox@lists.infradead.org

Also pass flags using platform_data and remove useless casts from void*.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/net/Kconfig        |    2 +-
 drivers/net/davinci_emac.c |   79 ++++++++++++++++++++++++++------------------
 include/net/davinci_emac.h |   10 ++++++
 3 files changed, 57 insertions(+), 34 deletions(-)
 create mode 100644 include/net/davinci_emac.h

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index b0da2c5..b3e5a83 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -48,7 +48,7 @@ config DRIVER_NET_SMC91111
 config DRIVER_NET_DAVINCI_EMAC
 	bool "TI Davinci/OMAP EMAC ethernet driver"
 	depends on ARCH_DAVINCI || ARCH_OMAP3
-	select MIIDEV
+	select PHYLIB
 
 config DRIVER_NET_DM9K
 	bool "Davicom dm9k[E|A|B] ethernet driver"
diff --git a/drivers/net/davinci_emac.c b/drivers/net/davinci_emac.c
index 7f39972..91fd226 100644
--- a/drivers/net/davinci_emac.c
+++ b/drivers/net/davinci_emac.c
@@ -43,18 +43,19 @@
 #include <io.h>
 #include <clock.h>
 #include <net.h>
-#include <miidev.h>
 #include <malloc.h>
 #include <init.h>
 #include <asm/mmu.h>
 #include <asm/system.h>
+#include <linux/phy.h>
 #include <mach/emac_defs.h>
+#include <net/davinci_emac.h>
 #include "davinci_emac.h"
 
 struct davinci_emac_priv {
 	struct device_d *dev;
 	struct eth_device edev;
-	struct mii_device miidev;
+	struct mii_bus miibus;
 
 	/* EMAC Addresses */
 	void __iomem *adap_emac; /* = EMAC_BASE_ADDR */
@@ -72,8 +73,10 @@ struct davinci_emac_priv {
 	/* Receive packet buffers */
 	unsigned char *emac_rx_buffers; /* [EMAC_MAX_RX_BUFFERS * (EMAC_MAX_ETHERNET_PKT_SIZE + EMAC_PKT_ALIGN)] */
 
-	/* PHY address for a discovered PHY (0xff - not found) */
-	uint8_t active_phy_addr; /* = 0xff */
+	/* PHY-specific information */
+	phy_interface_t interface;
+	uint8_t phy_addr;
+	uint32_t phy_flags;
 
 	/* mac_addr[0] goes out on the wire first */
 	uint8_t mac_addr[6];
@@ -149,7 +152,6 @@ static int davinci_eth_phy_read(struct davinci_emac_priv *priv, uint8_t phy_addr
 /* Write to a PHY register via MDIO inteface. Blocks until operation is complete. */
 static int davinci_eth_phy_write(struct davinci_emac_priv *priv, uint8_t phy_addr, uint8_t reg_num, uint16_t data)
 {
-
 	while (readl(priv->adap_mdio + EMAC_MDIO_USERACCESS0) & MDIO_USERACCESS0_GO);
 
 	dev_dbg(priv->dev, "emac_phy_write: addr=0x%02x reg=0x%02x data=0x%04x\n",
@@ -167,16 +169,16 @@ static int davinci_eth_phy_write(struct davinci_emac_priv *priv, uint8_t phy_add
 	return 1;
 }
 
-static int davinci_miidev_read(struct mii_device *dev, int addr, int reg)
+static int davinci_miibus_read(struct mii_bus *bus, int addr, int reg)
 {
-	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)dev->edev->priv;
+	struct davinci_emac_priv *priv = bus->priv;
 	uint16_t value = 0;
 	return davinci_eth_phy_read(priv, addr, reg, &value) ? value : -1;
 }
 
-static int davinci_miidev_write(struct mii_device *dev, int addr, int reg, int value)
+static int davinci_miibus_write(struct mii_bus *bus, int addr, int reg, u16 value)
 {
-	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)dev->edev->priv;
+	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)bus->priv;
 	return davinci_eth_phy_write(priv, addr, reg, value) ? 0 : -1;
 }
 
@@ -191,7 +193,7 @@ static int davinci_emac_get_ethaddr(struct eth_device *edev, unsigned char *adr)
  */
 static int davinci_emac_set_ethaddr(struct eth_device *edev, unsigned char *addr)
 {
-	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)edev->priv;
+	struct davinci_emac_priv *priv = edev->priv;
 	int i;
 
 	for (i = 0; i < sizeof(priv->mac_addr); i++)
@@ -207,7 +209,7 @@ static int davinci_emac_init(struct eth_device *edev)
 
 static int davinci_emac_open(struct eth_device *edev)
 {
-	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)edev->priv;
+	struct davinci_emac_priv *priv = edev->priv;
 	uint32_t clkdiv, cnt;
 	void __iomem *rx_desc;
 	unsigned long mac_hi, mac_lo;
@@ -318,16 +320,11 @@ static int davinci_emac_open(struct eth_device *edev)
 	/* Start receive process */
 	writel(BD_TO_HW(priv->emac_rx_desc), priv->adap_emac + EMAC_RX0HDP);
 
-	ret = miidev_wait_aneg(&priv->miidev);
+	ret = phy_device_connect(edev, &priv->miibus, priv->phy_addr, NULL,
+	                         priv->phy_flags, priv->interface);
 	if (ret)
 		return ret;
 
-	ret = miidev_get_status(&priv->miidev);
-	if (ret < 0)
-		return ret;
-
-	miidev_print_status(&priv->miidev);
-
 	dev_dbg(priv->dev, "- emac_open\n");
 
 	return 0;
@@ -378,7 +375,7 @@ static void davinci_eth_ch_teardown(struct davinci_emac_priv *priv, int ch)
 
 static void davinci_emac_halt(struct eth_device *edev)
 {
-	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)edev->priv;
+	struct davinci_emac_priv *priv = edev->priv;
 
 	dev_dbg(priv->dev, "+ emac_halt\n");
 
@@ -408,7 +405,7 @@ static void davinci_emac_halt(struct eth_device *edev)
  */
 static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
 {
-	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)edev->priv;
+	struct davinci_emac_priv *priv = edev->priv;
 	uint64_t start;
 	int ret_status;
 
@@ -455,7 +452,7 @@ static int davinci_emac_send(struct eth_device *edev, void *packet, int length)
  */
 static int davinci_emac_recv(struct eth_device *edev)
 {
-	struct davinci_emac_priv *priv = (struct davinci_emac_priv *)edev->priv;
+	struct davinci_emac_priv *priv = edev->priv;
 	void __iomem *rx_curr_desc, *curr_desc, *tail_desc;
 	unsigned char *pkt;
 	int status, len, ret = -1;
@@ -531,11 +528,19 @@ out:
 
 static int davinci_emac_probe(struct device_d *dev)
 {
+	struct davinci_emac_platform_data *pdata;
 	struct davinci_emac_priv *priv;
 	uint64_t start;
+	uint32_t phy_mask;
 
 	dev_dbg(dev, "+ emac_probe\n");
 
+	if (!dev->platform_data) {
+		dev_err(dev, "no platform_data\n");
+		return -ENODEV;
+	}
+	pdata = dev->platform_data;
+
 	priv = xzalloc(sizeof(*priv));
 	dev->priv = priv;
 
@@ -556,9 +561,6 @@ static int davinci_emac_probe(struct device_d *dev)
 	/* Receive packet buffers */
 	priv->emac_rx_buffers = xmemalign(4096, EMAC_MAX_RX_BUFFERS * (EMAC_MAX_ETHERNET_PKT_SIZE + EMAC_PKT_ALIGN));
 
-	/* PHY address for a discovered PHY (0xff - not found) */
-	priv->active_phy_addr = 0xff;
-
 	priv->edev.priv = priv;
 	priv->edev.init = davinci_emac_init;
 	priv->edev.open = davinci_emac_open;
@@ -573,22 +575,33 @@ static int davinci_emac_probe(struct device_d *dev)
 
 	start = get_time_ns();
 	while (1) {
-		if (readl(priv->adap_mdio + EMAC_MDIO_ALIVE))
+		phy_mask = readl(priv->adap_mdio + EMAC_MDIO_ALIVE);
+		if (phy_mask) {
+			dev_info(dev, "detected phy mask 0x%x\n", phy_mask);
+			phy_mask = ~phy_mask;
 			break;
+		}
 		if (is_timeout(start, 256 * MSECOND)) {
-			dev_err(dev, "No ETH PHY detected!\n");
+			dev_err(dev, "no live phy, scanning all\n");
+			phy_mask = 0;
 			break;
 		}
 	}
 
-	priv->miidev.read = davinci_miidev_read;
-	priv->miidev.write = davinci_miidev_write;
-	priv->miidev.address = 0x01;
-	priv->miidev.flags = MIIDEV_FORCE_LINK;
-	priv->miidev.edev = &priv->edev;
-	priv->miidev.parent = dev;
+	if (pdata->interface_rmii)
+		priv->interface = PHY_INTERFACE_MODE_RMII;
+	else
+		priv->interface = PHY_INTERFACE_MODE_MII;
+	priv->phy_addr = pdata->phy_addr;
+	priv->phy_flags = pdata->force_link ? PHYLIB_FORCE_LINK : 0;
+
+	priv->miibus.read = davinci_miibus_read;
+	priv->miibus.write = davinci_miibus_write;
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
+	priv->miibus.phy_mask = phy_mask;
 
-	mii_register(&priv->miidev);
+	mdiobus_register(&priv->miibus);
 
 	eth_register(&priv->edev);
 
diff --git a/include/net/davinci_emac.h b/include/net/davinci_emac.h
new file mode 100644
index 0000000..caead1f
--- /dev/null
+++ b/include/net/davinci_emac.h
@@ -0,0 +1,10 @@
+#ifndef __NET_DAVINCI_EMAC_H__
+#define __NET_DAVINCI_EMAC_H__
+
+struct davinci_emac_platform_data {
+	int phy_addr;
+	bool force_link;
+	bool interface_rmii;
+};
+
+#endif /* __NET_DAVINCI_EMAC_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

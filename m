Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkcX5-0003Jb-71
 for barebox@lists.infradead.org; Wed, 14 May 2014 16:59:55 +0000
Received: by mail-wi0-f173.google.com with SMTP id bs8so8397031wib.0
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 09:59:33 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Wed, 14 May 2014 18:59:29 +0200
Message-Id: <1400086769-31300-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] drivers/net/ethoc: add mdio bus support
To: barebox@lists.infradead.org

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/net/Kconfig |    1 +
 drivers/net/ethoc.c |   57 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 58 insertions(+), 0 deletions(-)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 057abd2..7a0d5e1 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -80,6 +80,7 @@ config DRIVER_NET_EP93XX
 
 config DRIVER_NET_ETHOC
 	bool "OpenCores ethernet MAC driver"
+	select PHYLIB
 	help
 	  This option enables support for the OpenCores 10/100 Mbps
 	  Ethernet MAC core.
diff --git a/drivers/net/ethoc.c b/drivers/net/ethoc.c
index b000875..1fb6111 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -178,6 +178,8 @@ struct ethoc {
 
 	u32 num_rx;
 	u32 cur_rx;
+
+	struct mii_bus miibus;
 };
 
 /**
@@ -481,6 +483,54 @@ static int ethoc_send_packet(struct eth_device *edev, void *packet, int length)
 	return 0;
 }
 
+static int ethoc_mdio_read(struct mii_bus *bus, int phy, int reg)
+{
+	struct ethoc *priv = bus->priv;
+	u64 start;
+	u32 data;
+
+	ethoc_write(priv, MIIADDRESS, MIIADDRESS_ADDR(phy, reg));
+	ethoc_write(priv, MIICOMMAND, MIICOMMAND_READ);
+
+	start = get_time_ns();
+	while (ethoc_read(priv, MIISTATUS) & MIISTATUS_BUSY) {
+		if (is_timeout(start, 2 * MSECOND)) {
+			dev_err(bus->parent, "PHY command timeout\n");
+			return -EBUSY;
+		}
+	}
+
+	data = ethoc_read(priv, MIIRX_DATA);
+
+	/* reset MII command register */
+	ethoc_write(priv, MIICOMMAND, 0);
+
+	return data;
+}
+
+static int ethoc_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
+{
+	struct ethoc *priv = bus->priv;
+	u64 start;
+
+	ethoc_write(priv, MIIADDRESS, MIIADDRESS_ADDR(phy, reg));
+	ethoc_write(priv, MIITX_DATA, val);
+	ethoc_write(priv, MIICOMMAND, MIICOMMAND_WRITE);
+
+	start = get_time_ns();
+	while (ethoc_read(priv, MIISTATUS) & MIISTATUS_BUSY) {
+		if (is_timeout(start, 2 * MSECOND)) {
+			dev_err(bus->parent, "PHY command timeout\n");
+			return -EBUSY;
+		}
+	}
+
+	/* reset MII command register */
+	ethoc_write(priv, MIICOMMAND, 0);
+
+	return 0;
+}
+
 static int ethoc_probe(struct device_d *dev)
 {
 	struct eth_device *edev;
@@ -493,6 +543,11 @@ static int ethoc_probe(struct device_d *dev)
 	priv = edev->priv;
 	priv->iobase = dev_request_mem_region(dev, 0);
 
+	priv->miibus.read = ethoc_mdio_read;
+	priv->miibus.write = ethoc_mdio_write;
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
+
 	edev->init = ethoc_init_dev;
 	edev->open = ethoc_open;
 	edev->send = ethoc_send_packet;
@@ -503,6 +558,8 @@ static int ethoc_probe(struct device_d *dev)
 	edev->set_ethaddr = ethoc_set_ethaddr;
 	edev->parent = dev;
 
+	mdiobus_register(&priv->miibus);
+
 	eth_register(edev);
 
 	return 0;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

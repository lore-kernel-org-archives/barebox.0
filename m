Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x229.google.com ([2a00:1450:400c:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkHbO-000790-1f
 for barebox@lists.infradead.org; Tue, 13 May 2014 18:38:58 +0000
Received: by mail-we0-f169.google.com with SMTP id u56so834160wes.0
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 11:38:36 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Tue, 13 May 2014 20:38:26 +0200
Message-Id: <1400006306-5540-3-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1400006306-5540-1-git-send-email-franck.jullien@gmail.com>
References: <1400006306-5540-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 3/3] drivers/net/ethoc: add mdio bus support
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
index b000875..42780be 100644
--- a/drivers/net/ethoc.c
+++ b/drivers/net/ethoc.c
@@ -178,6 +178,8 @@ struct ethoc {
 
 	u32 num_rx;
 	u32 cur_rx;
+
+	struct mii_bus *miibus;
 };
 
 /**
@@ -481,18 +483,71 @@ static int ethoc_send_packet(struct eth_device *edev, void *packet, int length)
 	return 0;
 }
 
+static int ethoc_mdio_read(struct mii_bus *bus, int phy, int reg)
+{
+	struct ethoc *priv = bus->priv;
+	int i;
+
+	ethoc_write(priv, MIIADDRESS, MIIADDRESS_ADDR(phy, reg));
+	ethoc_write(priv, MIICOMMAND, MIICOMMAND_READ);
+
+	for (i = 0; i < 5; i++) {
+		u32 status = ethoc_read(priv, MIISTATUS);
+		if (!(status & MIISTATUS_BUSY)) {
+			u32 data = ethoc_read(priv, MIIRX_DATA);
+			/* reset MII command register */
+			ethoc_write(priv, MIICOMMAND, 0);
+			return data;
+		}
+		mdelay(1);
+	}
+
+	return -EBUSY;
+}
+
+static int ethoc_mdio_write(struct mii_bus *bus, int phy, int reg, u16 val)
+{
+	struct ethoc *priv = bus->priv;
+	int i;
+
+	ethoc_write(priv, MIIADDRESS, MIIADDRESS_ADDR(phy, reg));
+	ethoc_write(priv, MIITX_DATA, val);
+	ethoc_write(priv, MIICOMMAND, MIICOMMAND_WRITE);
+
+	for (i = 0; i < 5; i++) {
+		u32 stat = ethoc_read(priv, MIISTATUS);
+		if (!(stat & MIISTATUS_BUSY)) {
+			/* reset MII command register */
+			ethoc_write(priv, MIICOMMAND, 0);
+			return 0;
+		}
+		mdelay(1);
+	}
+
+	return -EBUSY;
+}
+
 static int ethoc_probe(struct device_d *dev)
 {
 	struct eth_device *edev;
 	struct ethoc *priv;
+	struct mii_bus *miibus;
 
 	edev = xzalloc(sizeof(struct eth_device) +
 		       sizeof(struct ethoc));
 	edev->priv = (struct ethoc *)(edev + 1);
+	miibus = xzalloc(sizeof(struct mii_bus));
 
 	priv = edev->priv;
 	priv->iobase = dev_request_mem_region(dev, 0);
 
+	priv->miibus = miibus;
+
+	miibus->read = ethoc_mdio_read;
+	miibus->write = ethoc_mdio_write;
+	miibus->priv = priv;
+	miibus->parent = dev;
+
 	edev->init = ethoc_init_dev;
 	edev->open = ethoc_open;
 	edev->send = ethoc_send_packet;
@@ -503,6 +558,8 @@ static int ethoc_probe(struct device_d *dev)
 	edev->set_ethaddr = ethoc_set_ethaddr;
 	edev->parent = dev;
 
+	mdiobus_register(miibus);
+
 	eth_register(edev);
 
 	return 0;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

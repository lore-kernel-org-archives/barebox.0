Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYrPA-0007cc-Ed
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 11:17:33 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 29 Jun 2018 13:17:15 +0200
Message-Id: <20180629111715.16082-2-o.rempel@pengutronix.de>
In-Reply-To: <20180629111715.16082-1-o.rempel@pengutronix.de>
References: <20180629111715.16082-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 2/2] net: designware: make sure DMA is disabled on kernel
 start.
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Halt is not automatically executed if we start the kernel.
So, we may have potentially memory corruptions.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/designware.c         | 8 ++++++++
 drivers/net/designware.h         | 1 +
 drivers/net/designware_generic.c | 1 +
 drivers/net/designware_socfpga.c | 1 +
 4 files changed, 11 insertions(+)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 862ee2f046..49ddaa20d8 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -471,6 +471,7 @@ struct dw_eth_dev *dwc_drv_probe(struct device_d *dev)
 	miibus = &priv->miibus;
 	edev->priv = priv;
 
+	dev->priv = edev;
 	edev->parent = dev;
 	edev->open = dwc_ether_open;
 	edev->send = dwc_ether_send;
@@ -489,3 +490,10 @@ struct dw_eth_dev *dwc_drv_probe(struct device_d *dev)
 
 	return priv;
 }
+
+void dwc_drv_remove(struct device_d *dev)
+{
+	struct eth_device *edev = dev->priv;
+
+	dwc_ether_halt(edev);
+}
diff --git a/drivers/net/designware.h b/drivers/net/designware.h
index 4a99fa2aa6..6236d6c2e5 100644
--- a/drivers/net/designware.h
+++ b/drivers/net/designware.h
@@ -51,6 +51,7 @@ struct dw_eth_drvdata {
 };
 
 struct dw_eth_dev *dwc_drv_probe(struct device_d *dev);
+void dwc_drv_remove(struct device_d *dev);
 
 #define CONFIG_TX_DESCR_NUM	16
 #define CONFIG_RX_DESCR_NUM	16
diff --git a/drivers/net/designware_generic.c b/drivers/net/designware_generic.c
index 29269deac9..9d125b47a6 100644
--- a/drivers/net/designware_generic.c
+++ b/drivers/net/designware_generic.c
@@ -55,6 +55,7 @@ static __maybe_unused struct of_device_id dwc_ether_compatible[] = {
 static struct driver_d dwc_ether_driver = {
 	.name = "designware_eth",
 	.probe = dwc_ether_probe,
+	.remove	= dwc_drv_remove,
 	.of_compatible = DRV_OF_COMPAT(dwc_ether_compatible),
 };
 device_platform_driver(dwc_ether_driver);
diff --git a/drivers/net/designware_socfpga.c b/drivers/net/designware_socfpga.c
index 154c38f9a1..cb88882d66 100644
--- a/drivers/net/designware_socfpga.c
+++ b/drivers/net/designware_socfpga.c
@@ -179,6 +179,7 @@ static __maybe_unused struct of_device_id socfpga_dwc_ether_compatible[] = {
 static struct driver_d socfpga_dwc_ether_driver = {
 	.name = "socfpga_designware_eth",
 	.probe = socfpga_dwc_ether_probe,
+	.remove	= dwc_drv_remove,
 	.of_compatible = DRV_OF_COMPAT(socfpga_dwc_ether_compatible),
 };
 device_platform_driver(socfpga_dwc_ether_driver);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

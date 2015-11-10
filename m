Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwHf8-0008G8-G0
 for barebox@lists.infradead.org; Tue, 10 Nov 2015 22:45:15 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 10 Nov 2015 22:44:50 +0000
Message-ID: <1447195492.4553.95.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <99A422BF0FA25645B04F1F15B4B413BF@kymetacorp.com>
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
Subject: [PATCH] net: designware: Don't hang in reset with powered down phy
To: barebox <barebox@lists.infradead.org>

The dw MAC requires that all clock domains to be running for it to
finish a MAC reset.  This include the clock provided by the PHY.

If the PHY is powered down, bit BMCR_PDOWN set, then it won't be
generating a clock.  And so the MAC never comes out of reset.  On
shutdown, Linux will put the PHY in powerdown mode, so it can easily
be the case that the PHY is powered down on boot.

See Linux kernel commit 2d871aa07136fe6e576bde63072cf33e2c664e95.

Currently the MAC reset is done before the phy is probed.  We can't
power up the phy until it's probed, so the resets must be in the
opposite order.  The MAC reset is in device init but the PHY probe is
in device open.  Device init is done first, always, while open is done
later, and only if the device is used.

Rather than move the phy probe to init, this moves the MAC reset to
open.  It seems better to speed up boots that don't use ethernet by
skipping MAC reset than to slow them down by adding PHY probe.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/net/designware.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

Instead of phy call in the designware driver, it would be nicer to
use the phylib layer to abstract it.  Except that the barebox
phylib has no support for power management and doesn't need it.

So one either adds general PM support just to clear one bit in one
register, which seems like a bloated and overly complex solution.
Or comes up with a generalized method to clear one bit, which seems
pointless.

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 8006527..7109e97 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -218,6 +218,16 @@ static int dwc_ether_init(struct eth_device *dev)
 	struct dw_eth_dev *priv = dev->priv;
 	struct eth_mac_regs *mac_p = priv->mac_regs_p;
 	struct eth_dma_regs *dma_p = priv->dma_regs_p;
+	int bmcr;
+
+	/* Before we reset the mac, we must insure the PHY is not powered down
+	 * as the dw controller needs all clock domains to be running, including
+	 * the PHY clock, to come out of a mac reset.  */
+	bmcr = phy_read(dev->phydev, MII_BMCR);
+	if (bmcr & BMCR_PDOWN) {
+		bmcr &= ~BMCR_PDOWN;
+		phy_write(dev->phydev, MII_BMCR, bmcr);
+	}
 
 	if (mac_reset(dev) < 0)
 		return -1;
@@ -275,6 +285,8 @@ static int dwc_ether_open(struct eth_device *dev)
 	if (ret)
 		return ret;
 
+	dwc_ether_init(dev);
+
 	descs_init(dev);
 
 	/*
@@ -468,7 +480,6 @@ static int dwc_ether_probe(struct device_d *dev)
 	edev->priv = priv;
 
 	edev->parent = dev;
-	edev->init = dwc_ether_init;
 	edev->open = dwc_ether_open;
 	edev->send = dwc_ether_send;
 	edev->recv = dwc_ether_rx;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

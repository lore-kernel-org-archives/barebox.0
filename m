Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp85.ord1c.emailsrvr.com ([108.166.43.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIGNH-0003FZ-PA
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 17:03:17 +0000
From: Ian Abbott <abbotti@mev.co.uk>
Date: Thu,  1 Nov 2018 17:01:36 +0000
Message-Id: <20181101170136.20588-1-abbotti@mev.co.uk>
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
Subject: [PATCH] net: designware: look for a child device node for MDIO bus
To: barebox@lists.infradead.org
Cc: Ian Abbott <abbotti@mev.co.uk>

The Designware driver registers a local MDIO bus for each MAC device,
but without setting a device node pointer for the MDIO bus device.  In
this case, mdiobus_register() will use the MDIO bus's parent device node
(if any) as the MDIO device node.

If the MAC device node has a child node compatible with
"snps,dwmac-mdio", let us use that as the MDIO bus device node.
Otherwise, leave the MDIO bus device node pointer set to NULL and carry
on as before.

The upshot is that PHY device nodes can now be placed in an intermediate
node for the MDIO bus instead of having to place them directly in the
Designware MAC device node.

(Tested on a Terasic DE0-Nano-SoC with a suitably modified device tree.)

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
 drivers/net/designware.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/designware.c b/drivers/net/designware.c
index 49ddaa20d..58880b0e5 100644
--- a/drivers/net/designware.c
+++ b/drivers/net/designware.c
@@ -408,12 +408,22 @@ static void dwc_version(struct device_d *dev, u32 hwid)
 
 static int dwc_probe_dt(struct device_d *dev, struct dw_eth_dev *priv)
 {
+	struct device_node *child;
+
 	if (!IS_ENABLED(CONFIG_OFTREE))
 		return -ENODEV;
 
 	priv->phy_addr = -1;
 	priv->interface = of_get_phy_mode(dev->device_node);
 
+	/* Set MDIO bus device node, if present. */
+	for_each_child_of_node(dev->device_node, child) {
+		if (of_device_is_compatible(child, "snps,dwmac-mdio")) {
+			priv->miibus.dev.device_node = child;
+			break;
+		}
+	}
+
 	return 0;
 }
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

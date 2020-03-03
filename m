Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Bcb-0002Lz-Ep
 for barebox@lists.infradead.org; Tue, 03 Mar 2020 17:46:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1j9BcX-0006Kz-TH
 for barebox@lists.infradead.org; Tue, 03 Mar 2020 18:46:17 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1j9BcX-0001US-Ja
 for barebox@lists.infradead.org; Tue, 03 Mar 2020 18:46:17 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Tue,  3 Mar 2020 18:46:15 +0100
Message-Id: <20200303174616.4476-2-m.felsch@pengutronix.de>
In-Reply-To: <20200303174616.4476-1-m.felsch@pengutronix.de>
References: <20200303174616.4476-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 2/3] net: phy: micrel: backport finding PHY properties
To: barebox@lists.infradead.org

This backports linux commit 651df2183543 ("phy: micrel: Fix finding PHY
properties in MAC node."):

8<---------------------------------------------------------------------

    phy: micrel: Fix finding PHY properties in MAC node.

    commit 8b63ec1837fa ("phylib: Make PHYs children of their MDIO bus,
    not the bus' parent.")  changed the parenting of PHY devices, making
    them a child of the MDIO bus, instead of the MAC device. This broken
    the Micrel PHY driver which has a deprecated feature of allowing PHY
    properties to be placed into the MAC node.

    In order to find the MAC node, we need to walk up the tree of devices
    until we find one with an OF node attached.

    Reported-by: Dinh Nguyen <dinguyen@opensource.altera.com>
    Suggested-by: David Daney <david.daney@cavium.com>
    Acked-by: David Daney <david.daney@cavium.com>
    Fixes: 8b63ec1837fa ("phylib: Make PHYs children of their MDIO bus, not the bus' parent.")
    Signed-off-by: Andrew Lunn <andrew@lunn.ch>
    Tested-by: Dinh Nguyen <dinguyen@opensource.altera.com>
    Acked-by: Florian Fainelli <f.fainelli@gmail.com>
    Signed-off-by: David S. Miller <davem@davemloft.net>

8<---------------------------------------------------------------------

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/net/phy/micrel.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 8f0b81d8fa..b18db0a751 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -115,6 +115,7 @@ static int ksz9021_config_init(struct phy_device *phydev)
 {
 	const struct device_d *dev = &phydev->dev;
 	const struct device_node *of_node = dev->device_node;
+	const struct device_d *dev_walker;
 	const char *clk_pad_skew_names[] = {
 		"txen-skew-ps", "txc-skew-ps",
 		"rxdv-skew-ps", "rxc-skew-ps"
@@ -128,8 +129,15 @@ static int ksz9021_config_init(struct phy_device *phydev)
 		"txd2-skew-ps", "txd3-skew-ps"
 	};
 
-	if (!of_node && dev->parent->device_node)
-		of_node = dev->parent->device_node;
+	/* The Micrel driver has a deprecated option to place phy OF
+	 * properties in the MAC node. Walk up the tree of devices to
+	 * find a device with an OF node.
+	 */
+	dev_walker = &phydev->dev;
+	do {
+		of_node = dev_walker->device_node;
+		dev_walker = dev_walker->parent;
+	} while (!of_node && dev_walker);
 
 	if (of_node) {
 		ksz9021_load_values_from_of(phydev, of_node,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

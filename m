Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtEgn-0007cb-Va
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 16:44:15 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 11 Feb 2019 17:44:00 +0100
Message-Id: <20190211164400.14663-1-m.felsch@pengutronix.de>
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
Subject: [PATCH] net: phy: micrel: backport ksz9031 125MHz ref-clk workaround
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

This patch backports linux commit e1b505a60366 ("net: phy: micrel: add
125MHz reference clock workaround").

8<--------------------- The original commit message -------------------

net: phy: micrel: add 125MHz reference clock workaround

The micrel KSZ9031 phy has a optional clock pin (CLK125_NDO) which can be
used as reference clock for the MAC unit. The clock signal must meet the
RGMII requirements to ensure the correct data transmission between the
MAC and the PHY. The KSZ9031 phy does not fulfill the duty cycle
requirement if the phy is configured as slave. For a complete
describtion look at the errata sheets: DS80000691D or DS80000692D.

The errata sheet recommends to force the phy into master mode whenever
there is a 1000Base-T link-up as work around. Only set the
"micrel,force-master" property if you use the phy reference clock provided
by CLK125_NDO pin as MAC reference clock in your application.

Attenation, this workaround is only usable if the link partner can
be configured to slave mode for 1000Base-T.

Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
[m.felsch@pengutronix.de: fix dt-binding documentation]
[m.felsch@pengutronix.de: use already existing result var for read/write]
[m.felsch@pengutronix.de: add error handling]
[m.felsch@pengutronix.de: add more comments]
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Signed-off-by: David S. Miller <davem@davemloft.net>
8<---------------------------------------------------------------------

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/net/phy/micrel.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index 67c2ca9d54..8f0b81d8fa 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -220,6 +220,7 @@ static int ksz9031_config_init(struct phy_device *phydev)
 		"txd2-skew-ps", "txd3-skew-ps"
 	};
 	static const char *control_skews[2] = {"txen-skew-ps", "rxdv-skew-ps"};
+	int ret;
 
 	if (!of_node && dev->parent->device_node)
 		of_node = dev->parent->device_node;
@@ -240,9 +241,40 @@ static int ksz9031_config_init(struct phy_device *phydev)
 		ksz9031_of_load_skew_values(phydev, of_node,
 				MII_KSZ9031RN_TX_DATA_PAD_SKEW, 4,
 				tx_data_skews, 4);
+
+		/* Silicon Errata Sheet (DS80000691D or DS80000692D):
+		 * When the device links in the 1000BASE-T slave mode only,
+		 * the optional 125MHz reference output clock (CLK125_NDO)
+		 * has wide duty cycle variation.
+		 *
+		 * The optional CLK125_NDO clock does not meet the RGMII
+		 * 45/55 percent (min/max) duty cycle requirement and therefore
+		 * cannot be used directly by the MAC side for clocking
+		 * applications that have setup/hold time requirements on
+		 * rising and falling clock edges.
+		 *
+		 * Workaround:
+		 * Force the phy to be the master to receive a stable clock
+		 * which meets the duty cycle requirement.
+		 */
+		if (of_property_read_bool(of_node, "micrel,force-master")) {
+			ret = phy_read(phydev, MII_CTRL1000);
+			if (ret < 0)
+				goto err_force_master;
+
+			/* enable master mode, config & prefer master */
+			ret |= CTL1000_ENABLE_MASTER | CTL1000_AS_MASTER;
+			ret = phy_write(phydev, MII_CTRL1000, ret);
+			if (ret < 0)
+				goto err_force_master;
+		}
 	}
 
 	return ksz9031_center_flp_timing(phydev);
+
+err_force_master:
+	dev_err(dev, "failed to force the phy to master mode\n");
+	return ret;
 }
 
 #define KSZ8873MLL_GLOBAL_CONTROL_4	0x06
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

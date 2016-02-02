Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQYyH-00083R-BY
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 11:18:11 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue,  2 Feb 2016 12:17:35 +0100
Message-Id: <1454411855-4839-6-git-send-email-p.zabel@pengutronix.de>
In-Reply-To: <1454411855-4839-1-git-send-email-p.zabel@pengutronix.de>
References: <1454411855-4839-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 6/6] net: phy: micrel: errata for KSZ9031
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tqs.de>

The KSZ9031 erratum #2 stats:
    The 125MHz reference clock (CLK125_NDO pin) output
    has duty cycle variation when the KSZ9031 links up in
    1000Base-T Slave mode, resulting in wide variation on
    the falling clock edge.

The recommended workaround is to either only use the rising edge of
the CLK125_NDO output for PLL locking, or to

    Set KSZ9031 to always link up in 1000Base-T Master mode
    by setting register 9h, bits [12:11] to '11'.

Since we can't guarantee the former, this patch does the latter.
Original patch by Markus Niebel <Markus.Niebel@tqs.de>.

Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/net/phy/micrel.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
index e8a566d..5227dfb 100644
--- a/drivers/net/phy/micrel.c
+++ b/drivers/net/phy/micrel.c
@@ -220,6 +220,7 @@ static int ksz9031_config_init(struct phy_device *phydev)
 		"txd2-skew-ps", "txd3-skew-ps"
 	};
 	static const char *control_skews[2] = {"txen-skew-ps", "rxdv-skew-ps"};
+	int rc;
 
 	if (!of_node && dev->parent->device_node)
 		of_node = dev->parent->device_node;
@@ -242,6 +243,14 @@ static int ksz9031_config_init(struct phy_device *phydev)
 				tx_data_skews, 4);
 	}
 
+	rc = phy_read(phydev, MII_CTRL1000);
+	if (rc >= 0) {
+		u16 val = rc;
+		/* Enable master mode, config & prefer master */
+		val |= (CTL1000_ENABLE_MASTER | CTL1000_AS_MASTER);
+		phy_write(phydev, MII_CTRL1000, val);
+	}
+
 	return ksz9031_center_flp_timing(phydev);
 }
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

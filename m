Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCEIP-0004ew-Kj
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 20:46:54 +0000
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Date: Tue, 29 Jul 2014 17:44:59 -0300
Message-Id: <1406666701-15356-5-git-send-email-ezequiel.garcia@free-electrons.com>
In-Reply-To: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
References: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: [PATCH 4/6] net: phy: Support Marvell 88EE1545 PHY
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Jason Cooper <jason@lakedaemon.net>, Willy Tarreau <w@1wt.eu>

This commit adds support for Marvell's 88E1545 PHY chip. In particular, this
allows to support QSGMII interfaces.

Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 drivers/net/phy/marvell.c | 59 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index 34f852e..ad8854d 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -23,6 +23,7 @@
 #define MARVELL_PHY_ID_88E1318S		0x01410e90
 #define MARVELL_PHY_ID_88E1116R		0x01410e40
 #define MARVELL_PHY_ID_88E1510		0x01410dd0
+#define MARVELL_PHY_ID_88E154x		0x01410eb1
 
 /* Mask used for ID comparisons */
 #define MARVELL_PHY_ID_MASK		0xfffffff0
@@ -50,6 +51,13 @@
 #define MII_88E1121_PHY_MSCR_DELAY_MASK	\
 	(MII_88E1121_PHY_MSCR_RX_DELAY | MII_88E1121_PHY_MSCR_TX_DELAY)
 
+#define MII_88E1540_LED_PAGE		0x3
+#define MII_88E1540_LED_CONTROL		0x10
+
+#define MII_88E1540_QSGMII_PAGE		0x4
+#define MII_88E1540_QSGMII_CONTROL	0x0
+#define MII_88E1540_QSGMII_AUTONEG_EN	BIT(12)
+
 /*
  * marvell_read_status
  *
@@ -138,6 +146,48 @@ static int marvell_read_status(struct phy_device *phydev)
 	return 0;
 }
 
+static int m88e1540_config_init(struct phy_device *phydev)
+{
+	u16 reg;
+	int ret;
+
+	/* Configure QSGMII auto-negotiation */
+	if (phydev->interface == PHY_INTERFACE_MODE_QSGMII) {
+		ret = phy_write(phydev, MII_MARVELL_PHY_PAGE,
+				MII_88E1540_QSGMII_PAGE);
+		if (ret < 0)
+			return ret;
+
+		reg = phy_read(phydev, MII_88E1540_QSGMII_CONTROL);
+		ret = phy_write(phydev, MII_88E1540_QSGMII_CONTROL,
+					reg | MII_88E1540_QSGMII_AUTONEG_EN);
+		if (ret < 0)
+			return ret;
+	}
+
+	/* Configure LED as:
+	 * Activity: Blink
+	 * Link:     On
+	 * No Link:  Off
+	 */
+	phy_write(phydev, MII_MARVELL_PHY_PAGE, MII_88E1540_LED_PAGE);
+	phy_write(phydev, MII_88E1540_LED_CONTROL, 0x1111);
+
+	/* Power-up the PHY. When going from power down to normal operation,
+	 * software reset and auto-negotiation restart are also performed.
+	 */
+	ret = phy_write(phydev, MII_MARVELL_PHY_PAGE,
+				MII_MARVELL_PHY_DEFAULT_PAGE);
+	if (ret < 0)
+		return ret;
+	ret = phy_write(phydev, MII_BMCR,
+			phy_read(phydev, MII_BMCR) & ~BMCR_PDOWN);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
 static int m88e1121_config_init(struct phy_device *phydev)
 {
 	u16 reg;
@@ -190,6 +240,15 @@ static struct phy_driver marvell_phys[] = {
 	.config_aneg	= genphy_config_aneg,
 	.read_status	= marvell_read_status,
 },
+{
+	.phy_id		= MARVELL_PHY_ID_88E154x,
+	.phy_id_mask	= MARVELL_PHY_ID_MASK,
+	.drv.name	= "Marvell 88E1545",
+	.features	= PHY_GBIT_FEATURES,
+	.config_init	= m88e1540_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= marvell_read_status,
+},
 };
 
 static int __init marvell_phy_init(void)
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

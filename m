Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmMKD-0007sb-Pn
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 15:19:29 +0000
Received: by mail-wm0-x243.google.com with SMTP id v190so2795171wme.3
 for <barebox@lists.infradead.org>; Fri, 10 Mar 2017 07:19:05 -0800 (PST)
From: pmamonov@gmail.com
Date: Fri, 10 Mar 2017 18:18:51 +0300
Message-Id: <20170310151851.26978-1-pmamonov@gmail.com>
In-Reply-To: <20170310150209.1564-1-pmamonov@gmail.com>
References: <20170310150209.1564-1-pmamonov@gmail.com>
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
Subject: [PATCH] net/phy: marvell: import support for 88E1111 from the Linux
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

From: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/net/phy/marvell.c | 126 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 126 insertions(+)

diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
index 38b2ad31f..ea5a4a9be 100644
--- a/drivers/net/phy/marvell.c
+++ b/drivers/net/phy/marvell.c
@@ -31,6 +31,22 @@
 #define MII_M1011_PHY_STATUS_RESOLVED	BIT(11)
 #define MII_M1011_PHY_STATUS_LINK	BIT(10)
 
+#define MII_M1111_PHY_LED_CONTROL	0x18
+#define MII_M1111_PHY_LED_DIRECT	0x4100
+#define MII_M1111_PHY_LED_COMBINE	0x411c
+#define MII_M1111_PHY_EXT_CR		0x14
+#define MII_M1111_RX_DELAY		0x80
+#define MII_M1111_TX_DELAY		0x2
+#define MII_M1111_PHY_EXT_SR		0x1b
+
+#define MII_M1111_HWCFG_MODE_MASK		0xf
+#define MII_M1111_HWCFG_MODE_COPPER_RGMII	0xb
+#define MII_M1111_HWCFG_MODE_FIBER_RGMII	0x3
+#define MII_M1111_HWCFG_MODE_SGMII_NO_CLK	0x4
+#define MII_M1111_HWCFG_MODE_COPPER_RTBI	0x9
+#define MII_M1111_HWCFG_FIBER_COPPER_AUTO	0x8000
+#define MII_M1111_HWCFG_FIBER_COPPER_RES	0x2000
+
 #define MII_M1111_COPPER		0
 #define MII_M1111_FIBER			1
 
@@ -402,6 +418,107 @@ static int m88e1540_config_init(struct phy_device *phydev)
 	return marvell_config_init(phydev);
 }
 
+static int m88e1111_config_init(struct phy_device *phydev)
+{
+	int err;
+	int temp;
+
+	if ((phydev->interface == PHY_INTERFACE_MODE_RGMII) ||
+	    (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID) ||
+	    (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID) ||
+	    (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)) {
+
+		temp = phy_read(phydev, MII_M1111_PHY_EXT_CR);
+		if (temp < 0)
+			return temp;
+
+		if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID) {
+			temp |= (MII_M1111_RX_DELAY | MII_M1111_TX_DELAY);
+		} else if (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID) {
+			temp &= ~MII_M1111_TX_DELAY;
+			temp |= MII_M1111_RX_DELAY;
+		} else if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID) {
+			temp &= ~MII_M1111_RX_DELAY;
+			temp |= MII_M1111_TX_DELAY;
+		}
+
+		err = phy_write(phydev, MII_M1111_PHY_EXT_CR, temp);
+		if (err < 0)
+			return err;
+
+		temp = phy_read(phydev, MII_M1111_PHY_EXT_SR);
+		if (temp < 0)
+			return temp;
+
+		temp &= ~(MII_M1111_HWCFG_MODE_MASK);
+
+		if (temp & MII_M1111_HWCFG_FIBER_COPPER_RES)
+			temp |= MII_M1111_HWCFG_MODE_FIBER_RGMII;
+		else
+			temp |= MII_M1111_HWCFG_MODE_COPPER_RGMII;
+
+		err = phy_write(phydev, MII_M1111_PHY_EXT_SR, temp);
+		if (err < 0)
+			return err;
+	}
+
+	if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {
+		temp = phy_read(phydev, MII_M1111_PHY_EXT_SR);
+		if (temp < 0)
+			return temp;
+
+		temp &= ~(MII_M1111_HWCFG_MODE_MASK);
+		temp |= MII_M1111_HWCFG_MODE_SGMII_NO_CLK;
+		temp |= MII_M1111_HWCFG_FIBER_COPPER_AUTO;
+
+		err = phy_write(phydev, MII_M1111_PHY_EXT_SR, temp);
+		if (err < 0)
+			return err;
+	}
+
+	if (phydev->interface == PHY_INTERFACE_MODE_RTBI) {
+		temp = phy_read(phydev, MII_M1111_PHY_EXT_CR);
+		if (temp < 0)
+			return temp;
+		temp |= (MII_M1111_RX_DELAY | MII_M1111_TX_DELAY);
+		err = phy_write(phydev, MII_M1111_PHY_EXT_CR, temp);
+		if (err < 0)
+			return err;
+
+		temp = phy_read(phydev, MII_M1111_PHY_EXT_SR);
+		if (temp < 0)
+			return temp;
+		temp &= ~(MII_M1111_HWCFG_MODE_MASK | MII_M1111_HWCFG_FIBER_COPPER_RES);
+		temp |= 0x7 | MII_M1111_HWCFG_FIBER_COPPER_AUTO;
+		err = phy_write(phydev, MII_M1111_PHY_EXT_SR, temp);
+		if (err < 0)
+			return err;
+
+		/* soft reset */
+		err = phy_write(phydev, MII_BMCR, BMCR_RESET);
+		if (err < 0)
+			return err;
+		do
+			temp = phy_read(phydev, MII_BMCR);
+		while (temp & BMCR_RESET);
+
+		temp = phy_read(phydev, MII_M1111_PHY_EXT_SR);
+		if (temp < 0)
+			return temp;
+		temp &= ~(MII_M1111_HWCFG_MODE_MASK | MII_M1111_HWCFG_FIBER_COPPER_RES);
+		temp |= MII_M1111_HWCFG_MODE_COPPER_RTBI | MII_M1111_HWCFG_FIBER_COPPER_AUTO;
+		err = phy_write(phydev, MII_M1111_PHY_EXT_SR, temp);
+		if (err < 0)
+			return err;
+	}
+
+	err = marvell_of_reg_init(phydev);
+	if (err < 0)
+		return err;
+
+	return phy_write(phydev, MII_BMCR, BMCR_RESET);
+}
+
 static int m88e1121_config_init(struct phy_device *phydev)
 {
 	u16 reg;
@@ -502,6 +619,15 @@ static int m88e1510_config_init(struct phy_device *phydev)
 
 static struct phy_driver marvell_drivers[] = {
 	{
+		.phy_id = MARVELL_PHY_ID_88E1111,
+		.phy_id_mask = MARVELL_PHY_ID_MASK,
+		.drv.name = "Marvell 88E1111",
+		.features = PHY_GBIT_FEATURES,
+		.config_init = &m88e1111_config_init,
+		.config_aneg = &genphy_config_aneg,
+		.read_status = &marvell_read_status,
+	},
+	{
 		.phy_id = MARVELL_PHY_ID_88E1121R,
 		.phy_id_mask = MARVELL_PHY_ID_MASK,
 		.drv.name = "Marvell 88E1121R",
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

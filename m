Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzNoN-0006XY-HM
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 10:18:48 +0000
Received: by mail-wg0-f44.google.com with SMTP id x13so91251wgg.15
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 03:18:25 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 24 Jun 2014 12:18:11 +0200
Message-Id: <1403605091-26174-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403605091-26174-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403605091-26174-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 4/4] net: phy: add support for Marvell PHY drivers
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds initial support for Marvell PHY specific drivers. As a first
PHY, a driver for MV88E1121R is ported over from Linux.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/net/phy/Kconfig   |   5 ++
 drivers/net/phy/Makefile  |   1 +
 drivers/net/phy/marvell.c | 199 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 205 insertions(+)
 create mode 100644 drivers/net/phy/marvell.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 02e1e83c0b65..d0a02c1e402d 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -18,6 +18,11 @@ config LXT_PHY
 	---help---
 	  Currently supports the lxt971 PHY.
 
+config MARVELL_PHY
+	tristate "Drivers for Marvell PHYs"
+	---help---
+	  Add support for various Marvell PHYs (e.g. 88E1121R).
+
 config MICREL_PHY
 	bool "Driver for Micrel PHYs"
 	---help---
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 7f8277f1d52a..94b9be83ea7a 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -1,6 +1,7 @@
 obj-y += phy.o mdio_bus.o
 obj-$(CONFIG_AT803X_PHY)	+= at803x.o
 obj-$(CONFIG_LXT_PHY)		+= lxt.o
+obj-$(CONFIG_MARVELL_PHY)	+= marvell.o
 obj-$(CONFIG_MICREL_PHY)	+= micrel.o
 obj-$(CONFIG_NATIONAL_PHY)	+= national.o
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
new file mode 100644
index 000000000000..34f852e06550
--- /dev/null
+++ b/drivers/net/phy/marvell.c
@@ -0,0 +1,199 @@
+/*
+ * drivers/net/phy/marvell.c
+ *
+ * Driver for Marvell PHYs based on Linux driver
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/mii.h>
+#include <linux/ethtool.h>
+#include <linux/phy.h>
+#include <linux/smscphy.h>
+
+/* Known PHY IDs */
+#define MARVELL_PHY_ID_88E1101		0x01410c60
+#define MARVELL_PHY_ID_88E1112		0x01410c90
+#define MARVELL_PHY_ID_88E1111		0x01410cc0
+#define MARVELL_PHY_ID_88E1118		0x01410e10
+#define MARVELL_PHY_ID_88E1121R		0x01410cb0
+#define MARVELL_PHY_ID_88E1145		0x01410cd0
+#define MARVELL_PHY_ID_88E1149R		0x01410e50
+#define MARVELL_PHY_ID_88E1240		0x01410e30
+#define MARVELL_PHY_ID_88E1318S		0x01410e90
+#define MARVELL_PHY_ID_88E1116R		0x01410e40
+#define MARVELL_PHY_ID_88E1510		0x01410dd0
+
+/* Mask used for ID comparisons */
+#define MARVELL_PHY_ID_MASK		0xfffffff0
+
+/* Marvell Register Page register */
+#define MII_MARVELL_PHY_PAGE		22
+#define MII_MARVELL_PHY_DEFAULT_PAGE	0
+
+#define MII_M1011_PHY_SCR		0x10
+#define MII_M1011_PHY_SCR_AUTO_CROSS	0x0060
+
+#define MII_M1011_PHY_STATUS		0x11
+#define MII_M1011_PHY_STATUS_1000	BIT(15)
+#define MII_M1011_PHY_STATUS_100	BIT(14)
+#define MII_M1011_PHY_STATUS_SPD_MASK	\
+	(MII_M1011_PHY_STATUS_1000 | MII_M1011_PHY_STATUS_100)
+#define MII_M1011_PHY_STATUS_FULLDUPLEX	BIT(13)
+#define MII_M1011_PHY_STATUS_RESOLVED	BIT(11)
+#define MII_M1011_PHY_STATUS_LINK	BIT(10)
+
+#define MII_88E1121_PHY_MSCR_PAGE	2
+#define MII_88E1121_PHY_MSCR		0x15
+#define MII_88E1121_PHY_MSCR_TX_DELAY	BIT(4)
+#define MII_88E1121_PHY_MSCR_RX_DELAY	BIT(5)
+#define MII_88E1121_PHY_MSCR_DELAY_MASK	\
+	(MII_88E1121_PHY_MSCR_RX_DELAY | MII_88E1121_PHY_MSCR_TX_DELAY)
+
+/*
+ * marvell_read_status
+ *
+ * Generic status code does not detect Fiber correctly!
+ * Description:
+ *   Check the link, then figure out the current state
+ *   by comparing what we advertise with what the link partner
+ *   advertises.  Start by checking the gigabit possibilities,
+ *   then move on to 10/100.
+ */
+static int marvell_read_status(struct phy_device *phydev)
+{
+	int adv;
+	int err;
+	int lpa;
+	int status = 0;
+
+	/* Update the link, but return if there
+	 * was an error */
+	err = genphy_update_link(phydev);
+	if (err)
+		return err;
+
+	if (AUTONEG_ENABLE == phydev->autoneg) {
+		status = phy_read(phydev, MII_M1011_PHY_STATUS);
+		if (status < 0)
+			return status;
+
+		lpa = phy_read(phydev, MII_LPA);
+		if (lpa < 0)
+			return lpa;
+
+		adv = phy_read(phydev, MII_ADVERTISE);
+		if (adv < 0)
+			return adv;
+
+		lpa &= adv;
+
+		if (status & MII_M1011_PHY_STATUS_FULLDUPLEX)
+			phydev->duplex = DUPLEX_FULL;
+		else
+			phydev->duplex = DUPLEX_HALF;
+
+		status = status & MII_M1011_PHY_STATUS_SPD_MASK;
+		phydev->pause = phydev->asym_pause = 0;
+
+		switch (status) {
+		case MII_M1011_PHY_STATUS_1000:
+			phydev->speed = SPEED_1000;
+			break;
+
+		case MII_M1011_PHY_STATUS_100:
+			phydev->speed = SPEED_100;
+			break;
+
+		default:
+			phydev->speed = SPEED_10;
+			break;
+		}
+
+		if (phydev->duplex == DUPLEX_FULL) {
+			phydev->pause = lpa & LPA_PAUSE_CAP ? 1 : 0;
+			phydev->asym_pause = lpa & LPA_PAUSE_ASYM ? 1 : 0;
+		}
+	} else {
+		int bmcr = phy_read(phydev, MII_BMCR);
+
+		if (bmcr < 0)
+			return bmcr;
+
+		if (bmcr & BMCR_FULLDPLX)
+			phydev->duplex = DUPLEX_FULL;
+		else
+			phydev->duplex = DUPLEX_HALF;
+
+		if (bmcr & BMCR_SPEED1000)
+			phydev->speed = SPEED_1000;
+		else if (bmcr & BMCR_SPEED100)
+			phydev->speed = SPEED_100;
+		else
+			phydev->speed = SPEED_10;
+
+		phydev->pause = phydev->asym_pause = 0;
+	}
+
+	return 0;
+}
+
+static int m88e1121_config_init(struct phy_device *phydev)
+{
+	u16 reg;
+	int ret;
+
+	ret = phy_write(phydev, MII_MARVELL_PHY_PAGE,
+			MII_88E1121_PHY_MSCR_PAGE);
+	if (ret < 0)
+		return ret;
+
+	/* Setup RGMII TX/RX delay */
+	reg = phy_read(phydev, MII_88E1121_PHY_MSCR) &
+		~MII_88E1121_PHY_MSCR_DELAY_MASK;
+	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
+	    phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID)
+		reg |= MII_88E1121_PHY_MSCR_RX_DELAY;
+	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
+	    phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
+		reg |= MII_88E1121_PHY_MSCR_TX_DELAY;
+	ret = phy_write(phydev, MII_88E1121_PHY_MSCR, reg);
+	if (ret < 0)
+		return ret;
+
+	phy_write(phydev, MII_MARVELL_PHY_PAGE, MII_MARVELL_PHY_DEFAULT_PAGE);
+	if (ret < 0)
+		return ret;
+
+	/* Enable auto-crossover */
+	ret = phy_write(phydev, MII_M1011_PHY_SCR,
+			MII_M1011_PHY_SCR_AUTO_CROSS);
+	if (ret < 0)
+		return ret;
+
+	/* Reset PHY */
+	ret = phy_write(phydev, MII_BMCR,
+			phy_read(phydev, MII_BMCR) | BMCR_RESET);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static struct phy_driver marvell_phys[] = {
+{
+	.phy_id		= MARVELL_PHY_ID_88E1121R,
+	.phy_id_mask	= MARVELL_PHY_ID_MASK,
+	.drv.name	= "Marvell 88E1121R",
+	.features	= PHY_GBIT_FEATURES,
+	.config_init	= m88e1121_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= marvell_read_status,
+},
+};
+
+static int __init marvell_phy_init(void)
+{
+	return phy_drivers_register(marvell_phys, ARRAY_SIZE(marvell_phys));
+}
+fs_initcall(marvell_phy_init);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

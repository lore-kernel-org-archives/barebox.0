Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr70072.outbound.protection.outlook.com ([40.107.7.72]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggsU1-0007zN-4e
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 14:36:00 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Tue, 8 Jan 2019 14:35:45 +0000
Message-ID: <1546958133-6556-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
MIME-Version: 1.0
References: <afd44571-b69b-41cc-bf15-9eff29f89a72.95bf7d06-047e-438c-8c7b-895af195351a.c64368fe-8a97-44b6-81ce-d981799f53c2@emailsignatures365.codetwo.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/6] dp83867: port from linux
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

Port driver for TI DP83867 Gigabit Ethernet PHY from linux.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
 drivers/net/phy/Kconfig   |   5 +
 drivers/net/phy/Makefile  |   1 +
 drivers/net/phy/dp83867.c | 323 ++++++++++++++++++++++++++++++++++++++++++=
++++
 3 files changed, 329 insertions(+)
 create mode 100644 drivers/net/phy/dp83867.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 3b1a6ea..0665aef 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -23,6 +23,11 @@ config DAVICOM_PHY
 	---help---
 	  Currently supports dm9161e and dm9131
 =

+config DP83867_PHY
+	tristate "Texas Instruments DP83867 Gigabit PHY"
+	---help---
+	  Currently supports the DP83867 PHY.
+
 config LXT_PHY
 	bool "Driver for the Intel LXT PHYs"
 	---help---
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index e4d9ec6..5f11a85 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -14,4 +14,5 @@ obj-$(CONFIG_MDIO_BITBANG)	+=3D mdio-bitbang.o
 obj-$(CONFIG_MDIO_GPIO)		+=3D mdio-gpio.o
 obj-$(CONFIG_MDIO_BUS_MUX)	+=3D mdio-mux.o
 obj-$(CONFIG_MDIO_BUS_MUX_GPIO)	+=3D mdio-mux-gpio.o
+obj-$(CONFIG_DP83867_PHY)	+=3D dp83867.o
 =

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
new file mode 100644
index 0000000..b3328b7
--- /dev/null
+++ b/drivers/net/phy/dp83867.c
@@ -0,0 +1,323 @@
+/*
+ * Driver for the Texas Instruments DP83867 PHY
+ *
+ * Copyright (C) 2015 Texas Instruments Inc.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/phy.h>
+
+#include <dt-bindings/net/ti-dp83867.h>
+
+#define DP83867_PHY_ID		0x2000a231
+#define DP83867_DEVADDR		0x1f
+
+#define MII_DP83867_PHYCTRL	0x10
+#define MII_DP83867_MICR	0x12
+#define MII_DP83867_ISR		0x13
+#define MII_DP83867_CFG2	0x14
+#define MII_DP83867_BISCR	0x16
+#define DP83867_CTRL		0x1f
+#define DP83867_CFG3		0x1e
+
+/* Extended Registers */
+#define DP83867_CFG4		0x0031
+#define DP83867_RGMIICTL	0x0032
+#define DP83867_STRAP_STS1	0x006E
+#define DP83867_RGMIIDCTL	0x0086
+#define DP83867_IO_MUX_CFG	0x0170
+
+#define DP83867_SW_RESET	BIT(15)
+#define DP83867_SW_RESTART	BIT(14)
+
+/* MICR Interrupt bits */
+#define MII_DP83867_MICR_AN_ERR_INT_EN		BIT(15)
+#define MII_DP83867_MICR_SPEED_CHNG_INT_EN	BIT(14)
+#define MII_DP83867_MICR_DUP_MODE_CHNG_INT_EN	BIT(13)
+#define MII_DP83867_MICR_PAGE_RXD_INT_EN	BIT(12)
+#define MII_DP83867_MICR_AUTONEG_COMP_INT_EN	BIT(11)
+#define MII_DP83867_MICR_LINK_STS_CHNG_INT_EN	BIT(10)
+#define MII_DP83867_MICR_FALSE_CARRIER_INT_EN	BIT(8)
+#define MII_DP83867_MICR_SLEEP_MODE_CHNG_INT_EN	BIT(4)
+#define MII_DP83867_MICR_WOL_INT_EN		BIT(3)
+#define MII_DP83867_MICR_XGMII_ERR_INT_EN	BIT(2)
+#define MII_DP83867_MICR_POL_CHNG_INT_EN	BIT(1)
+#define MII_DP83867_MICR_JABBER_INT_EN		BIT(0)
+
+/* RGMIICTL bits */
+#define DP83867_RGMII_TX_CLK_DELAY_EN		BIT(1)
+#define DP83867_RGMII_RX_CLK_DELAY_EN		BIT(0)
+
+/* STRAP_STS1 bits */
+#define DP83867_STRAP_STS1_RESERVED		BIT(11)
+
+/* PHY CTRL bits */
+#define DP83867_PHYCR_FIFO_DEPTH_SHIFT		14
+#define DP83867_PHYCR_FIFO_DEPTH_MASK		(3 << 14)
+#define DP83867_MDI_CROSSOVER			5
+#define DP83867_MDI_CROSSOVER_AUTO		0b10
+#define DP83867_MDI_CROSSOVER_MDIX		0b01
+#define DP83867_PHYCTRL_SGMIIEN			0x0800
+#define DP83867_PHYCTRL_RXFIFO_SHIFT		12
+#define DP83867_PHYCTRL_TXFIFO_SHIFT		14
+#define DP83867_PHYCR_RESERVED_MASK		BIT(11)
+
+/* RGMIIDCTL bits */
+#define DP83867_RGMII_TX_CLK_DELAY_SHIFT	4
+
+/* CFG2 bits */
+#define MII_DP83867_CFG2_SPEEDOPT_10EN		0x0040
+#define MII_DP83867_CFG2_SGMII_AUTONEGEN	0x0080
+#define MII_DP83867_CFG2_SPEEDOPT_ENH		0x0100
+#define MII_DP83867_CFG2_SPEEDOPT_CNT		0x0800
+#define MII_DP83867_CFG2_SPEEDOPT_INTLOW	0x2000
+#define MII_DP83867_CFG2_MASK			0x003F
+
+/* CFG4 bits */
+#define DP83867_CFG4_SGMII_AUTONEG_TIMER_MASK	0x60
+#define DP83867_CFG4_SGMII_AUTONEG_TIMER_16MS	0x00
+#define DP83867_CFG4_SGMII_AUTONEG_TIMER_2US	0x20
+#define DP83867_CFG4_SGMII_AUTONEG_TIMER_800US	0x40
+#define DP83867_CFG4_SGMII_AUTONEG_TIMER_11MS	0x60
+#define DP83867_CFG4_RESVDBIT7			BIT(7)
+#define DP83867_CFG4_RESVDBIT8			BIT(8)
+
+/* IO_MUX_CFG bits */
+#define DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL	0x1f
+
+#define DP83867_IO_MUX_CFG_IO_IMPEDANCE_MAX	0x0
+#define DP83867_IO_MUX_CFG_IO_IMPEDANCE_MIN	0x1f
+
+/* CFG4 bits */
+#define DP83867_CFG4_PORT_MIRROR_EN		BIT(0)
+
+enum {
+	DP83867_PORT_MIRROING_KEEP,
+	DP83867_PORT_MIRROING_EN,
+	DP83867_PORT_MIRROING_DIS,
+};
+
+struct dp83867_private {
+	int rx_id_delay;
+	int tx_id_delay;
+	int fifo_depth;
+	int io_impedance;
+	int port_mirroring;
+	bool rxctrl_strap_quirk;
+};
+
+static int dp83867_config_port_mirroring(struct phy_device *phydev)
+{
+	struct dp83867_private *dp83867 =3D (struct dp83867_private *)phydev->pri=
v;
+	u16 val;
+
+	val =3D phy_read_mmd_indirect(phydev, DP83867_CFG4, DP83867_DEVADDR);
+
+	if (dp83867->port_mirroring =3D=3D DP83867_PORT_MIRROING_EN)
+		val |=3D DP83867_CFG4_PORT_MIRROR_EN;
+	else
+		val &=3D ~DP83867_CFG4_PORT_MIRROR_EN;
+
+	phy_write_mmd_indirect(phydev, DP83867_CFG4, DP83867_DEVADDR, val);
+
+	return 0;
+}
+
+static int dp83867_of_init(struct phy_device *phydev)
+{
+	struct dp83867_private *dp83867 =3D phydev->priv;
+	struct device_d *dev =3D &phydev->dev;
+	struct device_node *of_node =3D dev->device_node;
+	int ret;
+
+	if (!of_node)
+		return -ENODEV;
+
+	dp83867->io_impedance =3D -EINVAL;
+
+	/* Optional configuration */
+	if (of_property_read_bool(of_node, "ti,max-output-impedance"))
+		dp83867->io_impedance =3D DP83867_IO_MUX_CFG_IO_IMPEDANCE_MAX;
+	else if (of_property_read_bool(of_node, "ti,min-output-impedance"))
+		dp83867->io_impedance =3D DP83867_IO_MUX_CFG_IO_IMPEDANCE_MIN;
+
+	dp83867->rxctrl_strap_quirk =3D
+			of_property_read_bool(of_node,
+					"ti,dp83867-rxctrl-strap-quirk");
+
+	ret =3D of_property_read_u32(of_node, "ti,rx-internal-delay",
+			&dp83867->rx_id_delay);
+	if (ret && (phydev->interface =3D=3D PHY_INTERFACE_MODE_RGMII_ID ||
+			phydev->interface =3D=3D PHY_INTERFACE_MODE_RGMII_RXID))
+		return ret;
+
+	ret =3D of_property_read_u32(of_node, "ti,tx-internal-delay",
+			&dp83867->tx_id_delay);
+	if (ret && (phydev->interface =3D=3D PHY_INTERFACE_MODE_RGMII_ID ||
+			phydev->interface =3D=3D PHY_INTERFACE_MODE_RGMII_TXID))
+		return ret;
+
+	if (of_property_read_bool(of_node, "enet-phy-lane-swap"))
+		dp83867->port_mirroring =3D DP83867_PORT_MIRROING_EN;
+
+	if (of_property_read_bool(of_node, "enet-phy-lane-no-swap"))
+		dp83867->port_mirroring =3D DP83867_PORT_MIRROING_DIS;
+
+	return of_property_read_u32(of_node, "ti,fifo-depth",
+			&dp83867->fifo_depth);
+}
+
+static inline bool phy_interface_is_rgmii(struct phy_device *phydev)
+{
+	return phydev->interface >=3D PHY_INTERFACE_MODE_RGMII &&
+			phydev->interface <=3D PHY_INTERFACE_MODE_RGMII_TXID;
+}
+
+static inline bool phy_interface_is_sgmii(struct phy_device *phydev)
+{
+	return phydev->interface =3D=3D PHY_INTERFACE_MODE_SGMII ||
+			phydev->interface =3D=3D PHY_INTERFACE_MODE_QSGMII;
+}
+
+static int dp83867_config_init(struct phy_device *phydev)
+{
+	struct dp83867_private *dp83867;
+	int ret;
+	u16 val, delay, cfg2;
+
+	if (!phydev->priv) {
+		dp83867 =3D kzalloc(sizeof(*dp83867), GFP_KERNEL);
+		if (!dp83867)
+			return -ENOMEM;
+
+		phydev->priv =3D dp83867;
+		ret =3D dp83867_of_init(phydev);
+		if (ret)
+			return ret;
+	} else {
+		dp83867 =3D (struct dp83867_private *)phydev->priv;
+	}
+
+	/* Restart the PHY.  */
+	val =3D phy_read(phydev, DP83867_CTRL);
+	phy_write(phydev, DP83867_CTRL, val | DP83867_SW_RESTART);
+
+	if (dp83867->rxctrl_strap_quirk) {
+		val =3D phy_read_mmd_indirect(phydev, DP83867_CFG4,
+				DP83867_DEVADDR);
+		val &=3D ~BIT(7);
+		phy_write_mmd_indirect(phydev, DP83867_CFG4, DP83867_DEVADDR,
+				val);
+	}
+
+	if (phy_interface_is_rgmii(phydev)) {
+		val =3D DP83867_MDI_CROSSOVER_AUTO << DP83867_MDI_CROSSOVER |
+			dp83867->fifo_depth << DP83867_PHYCR_FIFO_DEPTH_SHIFT;
+		ret =3D phy_write(phydev, MII_DP83867_PHYCTRL, val);
+		if (ret)
+			return ret;
+	} else if (phy_interface_is_sgmii(phydev)) {
+		phy_write(phydev, MII_BMCR, BMCR_ANENABLE |
+				BMCR_FULLDPLX |
+				BMCR_SPEED1000);
+
+		cfg2 =3D phy_read(phydev, MII_DP83867_CFG2);
+		cfg2 &=3D MII_DP83867_CFG2_MASK;
+		cfg2 |=3D MII_DP83867_CFG2_SPEEDOPT_10EN |
+			MII_DP83867_CFG2_SGMII_AUTONEGEN |
+			MII_DP83867_CFG2_SPEEDOPT_ENH |
+			MII_DP83867_CFG2_SPEEDOPT_CNT |
+			MII_DP83867_CFG2_SPEEDOPT_INTLOW;
+
+		phy_write(phydev, MII_DP83867_CFG2, cfg2);
+
+		phy_write_mmd_indirect(phydev, DP83867_RGMIICTL,
+				DP83867_DEVADDR, 0x0);
+
+		val =3D DP83867_PHYCTRL_SGMIIEN |
+			DP83867_MDI_CROSSOVER_MDIX << DP83867_MDI_CROSSOVER |
+			dp83867->fifo_depth << DP83867_PHYCTRL_RXFIFO_SHIFT |
+			dp83867->fifo_depth << DP83867_PHYCTRL_TXFIFO_SHIFT;
+
+		phy_write(phydev, MII_DP83867_PHYCTRL, val);
+		phy_write(phydev, MII_DP83867_BISCR, 0x0);
+	}
+
+	if (phy_interface_is_rgmii(phydev)) {
+		val =3D phy_read_mmd_indirect(phydev, DP83867_RGMIICTL,
+				DP83867_DEVADDR);
+
+		switch (phydev->interface) {
+		case PHY_INTERFACE_MODE_RGMII_ID:
+			val |=3D (DP83867_RGMII_TX_CLK_DELAY_EN
+					| DP83867_RGMII_RX_CLK_DELAY_EN);
+			break;
+		case PHY_INTERFACE_MODE_RGMII_TXID:
+			val |=3D DP83867_RGMII_TX_CLK_DELAY_EN;
+			break;
+		case PHY_INTERFACE_MODE_RGMII_RXID:
+			val |=3D DP83867_RGMII_RX_CLK_DELAY_EN;
+			break;
+		default:
+			break;
+		}
+		phy_write_mmd_indirect(phydev, DP83867_RGMIICTL,
+				DP83867_DEVADDR, val);
+
+		delay =3D (dp83867->rx_id_delay |
+			(dp83867->tx_id_delay << DP83867_RGMII_TX_CLK_DELAY_SHIFT));
+
+		phy_write_mmd_indirect(phydev, DP83867_RGMIIDCTL,
+				DP83867_DEVADDR, delay);
+
+		if (dp83867->io_impedance >=3D 0) {
+			val =3D phy_read_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
+					DP83867_DEVADDR);
+			val &=3D ~DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL;
+			val |=3D dp83867->io_impedance
+					& DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL;
+
+			phy_write_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
+					DP83867_DEVADDR, val);
+		}
+	}
+
+	genphy_config_aneg(phydev);
+
+	if (dp83867->port_mirroring !=3D DP83867_PORT_MIRROING_KEEP)
+		dp83867_config_port_mirroring(phydev);
+
+	dev_info(&phydev->dev, "DP83867\n");
+
+	return 0;
+}
+
+static struct phy_driver dp83867_driver[] =3D {
+		{
+			.phy_id =3D DP83867_PHY_ID,
+			.phy_id_mask =3D 0xfffffff0,
+			.drv.name =3D "TI DP83867",
+			.features =3D PHY_GBIT_FEATURES,
+
+			.config_init =3D dp83867_config_init,
+
+			.config_aneg =3D genphy_config_aneg,
+			.read_status =3D genphy_read_status,
+		},
+};
+
+static int dp83867_phy_init(void)
+{
+	return phy_drivers_register(dp83867_driver, ARRAY_SIZE(dp83867_driver));
+}
+fs_initcall(dp83867_phy_init);
-- =

2.7.4


Thomas H=E4mmerle
Research and Development =


Wolfvision GmbH
 | 6833 Klaus | Austria =

Tel: +43 5523 52250 | Mail: Thomas.Haemmerle@wolfvision.net =


Webpage: www.wolfvision.com | www.wolfvision.com/green
Firmenbuch / Commercial Register: FN283521v Feldkirch/Austria


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

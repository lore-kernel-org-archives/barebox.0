Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3Krh-0006Lb-UZ
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 13:21:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2019 14:21:11 +0100
Message-Id: <20190311132111.27237-3-s.hauer@pengutronix.de>
In-Reply-To: <20190311132111.27237-1-s.hauer@pengutronix.de>
References: <20190311132111.27237-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] realtek phy driver
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/Kconfig   |   5 ++
 drivers/net/phy/Makefile  |   1 +
 drivers/net/phy/realtek.c | 172 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 178 insertions(+)
 create mode 100644 drivers/net/phy/realtek.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 0665aefd99..c08b8257a7 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -48,6 +48,11 @@ config NATIONAL_PHY
 	---help---
 	  Currently supports the DP83865 PHY.
 
+config REALTEK_PHY
+	bool "Driver for Realtek PHYs"
+	---help---
+	  Supports the Realtek 821x PHY.
+
 config SMSC_PHY
 	bool "Drivers for SMSC PHYs"
 	---help---
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 5dd9bd5fd3..7053b5762c 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_LXT_PHY)		+= lxt.o
 obj-$(CONFIG_MARVELL_PHY)	+= marvell.o
 obj-$(CONFIG_MICREL_PHY)	+= micrel.o
 obj-$(CONFIG_NATIONAL_PHY)	+= national.o
+obj-$(CONFIG_REALTEK_PHY)	+= realtek.o
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
 obj-$(CONFIG_NET_DSA_MV88E6XXX)	+= mv88e6xxx/
 
diff --git a/drivers/net/phy/realtek.c b/drivers/net/phy/realtek.c
new file mode 100644
index 0000000000..4ae050128c
--- /dev/null
+++ b/drivers/net/phy/realtek.c
@@ -0,0 +1,172 @@
+/*
+ * drivers/net/phy/realtek.c
+ *
+ * Driver for Realtek PHYs
+ *
+ * Author: Johnson Leung <r58129@freescale.com>
+ *
+ * Copyright (c) 2004 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute  it and/or modify it
+ * under  the terms of  the GNU General  Public License as published by the
+ * Free Software Foundation;  either version 2 of the  License, or (at your
+ * option) any later version.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <linux/bitops.h>
+#include <linux/phy.h>
+
+#define RTL821x_PHYSR				0x11
+#define RTL821x_PHYSR_DUPLEX			BIT(13)
+#define RTL821x_PHYSR_SPEED			GENMASK(15, 14)
+
+#define RTL821x_INER				0x12
+#define RTL8211B_INER_INIT			0x6400
+#define RTL8211E_INER_LINK_STATUS		BIT(10)
+#define RTL8211F_INER_LINK_STATUS		BIT(4)
+
+#define RTL821x_INSR				0x13
+
+#define RTL821x_PAGE_SELECT			0x1f
+
+#define RTL8211F_INSR				0x1d
+
+#define RTL8211F_TX_DELAY			BIT(8)
+
+#define RTL8201F_ISR				0x1e
+#define RTL8201F_IER				0x13
+
+#define RTL8366RB_POWER_SAVE			0x15
+#define RTL8366RB_POWER_SAVE_ON			BIT(12)
+
+static int rtl821x_read_page(struct phy_device *phydev)
+{
+	return phy_read(phydev, RTL821x_PAGE_SELECT);
+}
+
+static int rtl821x_write_page(struct phy_device *phydev, int page)
+{
+	return phy_write(phydev, RTL821x_PAGE_SELECT, page);
+}
+
+static int rtl8211_config_aneg(struct phy_device *phydev)
+{
+	int ret;
+
+	ret = genphy_config_aneg(phydev);
+	if (ret < 0)
+		return ret;
+
+	/* Quirk was copied from vendor driver. Unfortunately it includes no
+	 * description of the magic numbers.
+	 */
+	if (phydev->speed == SPEED_100 && phydev->autoneg == AUTONEG_DISABLE) {
+		phy_write(phydev, 0x17, 0x2138);
+		phy_write(phydev, 0x0e, 0x0260);
+	} else {
+		phy_write(phydev, 0x17, 0x2108);
+		phy_write(phydev, 0x0e, 0x0000);
+	}
+
+	return 0;
+}
+
+static int rtl8211c_config_init(struct phy_device *phydev)
+{
+	/* RTL8211C has an issue when operating in Gigabit slave mode */
+	phy_set_bits(phydev, MII_CTRL1000,
+		     CTL1000_ENABLE_MASTER | CTL1000_AS_MASTER);
+
+	return genphy_config_init(phydev);
+}
+
+static int rtl8211f_config_init(struct phy_device *phydev)
+{
+	int ret;
+	u16 val = 0;
+
+	ret = genphy_config_init(phydev);
+	if (ret < 0)
+		return ret;
+
+	/* enable TX-delay for rgmii-id and rgmii-txid, otherwise disable it */
+	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
+	    phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
+		val = RTL8211F_TX_DELAY;
+
+	return phy_modify_paged(phydev, 0xd08, 0x11, RTL8211F_TX_DELAY, val);
+}
+
+static int rtl8366rb_config_init(struct phy_device *phydev)
+{
+	int ret;
+
+	ret = genphy_config_init(phydev);
+	if (ret < 0)
+		return ret;
+
+	ret = phy_set_bits(phydev, RTL8366RB_POWER_SAVE,
+			   RTL8366RB_POWER_SAVE_ON);
+	if (ret) {
+		dev_err(&phydev->dev, "error enabling power management\n");
+	}
+
+	return ret;
+}
+
+static struct phy_driver realtek_drvs[] = {
+	{
+		PHY_ID_MATCH_EXACT(0x00008201),
+		.drv.name	= "RTL8201CP Ethernet",
+		.features	= PHY_BASIC_FEATURES,
+	}, {
+		PHY_ID_MATCH_EXACT(0x001cc816),
+		.drv.name	= "RTL8201F Fast Ethernet",
+		.features	= PHY_BASIC_FEATURES,
+		.read_page	= rtl821x_read_page,
+		.write_page	= rtl821x_write_page,
+	}, {
+		PHY_ID_MATCH_EXACT(0x001cc910),
+		.drv.name	= "RTL8211 Gigabit Ethernet",
+		.features	= PHY_GBIT_FEATURES,
+		.config_aneg	= rtl8211_config_aneg,
+	}, {
+		PHY_ID_MATCH_EXACT(0x001cc912),
+		.drv.name	= "RTL8211B Gigabit Ethernet",
+		.features	= PHY_GBIT_FEATURES,
+	}, {
+		PHY_ID_MATCH_EXACT(0x001cc913),
+		.drv.name	= "RTL8211C Gigabit Ethernet",
+		.features	= PHY_GBIT_FEATURES,
+		.config_init	= rtl8211c_config_init,
+	}, {
+		PHY_ID_MATCH_EXACT(0x001cc914),
+		.drv.name	= "RTL8211DN Gigabit Ethernet",
+		.features	= PHY_GBIT_FEATURES,
+	}, {
+		PHY_ID_MATCH_EXACT(0x001cc915),
+		.drv.name	= "RTL8211E Gigabit Ethernet",
+		.features	= PHY_GBIT_FEATURES,
+	}, {
+		PHY_ID_MATCH_EXACT(0x001cc916),
+		.drv.name	= "RTL8211F Gigabit Ethernet",
+		.features	= PHY_GBIT_FEATURES,
+		.config_init	= &rtl8211f_config_init,
+		.read_page	= rtl821x_read_page,
+		.write_page	= rtl821x_write_page,
+	}, {
+		PHY_ID_MATCH_EXACT(0x001cc961),
+		.drv.name	= "RTL8366RB Gigabit Ethernet",
+		.features	= PHY_GBIT_FEATURES,
+		.config_init	= &rtl8366rb_config_init,
+	},
+};
+
+static int __init realtek_phy_init(void)
+{
+	return phy_drivers_register(realtek_drvs,
+				    ARRAY_SIZE(realtek_drvs));
+}
+fs_initcall(realtek_phy_init);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

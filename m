Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnY7q-00043M-82
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 18:21:43 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1VnY7U-0007rr-4l
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 19:21:20 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  2 Dec 2013 19:21:19 +0100
Message-Id: <1386008480-10368-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH v2 1/2] net/phy: add driver for atheros PHYs
To: barebox@lists.infradead.org

Based on Linux kernel 3.12 driver.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/net/phy/Kconfig  |   5 ++
 drivers/net/phy/Makefile |   1 +
 drivers/net/phy/at803x.c | 121 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 127 insertions(+)
 create mode 100644 drivers/net/phy/at803x.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index b6ac9ee75076..83966f997f27 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -8,6 +8,11 @@ if PHYLIB
 
 comment "MII PHY device drivers"
 
+config AT803X_PHY
+	bool "Driver for Atheros AT803X PHYs"
+	---help---
+	  Currently supports the AT8030, AT8031 and AT8035 PHYs.
+
 config MICREL_PHY
 	bool "Driver for Micrel PHYs"
 	---help---
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 5f8191d8a7f5..47e2b423319f 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -1,3 +1,4 @@
 obj-y += phy.o mdio_bus.o
+obj-$(CONFIG_AT803X_PHY)	+= at803x.o
 obj-$(CONFIG_MICREL_PHY)	+= micrel.o
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
new file mode 100644
index 000000000000..a244c87cbafa
--- /dev/null
+++ b/drivers/net/phy/at803x.c
@@ -0,0 +1,121 @@
+/*
+ * drivers/net/phy/at803x.c
+ *
+ * Driver for Atheros 803x PHY
+ *
+ * Author: Matus Ujhelyi <ujhelyi.m@gmail.com>
+ *
+ * This program is free software; you can redistribute  it and/or modify it
+ * under  the terms of  the GNU General  Public License as published by the
+ * Free Software Foundation;  either version 2 of the  License, or (at your
+ * option) any later version.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/phy.h>
+#include <linux/string.h>
+
+#define AT803X_INTR_ENABLE			0x12
+#define AT803X_INTR_STATUS			0x13
+#define AT803X_WOL_ENABLE			0x01
+#define AT803X_DEVICE_ADDR			0x03
+#define AT803X_LOC_MAC_ADDR_0_15_OFFSET		0x804C
+#define AT803X_LOC_MAC_ADDR_16_31_OFFSET	0x804B
+#define AT803X_LOC_MAC_ADDR_32_47_OFFSET	0x804A
+#define AT803X_MMD_ACCESS_CONTROL		0x0D
+#define AT803X_MMD_ACCESS_CONTROL_DATA		0x0E
+#define AT803X_FUNC_DATA			0x4003
+#define AT803X_DEBUG_ADDR			0x1D
+#define AT803X_DEBUG_DATA			0x1E
+#define AT803X_DEBUG_SYSTEM_MODE_CTRL		0x05
+#define AT803X_DEBUG_RGMII_TX_CLK_DLY		(1 << 8)
+
+static int at803x_config_init(struct phy_device *phydev)
+{
+	int val;
+	int ret;
+	u32 features;
+
+	features = SUPPORTED_TP | SUPPORTED_MII | SUPPORTED_AUI |
+		   SUPPORTED_FIBRE | SUPPORTED_BNC;
+
+	val = phy_read(phydev, MII_BMSR);
+	if (val < 0)
+		return val;
+
+	if (val & BMSR_ANEGCAPABLE)
+		features |= SUPPORTED_Autoneg;
+	if (val & BMSR_100FULL)
+		features |= SUPPORTED_100baseT_Full;
+	if (val & BMSR_100HALF)
+		features |= SUPPORTED_100baseT_Half;
+	if (val & BMSR_10FULL)
+		features |= SUPPORTED_10baseT_Full;
+	if (val & BMSR_10HALF)
+		features |= SUPPORTED_10baseT_Half;
+
+	if (val & BMSR_ESTATEN) {
+		val = phy_read(phydev, MII_ESTATUS);
+		if (val < 0)
+			return val;
+
+		if (val & ESTATUS_1000_TFULL)
+			features |= SUPPORTED_1000baseT_Full;
+		if (val & ESTATUS_1000_THALF)
+			features |= SUPPORTED_1000baseT_Half;
+	}
+
+	phydev->supported = features;
+	phydev->advertising = features;
+
+	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID) {
+		ret = phy_write(phydev, AT803X_DEBUG_ADDR,
+				AT803X_DEBUG_SYSTEM_MODE_CTRL);
+		if (ret)
+			return ret;
+		ret = phy_write(phydev, AT803X_DEBUG_DATA,
+				AT803X_DEBUG_RGMII_TX_CLK_DLY);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static struct phy_driver at803x_driver[] = {
+{
+	/* ATHEROS 8035 */
+	.phy_id		= 0x004dd072,
+	.phy_id_mask	= 0xffffffef,
+	.drv.name	= "Atheros 8035 ethernet",
+	.config_init	= at803x_config_init,
+	.features	= PHY_GBIT_FEATURES,
+	.config_aneg	= &genphy_config_aneg,
+	.read_status	= &genphy_read_status,
+}, {
+	/* ATHEROS 8030 */
+	.phy_id		= 0x004dd076,
+	.phy_id_mask	= 0xffffffef,
+	.drv.name	= "Atheros 8030 ethernet",
+	.config_init	= at803x_config_init,
+	.features	= PHY_GBIT_FEATURES,
+	.config_aneg	= &genphy_config_aneg,
+	.read_status	= &genphy_read_status,
+}, {
+	/* ATHEROS 8031 */
+	.phy_id		= 0x004dd074,
+	.phy_id_mask	= 0xffffffef,
+	.drv.name	= "Atheros 8031 ethernet",
+	.config_init	= at803x_config_init,
+	.features	= PHY_GBIT_FEATURES,
+	.config_aneg	= &genphy_config_aneg,
+	.read_status	= &genphy_read_status,
+} };
+
+static int atheros_phy_init(void)
+{
+	return phy_drivers_register(at803x_driver,
+				    ARRAY_SIZE(at803x_driver));
+}
+fs_initcall(atheros_phy_init);
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

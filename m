Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ta4Ll-0001Bo-10
 for barebox@lists.infradead.org; Sun, 18 Nov 2012 12:51:52 +0000
Received: from mail406.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 07376DC3C65
 for <barebox@lists.infradead.org>; Sun, 18 Nov 2012 13:59:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 18 Nov 2012 13:49:45 +0100
Message-Id: <1353242985-7539-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353242985-7539-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121118124627.GE8327@game.jcrosoft.org>
 <1353242985-7539-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 7/7] phylib: add micrel support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/Kconfig    |    5 ++
 drivers/net/phy/Makefile   |    1 +
 drivers/net/phy/micrel.c   |  174 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/micrel_phy.h |   30 ++++++++
 4 files changed, 210 insertions(+)
 create mode 100644 drivers/net/phy/micrel.c
 create mode 100644 include/linux/micrel_phy.h

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 3f7c150..c75d73d 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -8,6 +8,11 @@ if PHYLIB
 
 comment "MII PHY device drivers"
 
+config MICREL_PHY
+	bool "Driver for Micrel PHYs"
+	---help---
+	  Supports the KSZ9021, VSC8201, KS8001 PHYs.
+
 config SMSC_PHY
 	bool "Drivers for SMSC PHYs"
 	---help---
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index dfc709a..5f8191d 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -1,2 +1,3 @@
 obj-y += phy.o mdio_bus.o
+obj-$(CONFIG_MICREL_PHY)	+= micrel.o
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
new file mode 100644
index 0000000..0c6d43e
--- /dev/null
+++ b/drivers/net/phy/micrel.c
@@ -0,0 +1,174 @@
+/*
+ * drivers/net/phy/micrel.c
+ *
+ * Driver for Micrel PHYs
+ *
+ * Author: David J. Choi
+ *
+ * Copyright (c) 2010 Micrel, Inc.
+ *
+ * This program is free software; you can redistribute  it and/or modify it
+ * under  the terms of  the GNU General  Public License as published by the
+ * Free Software Foundation;  either version 2 of the  License, or (at your
+ * option) any later version.
+ *
+ * Support : ksz9021 1000/100/10 phy from Micrel
+ *		ks8001, ks8737, ks8721, ks8041, ks8051 100/10 phy
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/mii.h>
+#include <linux/ethtool.h>
+#include <linux/phy.h>
+#include <linux/micrel_phy.h>
+
+/* Operation Mode Strap Override */
+#define MII_KSZPHY_OMSO				0x16
+#define KSZPHY_OMSO_B_CAST_OFF			(1 << 9)
+#define KSZPHY_OMSO_RMII_OVERRIDE		(1 << 1)
+#define KSZPHY_OMSO_MII_OVERRIDE		(1 << 0)
+
+/* general PHY control reg in vendor specific block. */
+#define	MII_KSZPHY_CTRL			0x1F
+/* bitmap of PHY register to set interrupt mode */
+#define KSZPHY_CTRL_INT_ACTIVE_HIGH		(1 << 9)
+#define KSZ9021_CTRL_INT_ACTIVE_HIGH		(1 << 14)
+#define KS8737_CTRL_INT_ACTIVE_HIGH		(1 << 14)
+#define KSZ8051_RMII_50MHZ_CLK			(1 << 7)
+
+static int kszphy_config_init(struct phy_device *phydev)
+{
+	return 0;
+}
+
+static int ksz8021_config_init(struct phy_device *phydev)
+{
+	const u16 val = KSZPHY_OMSO_B_CAST_OFF | KSZPHY_OMSO_RMII_OVERRIDE;
+	phy_write(phydev, MII_KSZPHY_OMSO, val);
+	return 0;
+}
+
+static int ks8051_config_init(struct phy_device *phydev)
+{
+	int regval;
+
+	if (phydev->dev_flags & MICREL_PHY_50MHZ_CLK) {
+		regval = phy_read(phydev, MII_KSZPHY_CTRL);
+		regval |= KSZ8051_RMII_50MHZ_CLK;
+		phy_write(phydev, MII_KSZPHY_CTRL, regval);
+	}
+
+	return 0;
+}
+
+#define KSZ8873MLL_GLOBAL_CONTROL_4	0x06
+#define KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX	(1 << 6)
+#define KSZ8873MLL_GLOBAL_CONTROL_4_SPEED	(1 << 4)
+int ksz8873mll_read_status(struct phy_device *phydev)
+{
+	int regval;
+
+	/* dummy read */
+	regval = phy_read(phydev, KSZ8873MLL_GLOBAL_CONTROL_4);
+
+	regval = phy_read(phydev, KSZ8873MLL_GLOBAL_CONTROL_4);
+
+	if (regval & KSZ8873MLL_GLOBAL_CONTROL_4_DUPLEX)
+		phydev->duplex = DUPLEX_HALF;
+	else
+		phydev->duplex = DUPLEX_FULL;
+
+	if (regval & KSZ8873MLL_GLOBAL_CONTROL_4_SPEED)
+		phydev->speed = SPEED_10;
+	else
+		phydev->speed = SPEED_100;
+
+	phydev->link = 1;
+	phydev->pause = phydev->asym_pause = 0;
+
+	return 0;
+}
+
+static int ksz8873mll_config_aneg(struct phy_device *phydev)
+{
+	return 0;
+}
+
+static int ksz8873mll_config_init(struct phy_device *phydev)
+{
+	phydev->autoneg = AUTONEG_DISABLE;
+	phydev->link = 1;
+
+	return 0;
+}
+
+static struct phy_driver ksphy_driver[] = {
+{
+	.phy_id		= PHY_ID_KS8737,
+	.phy_id_mask	= 0x00fffff0,
+	.drv.name	= "Micrel KS8737",
+	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause),
+	.config_init	= kszphy_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+}, {
+	.phy_id		= PHY_ID_KSZ8021,
+	.phy_id_mask	= 0x00ffffff,
+	.drv.name	= "Micrel KSZ8021",
+	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause |
+			   SUPPORTED_Asym_Pause),
+	.config_init	= ksz8021_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+}, {
+	.phy_id		= PHY_ID_KSZ8041,
+	.phy_id_mask	= 0x00fffff0,
+	.drv.name	= "Micrel KSZ8041",
+	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
+				| SUPPORTED_Asym_Pause),
+	.config_init	= kszphy_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+}, {
+	.phy_id		= PHY_ID_KSZ8051,
+	.phy_id_mask	= 0x00fffff0,
+	.drv.name		= "Micrel KSZ8051",
+	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
+				| SUPPORTED_Asym_Pause),
+	.config_init	= ks8051_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+}, {
+	.phy_id		= PHY_ID_KSZ8001,
+	.drv.name	= "Micrel KSZ8001 or KS8721",
+	.phy_id_mask	= 0x00ffffff,
+	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause),
+	.config_init	= kszphy_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+}, {
+	.phy_id		= PHY_ID_KSZ9021,
+	.phy_id_mask	= 0x000ffffe,
+	.drv.name	= "Micrel KSZ9021 Gigabit PHY",
+	.features	= (PHY_GBIT_FEATURES | SUPPORTED_Pause
+				| SUPPORTED_Asym_Pause),
+	.config_init	= kszphy_config_init,
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+}, {
+	.phy_id		= PHY_ID_KSZ8873MLL,
+	.phy_id_mask	= 0x00fffff0,
+	.drv.name	= "Micrel KSZ8873MLL Swithch",
+	.features	= (SUPPORTED_Pause | SUPPORTED_Asym_Pause),
+	.config_init	= ksz8873mll_config_init,
+	.config_aneg	= ksz8873mll_config_aneg,
+	.read_status	= ksz8873mll_read_status,
+} };
+
+static int ksphy_init(void)
+{
+	return phy_drivers_register(ksphy_driver,
+		ARRAY_SIZE(ksphy_driver));
+}
+fs_initcall(ksphy_init);
diff --git a/include/linux/micrel_phy.h b/include/linux/micrel_phy.h
new file mode 100644
index 0000000..adfe8c0
--- /dev/null
+++ b/include/linux/micrel_phy.h
@@ -0,0 +1,30 @@
+/*
+ * include/linux/micrel_phy.h
+ *
+ * Micrel PHY IDs
+ *
+ * This program is free software; you can redistribute  it and/or modify it
+ * under  the terms of  the GNU General  Public License as published by the
+ * Free Software Foundation;  either version 2 of the  License, or (at your
+ * option) any later version.
+ *
+ */
+
+#ifndef _MICREL_PHY_H
+#define _MICREL_PHY_H
+
+#define MICREL_PHY_ID_MASK	0x00fffff0
+
+#define PHY_ID_KSZ8873MLL	0x000e7237
+#define PHY_ID_KSZ9021		0x00221610
+#define PHY_ID_KS8737		0x00221720
+#define PHY_ID_KSZ8021		0x00221555
+#define PHY_ID_KSZ8041		0x00221510
+#define PHY_ID_KSZ8051		0x00221550
+/* both for ks8001 Rev. A/B, and for ks8721 Rev 3. */
+#define PHY_ID_KSZ8001		0x0022161A
+
+/* struct phy_device dev_flags definitions */
+#define MICREL_PHY_50MHZ_CLK	0x00000001
+
+#endif /* _MICREL_PHY_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

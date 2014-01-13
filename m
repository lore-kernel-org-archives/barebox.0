Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2cwZ-0007ro-J9
 for barebox@lists.infradead.org; Mon, 13 Jan 2014 08:32:26 +0000
Received: by mail-la0-f49.google.com with SMTP id y1so851915lam.22
 for <barebox@lists.infradead.org>; Mon, 13 Jan 2014 00:31:57 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 13 Jan 2014 12:39:59 +0400
Message-Id: <1389602399-11488-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] net/phy: add driver for National Semiconductor DP83865 PHY
To: barebox@lists.infradead.org

Based on Linux kernel 3.12 driver.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/phy/Kconfig    |  5 +++
 drivers/net/phy/Makefile   |  1 +
 drivers/net/phy/national.c | 95 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 101 insertions(+)
 create mode 100644 drivers/net/phy/national.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 7ebdaa0..260774e 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -23,6 +23,11 @@ config MICREL_PHY
 	---help---
 	  Supports the KSZ9021, VSC8201, KS8001 PHYs.
 
+config NATIONAL_PHY
+	bool "Driver for National Semiconductor PHYs"
+	---help---
+	  Currently supports the DP83865 PHY.
+
 config SMSC_PHY
 	bool "Drivers for SMSC PHYs"
 	---help---
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 451573e..a00cc76 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -2,4 +2,5 @@ obj-y += phy.o mdio_bus.o
 obj-$(CONFIG_AT803X_PHY)	+= at803x.o
 obj-$(CONFIG_LXT_PHY)		+= lxt.o
 obj-$(CONFIG_MICREL_PHY)	+= micrel.o
+obj-$(CONFIG_NATIONAL_PHY)	+= national.o
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
diff --git a/drivers/net/phy/national.c b/drivers/net/phy/national.c
new file mode 100644
index 0000000..e46d587
--- /dev/null
+++ b/drivers/net/phy/national.c
@@ -0,0 +1,95 @@
+/*
+ * drivers/net/phy/national.c
+ *
+ * Driver for National Semiconductor PHYs
+ *
+ * based on Stuart Menefy's linux national.c driver
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
+
+/* Advanced proprietary configuration */
+#define NS_EXP_MEM_CTL	0x16
+#define NS_EXP_MEM_DATA	0x1d
+#define NS_EXP_MEM_ADD	0x1e
+
+#define LED_CTRL_REG 0x13
+#define AN_FALLBACK_AN 0x0001
+#define AN_FALLBACK_CRC 0x0002
+#define AN_FALLBACK_IE 0x0004
+#define ALL_FALLBACK_ON (AN_FALLBACK_AN |  AN_FALLBACK_CRC | AN_FALLBACK_IE)
+
+enum hdx_loopback {
+	hdx_loopback_on = 0,
+	hdx_loopback_off = 1,
+};
+
+static u8 ns_exp_read(struct phy_device *phydev, u16 reg)
+{
+	phy_write(phydev, NS_EXP_MEM_ADD, reg);
+	return phy_read(phydev, NS_EXP_MEM_DATA);
+}
+
+static void ns_exp_write(struct phy_device *phydev, u16 reg, u8 data)
+{
+	phy_write(phydev, NS_EXP_MEM_ADD, reg);
+	phy_write(phydev, NS_EXP_MEM_DATA, data);
+}
+
+static void ns_giga_speed_fallback(struct phy_device *phydev, int mode)
+{
+	int bmcr = phy_read(phydev, MII_BMCR);
+
+	phy_write(phydev, MII_BMCR, (bmcr | BMCR_PDOWN));
+
+	/* Enable 8 bit expended memory read/write (no auto increment) */
+	phy_write(phydev, NS_EXP_MEM_CTL, 0);
+	phy_write(phydev, NS_EXP_MEM_ADD, 0x1C0);
+	phy_write(phydev, NS_EXP_MEM_DATA, 0x0008);
+	phy_write(phydev, MII_BMCR, (bmcr & ~BMCR_PDOWN));
+	phy_write(phydev, LED_CTRL_REG, mode);
+}
+
+static void ns_10_base_t_hdx_loopack(struct phy_device *phydev, int disable)
+{
+	if (disable)
+		ns_exp_write(phydev, 0x1c0, ns_exp_read(phydev, 0x1c0) | 1);
+	else
+		ns_exp_write(phydev, 0x1c0,
+			     ns_exp_read(phydev, 0x1c0) & 0xfffe);
+
+	pr_debug("10BASE-T HDX loopback %s\n",
+		 (ns_exp_read(phydev, 0x1c0) & 0x0001) ? "off" : "on");
+}
+
+static int ns_config_init(struct phy_device *phydev)
+{
+	ns_giga_speed_fallback(phydev, ALL_FALLBACK_ON);
+	/* In the latest MAC or switches design, the 10 Mbps loopback
+	   is desired to be turned off. */
+	ns_10_base_t_hdx_loopack(phydev, hdx_loopback_off);
+
+	return 0;
+}
+
+static struct phy_driver dp83865_driver = {
+	.phy_id		= 0x20005c70,
+	.phy_id_mask	= 0xfffffff0,
+	.drv.name	= "NatSemi DP83865",
+	.features	= PHY_GBIT_FEATURES |
+			SUPPORTED_Pause | SUPPORTED_Asym_Pause,
+	.config_init    = ns_config_init,
+};
+
+static int ns_phy_init(void)
+{
+	return phy_driver_register(&dp83865_driver);
+}
+fs_initcall(ns_phy_init);
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYvpU-0001Z4-RA
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 09:33:50 +0000
Received: from mail629.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 25791FFB605
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2012 10:41:27 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 15 Nov 2012 10:31:44 +0100
Message-Id: <1352971904-12409-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1352971904-12409-1-git-send-email-plagnioj@jcrosoft.com>
References: <1352971904-12409-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] phy: add smsc phy driver support
To: barebox@lists.infradead.org

as we to have specific phy init to fix chip issue link detection support

based on linux 3.6

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/phy/Kconfig  |    5 ++
 drivers/net/phy/Makefile |    1 +
 drivers/net/phy/smsc.c   |  146 ++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/smscphy.h  |   25 ++++++++
 4 files changed, 177 insertions(+)
 create mode 100644 drivers/net/phy/smsc.c
 create mode 100644 include/linux/smscphy.h

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index b66261a..616b539 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -14,4 +14,9 @@ config GENERIC_PHY
 
 endif
 
+config SMSC_PHY
+	bool "Drivers for SMSC PHYs"
+	---help---
+	  Currently supports the LAN83C185, LAN8187 and LAN8700 PHYs
+
 endmenu
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 82e90d4..0caeb70 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -1,2 +1,3 @@
 obj-y += phy.o mdio_bus.o
 obj-$(CONFIG_GENERIC_PHY) += generic.o
+obj-$(CONFIG_SMSC_PHY)		+= smsc.o
diff --git a/drivers/net/phy/smsc.c b/drivers/net/phy/smsc.c
new file mode 100644
index 0000000..3c201f6
--- /dev/null
+++ b/drivers/net/phy/smsc.c
@@ -0,0 +1,146 @@
+/*
+ * drivers/net/phy/smsc.c
+ *
+ * Driver for SMSC PHYs
+ *
+ * Author: Herbert Valerio Riedel
+ *
+ * Copyright (c) 2006 Herbert Valerio Riedel <hvr@gnu.org>
+ *
+ * This program is free software; you can redistribute  it and/or modify it
+ * under  the terms of  the GNU General  Public License as published by the
+ * Free Software Foundation;  either version 2 of the  License, or (at your
+ * option) any later version.
+ *
+ * Support added for SMSC LAN8187 and LAN8700 by steve.glendinning@shawell.net
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/mii.h>
+#include <linux/ethtool.h>
+#include <linux/phy.h>
+#include <linux/smscphy.h>
+
+static int smsc_phy_ack_interrupt(struct phy_device *phydev)
+{
+	int rc = phy_read (phydev, MII_LAN83C185_ISF);
+
+	return rc < 0 ? rc : 0;
+}
+
+static int smsc_phy_config_init(struct phy_device *phydev)
+{
+	int rc = phy_read(phydev, MII_LAN83C185_CTRL_STATUS);
+	if (rc < 0)
+		return rc;
+
+	/* Enable energy detect mode for this SMSC Transceivers */
+	rc = phy_write(phydev, MII_LAN83C185_CTRL_STATUS,
+		       rc | MII_LAN83C185_EDPWRDOWN);
+	if (rc < 0)
+		return rc;
+
+	return smsc_phy_ack_interrupt (phydev);
+}
+
+static int lan87xx_config_init(struct phy_device *phydev)
+{
+	/*
+	 * Make sure the EDPWRDOWN bit is NOT set. Setting this bit on
+	 * LAN8710/LAN8720 PHY causes the PHY to misbehave, likely due
+	 * to a bug on the chip.
+	 *
+	 * When the system is powered on with the network cable being
+	 * disconnected all the way until after ifconfig ethX up is
+	 * issued for the LAN port with this PHY, connecting the cable
+	 * afterwards does not cause LINK change detection, while the
+	 * expected behavior is the Link UP being detected.
+	 */
+	int rc = phy_read(phydev, MII_LAN83C185_CTRL_STATUS);
+	if (rc < 0)
+		return rc;
+
+	rc &= ~MII_LAN83C185_EDPWRDOWN;
+
+	rc = phy_write(phydev, MII_LAN83C185_CTRL_STATUS, rc);
+	if (rc < 0)
+		return rc;
+
+	return smsc_phy_ack_interrupt(phydev);
+}
+
+static int lan911x_config_init(struct phy_device *phydev)
+{
+	return smsc_phy_ack_interrupt(phydev);
+}
+
+static struct phy_driver smsc_phy_driver[] = {
+{
+	.phy_id		= 0x0007c0a0, /* OUI=0x00800f, Model#=0x0a */
+	.phy_id_mask	= 0xfffffff0,
+	.drv.name	= "SMSC LAN83C185",
+
+	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
+				| SUPPORTED_Asym_Pause),
+
+	/* basic functions */
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+	.config_init	= smsc_phy_config_init,
+}, {
+	.phy_id		= 0x0007c0b0, /* OUI=0x00800f, Model#=0x0b */
+	.phy_id_mask	= 0xfffffff0,
+	.drv.name	= "SMSC LAN8187",
+
+	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
+				| SUPPORTED_Asym_Pause),
+
+	/* basic functions */
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+	.config_init	= smsc_phy_config_init,
+}, {
+	.phy_id		= 0x0007c0c0, /* OUI=0x00800f, Model#=0x0c */
+	.phy_id_mask	= 0xfffffff0,
+	.drv.name	= "SMSC LAN8700",
+
+	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
+				| SUPPORTED_Asym_Pause),
+
+	/* basic functions */
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+	.config_init	= smsc_phy_config_init,
+}, {
+	.phy_id		= 0x0007c0d0, /* OUI=0x00800f, Model#=0x0d */
+	.phy_id_mask	= 0xfffffff0,
+	.drv.name	= "SMSC LAN911x Internal PHY",
+
+	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
+				| SUPPORTED_Asym_Pause),
+
+	/* basic functions */
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+	.config_init	= lan911x_config_init,
+}, {
+	.phy_id		= 0x0007c0f0, /* OUI=0x00800f, Model#=0x0f */
+	.phy_id_mask	= 0xfffffff0,
+	.drv.name	= "SMSC LAN8710/LAN8720",
+
+	.features	= (PHY_BASIC_FEATURES | SUPPORTED_Pause
+				| SUPPORTED_Asym_Pause),
+
+	/* basic functions */
+	.config_aneg	= genphy_config_aneg,
+	.read_status	= genphy_read_status,
+	.config_init	= lan87xx_config_init,
+} };
+
+static int __init smsc_init(void)
+{
+	return phy_drivers_register(smsc_phy_driver, ARRAY_SIZE(smsc_phy_driver));
+}
+device_initcall(smsc_init);
diff --git a/include/linux/smscphy.h b/include/linux/smscphy.h
new file mode 100644
index 0000000..ce718cb
--- /dev/null
+++ b/include/linux/smscphy.h
@@ -0,0 +1,25 @@
+#ifndef __LINUX_SMSCPHY_H__
+#define __LINUX_SMSCPHY_H__
+
+#define MII_LAN83C185_ISF 29 /* Interrupt Source Flags */
+#define MII_LAN83C185_IM  30 /* Interrupt Mask */
+#define MII_LAN83C185_CTRL_STATUS 17 /* Mode/Status Register */
+
+#define MII_LAN83C185_ISF_INT1 (1<<1) /* Auto-Negotiation Page Received */
+#define MII_LAN83C185_ISF_INT2 (1<<2) /* Parallel Detection Fault */
+#define MII_LAN83C185_ISF_INT3 (1<<3) /* Auto-Negotiation LP Ack */
+#define MII_LAN83C185_ISF_INT4 (1<<4) /* Link Down */
+#define MII_LAN83C185_ISF_INT5 (1<<5) /* Remote Fault Detected */
+#define MII_LAN83C185_ISF_INT6 (1<<6) /* Auto-Negotiation complete */
+#define MII_LAN83C185_ISF_INT7 (1<<7) /* ENERGYON */
+
+#define MII_LAN83C185_ISF_INT_ALL (0x0e)
+
+#define MII_LAN83C185_ISF_INT_PHYLIB_EVENTS \
+	(MII_LAN83C185_ISF_INT6 | MII_LAN83C185_ISF_INT4 | \
+	 MII_LAN83C185_ISF_INT7)
+
+#define MII_LAN83C185_EDPWRDOWN (1 << 13) /* EDPWRDOWN */
+#define MII_LAN83C185_ENERGYON  (1 << 1)  /* ENERGYON */
+
+#endif /* __LINUX_SMSCPHY_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

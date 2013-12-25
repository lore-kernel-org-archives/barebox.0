Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vvj7b-0002Ak-MJ
 for barebox@lists.infradead.org; Wed, 25 Dec 2013 07:43:17 +0000
Received: by mail-lb0-f179.google.com with SMTP id w7so3117545lbi.24
 for <barebox@lists.infradead.org>; Tue, 24 Dec 2013 23:42:53 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 25 Dec 2013 11:50:04 +0400
Message-Id: <1387957805-1532-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1387957805-1532-1-git-send-email-antonynpavlov@gmail.com>
References: <1387957805-1532-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/5] net/phy: add driver for LXT PHYs
To: barebox@lists.infradead.org

Based on Linux kernel 3.12 driver.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/phy/Kconfig  |  5 +++++
 drivers/net/phy/Makefile |  1 +
 drivers/net/phy/lxt.c    | 31 +++++++++++++++++++++++++++++++
 3 files changed, 37 insertions(+)
 create mode 100644 drivers/net/phy/lxt.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 83966f9..7ebdaa0 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -13,6 +13,11 @@ config AT803X_PHY
 	---help---
 	  Currently supports the AT8030, AT8031 and AT8035 PHYs.
 
+config LXT_PHY
+	bool "Driver for the Intel LXT PHYs"
+	---help---
+	  Currently supports the lxt971 PHY.
+
 config MICREL_PHY
 	bool "Driver for Micrel PHYs"
 	---help---
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 47e2b42..451573e 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -1,4 +1,5 @@
 obj-y += phy.o mdio_bus.o
 obj-$(CONFIG_AT803X_PHY)	+= at803x.o
+obj-$(CONFIG_LXT_PHY)		+= lxt.o
 obj-$(CONFIG_MICREL_PHY)	+= micrel.o
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
diff --git a/drivers/net/phy/lxt.c b/drivers/net/phy/lxt.c
new file mode 100644
index 0000000..9e5ddbb
--- /dev/null
+++ b/drivers/net/phy/lxt.c
@@ -0,0 +1,31 @@
+/*
+ * drivers/net/phy/lxt.c
+ *
+ * Driver for Intel LXT PHYs
+ *
+ * base on Andy Fleming's linux lxt.c driver
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
+static struct phy_driver lxt97x_driver[] = {
+{
+	.phy_id		= 0x001378e0,
+	.phy_id_mask	= 0xfffffff0,
+	.drv.name	= "LXT971",
+	.features	= PHY_BASIC_FEATURES,
+} };
+
+static int lxt97x_phy_init(void)
+{
+	return phy_drivers_register(lxt97x_driver,
+				    ARRAY_SIZE(lxt97x_driver));
+}
+fs_initcall(lxt97x_phy_init);
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

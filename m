Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpacY-00034N-8W
 for barebox@lists.infradead.org; Thu, 29 Sep 2016 12:39:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Sep 2016 14:38:58 +0200
Message-Id: <20160929123900.24853-7-s.hauer@pengutronix.de>
In-Reply-To: <20160929123900.24853-1-s.hauer@pengutronix.de>
References: <20160929123900.24853-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] phy: Add usb-nop-xceiv support
To: Barebox List <barebox@lists.infradead.org>

Add a nop usb transcveiver driver. At the moment it does nothing,
so is nothing more than a driver to satisfy the device tree
dependencies. clk / vbus-regulator / vbus-detect-gpio support can be
added later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/phy/Kconfig         |  15 +++++--
 drivers/phy/Makefile        |   1 +
 drivers/phy/usb-nop-xceiv.c | 104 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 116 insertions(+), 4 deletions(-)
 create mode 100644 drivers/phy/usb-nop-xceiv.c

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index e9461e1..b0c8b9b 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -2,9 +2,7 @@
 # PHY
 #
 
-menu "PHY Subsystem"
-
-config GENERIC_PHY
+menuconfig GENERIC_PHY
 	bool "PHY Core"
 	help
 	  Generic PHY support.
@@ -15,4 +13,13 @@ config GENERIC_PHY
 	  phy users can obtain reference to the PHY. All the users of this
 	  framework should select this config.
 
-endmenu
+if GENERIC_PHY
+
+config USB_NOP_XCEIV
+	bool "Generic USB nop phy"
+	help
+	  This driver is to be used by all the usb transceiver which are either
+	  built-in with usb ip or which are autonomous and doesn't require any
+	  phy programming such as ISP1x04 etc.
+
+endif
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index 74514ae..8fc8595 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -3,3 +3,4 @@
 #
 
 obj-$(CONFIG_GENERIC_PHY)		+= phy-core.o
+obj-$(CONFIG_USB_NOP_XCEIV)		+= usb-nop-xceiv.o
diff --git a/drivers/phy/usb-nop-xceiv.c b/drivers/phy/usb-nop-xceiv.c
new file mode 100644
index 0000000..606e098
--- /dev/null
+++ b/drivers/phy/usb-nop-xceiv.c
@@ -0,0 +1,104 @@
+/*
+ * Copyright (c) 2016 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License as published by the
+ * Free Software Foundation; either version 2 of the License, or (at your
+ * option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
+ * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
+ * for more details.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <of.h>
+#include <errno.h>
+#include <driver.h>
+#include <malloc.h>
+#include <usb/phy.h>
+#include <linux/phy/phy.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+struct nop_usbphy {
+	struct usb_phy usb_phy;
+	struct phy *phy;
+	struct phy_provider *provider;
+};
+
+static struct phy *nop_usbphy_xlate(struct device_d *dev,
+				    struct of_phandle_args *args)
+{
+	struct nop_usbphy *nopphy = dev->priv;
+
+	return nopphy->phy;
+}
+
+static struct usb_phy *nop_usbphy_to_usbphy(struct phy *phy)
+{
+	struct nop_usbphy *nopphy = phy_get_drvdata(phy);
+
+	return &nopphy->usb_phy;
+}
+
+static const struct phy_ops nop_phy_ops = {
+	.to_usbphy = nop_usbphy_to_usbphy,
+};
+
+static int nop_usbphy_probe(struct device_d *dev)
+{
+	int ret;
+	struct nop_usbphy *nopphy;
+
+	nopphy = xzalloc(sizeof(*nopphy));
+
+	dev->priv = nopphy;
+
+	/* FIXME: Add clk support */
+	/* FIXME: Add vbus regulator support */
+	/* FIXME: Add vbus-detect-gpio support */
+
+	nopphy->usb_phy.dev = dev;
+	nopphy->phy = phy_create(dev, NULL, &nop_phy_ops, NULL);
+	if (IS_ERR(nopphy->phy)) {
+		ret = PTR_ERR(nopphy->phy);
+		goto err_free;
+	}
+
+	phy_set_drvdata(nopphy->phy, nopphy);
+
+	nopphy->provider = of_phy_provider_register(dev, nop_usbphy_xlate);
+	if (IS_ERR(nopphy->provider)) {
+		ret = PTR_ERR(nopphy->provider);
+		goto err_free;
+	}
+
+	return 0;
+err_free:
+	free(nopphy);
+
+	return ret;
+};
+
+static __maybe_unused struct of_device_id nop_usbphy_dt_ids[] = {
+	{
+		.compatible = "usb-nop-xceiv",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d nop_usbphy_driver = {
+	.name   = "usb-nop-xceiv",
+	.probe  = nop_usbphy_probe,
+	.of_compatible = DRV_OF_COMPAT(nop_usbphy_dt_ids),
+};
+
+static int nop_usbphy_init(void)
+{
+	return platform_driver_register(&nop_usbphy_driver);
+}
+fs_initcall(nop_usbphy_init);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tws0L-00072M-Er
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 10:20:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 11:19:53 +0100
Message-Id: <1358677194-23423-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358677194-23423-1-git-send-email-s.hauer@pengutronix.de>
References: <1358677194-23423-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] USB: Add usb phy driver for i.MX
To: barebox@lists.infradead.org

This phy is found on i.MX6 and i.MX23/28. Currently tested only on i.MX6.
For now we take the easy way out. The phy is enabled upon registration.
More elaborated handling can be added later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/Kconfig       |    5 ++
 drivers/usb/imx/Makefile      |    1 +
 drivers/usb/imx/imx-usb-phy.c |  105 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 111 insertions(+)
 create mode 100644 drivers/usb/imx/imx-usb-phy.c

diff --git a/drivers/usb/imx/Kconfig b/drivers/usb/imx/Kconfig
index 2c52e72..b1ce682 100644
--- a/drivers/usb/imx/Kconfig
+++ b/drivers/usb/imx/Kconfig
@@ -13,3 +13,8 @@ config USB_IMX_CHIPIDEA
 	  This driver is recommended for new designs, but it needs board
 	  support to work.
 	  It's safe to say yes here. Also select EHCI support for USB host.
+
+config USB_IMX_PHY
+	bool
+	depends on ARCH_IMX
+	default y if ARCH_IMX6
diff --git a/drivers/usb/imx/Makefile b/drivers/usb/imx/Makefile
index e37361c..e15bc71 100644
--- a/drivers/usb/imx/Makefile
+++ b/drivers/usb/imx/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_USB_IMX_CHIPIDEA) += imx-usb-misc.o chipidea-imx.o
+obj-$(CONFIG_USB_IMX_PHY) += imx-usb-phy.o
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
new file mode 100644
index 0000000..ce9c93f
--- /dev/null
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -0,0 +1,105 @@
+/*
+ * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>
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
+#include <io.h>
+#include <driver.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+#define SET				0x4
+#define CLR				0x8
+
+#define USBPHY_CTRL			0x30
+
+#define USBPHY_CTRL_SFTRST		(1 << 31)
+#define USBPHY_CTRL_CLKGATE		(1 << 30)
+#define USBPHY_CTRL_ENUTMILEVEL3	(1 << 15)
+#define USBPHY_CTRL_ENUTMILEVEL2	(1 << 14)
+
+struct imx_usbphy {
+	void __iomem *base;
+	struct clk *clk;
+};
+
+static int imx_usbphy_enable(struct imx_usbphy *imxphy)
+{
+	u32 val;
+
+	clk_enable(imxphy->clk);
+
+	/* reset usbphy */
+	writel(USBPHY_CTRL_SFTRST, imxphy->base + USBPHY_CTRL + SET);
+
+	udelay(10);
+
+	/* clr reset and clkgate */
+	writel(USBPHY_CTRL_SFTRST | USBPHY_CTRL_CLKGATE,
+			imxphy->base + USBPHY_CTRL + CLR);
+
+	/* clr all pwd bits => power up phy */
+	writel(0xffffffff, imxphy->base + CLR);
+
+	/* set utmilvl2/3 */
+	val = readl(imxphy->base + USBPHY_CTRL);
+	val |= USBPHY_CTRL_ENUTMILEVEL3 | USBPHY_CTRL_ENUTMILEVEL2;
+	writel(val, imxphy->base + USBPHY_CTRL + SET);
+
+	return 0;
+}
+
+static int imx_usbphy_probe(struct device_d *dev)
+{
+	int ret;
+	struct imx_usbphy *imxphy;
+
+	imxphy = xzalloc(sizeof(*imxphy));
+
+	imxphy->base = dev_request_mem_region(dev, 0);
+	if (!imxphy->base) {
+		ret = -ENODEV;
+		goto err_free;
+	}
+
+	imxphy->clk = clk_get(dev, NULL);
+	if (IS_ERR(imxphy->clk)) {
+		dev_err(dev, "could not get clk: %s\n", strerror(-PTR_ERR(imxphy->clk)));
+		goto err_clk;
+	}
+
+	imx_usbphy_enable(imxphy);
+
+	dev_dbg(dev, "phy enabled\n");
+
+	return 0;
+
+err_clk:
+err_free:
+	free(imxphy);
+
+	return ret;
+};
+
+static struct driver_d imx_usbphy_driver = {
+	.name   = "imx-usb-phy",
+	.probe  = imx_usbphy_probe,
+};
+
+static int imx_usbphy_init(void)
+{
+	return platform_driver_register(&imx_usbphy_driver);
+}
+coredevice_initcall(imx_usbphy_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

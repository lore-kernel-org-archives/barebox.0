Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKT-0003DA-OQ
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:14 +0000
Received: by mail-pg1-x542.google.com with SMTP id r11so11421074pgp.6
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:05 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:23 -0800
Message-Id: <20190220072930.14300-19-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 18/25] phy: Port i.MX8MQ USB PHY driver from Linux
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port i.MX8MQ USB PHY driver from Linux.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/phy/Kconfig                        |   2 +
 drivers/phy/Makefile                       |   1 +
 drivers/phy/freescale/Kconfig              |   4 +
 drivers/phy/freescale/Makefile             |   1 +
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 130 +++++++++++++++++++++
 5 files changed, 138 insertions(+)
 create mode 100644 drivers/phy/freescale/Kconfig
 create mode 100644 drivers/phy/freescale/Makefile
 create mode 100644 drivers/phy/freescale/phy-fsl-imx8mq-usb.c

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index b0c8b9bf0..b5cefb2ff 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -22,4 +22,6 @@ config USB_NOP_XCEIV
 	  built-in with usb ip or which are autonomous and doesn't require any
 	  phy programming such as ISP1x04 etc.
 
+source "drivers/phy/freescale/Kconfig"
+
 endif
diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index 8fc85953b..179c55e60 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -4,3 +4,4 @@
 
 obj-$(CONFIG_GENERIC_PHY)		+= phy-core.o
 obj-$(CONFIG_USB_NOP_XCEIV)		+= usb-nop-xceiv.o
+obj-y					+= freescale/
diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
new file mode 100644
index 000000000..8e56dd7e7
--- /dev/null
+++ b/drivers/phy/freescale/Kconfig
@@ -0,0 +1,4 @@
+config PHY_FSL_IMX8MQ_USB
+	bool "Freescale i.MX8M USB3 PHY"
+	default SOC_IMX8MQ
+
diff --git a/drivers/phy/freescale/Makefile b/drivers/phy/freescale/Makefile
new file mode 100644
index 000000000..dc2b3f1f2
--- /dev/null
+++ b/drivers/phy/freescale/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_PHY_FSL_IMX8MQ_USB)	+= phy-fsl-imx8mq-usb.o
diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
new file mode 100644
index 000000000..1aef2b300
--- /dev/null
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0+
+/* Copyright (c) 2017 NXP. */
+
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <errno.h>
+#include <driver.h>
+#include <malloc.h>
+#include <usb/phy.h>
+#include <linux/phy/phy.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+
+#define PHY_CTRL0			0x0
+#define PHY_CTRL0_REF_SSP_EN		BIT(2)
+
+#define PHY_CTRL1			0x4
+#define PHY_CTRL1_RESET			BIT(0)
+#define PHY_CTRL1_COMMONONN		BIT(1)
+#define PHY_CTRL1_ATERESET		BIT(3)
+#define PHY_CTRL1_VDATSRCENB0		BIT(19)
+#define PHY_CTRL1_VDATDETENB0		BIT(20)
+
+#define PHY_CTRL2			0x8
+#define PHY_CTRL2_TXENABLEN0		BIT(8)
+
+struct imx8mq_usb_phy {
+	struct phy *phy;
+	struct clk *clk;
+	void __iomem *base;
+};
+
+static int imx8mq_usb_phy_init(struct phy *phy)
+{
+	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
+	u32 value;
+
+	value = readl(imx_phy->base + PHY_CTRL1);
+	value &= ~(PHY_CTRL1_VDATSRCENB0 | PHY_CTRL1_VDATDETENB0 |
+		   PHY_CTRL1_COMMONONN);
+	value |= PHY_CTRL1_RESET | PHY_CTRL1_ATERESET;
+	writel(value, imx_phy->base + PHY_CTRL1);
+
+	value = readl(imx_phy->base + PHY_CTRL0);
+	value |= PHY_CTRL0_REF_SSP_EN;
+	writel(value, imx_phy->base + PHY_CTRL0);
+
+	value = readl(imx_phy->base + PHY_CTRL2);
+	value |= PHY_CTRL2_TXENABLEN0;
+	writel(value, imx_phy->base + PHY_CTRL2);
+
+	value = readl(imx_phy->base + PHY_CTRL1);
+	value &= ~(PHY_CTRL1_RESET | PHY_CTRL1_ATERESET);
+	writel(value, imx_phy->base + PHY_CTRL1);
+
+	return 0;
+}
+
+static int imx8mq_phy_power_on(struct phy *phy)
+{
+	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
+
+	return clk_enable(imx_phy->clk);
+}
+
+static int imx8mq_phy_power_off(struct phy *phy)
+{
+	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
+
+	clk_disable(imx_phy->clk);
+
+	return 0;
+}
+
+static struct phy_ops imx8mq_usb_phy_ops = {
+	.init		= imx8mq_usb_phy_init,
+	.power_on	= imx8mq_phy_power_on,
+	.power_off	= imx8mq_phy_power_off,
+};
+
+static struct phy *imx8mq_usb_phy_xlate(struct device_d *dev,
+					struct of_phandle_args *args)
+{
+	struct imx8mq_usb_phy *imx_phy = dev->priv;
+
+	return imx_phy->phy;
+}
+
+static int imx8mq_usb_phy_probe(struct device_d *dev)
+{
+	struct phy_provider *phy_provider;
+	struct imx8mq_usb_phy *imx_phy;
+
+	imx_phy = xzalloc(sizeof(*imx_phy));
+
+	dev->priv = imx_phy;
+
+	imx_phy->clk = clk_get(dev, "phy");
+	if (IS_ERR(imx_phy->clk))
+		return PTR_ERR(imx_phy->clk);
+
+	imx_phy->base = dev_get_mem_region(dev, 0);
+	if (IS_ERR(imx_phy->base))
+		return PTR_ERR(imx_phy->base);
+
+	imx_phy->phy = phy_create(dev, NULL, &imx8mq_usb_phy_ops, NULL);
+	if (IS_ERR(imx_phy->phy))
+		return PTR_ERR(imx_phy->phy);
+
+	phy_set_drvdata(imx_phy->phy, imx_phy);
+
+	phy_provider = of_phy_provider_register(dev, imx8mq_usb_phy_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static const struct of_device_id imx8mq_usb_phy_of_match[] = {
+	{.compatible = "fsl,imx8mq-usb-phy",},
+	{ },
+};
+
+static struct driver_d imx8mq_usb_phy_driver = {
+	.name	= "imx8mq-usb-phy",
+	.probe	= imx8mq_usb_phy_probe,
+	.of_compatible = DRV_OF_COMPAT(imx8mq_usb_phy_of_match),
+};
+device_platform_driver(imx8mq_usb_phy_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x230.google.com ([2a00:1450:4013:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBB9B-0004zf-CJ
 for barebox@lists.infradead.org; Wed, 05 Feb 2014 22:40:52 +0000
Received: by mail-ea0-f176.google.com with SMTP id h14so539842eaj.7
 for <barebox@lists.infradead.org>; Wed, 05 Feb 2014 14:40:21 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed,  5 Feb 2014 23:40:07 +0100
Message-Id: <1391640009-3399-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 4/6] net: phy: add mvebu mdio bus driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

This adds a driver for the mdio bus found on Marvell Orion SoCs as
part of the GBE device and Marvell Armada 370/XP as part of Neta
eth device. Both drivers can share this code, so make it available
independently.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Signed-off-by: Michael Grzeschik <mgr@pengutronix.de>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 drivers/net/phy/Kconfig      |   8 +++
 drivers/net/phy/Makefile     |   2 +
 drivers/net/phy/mdio-mvebu.c | 152 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 162 insertions(+)
 create mode 100644 drivers/net/phy/mdio-mvebu.c

diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
index 7ebdaa0c01d0..e09f12208335 100644
--- a/drivers/net/phy/Kconfig
+++ b/drivers/net/phy/Kconfig
@@ -28,6 +28,14 @@ config SMSC_PHY
 	---help---
 	  Currently supports the LAN83C185, LAN8187 and LAN8700 PHYs
 
+comment "MII bus device drivers"
+
+config MDIO_MVEBU
+	bool "Driver for MVEBU SoC MDIO bus"
+	depends on ARCH_MVEBU
+	---help---
+	  Driver for the MDIO bus found on Marvell EBU SoCs.
+
 endif
 
 endmenu
diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 451573ed8316..74cfe1730f01 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -3,3 +3,5 @@ obj-$(CONFIG_AT803X_PHY)	+= at803x.o
 obj-$(CONFIG_LXT_PHY)		+= lxt.o
 obj-$(CONFIG_MICREL_PHY)	+= micrel.o
 obj-$(CONFIG_SMSC_PHY)		+= smsc.o
+
+obj-$(CONFIG_MDIO_MVEBU)	+= mdio-mvebu.o
diff --git a/drivers/net/phy/mdio-mvebu.c b/drivers/net/phy/mdio-mvebu.c
new file mode 100644
index 000000000000..f8b492a241ab
--- /dev/null
+++ b/drivers/net/phy/mdio-mvebu.c
@@ -0,0 +1,152 @@
+/*
+ * Marvell MVEBU SoC MDIO interface driver
+ *
+ * (C) Copyright 2014
+ *   Pengutronix, Michael Grzeschik <mgr@pengutronix.de>
+ *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ *
+ * based on mvmdio driver from Linux
+ *   Copyright (C) 2012 Marvell
+ *     Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
+ *
+ * Since the MDIO interface of Marvell network interfaces is shared
+ * between all network interfaces, having a single driver allows to
+ * handle concurrent accesses properly (you may have four Ethernet
+ * ports, but they in fact share the same SMI interface to access
+ * the MDIO bus). This driver is currently used by the mvneta and
+ * mv643xx_eth drivers.
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2. This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+#include <clock.h>
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <io.h>
+#include <of.h>
+#include <linux/clk.h>
+#include <linux/phy.h>
+
+#define SMI_DATA_SHIFT          0
+#define SMI_PHY_ADDR_SHIFT      16
+#define SMI_PHY_REG_SHIFT       21
+#define SMI_READ_OPERATION      BIT(26)
+#define SMI_WRITE_OPERATION     0
+#define SMI_READ_VALID          BIT(27)
+#define SMI_BUSY                BIT(28)
+#define ERR_INT_CAUSE		0x007C
+#define  ERR_INT_SMI_DONE	BIT(4)
+#define ERR_INT_MASK		BIT(7)
+
+struct mdio_priv {
+	struct mii_bus miibus;
+	void __iomem *regs;
+	struct clk *clk;
+};
+
+#define SMI_POLL_TIMEOUT	(10 * MSECOND)
+
+static int mvebu_mdio_wait_ready(struct mdio_priv *priv)
+{
+	int ret = wait_on_timeout(SMI_POLL_TIMEOUT,
+				  (readl(priv->regs) & SMI_BUSY) == 0);
+
+	if (ret)
+		dev_err(&priv->miibus.dev, "timeout, SMI busy for too long\n");
+
+	return ret;
+}
+
+static int mvebu_mdio_read(struct mii_bus *bus, int addr, int reg)
+{
+	struct mdio_priv *priv = bus->priv;
+	u32 smi;
+	int ret;
+
+	ret = mvebu_mdio_wait_ready(priv);
+	if (ret)
+		return ret;
+
+	smi = SMI_READ_OPERATION;
+	smi |= (addr << SMI_PHY_ADDR_SHIFT) | (reg << SMI_PHY_REG_SHIFT);
+	writel(smi, priv->regs);
+
+	ret = mvebu_mdio_wait_ready(priv);
+	if (ret)
+		return ret;
+
+	smi = readl(priv->regs);
+	if ((smi & SMI_READ_VALID) == 0) {
+		dev_err(&bus->dev, "SMI bus read not valid\n");
+		return -ENODEV;
+	}
+
+	return smi & 0xFFFF;
+}
+
+static int mvebu_mdio_write(struct mii_bus *bus, int addr, int reg, u16 data)
+{
+	struct mdio_priv *priv = bus->priv;
+	u32 smi;
+	int ret;
+
+	ret = mvebu_mdio_wait_ready(priv);
+	if (ret)
+		return ret;
+
+	smi = SMI_WRITE_OPERATION;
+	smi |= (addr << SMI_PHY_ADDR_SHIFT) | (reg << SMI_PHY_REG_SHIFT);
+	smi |= data << SMI_DATA_SHIFT;
+	writel(smi, priv->regs);
+
+	return 0;
+}
+
+static int mvebu_mdio_probe(struct device_d *dev)
+{
+	struct mdio_priv *priv;
+
+	priv = xzalloc(sizeof(*priv));
+	dev->priv = priv;
+
+	priv->regs = dev_get_mem_region(dev, 0);
+	if (!priv->regs)
+		return -ENOMEM;
+
+	priv->clk = clk_get(dev, NULL);
+	if (!IS_ERR(priv->clk))
+		clk_enable(priv->clk);
+
+	priv->miibus.priv = priv;
+	priv->miibus.parent = dev;
+	priv->miibus.read = mvebu_mdio_read;
+	priv->miibus.write = mvebu_mdio_write;
+
+	return mdiobus_register(&priv->miibus);
+}
+
+static void mvebu_mdio_remove(struct device_d *dev)
+{
+	struct mdio_priv *priv = dev->priv;
+
+	mdiobus_unregister(&priv->miibus);
+
+	if (!IS_ERR(priv->clk))
+		clk_disable(priv->clk);
+}
+
+static struct of_device_id mvebu_mdio_dt_ids[] = {
+	{ .compatible = "marvell,orion-mdio" },
+	{ }
+};
+
+static struct driver_d mvebu_mdio_driver = {
+	.name   = "mvebu-mdio",
+	.probe  = mvebu_mdio_probe,
+	.remove = mvebu_mdio_remove,
+	.of_compatible = DRV_OF_COMPAT(mvebu_mdio_dt_ids),
+};
+device_platform_driver(mvebu_mdio_driver);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjVIG-0005nP-4s
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 20:26:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id y126so1849890pfb.4
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2019 12:26:40 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Jan 2019 12:25:53 -0800
Message-Id: <20190115202601.24831-10-andrew.smirnov@gmail.com>
In-Reply-To: <20190115202601.24831-1-andrew.smirnov@gmail.com>
References: <20190115202601.24831-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 09/17] reset: Add i.MX7 SRC reset driver
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit abf97755ae31aaaf35156438dd3036e96f66da83

  Add reset controller driver exposing various reset faculties,
  implemented by System Reset Controller IP block.

  Cc: Lucas Stach <l.stach@pengutronix.de>
  Cc: Mark Rutland <mark.rutland@arm.com>
  Cc: devicetree@vger.kernel.org
  Cc: linux-kernel@vger.kernel.org
  Cc: linux-arm-kernel@lists.infradead.org
  Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  Acked-by: Rob Herring <robh@kernel.org>
  Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Linux commit 26fce0557fa639fb7bbc33e31a57cff7df25c3a0 was squashed
here as well:

  reset: imx7: Fix always writing bits as 0

  Right now the only user of reset-imx7 is pci-imx6 and the
  reset_control_assert and deassert calls on pciephy_reset don't toggle
  the PCIEPHY_BTN and PCIEPHY_G_RST bits as expected. Fix this by writing
  1 or 0 respectively.

  The reference manual is not very clear regarding SRC_PCIEPHY_RCR but for
  other registers like MIPIPHY and HSICPHY the bits are explicitly
  documented as "1 means assert, 0 means deassert".

  The values are still reversed for IMX7_RESET_PCIE_CTRL_APPS_EN.

  Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
  Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
  Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/reset/Kconfig      |  11 +++
 drivers/reset/Makefile     |   1 +
 drivers/reset/reset-imx7.c | 151 +++++++++++++++++++++++++++++++++++++
 3 files changed, 163 insertions(+)
 create mode 100644 drivers/reset/reset-imx7.c

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index c9d04f7978..caf1dc9acb 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -11,3 +11,14 @@ menuconfig RESET_CONTROLLER
 	  via GPIOs or SoC-internal reset controller modules.
 
 	  If unsure, say no.
+
+if RESET_CONTROLLER
+
+config RESET_IMX7
+	bool "i.MX7 Reset Driver"
+	default SOC_IMX7D
+	select MFD_SYSCON
+	help
+	  This enables the reset controller driver for i.MX7 SoCs.
+
+endif
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 52b10cd480..0b55caa204 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_RESET_CONTROLLER) += core.o
 obj-$(CONFIG_ARCH_SOCFPGA) += reset-socfpga.o
+obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
new file mode 100644
index 0000000000..6dc5de16a7
--- /dev/null
+++ b/drivers/reset/reset-imx7.c
@@ -0,0 +1,151 @@
+/*
+ * Copyright (c) 2017, Impinj, Inc.
+ *
+ * i.MX7 System Reset Controller (SRC) driver
+ *
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; version 2 of the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <dt-bindings/reset/imx7-reset.h>
+#include <init.h>
+#include <linux/err.h>
+#include <linux/reset-controller.h>
+#include <mfd/syscon.h>
+#include <regmap.h>
+
+struct imx7_src {
+	struct reset_controller_dev rcdev;
+	struct regmap *regmap;
+};
+
+enum imx7_src_registers {
+	SRC_A7RCR0		= 0x0004,
+	SRC_M4RCR		= 0x000c,
+	SRC_ERCR		= 0x0014,
+	SRC_HSICPHY_RCR		= 0x001c,
+	SRC_USBOPHY1_RCR	= 0x0020,
+	SRC_USBOPHY2_RCR	= 0x0024,
+	SRC_MIPIPHY_RCR		= 0x0028,
+	SRC_PCIEPHY_RCR		= 0x002c,
+	SRC_DDRC_RCR		= 0x1000,
+};
+
+struct imx7_src_signal {
+	unsigned int offset, bit;
+};
+
+static const struct imx7_src_signal imx7_src_signals[IMX7_RESET_NUM] = {
+	[IMX7_RESET_A7_CORE_POR_RESET0] = { SRC_A7RCR0, BIT(0) },
+	[IMX7_RESET_A7_CORE_POR_RESET1] = { SRC_A7RCR0, BIT(1) },
+	[IMX7_RESET_A7_CORE_RESET0]     = { SRC_A7RCR0, BIT(4) },
+	[IMX7_RESET_A7_CORE_RESET1]	= { SRC_A7RCR0, BIT(5) },
+	[IMX7_RESET_A7_DBG_RESET0]	= { SRC_A7RCR0, BIT(8) },
+	[IMX7_RESET_A7_DBG_RESET1]	= { SRC_A7RCR0, BIT(9) },
+	[IMX7_RESET_A7_ETM_RESET0]	= { SRC_A7RCR0, BIT(12) },
+	[IMX7_RESET_A7_ETM_RESET1]	= { SRC_A7RCR0, BIT(13) },
+	[IMX7_RESET_A7_SOC_DBG_RESET]	= { SRC_A7RCR0, BIT(20) },
+	[IMX7_RESET_A7_L2RESET]		= { SRC_A7RCR0, BIT(21) },
+	[IMX7_RESET_SW_M4C_RST]		= { SRC_M4RCR, BIT(1) },
+	[IMX7_RESET_SW_M4P_RST]		= { SRC_M4RCR, BIT(2) },
+	[IMX7_RESET_EIM_RST]		= { SRC_ERCR, BIT(0) },
+	[IMX7_RESET_HSICPHY_PORT_RST]	= { SRC_HSICPHY_RCR, BIT(1) },
+	[IMX7_RESET_USBPHY1_POR]	= { SRC_USBOPHY1_RCR, BIT(0) },
+	[IMX7_RESET_USBPHY1_PORT_RST]	= { SRC_USBOPHY1_RCR, BIT(1) },
+	[IMX7_RESET_USBPHY2_POR]	= { SRC_USBOPHY2_RCR, BIT(0) },
+	[IMX7_RESET_USBPHY2_PORT_RST]	= { SRC_USBOPHY2_RCR, BIT(1) },
+	[IMX7_RESET_MIPI_PHY_MRST]	= { SRC_MIPIPHY_RCR, BIT(1) },
+	[IMX7_RESET_MIPI_PHY_SRST]	= { SRC_MIPIPHY_RCR, BIT(2) },
+	[IMX7_RESET_PCIEPHY]		= { SRC_PCIEPHY_RCR, BIT(2) | BIT(1) },
+	[IMX7_RESET_PCIEPHY_PERST]	= { SRC_PCIEPHY_RCR, BIT(3) },
+	[IMX7_RESET_PCIE_CTRL_APPS_EN]	= { SRC_PCIEPHY_RCR, BIT(6) },
+	[IMX7_RESET_DDRC_PRST]		= { SRC_DDRC_RCR, BIT(0) },
+	[IMX7_RESET_DDRC_CORE_RST]	= { SRC_DDRC_RCR, BIT(1) },
+};
+
+static struct imx7_src *to_imx7_src(struct reset_controller_dev *rcdev)
+{
+	return container_of(rcdev, struct imx7_src, rcdev);
+}
+
+static int imx7_reset_set(struct reset_controller_dev *rcdev,
+			  unsigned long id, bool assert)
+{
+	struct imx7_src *imx7src = to_imx7_src(rcdev);
+	const struct imx7_src_signal *signal = &imx7_src_signals[id];
+	unsigned int value = assert ? signal->bit : 0;;
+
+	switch (id) {
+	case IMX7_RESET_PCIEPHY:
+		/*
+		 * wait for more than 10us to release phy g_rst and
+		 * btnrst
+		 */
+		if (!assert)
+			udelay(10);
+		break;
+
+	case IMX7_RESET_PCIE_CTRL_APPS_EN:
+		value = (assert) ? 0 : signal->bit;
+		break;
+	}
+
+	return regmap_update_bits(imx7src->regmap,
+				  signal->offset, signal->bit, value);
+}
+
+static int imx7_reset_assert(struct reset_controller_dev *rcdev,
+			     unsigned long id)
+{
+	return imx7_reset_set(rcdev, id, true);
+}
+
+static int imx7_reset_deassert(struct reset_controller_dev *rcdev,
+			       unsigned long id)
+{
+	return imx7_reset_set(rcdev, id, false);
+}
+
+static struct reset_control_ops imx7_reset_ops = {
+	.assert		= imx7_reset_assert,
+	.deassert	= imx7_reset_deassert,
+};
+
+static int imx7_reset_probe(struct device_d *dev)
+{
+	struct imx7_src *imx7src;
+
+	imx7src = xzalloc(sizeof(*imx7src));
+	imx7src->regmap = syscon_node_to_regmap(dev->device_node);
+	if (IS_ERR(imx7src->regmap)) {
+		dev_err(dev, "Unable to get imx7-src regmap");
+		return PTR_ERR(imx7src->regmap);
+	}
+
+	imx7src->rcdev.nr_resets = IMX7_RESET_NUM;
+	imx7src->rcdev.ops       = &imx7_reset_ops;
+	imx7src->rcdev.of_node   = dev->device_node;
+
+	return reset_controller_register(&imx7src->rcdev);
+}
+
+static const struct of_device_id imx7_reset_dt_ids[] = {
+	{ .compatible = "fsl,imx7d-src", },
+	{ /* sentinel */ },
+};
+
+static struct driver_d imx7_reset_driver = {
+	.name = "imx7d-src",
+	.probe = imx7_reset_probe,
+	.of_compatible = DRV_OF_COMPAT(imx7_reset_dt_ids),
+};
+device_platform_driver(imx7_reset_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

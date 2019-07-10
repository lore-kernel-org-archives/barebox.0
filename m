Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlIvz-0003hm-Ak
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 20:11:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlIvx-00064a-61
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 22:11:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlIvu-0001sn-J0
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 22:11:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jul 2019 22:11:09 +0200
Message-Id: <20190710201112.9086-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190710201112.9086-1-a.fatoum@pengutronix.de>
References: <20190710201112.9086-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/7] reset: add reset controller driver for STM32 RCC
To: barebox@lists.infradead.org

On the STM32MP, reset of the I2C, SPI and USB IPs occurs over the RCC.
This driver adds support for the controller, so it may be reused by
other drivers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/reset/Kconfig       |   5 ++
 drivers/reset/Makefile      |   1 +
 drivers/reset/reset-stm32.c | 109 ++++++++++++++++++++++++++++++++++++
 3 files changed, 115 insertions(+)
 create mode 100644 drivers/reset/reset-stm32.c

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index caf1dc9acb44..048f2081f82a 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -21,4 +21,9 @@ config RESET_IMX7
 	help
 	  This enables the reset controller driver for i.MX7 SoCs.
 
+config RESET_STM32
+	bool "STM32 Reset Driver"
+	help
+	  This enables the reset controller driver for STM32MP and STM32 MCUs.
+
 endif
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 0b55caa20445..8460c4b154f5 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_RESET_CONTROLLER) += core.o
 obj-$(CONFIG_ARCH_SOCFPGA) += reset-socfpga.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
+obj-$(CONFIG_RESET_STM32) += reset-stm32.o
diff --git a/drivers/reset/reset-stm32.c b/drivers/reset/reset-stm32.c
new file mode 100644
index 000000000000..ff66fe310e1a
--- /dev/null
+++ b/drivers/reset/reset-stm32.c
@@ -0,0 +1,109 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2017, STMicroelectronics - All Rights Reserved
+ * Copyright (C) 2019, Ahmad Fatoum, Pengutronix
+ * Author(s): Patrice Chotard, <patrice.chotard@st.com> for STMicroelectronics.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <linux/err.h>
+#include <linux/reset-controller.h>
+#include <asm/io.h>
+
+#define RCC_CL 0x4
+
+struct stm32_reset {
+	void __iomem *base;
+	struct reset_controller_dev rcdev;
+	void (*reset)(void __iomem *reg, unsigned offset, bool assert);
+};
+
+static struct stm32_reset *to_stm32_reset(struct reset_controller_dev *rcdev)
+{
+	return container_of(rcdev, struct stm32_reset, rcdev);
+}
+
+static void stm32mp_reset(void __iomem *reg, unsigned offset, bool assert)
+{
+	if (assert)
+		offset += RCC_CL;
+
+	writel(BIT(offset), reg);
+}
+
+static void stm32mcu_reset(void __iomem *reg, unsigned offset, bool assert)
+{
+	if (assert)
+		setbits_le32(reg, BIT(offset));
+	else
+		clrbits_le32(reg, BIT(offset));
+}
+
+static void stm32_reset(struct stm32_reset *priv, unsigned long id, bool assert)
+{
+	int bank = (id / BITS_PER_LONG) * 4;
+	int offset = id % BITS_PER_LONG;
+
+	priv->reset(priv->base + bank, offset, assert);
+}
+
+static int stm32_reset_assert(struct reset_controller_dev *rcdev,
+			      unsigned long id)
+{
+	stm32_reset(to_stm32_reset(rcdev), id, true);
+	return 0;
+}
+
+static int stm32_reset_deassert(struct reset_controller_dev *rcdev,
+				unsigned long id)
+{
+	stm32_reset(to_stm32_reset(rcdev), id, false);
+	return 0;
+}
+
+static const struct reset_control_ops stm32_reset_ops = {
+	.assert		= stm32_reset_assert,
+	.deassert	= stm32_reset_deassert,
+};
+
+static int stm32_reset_probe(struct device_d *dev)
+{
+	struct stm32_reset *priv;
+	struct resource *iores;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+	ret = dev_get_drvdata(dev, (const void **)&priv->reset);
+	if (ret)
+		return ret;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	priv->base = IOMEM(iores->start);
+	priv->rcdev.nr_resets = (iores->end - iores->start) * BITS_PER_BYTE;
+	priv->rcdev.ops = &stm32_reset_ops;
+	priv->rcdev.of_node = dev->device_node;
+
+	return reset_controller_register(&priv->rcdev);
+}
+
+static const struct of_device_id stm32_rcc_reset_dt_ids[] = {
+	{ .compatible = "st,stm32mp1-rcc", .data = stm32mp_reset },
+	{ .compatible = "st,stm32-rcc", .data = stm32mcu_reset },
+	{ /* sentinel */ },
+};
+
+static struct driver_d stm32_rcc_reset_driver = {
+	.name = "stm32_rcc_reset",
+	.probe = stm32_reset_probe,
+	.of_compatible = DRV_OF_COMPAT(stm32_rcc_reset_dt_ids),
+};
+
+static int stm32_rcc_reset_init(void)
+{
+	return platform_driver_register(&stm32_rcc_reset_driver);
+}
+postcore_initcall(stm32_rcc_reset_init);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

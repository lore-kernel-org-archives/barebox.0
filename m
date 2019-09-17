Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8MF-0007uH-D0
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 07:57:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iA8ME-0002gN-0F
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 09:57:06 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iA8MD-0006eZ-OO
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 09:57:05 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 17 Sep 2019 09:57:01 +0200
Message-Id: <20190917075702.25104-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] gpio: add driver for MPC8xxx ip core
To: Barebox List <barebox@lists.infradead.org>

Import GPIO-driver for MPC512x/8349/8572/8610/QorIQ and compatible from Linux
v5.2.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/gpio/Kconfig        |   8 +++
 drivers/gpio/Makefile       |   1 +
 drivers/gpio/gpio-mpc8xxx.c | 122 ++++++++++++++++++++++++++++++++++++
 3 files changed, 131 insertions(+)
 create mode 100644 drivers/gpio/gpio-mpc8xxx.c

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 7a1503198b49..0f924d135f0e 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -67,6 +67,14 @@ config GPIO_MALTA_FPGA_I2C
 	  additional drivers must be enabled in order to use the
 	  functionality of the device.
 
+config GPIO_MPC8XXX
+	bool "MPC512x/MPC8xxx/QorIQ GPIO support"
+	depends on ARCH_LAYERSCAPE
+	select GPIO_GENERIC
+	help
+	  Say Y here if you're going to use hardware that connects to the
+	  MPC512x/831x/834x/837x/8572/8610/QorIQ GPIOs.
+
 config GPIO_OMAP
 	def_bool ARCH_OMAP
 
diff --git a/drivers/gpio/Makefile b/drivers/gpio/Makefile
index 990df01788bc..bc5c500e4d27 100644
--- a/drivers/gpio/Makefile
+++ b/drivers/gpio/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_GPIO_LIBFTDI1)	+= gpio-libftdi1.o
 obj-$(CONFIG_GPIO_MXS)		+= gpio-mxs.o
 obj-$(CONFIG_GPIO_JZ4740)	+= gpio-jz4740.o
 obj-$(CONFIG_GPIO_MALTA_FPGA_I2C) += gpio-malta-fpga-i2c.o
+obj-$(CONFIG_GPIO_MPC8XXX)	+= gpio-mpc8xxx.o
 obj-$(CONFIG_GPIO_ORION)	+= gpio-orion.o
 obj-$(CONFIG_GPIO_OMAP)		+= gpio-omap.o
 obj-$(CONFIG_GPIO_PCA953X)	+= gpio-pca953x.o
diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
new file mode 100644
index 000000000000..979f92ad3023
--- /dev/null
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -0,0 +1,122 @@
+/*
+ * GPIOs on MPC512x/8349/8572/8610/QorIQ and compatible
+ *
+ * Copyright (C) 2008 Peter Korsgaard <jacmet@sunsite.dk>
+ * Copyright (C) 2016 Freescale Semiconductor Inc.
+ *
+ * This file is licensed under the terms of the GNU General Public License
+ * version 2.  This program is licensed "as is" without any warranty of any
+ * kind, whether express or implied.
+ */
+
+#include <common.h>
+#include <init.h>
+#include <gpio.h>
+#include <linux/basic_mmio_gpio.h>
+#include <linux/clk.h>
+#include <malloc.h>
+#include <of.h>
+#include <of_address.h>
+#include <of_device.h>
+
+#define MPC8XXX_GPIO_PINS	32
+
+#define GPIO_DIR		0x00
+#define GPIO_ODR		0x04
+#define GPIO_DAT		0x08
+#define GPIO_IER		0x0c
+#define GPIO_IMR		0x10
+
+struct mpc8xxx_gpio_chip {
+	struct bgpio_chip	bgc;
+	void __iomem		*regs;
+};
+
+struct mpc8xxx_gpio_devtype {
+	int (*gpio_dir_out)(struct bgpio_chip *, unsigned int, int);
+	int (*gpio_get)(struct bgpio_chip *, unsigned int);
+};
+
+static int mpc8xxx_probe(struct device_d *dev)
+{
+	struct device_node *np;
+	struct resource *iores;
+	struct mpc8xxx_gpio_chip *mpc8xxx_gc;
+	struct bgpio_chip *bgc;
+	int ret;
+
+	mpc8xxx_gc = xzalloc(sizeof(*mpc8xxx_gc));
+
+	if (dev->device_node) {
+		np = dev->device_node;
+	} else {
+		dev_err(dev, "no device_node\n");
+		return -ENODEV;
+        }
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+
+	mpc8xxx_gc->regs = IOMEM(iores->start);
+	if (!mpc8xxx_gc->regs)
+		return -ENOMEM;
+
+        bgc = &mpc8xxx_gc->bgc;
+
+	if (of_property_read_bool(np, "little-endian")) {
+		ret = bgpio_init(bgc, dev, 4,
+				 mpc8xxx_gc->regs + GPIO_DAT,
+				 NULL, NULL,
+				 mpc8xxx_gc->regs + GPIO_DIR, NULL, 0);
+		if (ret)
+			goto err;
+		dev_dbg(dev, "GPIO registers are LITTLE endian\n");
+	} else {
+		ret = bgpio_init(bgc, dev, 4,
+				 mpc8xxx_gc->regs + GPIO_DAT,
+				 NULL, NULL,
+				 mpc8xxx_gc->regs + GPIO_DIR, NULL,
+				 BGPIOF_BIG_ENDIAN);
+		if (ret)
+			goto err;
+		dev_dbg(dev, "GPIO registers are BIG endian\n");
+	}
+
+	ret = gpiochip_add(&mpc8xxx_gc->bgc.gc);
+	if (ret) {
+		pr_err("%pOF: GPIO chip registration failed with status %d\n",
+		       np, ret);
+		goto err;
+	}
+
+	/* ack and mask all irqs */
+	bgc->write_reg(mpc8xxx_gc->regs + GPIO_IER, 0xffffffff);
+	bgc->write_reg(mpc8xxx_gc->regs + GPIO_IMR, 0);
+
+	return 0;
+
+err:
+	return ret;
+}
+
+static __maybe_unused struct of_device_id mpc8xxx_gpio_ids[] = {
+	{
+		.compatible = "fsl,qoriq-gpio",
+	},
+	{
+		/* sentinel */
+	},
+};
+
+static struct driver_d mpc8xxx_driver = {
+	.name		= "mpc8xxx-gpio",
+	.probe		= mpc8xxx_probe,
+	.of_compatible  = DRV_OF_COMPAT(mpc8xxx_gpio_ids),
+};
+
+static int __init mpc8xxx_init(void)
+{
+	return platform_driver_register(&mpc8xxx_driver);
+}
+postcore_initcall(mpc8xxx_init);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

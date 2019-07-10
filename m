Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlIvz-0003hp-Ao
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 20:11:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlIvx-00064c-61
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 22:11:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlIvu-0001st-KL
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 22:11:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jul 2019 22:11:11 +0200
Message-Id: <20190710201112.9086-6-a.fatoum@pengutronix.de>
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
Subject: [PATCH 6/7] mfd: add support for STPMIC1
To: barebox@lists.infradead.org

The PMIC is addressable over I2C and, besides power management,
integrates a watchdog, a user power on key handling and 64 bit of
non-volatile memory.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/Kconfig   |  6 +++
 drivers/mfd/Makefile  |  1 +
 drivers/mfd/stpmic1.c | 99 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 106 insertions(+)
 create mode 100644 drivers/mfd/stpmic1.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index d04431fbc86d..7d924cfca1eb 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -61,4 +61,10 @@ config RAVE_SP_CORE
 	  Select this to get support for the Supervisory Processor
 	  device found on several devices in RAVE line of hardware.
 
+config MFD_STPMIC1
+	depends on I2C
+	bool "STPMIC1 MFD driver"
+	help
+	  Select this to support communication with the STPMIC1.
+
 endmenu
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 8b23a1023eb3..16a74abd77f3 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -11,3 +11,4 @@ obj-$(CONFIG_MFD_TWLCORE)	+= twl-core.o
 obj-$(CONFIG_MFD_TWL4030)	+= twl4030.o
 obj-$(CONFIG_MFD_TWL6030)	+= twl6030.o
 obj-$(CONFIG_RAVE_SP_CORE)	+= rave-sp.o
+obj-$(CONFIG_MFD_STPMIC1)	+= stpmic1.o
diff --git a/drivers/mfd/stpmic1.c b/drivers/mfd/stpmic1.c
new file mode 100644
index 000000000000..88c7921990fc
--- /dev/null
+++ b/drivers/mfd/stpmic1.c
@@ -0,0 +1,99 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Ahmad Fatoum, Pengutronix
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <i2c/i2c.h>
+#include <init.h>
+#include <malloc.h>
+#include <of.h>
+#include <regmap.h>
+#include <xfuncs.h>
+
+#define VERSION_SR		0x6
+
+struct stpmic1 {
+	struct device_d		*dev;
+	struct i2c_client	*client;
+};
+
+static int stpmic1_i2c_reg_read(void *ctx, unsigned int reg, unsigned int *val)
+{
+	struct stpmic1 *stpmic1 = ctx;
+	u8 buf[1];
+	int ret;
+
+	ret = i2c_read_reg(stpmic1->client, reg, buf, 1);
+	*val = buf[0];
+
+	return ret == 1 ? 0 : ret;
+}
+
+static int stpmic1_i2c_reg_write(void *ctx, unsigned int reg, unsigned int val)
+{
+	struct stpmic1 *stpmic1 = ctx;
+	u8 buf[] = {
+		val & 0xff,
+	};
+	int ret;
+
+	ret = i2c_write_reg(stpmic1->client, reg, buf, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+
+static struct regmap_bus regmap_stpmic1_i2c_bus = {
+	.reg_write = stpmic1_i2c_reg_write,
+	.reg_read = stpmic1_i2c_reg_read,
+};
+
+static const struct regmap_config stpmic1_regmap_i2c_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = 0xB3,
+};
+
+static int __init stpmic1_probe(struct device_d *dev)
+{
+	struct stpmic1 *stpmic1;
+	struct regmap *regmap;
+	u32 reg;
+	int ret;
+
+	stpmic1 = xzalloc(sizeof(*stpmic1));
+	stpmic1->dev = dev;
+
+	stpmic1->client = to_i2c_client(dev);
+	regmap = regmap_init(dev, &regmap_stpmic1_i2c_bus,
+			     stpmic1, &stpmic1_regmap_i2c_config);
+	dev->priv = regmap;
+
+	ret = regmap_register_cdev(regmap, NULL);
+	if (ret)
+		return ret;
+
+	ret = regmap_read(regmap, VERSION_SR, &reg);
+	if (ret) {
+		dev_err(dev, "Unable to read PMIC version\n");
+		return ret;
+	}
+	dev_info(dev, "PMIC Chip Version: 0x%x\n", reg);
+
+	return of_platform_populate(dev->device_node, NULL, dev);
+}
+
+static __maybe_unused struct of_device_id stpmic1_dt_ids[] = {
+	{ .compatible = "st,stpmic1" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d stpmic1_i2c_driver = {
+	.name		= "stpmic1-i2c",
+	.probe		= stpmic1_probe,
+	.of_compatible	= DRV_OF_COMPAT(stpmic1_dt_ids),
+};
+
+device_i2c_driver(stpmic1_i2c_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

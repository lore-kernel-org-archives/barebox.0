Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4pTt-0003AQ-1v
 for barebox@lists.infradead.org; Tue, 16 Jun 2015 11:56:42 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 16 Jun 2015 13:56:09 +0200
Message-Id: <1434455769-17216-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1434455769-17216-1-git-send-email-jbe@pengutronix.de>
References: <1434455769-17216-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 6/6] mfd: da9063: add da9063 watchdog and system restart driver
To: barebox@lists.infradead.org

From: Philipp Zabel <p.zabel@pengutronix.de>

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/mfd/Kconfig  |   4 ++
 drivers/mfd/Makefile |   1 +
 drivers/mfd/da9063.c | 160 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 165 insertions(+)
 create mode 100644 drivers/mfd/da9063.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index bf012bf..1be9f61 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -20,6 +20,10 @@ config MFD_DA9053_RESET_FEATURE
 	help
 	  This PMIC unit can be used to reset/restart the system.
 
+config MFD_DA9063
+	depends on I2C
+	bool "DA9063 PMIC driver"
+
 config MFD_LP3972
 	depends on I2C
 	bool "LP3972 driver"
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 2899dde..041915a 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_MFD_ACT8846)	+= act8846.o
 obj-$(CONFIG_MFD_DA9053)	+= da9053.o
+obj-$(CONFIG_MFD_DA9063)	+= da9063.o
 obj-$(CONFIG_MFD_LP3972)	+= lp3972.o
 obj-$(CONFIG_MFD_MC13XXX)	+= mc13xxx.o
 obj-$(CONFIG_MFD_MC34704)	+= mc34704.o
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
new file mode 100644
index 0000000..65b1fad
--- /dev/null
+++ b/drivers/mfd/da9063.c
@@ -0,0 +1,160 @@
+/*
+ * Copyright (C) 2015 Pengutronix, Philipp Zabel <p.zabel@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <i2c/i2c.h>
+#include <malloc.h>
+#include <notifier.h>
+#include <reset_source.h>
+#include <watchdog.h>
+
+struct da9063 {
+	struct watchdog		wd;
+	struct i2c_client	*client;
+	struct notifier_block	notify;
+};
+
+/* System Control and Event Registers */
+#define DA9063_REG_FAULT_LOG	0x05
+#define DA9063_REG_CONTROL_D	0x11
+#define DA9063_REG_CONTROL_F	0x13
+
+/* DA9063_REG_FAULT_LOG (addr=0x05) */
+#define DA9063_TWD_ERROR	0x01
+#define DA9063_POR		0x02
+#define DA9063_NSHUTDOWN	0x40
+
+/* DA9063_REG_CONTROL_D (addr=0x11) */
+#define DA9063_TWDSCALE_MASK	0x07
+
+/* DA9063_REG_CONTROL_F (addr=0x13) */
+#define DA9063_SHUTDOWN		0x02
+
+static int da9063_watchdog_set_timeout(struct watchdog *wd, unsigned timeout)
+{
+	struct da9063 *priv = container_of(wd, struct da9063, wd);
+	struct device_d *dev = &priv->client->dev;
+	unsigned int scale = 0;
+	int ret;
+	u8 val;
+
+	if (timeout > 131)
+		return -EINVAL;
+
+	if (timeout) {
+		timeout *= 1000; /* convert to ms */
+		scale = 0;
+		while (timeout > (2048 << scale) && scale <= 6)
+			scale++;
+		dev_dbg(dev, "calculated TWDSCALE=%u (req=%ims calc=%ims)\n",
+				scale, timeout, 2048 << scale);
+		scale++; /* scale 0 disables the WD */
+	}
+
+	ret = i2c_read_reg(priv->client, DA9063_REG_CONTROL_D, &val, 1);
+	if (ret < 0)
+		return ret;
+
+	val &= ~DA9063_TWDSCALE_MASK;
+	val |= scale;
+
+	return i2c_write_reg(priv->client, DA9063_REG_CONTROL_D, &val, 1);
+}
+
+static void da9063_detect_reset_source(struct da9063 *priv)
+{
+	int ret;
+	u8 val;
+
+	ret = i2c_read_reg(priv->client, DA9063_REG_FAULT_LOG, &val, 1);
+	if (ret < 0)
+		return;
+
+	/* Write one to clear */
+	i2c_write_reg(priv->client, DA9063_REG_FAULT_LOG, &val, 1);
+
+	if (val & DA9063_TWD_ERROR) {
+		reset_source_set(RESET_WDG);
+		return;
+	}
+
+	if (val & DA9063_POR) {
+		reset_source_set(RESET_POR);
+		return;
+	}
+
+	if (val & DA9063_NSHUTDOWN) {
+		reset_source_set(RESET_RST);
+		return;
+	}
+
+	/* else keep the default 'unknown' state */
+}
+
+static int da9063_restart(struct notifier_block *nb, unsigned long event, void *data)
+{
+	struct da9063 *priv = container_of(nb, struct da9063, notify);
+	u8 val = DA9063_SHUTDOWN;
+
+	return i2c_write_reg(priv->client, DA9063_REG_CONTROL_F, &val, 1);
+}
+
+static int da9063_probe(struct device_d *dev)
+{
+	struct da9063 *priv = NULL;
+	int ret;
+
+	priv = xzalloc(sizeof(struct da9063));
+	priv->wd.set_timeout = da9063_watchdog_set_timeout;
+	priv->client = to_i2c_client(dev);
+	priv->notify.notifier_call = da9063_restart;
+
+	ret = watchdog_register(&priv->wd);
+	if (ret)
+		goto on_error;
+
+	da9063_detect_reset_source(priv);
+
+	register_restart_handler(&priv->notify);
+
+	dev->priv = priv;
+
+	return 0;
+
+on_error:
+	if (priv)
+		free(priv);
+	return ret;
+}
+
+static struct platform_device_id da9063_id[] = {
+        { "da9063", },
+	{ }
+};
+
+static struct driver_d da9063_driver = {
+	.name = "da9063",
+	.probe = da9063_probe,
+	.id_table = da9063_id,
+};
+
+static int da9063_init(void)
+{
+	return i2c_driver_register(&da9063_driver);
+}
+
+device_initcall(da9063_init);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

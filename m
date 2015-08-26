Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUYi4-0004d9-ID
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 11:17:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 13:17:15 +0200
Message-Id: <1440587836-22105-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1440587836-22105-1-git-send-email-s.hauer@pengutronix.de>
References: <1440587836-22105-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] mfd: da9063: add da9063 watchdog and system restart driver
To: Barebox List <barebox@lists.infradead.org>

From: Philipp Zabel <p.zabel@pengutronix.de>

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/mfd/Kconfig  |   4 ++
 drivers/mfd/Makefile |   1 +
 drivers/mfd/da9063.c | 165 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 170 insertions(+)
 create mode 100644 drivers/mfd/da9063.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 3af904d..3eb26b5 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -4,6 +4,10 @@ config MFD_ACT8846
 	depends on I2C
 	bool "ACT8846 driver"
 
+config MFD_DA9063
+	depends on I2C
+	bool "DA9063 PMIC driver"
+
 config MFD_LP3972
 	depends on I2C
 	bool "LP3972 driver"
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 49b9e35..4eed247 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_MFD_ACT8846)	+= act8846.o
+obj-$(CONFIG_MFD_DA9063)	+= da9063.o
 obj-$(CONFIG_MFD_LP3972)	+= lp3972.o
 obj-$(CONFIG_MFD_MC13XXX)	+= mc13xxx.o
 obj-$(CONFIG_MFD_MC34704)	+= mc34704.o
diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
new file mode 100644
index 0000000..b852b5d
--- /dev/null
+++ b/drivers/mfd/da9063.c
@@ -0,0 +1,165 @@
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
+#include <restart.h>
+#include <init.h>
+#include <i2c/i2c.h>
+#include <malloc.h>
+#include <notifier.h>
+#include <reset_source.h>
+#include <watchdog.h>
+
+struct da9063 {
+	struct restart_handler	restart;
+	struct watchdog		wd;
+	struct i2c_client	*client;
+	struct device_d		*dev;
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
+	struct device_d *dev = priv->dev;
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
+	unsigned int priority;
+	enum reset_src_type type;
+
+	ret = i2c_read_reg(priv->client, DA9063_REG_FAULT_LOG, &val, 1);
+	if (ret < 0)
+		return;
+
+	/* Write one to clear */
+	i2c_write_reg(priv->client, DA9063_REG_FAULT_LOG, &val, 1);
+
+	if (val & DA9063_TWD_ERROR)
+		type = RESET_WDG;
+	else if (val & DA9063_POR)
+		type = RESET_POR;
+	else if (val & DA9063_NSHUTDOWN)
+		type = RESET_RST;
+	else
+		return;
+
+	priority = of_get_reset_source_priority(priv->dev->device_node);
+
+	reset_source_set_priority(type, priority);
+}
+
+static void da9063_restart(struct restart_handler *rst)
+{
+	struct da9063 *priv = container_of(rst, struct da9063, restart);
+
+	u8 val = DA9063_SHUTDOWN;
+
+	i2c_write_reg(priv->client, DA9063_REG_CONTROL_F, &val, 1);
+}
+
+static int da9063_probe(struct device_d *dev)
+{
+	struct da9063 *priv = NULL;
+	int ret;
+
+	priv = xzalloc(sizeof(struct da9063));
+	priv->wd.priority = of_get_watchdog_priority(dev->device_node);
+	priv->wd.set_timeout = da9063_watchdog_set_timeout;
+	priv->wd.dev = dev;
+	priv->client = to_i2c_client(dev);
+	priv->dev = dev;
+
+	ret = watchdog_register(&priv->wd);
+	if (ret)
+		goto on_error;
+
+	da9063_detect_reset_source(priv);
+
+	priv->restart.priority = of_get_restart_priority(dev->device_node);
+	priv->restart.name = "da9063";
+	priv->restart.restart = &da9063_restart;
+
+	restart_handler_register(&priv->restart);
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
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

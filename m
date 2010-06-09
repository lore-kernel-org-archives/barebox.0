Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OMFLu-0001jt-4R
	for barebox@lists.infradead.org; Wed, 09 Jun 2010 07:05:31 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed,  9 Jun 2010 10:05:04 +0300
Message-Id: <b981284781213701d06a225d0ebbf11a29028330.1276065824.git.baruch@tkos.co.il>
In-Reply-To: <cover.1276065824.git.baruch@tkos.co.il>
References: <cover.1276065824.git.baruch@tkos.co.il>
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
Subject: [PATCH 5/8] i2c: add driver for the MC34704 PMIC
To: barebox@lists.infradead.org
Cc: Baruch Siach <baruch@tkos.co.il>

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 drivers/i2c/Kconfig   |    3 +
 drivers/i2c/Makefile  |    1 +
 drivers/i2c/mc34704.c |  140 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/i2c/mc34704.h |   26 +++++++++
 4 files changed, 170 insertions(+), 0 deletions(-)
 create mode 100644 drivers/i2c/mc34704.c
 create mode 100644 include/i2c/mc34704.h

diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
index f1b2949..a9ee411 100644
--- a/drivers/i2c/Kconfig
+++ b/drivers/i2c/Kconfig
@@ -10,6 +10,9 @@ config DRIVER_I2C_IMX
 config DRIVER_I2C_MC13892
 	bool "MC13892 a.k.a. PMIC driver"
 
+config DRIVER_I2C_MC34704
+	bool "MC34704 PMIC driver"
+
 config DRIVER_I2C_MC9SDZ60
 	bool "MC9SDZ60 driver"
 
diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index 62d030b..13e5804 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -3,5 +3,6 @@ obj-$(CONFIG_I2C) += i2c.o
 obj-$(CONFIG_DRIVER_I2C_IMX) += i2c-imx.o
 
 obj-$(CONFIG_DRIVER_I2C_MC13892) += mc13892.o
+obj-$(CONFIG_DRIVER_I2C_MC34704) += mc34704.o
 obj-$(CONFIG_DRIVER_I2C_MC9SDZ60) += mc9sdz60.o
 obj-$(CONFIG_DRIVER_I2C_LP3972) += lp3972.o
diff --git a/drivers/i2c/mc34704.c b/drivers/i2c/mc34704.c
new file mode 100644
index 0000000..51a8737
--- /dev/null
+++ b/drivers/i2c/mc34704.c
@@ -0,0 +1,140 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ *               2009 Marc Kleine-Budde <mkl@pengutronix.de>
+ * Copyright (C) 2010 Baruch Siach <baruch@tkos.co.il>
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
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <errno.h>
+
+#include <i2c/i2c.h>
+#include <i2c/mc34704.h>
+
+#define DRIVERNAME		"mc34704"
+
+#define to_mc34704(a)		container_of(a, struct mc34704, cdev)
+
+static struct mc34704 *mc34704_dev;
+
+struct mc34704 *mc34704_get(void)
+{
+	if (!mc34704_dev)
+		return NULL;
+
+	return mc34704_dev;
+}
+EXPORT_SYMBOL(mc34704_get);
+
+int mc34704_reg_read(struct mc34704 *mc34704, u8 reg, u8 *val)
+{
+	int ret;
+
+	ret = i2c_read_reg(mc34704->client, reg, val, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+EXPORT_SYMBOL(mc34704_reg_read)
+
+int mc34704_reg_write(struct mc34704 *mc34704, u8 reg, u8 val)
+{
+	int ret;
+
+	ret = i2c_write_reg(mc34704->client, reg, &val, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+EXPORT_SYMBOL(mc34704_reg_write)
+
+static ssize_t mc34704_read(struct cdev *cdev, void *_buf, size_t count,
+		ulong offset, ulong flags)
+{
+	struct mc34704 *priv = to_mc34704(cdev);
+	u8 *buf = _buf;
+	size_t i = count;
+	int err;
+
+	while (i) {
+		err = mc34704_reg_read(priv, offset, buf);
+		if (err)
+			return (ssize_t)err;
+		buf++;
+		i--;
+		offset++;
+	}
+
+	return count;
+}
+
+static ssize_t mc34704_write(struct cdev *cdev, const void *_buf, size_t count,
+		ulong offset, ulong flags)
+{
+	struct mc34704 *mc34704 = to_mc34704(cdev);
+	const u8 *buf = _buf;
+	size_t i = count;
+	int err;
+
+	while (i) {
+		err = mc34704_reg_write(mc34704, offset, *buf);
+		if (err)
+			return (ssize_t)err;
+		buf++;
+		i--;
+		offset++;
+	}
+
+	return count;
+}
+
+static struct file_operations mc34704_fops = {
+	.lseek	= dev_lseek_default,
+	.read	= mc34704_read,
+	.write	= mc34704_write,
+};
+
+static int mc34704_probe(struct device_d *dev)
+{
+	if (mc34704_dev)
+		return -EBUSY;
+
+	mc34704_dev = xzalloc(sizeof(struct mc34704));
+	mc34704_dev->cdev.name = DRIVERNAME;
+	mc34704_dev->client = to_i2c_client(dev);
+	mc34704_dev->cdev.size = 256;
+	mc34704_dev->cdev.dev = dev;
+	mc34704_dev->cdev.ops = &mc34704_fops;
+
+	devfs_create(&mc34704_dev->cdev);
+
+	return 0;
+}
+
+static struct driver_d mc34704_driver = {
+	.name  = DRIVERNAME,
+	.probe = mc34704_probe,
+};
+
+static int mc34704_init(void)
+{
+	register_driver(&mc34704_driver);
+        return 0;
+}
+device_initcall(mc34704_init);
diff --git a/include/i2c/mc34704.h b/include/i2c/mc34704.h
new file mode 100644
index 0000000..a3723d7
--- /dev/null
+++ b/include/i2c/mc34704.h
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2009 Marc Kleine-Budde <mkl@pengutronix.de>
+ * Copyright (C) 2010 Baruch Siach <baruch@tkos.co.il>
+ *
+ * This file is released under the GPLv2
+ *
+ * Derived from:
+ * - arch-mxc/pmic_external.h --  contains interface of the PMIC protocol driver
+ *   Copyright 2008-2009 Freescale Semiconductor, Inc. All Rights Reserved.
+ *
+ */
+
+#ifndef __I2C_MC34704_H
+#define __I2C_MC34704_H
+
+struct mc34704 {
+	struct cdev		cdev;
+	struct i2c_client	*client;
+};
+
+extern struct mc34704 *mc34704_get(void);
+
+extern int mc34704_reg_read(struct mc34704 *mc34704, u8 reg, u8 *val);
+extern int mc34704_reg_write(struct mc34704 *mc34704, u8 reg, u8 val);
+
+#endif /* __I2C_MC34704_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

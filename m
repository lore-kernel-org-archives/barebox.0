Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x232.google.com ([2a00:1450:4013:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeLQt-0007sD-4v
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 09:31:36 +0000
Received: by mail-ee0-f50.google.com with SMTP id c13so3964016eek.9
 for <barebox@lists.infradead.org>; Sun, 27 Apr 2014 02:31:10 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Sun, 27 Apr 2014 11:30:35 +0200
Message-Id: <1398591044-3616-3-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
References: <1398591044-3616-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 02/11] mfd: add act8846 driver
To: barebox@lists.infradead.org


Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 drivers/mfd/Kconfig   |    4 ++
 drivers/mfd/Makefile  |    1 +
 drivers/mfd/act8846.c |  154 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/mfd/act8846.h |   56 ++++++++++++++++++
 4 files changed, 215 insertions(+)
 create mode 100644 drivers/mfd/act8846.c
 create mode 100644 include/mfd/act8846.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 8873764..3af904d 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1,5 +1,9 @@
 menu MFD
 
+config MFD_ACT8846
+	depends on I2C
+	bool "ACT8846 driver"
+
 config MFD_LP3972
 	depends on I2C
 	bool "LP3972 driver"
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 2ad766d..49b9e35 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -1,3 +1,4 @@
+obj-$(CONFIG_MFD_ACT8846)	+= act8846.o
 obj-$(CONFIG_MFD_LP3972)	+= lp3972.o
 obj-$(CONFIG_MFD_MC13XXX)	+= mc13xxx.o
 obj-$(CONFIG_MFD_MC34704)	+= mc34704.o
diff --git a/drivers/mfd/act8846.c b/drivers/mfd/act8846.c
new file mode 100644
index 0000000..60029ac
--- /dev/null
+++ b/drivers/mfd/act8846.c
@@ -0,0 +1,154 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer, Pengutronix
+ *               2009 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * Copied from drivers/mfd/mc9sdz60.c
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
+#include <mfd/act8846.h>
+
+#define DRIVERNAME		"act8846"
+
+#define to_act8846(a)		container_of(a, struct act8846, cdev)
+
+static struct act8846 *act8846_dev;
+
+struct act8846 *act8846_get(void)
+{
+	if (!act8846_dev)
+		return NULL;
+
+	return act8846_dev;
+}
+EXPORT_SYMBOL(act8846_get);
+
+int act8846_reg_read(struct act8846 *act8846, enum act8846_reg reg, u8 *val)
+{
+	int ret;
+
+	ret = i2c_read_reg(act8846->client, reg, val, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+EXPORT_SYMBOL(act8846_reg_read);
+
+int act8846_reg_write(struct act8846 *act8846, enum act8846_reg reg, u8 val)
+{
+	int ret;
+
+	ret = i2c_write_reg(act8846->client, reg, &val, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+EXPORT_SYMBOL(act8846_reg_write);
+
+int act8846_set_bits(struct act8846 *act8846, enum act8846_reg reg,
+		     u8 mask, u8 val)
+{
+	u8 tmp;
+	int err;
+
+	err = act8846_reg_read(act8846, reg, &tmp);
+	tmp = (tmp & ~mask) | val;
+
+	if (!err)
+		err = act8846_reg_write(act8846, reg, tmp);
+
+	return err;
+}
+EXPORT_SYMBOL(act8846_set_bits);
+
+static ssize_t act8846_read(struct cdev *cdev, void *_buf, size_t count,
+			    loff_t offset, ulong flags)
+{
+	struct act8846 *act8846 = to_act8846(cdev);
+	u8 *buf = _buf;
+	size_t i = count;
+	int err;
+
+	while (i) {
+		err = act8846_reg_read(act8846, offset, buf);
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
+static ssize_t act8846_write(struct cdev *cdev, const void *_buf, size_t count,
+			     loff_t offset, ulong flags)
+{
+	struct act8846 *act8846 = to_act8846(cdev);
+	const u8 *buf = _buf;
+	size_t i = count;
+	int err;
+
+	while (i) {
+		err = act8846_reg_write(act8846, offset, *buf);
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
+static struct file_operations act8846_fops = {
+	.lseek	= dev_lseek_default,
+	.read	= act8846_read,
+	.write	= act8846_write,
+};
+
+static int act8846_probe(struct device_d *dev)
+{
+	if (act8846_dev)
+		return -EBUSY;
+
+	act8846_dev = xzalloc(sizeof(struct act8846));
+	act8846_dev->cdev.name = DRIVERNAME;
+	act8846_dev->client = to_i2c_client(dev);
+	act8846_dev->cdev.size = 64;
+	act8846_dev->cdev.dev = dev;
+	act8846_dev->cdev.ops = &act8846_fops;
+
+	devfs_create(&act8846_dev->cdev);
+
+	return 0;
+}
+
+static struct driver_d act8846_driver = {
+	.name  = DRIVERNAME,
+	.probe = act8846_probe,
+};
+
+static int act8846_init(void)
+{
+	i2c_driver_register(&act8846_driver);
+	return 0;
+}
+
+device_initcall(act8846_init);
diff --git a/include/mfd/act8846.h b/include/mfd/act8846.h
new file mode 100644
index 0000000..011fe20
--- /dev/null
+++ b/include/mfd/act8846.h
@@ -0,0 +1,56 @@
+/*
+ * Copyright (C) 2009 Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This file is released under the GPLv2
+ *
+ * Derived from mc9sdz60.h
+ */
+
+#ifndef _ACT8846_H
+#define _ACT8846_H
+
+enum act8846_reg {
+	ACT8846_SYS_MODE	= 0x00,
+	ACT8846_SYS_CTRL	= 0x01,
+	ACT8846_DCDC1_VSET1	= 0x10,
+	ACT8846_DCDC1_CTRL	= 0x12,
+	ACT8846_DCDC2_VSET1	= 0x20,
+	ACT8846_DCDC2_VSET2	= 0x21,
+	ACT8846_DCDC2_CTRL	= 0x22,
+	ACT8846_DCDC3_VSET1	= 0x30,
+	ACT8846_DCDC3_VSET2	= 0x31,
+	ACT8846_DCDC3_CTRL	= 0x32,
+	ACT8846_DCDC4_VSET1	= 0x40,
+	ACT8846_DCDC4_VSET2	= 0x41,
+	ACT8846_DCDC4_CTRL	= 0x42,
+	ACT8846_LDO5_VSET	= 0x50,
+	ACT8846_LDO5_CTRL	= 0x51,
+	ACT8846_LDO6_VSET	= 0x58,
+	ACT8846_LDO6_CTRL	= 0x59,
+	ACT8846_LDO7_VSET	= 0x60,
+	ACT8846_LDO7_CTRL	= 0x61,
+	ACT8846_LDO8_VSET	= 0x68,
+	ACT8846_LDO8_CTRL	= 0x69,
+	ACT8846_LDO9_VSET	= 0x70,
+	ACT8846_LDO9_CTRL	= 0x71,
+	ACT8846_LDO10_VSET	= 0x80,
+	ACT8846_LDO10_CTRL	= 0x81,
+	ACT8846_LDO11_VSET	= 0x90,
+	ACT8846_LDO11_CTRL	= 0x91,
+	ACT8846_LDO12_VSET	= 0xA0,
+	ACT8846_LDO12_CTRL	= 0xA1,
+};
+
+struct act8846 {
+	struct cdev		cdev;
+	struct i2c_client	*client;
+};
+
+struct act8846 *act8846_get(void);
+
+int act8846_reg_read(struct act8846 *priv, enum act8846_reg reg, u8 *val);
+int act8846_reg_write(struct act8846 *priv, enum act8846_reg reg, u8 val);
+int act8846_set_bits(struct act8846 *priv, enum act8846_reg reg,
+		     u8 mask, u8 val);
+
+#endif /* _ACT8846_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

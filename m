Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z7NmZ-0002P1-Du
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 12:58:37 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 23 Jun 2015 14:58:04 +0200
Message-Id: <1435064284-8015-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1435064284-8015-1-git-send-email-jbe@pengutronix.de>
References: <1435064284-8015-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 5/5] MFD/DA9053: da9053: add basic da9053 driver
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/mfd/Kconfig  |   8 ++
 drivers/mfd/Makefile |   1 +
 drivers/mfd/da9053.c | 337 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 346 insertions(+)
 create mode 100644 drivers/mfd/da9053.c

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 3af904d..6ec66ac 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -4,6 +4,14 @@ config MFD_ACT8846
 	depends on I2C
 	bool "ACT8846 driver"
 
+config MFD_DA9053
+	depends on I2C
+	bool "DA9053 PMIC driver"
+	help
+	  This power management controller provides configureable power supplies,
+	  a machine restart feature and a watchdog which are effective machine
+	  wide.
+
 config MFD_LP3972
 	depends on I2C
 	bool "LP3972 driver"
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index 49b9e35..2899dde 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_MFD_ACT8846)	+= act8846.o
+obj-$(CONFIG_MFD_DA9053)	+= da9053.o
 obj-$(CONFIG_MFD_LP3972)	+= lp3972.o
 obj-$(CONFIG_MFD_MC13XXX)	+= mc13xxx.o
 obj-$(CONFIG_MFD_MC34704)	+= mc34704.o
diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
new file mode 100644
index 0000000..6e86195
--- /dev/null
+++ b/drivers/mfd/da9053.c
@@ -0,0 +1,337 @@
+/*
+ * Copyright (C) 2013 Jan Luebbe <jlu@pengutronix.de>
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
+#include <watchdog.h>
+
+#include <i2c/i2c.h>
+#include <restart.h>
+#include <restart.h>
+
+#define DRIVERNAME		"da9053"
+
+/* STATUS REGISTERS */
+#define DA9053_STATUS_A_REG		1
+#define DA9053_STATUS_B_REG		2
+#define DA9053_STATUS_C_REG		3
+#define DA9053_STATUS_D_REG		4
+
+/* PARK REGISTER */
+#define DA9053_PARK_REGISTER		DA9053_STATUS_D_REG
+
+/* EVENT REGISTERS */
+#define DA9053_EVENT_A_REG		5
+#define DA9053_EVENT_B_REG		6
+#define DA9053_EVENT_C_REG		7
+#define DA9053_EVENT_D_REG		8
+#define DA9053_FAULTLOG_REG		9
+
+/* IRQ REGISTERS */
+#define DA9053_IRQ_MASK_A_REG		10
+#define DA9053_IRQ_MASK_B_REG		11
+#define DA9053_IRQ_MASK_C_REG		12
+#define DA9053_IRQ_MASK_D_REG		13
+
+/* CONTROL REGISTERS */
+#define DA9053_CONTROL_A_REG		14
+#define DA9053_CONTROL_B_REG		15
+#define DA9053_CONTROL_C_REG		16
+#define DA9053_CONTROL_D_REG		17
+
+#define DA9053_PDDIS_REG		18
+#define DA9053_INTERFACE_REG		19
+#define DA9053_RESET_REG		20
+
+/* FAULT LOG REGISTER BITS */
+#define DA9053_FAULTLOG_WAITSET		0X80
+#define DA9053_FAULTLOG_NSDSET		0X40
+#define DA9053_FAULTLOG_KEYSHUT		0X20
+#define DA9053_FAULTLOG_TEMPOVER	0X08
+#define DA9053_FAULTLOG_VDDSTART	0X04
+#define DA9053_FAULTLOG_VDDFAULT	0X02
+#define DA9053_FAULTLOG_TWDERROR	0X01
+
+/* CONTROL REGISTER B BITS */
+#define DA9053_CONTROLB_SHUTDOWN	0X80
+#define DA9053_CONTROLB_DEEPSLEEP	0X40
+#define DA9053_CONTROLB_WRITEMODE	0X20
+#define DA9053_CONTROLB_BBATEN		0X10
+#define DA9053_CONTROLB_OTPREADEN	0X08
+#define DA9053_CONTROLB_AUTOBOOT	0X04
+#define DA9053_CONTROLB_ACTDIODE	0X02
+#define DA9053_CONTROLB_BUCKMERGE	0X01
+
+/* CONTROL REGISTER D BITS */
+#define DA9053_CONTROLD_WATCHDOG	0X80
+#define DA9053_CONTROLD_ACCDETEN	0X40
+#define DA9053_CONTROLD_GPI1415SD	0X20
+#define DA9053_CONTROLD_NONKEYSD	0X10
+#define DA9053_CONTROLD_KEEPACTEN	0X08
+#define DA9053_CONTROLD_TWDSCALE	0X07
+
+struct da9053_priv {
+	struct cdev		cdev;
+	struct watchdog		wd;
+	struct i2c_client	*client;
+};
+
+#define cdev_to_da9053_priv(x)	container_of(x, struct da9053_priv, cdev)
+#define wd_to_da9053_priv(x)	container_of(x, struct da9053_priv, wd)
+
+static int da9053_reg_read(struct da9053_priv *da9053, u32 reg, u8 *val)
+{
+	int ret;
+
+	ret = i2c_read_reg(da9053->client, reg, val, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+
+static int da9053_reg_write(struct da9053_priv *da9053, u32 reg, u8 val)
+{
+	int ret;
+
+	ret = i2c_write_reg(da9053->client, reg, &val, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+
+static int da9053_park(struct da9053_priv *da9053)
+{
+	int ret;
+	u8 val;
+
+	ret = i2c_read_reg(da9053->client, DA9053_PARK_REGISTER, &val, 1);
+
+	return ret == 1 ? 0 : ret;
+}
+
+static ssize_t da9053_read(struct cdev *cdev, void *_buf, size_t count, loff_t offset, ulong flags)
+{
+	struct da9053_priv *da9053 = cdev_to_da9053_priv(cdev);
+	u8 *buf = _buf;
+	size_t i = count;
+	int err;
+
+	while (i) {
+		err = da9053_reg_read(da9053, offset, buf);
+		if (err) {
+			da9053_park(da9053);
+			return (ssize_t)err;
+		}
+		buf++;
+		i--;
+		offset++;
+	}
+
+	if (da9053_park(da9053) < 0)
+		return -EIO;
+
+	return count;
+}
+
+static int da9053_enable_multiwrite(struct da9053_priv *da9053)
+{
+	int ret;
+	u8 val;
+
+	ret = da9053_reg_read(da9053, DA9053_CONTROL_B_REG, &val);
+	if (ret < 0)
+		return ret;
+
+	if (val & DA9053_CONTROLB_WRITEMODE) {
+		val &= ~DA9053_CONTROLB_WRITEMODE;
+		ret = da9053_reg_write(da9053, DA9053_CONTROL_B_REG, val);
+		if (ret < 0)
+			return ret;
+	}
+
+	ret = da9053_park(da9053);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static struct file_operations da9053_fops = {
+	.lseek	= dev_lseek_default,
+	.read	= da9053_read,
+};
+
+static int da9053_set_timeout(struct watchdog *wd, unsigned timeout)
+{
+	struct da9053_priv *da9053 = wd_to_da9053_priv(wd);
+	struct device_d *dev = da9053->cdev.dev;
+	unsigned scale = 0;
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
+		        scale, timeout, 2048 << scale);
+		scale++; /* scale 0 disables the WD */
+	}
+
+	ret = da9053_reg_read(da9053, DA9053_CONTROL_D_REG, &val);
+	if (ret < 0)
+		return ret;
+
+	dev_dbg(dev, "read watchdog (val=0x%02x)\n", val);
+
+	if (scale && scale == (val & DA9053_CONTROLD_TWDSCALE)) {
+		/* trigger WD */
+		val |= DA9053_CONTROLD_WATCHDOG;
+		ret = da9053_reg_write(da9053, DA9053_CONTROL_D_REG, val);
+		if (ret < 0)
+			return ret;
+		dev_dbg(dev, "triggered watchdog (val=0x%02x)\n", val);
+	} else {
+		/* disable WD first */
+		val &= ~DA9053_CONTROLD_TWDSCALE;
+		ret = da9053_reg_write(da9053, DA9053_CONTROL_D_REG, val);
+		if (ret < 0)
+			return ret;
+
+		dev_dbg(dev, "disabled watchdog (val=0x%02x)\n", val);
+		if (scale) {
+			/* park before waiting */
+			ret = da9053_park(da9053);
+			if (ret < 0)
+				return ret;
+
+			/* wait required time */
+			udelay(150);
+
+			/* enable WD with new timeout */
+			val |= scale;
+			ret = da9053_reg_write(da9053, DA9053_CONTROL_D_REG, val);
+			if (ret < 0)
+				return ret;
+			dev_dbg(dev, "enabled watchdog (val=0x%02x)\n", val);
+		}
+	}
+
+	ret = da9053_park(da9053);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static void da9053_detect_reset_source(struct da9053_priv *da9053)
+{
+	int ret;
+	u8 val;
+
+	ret = da9053_reg_read(da9053, DA9053_FAULTLOG_REG, &val);
+	if (ret < 0)
+		return;
+
+	ret = da9053_park(da9053);
+	if (ret < 0)
+		return;
+
+	if (val & DA9053_FAULTLOG_TWDERROR) {
+		reset_source_set(RESET_WDG, FEATURE_SCOPE_MACHINE);
+		return;
+	}
+
+	if (val & DA9053_FAULTLOG_VDDFAULT) {
+		reset_source_set(RESET_POR, FEATURE_SCOPE_MACHINE);
+		return;
+	}
+
+	if (val & DA9053_FAULTLOG_NSDSET) {
+		reset_source_set(RESET_RST, FEATURE_SCOPE_MACHINE);
+		return;
+	}
+
+	/* else keep the default 'unknown' state */
+}
+
+static void __noreturn da9053_force_system_reset(struct device_d *dev)
+{
+	struct da9053_priv *da9053 = dev->priv;
+	u8 val;
+	int ret;
+
+	ret = da9053_reg_read(da9053, DA9053_CONTROL_B_REG, &val);
+	if (ret < 0)
+		hang();
+
+	val |= DA9053_CONTROLB_SHUTDOWN;
+	ret = da9053_reg_write(da9053, DA9053_CONTROL_B_REG, val);
+	if (ret < 0)
+		hang();
+
+	da9053_park(da9053);
+
+	hang();
+}
+
+static int da9053_probe(struct device_d *dev)
+{
+	struct da9053_priv *da9053;
+	int ret;
+
+	da9053 = xzalloc(sizeof(struct da9053_priv));
+	dev->priv = da9053;
+	da9053->cdev.name = DRIVERNAME;
+	da9053->client = to_i2c_client(dev);
+	da9053->cdev.size = 128;
+	da9053->cdev.dev = dev;
+	da9053->cdev.ops = &da9053_fops;
+	da9053->wd.set_timeout = da9053_set_timeout;
+	da9053->wd.scope = FEATURE_SCOPE_MACHINE;
+
+	ret = da9053_enable_multiwrite(da9053);
+	if (ret < 0)
+		return ret;
+
+	ret = watchdog_register(&da9053->wd);
+	if (ret)
+		return ret;
+
+	da9053_detect_reset_source(da9053);
+
+	restart_register_handler(da9053_force_system_reset, dev, FEATURE_SCOPE_MACHINE);
+
+	return 0;
+}
+
+static struct driver_d da9053_driver = {
+	.name  = DRIVERNAME,
+	.probe = da9053_probe,
+};
+
+static int da9053_init(void)
+{
+	i2c_driver_register(&da9053_driver);
+	return 0;
+}
+
+device_initcall(da9053_init);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
